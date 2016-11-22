.class public Lcom/android/bluetooth/avrcp/AvrcpControllerService;
.super Lcom/android/bluetooth/btservice/ProfileService;
.source "AvrcpControllerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/avrcp/AvrcpControllerService$PlayerSettings;,
        Lcom/android/bluetooth/avrcp/AvrcpControllerService$NotifyEvents;,
        Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;,
        Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;,
        Lcom/android/bluetooth/avrcp/AvrcpControllerService$BluetoothAvrcpControllerBinder;,
        Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;,
        Lcom/android/bluetooth/avrcp/AvrcpControllerService$1;
    }
.end annotation


# static fields
.field private static final ABORT_FETCH_ELEMENT_ATTRIBUTE:I = 0xfa8

.field public static final ABS_VOL_BASE:I = 0x7f

.field private static final ATTRIBUTE_FETCH_CONTINUE:I = 0x0

.field private static final ATTRIBUTE_FETCH_FRESH:I = 0x1

.field private static final ATTRIBUTE_FETCH_SKIP:I = 0x3

.field private static final ATTRIB_EQUALIZER_STATUS:B = 0x1t

.field private static final ATTRIB_REPEAT_STATUS:B = 0x2t

.field private static final ATTRIB_SCAN_STATUS:B = 0x4t

.field private static final ATTRIB_SHUFFLE_STATUS:B = 0x3t

.field public static final AVRC_ID_BACKWARD:I = 0x4c

.field public static final AVRC_ID_FF:I = 0x49

.field public static final AVRC_ID_FORWARD:I = 0x4b

.field public static final AVRC_ID_PAUSE:I = 0x46

.field public static final AVRC_ID_PLAY:I = 0x44

.field public static final AVRC_ID_REWIND:I = 0x48

.field public static final AVRC_ID_STOP:I = 0x45

.field public static final AVRC_ID_VOL_DOWN:I = 0x42

.field public static final AVRC_ID_VOL_UP:I = 0x41

.field private static final AVRC_RSP_ACCEPT:I = 0x9

.field private static final AVRC_RSP_CHANGED:I = 0xd

.field private static final AVRC_RSP_IMPL_STBL:I = 0xc

.field private static final AVRC_RSP_INTERIM:I = 0xf

.field private static final AVRC_RSP_IN_TRANS:I = 0xb

.field private static final AVRC_RSP_NOT_IMPL:I = 0x8

.field private static final AVRC_RSP_REJ:I = 0xa

.field public static final BTRC_FEAT_ABSOLUTE_VOLUME:I = 0x2

.field public static final BTRC_FEAT_BROWSE:I = 0x4

.field public static final BTRC_FEAT_METADATA:I = 0x1

.field private static final COMPANY_ID:I = 0x2

.field private static final DBG:Z = true

.field private static final EQUALIZER_STATUS_OFF:B = 0x1t

.field private static final EQUALIZER_STATUS_ON:B = 0x2t

.field private static final EVENTS_SUPPORTED:I = 0x3

.field private static final EVENT_NOTIFICAION_ID_NONE:B = 0x0t

.field private static final EVENT_PLAYBACK_POS_CHANGED:B = 0x5t

.field private static final EVENT_PLAYBACK_STATUS_CHANGED:B = 0x1t

.field private static final EVENT_PLAYER_APPLICATION_SETTINGS_CHANGED:B = 0x8t

.field private static final EVENT_TRACK_CHANGED:B = 0x2t

.field private static final EVENT_VOLUME_CHANGED:B = 0xdt

.field private static final GET_ELEMENT_ATTR_TIMEOUT_BASE:I = 0xbb8

.field private static final GET_PLAY_STATUS_INTERVAL:I = 0x1388

.field private static final MEDIA_ATTRIBUTE_ALBUM_NAME:I = 0x3

.field private static final MEDIA_ATTRIBUTE_ALL:I = 0x0

.field private static final MEDIA_ATTRIBUTE_ARTIST_NAME:I = 0x2

.field private static final MEDIA_ATTRIBUTE_GENRE:I = 0x6

.field private static final MEDIA_ATTRIBUTE_PLAYING_TIME:I = 0x7

.field private static final MEDIA_ATTRIBUTE_TITLE:I = 0x1

.field private static final MEDIA_ATTRIBUTE_TOTAL_TRACK_NUMBER:I = 0x5

.field private static final MEDIA_ATTRIBUTE_TRACK_NUMBER:I = 0x4

.field private static final MEDIA_PLAYER_APPLICAITON_SETTING:I = 0xc

.field private static final MEDIA_PLAYSTATUS_ALL:I = 0x8

.field private static final MEDIA_PLAYSTATUS_SONG_CUR_POS:I = 0xa

.field private static final MEDIA_PLAYSTATUS_SONG_PLAY_STATUS:I = 0xb

.field private static final MEDIA_PLAYSTATUS_SONG_TOTAL_LEN:I = 0x9

.field private static final MESSAGE_CMD_TIMEOUT:I = 0x64

.field private static final MESSAGE_DEINIT_AVRCP_DATABASE:I = 0xa

.field private static final MESSAGE_GET_CURRENT_PLAYER_APPLICATION_SETTINGS:I = 0x6

.field private static final MESSAGE_GET_ELEMENT_ATTRIBUTE:I = 0x8

.field private static final MESSAGE_GET_PLAYER_APPLICATION_SETTINGS_ATTRIB:I = 0x4

.field private static final MESSAGE_GET_PLAYER_APPLICATION_SETTINGS_VALUES:I = 0x5

.field private static final MESSAGE_GET_PLAY_STATUS:I = 0x9

.field private static final MESSAGE_GET_SUPPORTED_COMPANY_ID:I = 0x2

.field private static final MESSAGE_GET_SUPPORTED_EVENTS:I = 0x3

.field private static final MESSAGE_PROCESS_CONNECTION_CHANGE:I = 0x4b0

.field private static final MESSAGE_PROCESS_CURRENT_PLAYER_APPLICATION_SETTINGS:I = 0x3ee

.field private static final MESSAGE_PROCESS_ELEMENT_ATTRIBUTE:I = 0x3f0

.field private static final MESSAGE_PROCESS_NOTIFICATION_RESPONSE:I = 0x3f7

.field private static final MESSAGE_PROCESS_PLAYER_APPLICATION_SETTINGS_ATTRIB:I = 0x3ec

.field private static final MESSAGE_PROCESS_PLAYER_APPLICATION_SETTINGS_VALUES:I = 0x3ed

.field private static final MESSAGE_PROCESS_PLAY_STATUS:I = 0x3f1

.field private static final MESSAGE_PROCESS_RC_FEATURES:I = 0x44c

.field private static final MESSAGE_PROCESS_REGISTER_ABS_VOL_REQUEST:I = 0x3f9

.field private static final MESSAGE_PROCESS_SET_ABS_VOL_CMD:I = 0x3f8

.field private static final MESSAGE_PROCESS_SUPPORTED_COMPANY_ID:I = 0x3ea

.field private static final MESSAGE_PROCESS_SUPPORTED_EVENTS:I = 0x3eb

.field private static final MESSAGE_REGISTER_NOTIFICATION:I = 0xb

.field private static final MESSAGE_REGISTER_PLAYBACK_POS_CHANGED:I = 0x3f4

.field private static final MESSAGE_REGISTER_PLAYBACK_STATUS_CHANGED:I = 0x3f2

.field private static final MESSAGE_REGISTER_PLAYER_APPLICATION_SETTINGS_CHANGED:I = 0x3f5

.field private static final MESSAGE_REGISTER_PLAYER_APPLICATION_VOLUME_CHANGED:I = 0x3f6

.field private static final MESSAGE_REGISTER_TRACK_CHANGED:I = 0x3f3

.field private static final MESSAGE_SEND_PASS_THROUGH_CMD:I = 0x1

.field private static final MESSAGE_SET_CURRENT_PLAYER_APPLICATION_SETTINGS:I = 0x7

.field private static final MESSAGE_TIMEOUT_APPL_SETTINGS_CHANGED:I = 0x7d8

.field private static final MESSAGE_TIMEOUT_ATTRIBUTE_ALBUM_NAME:I = 0xbbb

.field private static final MESSAGE_TIMEOUT_ATTRIBUTE_ARTIST_NAME:I = 0xbba

.field private static final MESSAGE_TIMEOUT_ATTRIBUTE_GENRE:I = 0xbbe

.field private static final MESSAGE_TIMEOUT_ATTRIBUTE_PLAYING_TIME:I = 0xbbf

.field private static final MESSAGE_TIMEOUT_ATTRIBUTE_TITLE:I = 0xbb9

.field private static final MESSAGE_TIMEOUT_ATTRIBUTE_TOTAL_TRACK_NUMBER:I = 0xbbd

.field private static final MESSAGE_TIMEOUT_ATTRIBUTE_TRACK_NUMBER:I = 0xbbc

.field private static final MESSAGE_TIMEOUT_PLAYBACK_POS_CHNAGED:I = 0x7d5

.field private static final MESSAGE_TIMEOUT_PLAYBACK_STATUS_CHANGED:I = 0x7d1

.field private static final MESSAGE_TIMEOUT_TRACK_CHANGED:I = 0x7d2

.field private static final MESSAGE_TIMEOUT_VOLUME_CHANGED:I = 0x7dd

.field private static final MSG_TIMEOUT_MTC:I = 0x4b0

.field private static final MSG_TIMEOUT_MTP:I = 0x7d0

.field private static final MSG_TIMEOUT_RCP:I = 0x44c

.field private static final NOTIFICATION_RSP_TYPE_CHANGED:I = 0xd

.field private static final NOTIFICATION_RSP_TYPE_INTERIM:I = 0xf

.field private static final NOTIFY_CHANGED_EXPECTED:B = 0x3t

.field private static final NOTIFY_INTERIM_EXPECTED:B = 0x2t

.field private static final NOTIFY_NOT_NOTIFIED:B = 0x1t

.field private static final NOTIFY_NOT_REGISTERED:B = 0x1t

.field private static final NOTIFY_RSP_ABS_VOL_DEFERRED:B = 0x3t

.field private static final NOTIFY_RSP_INTERIM_SENT:B = 0x2t

.field private static final PLAYBACK_POS_INTERVAL:I = 0x1

.field private static final PLAY_STATUS_FWD_SEEK:B = 0x3t

.field private static final PLAY_STATUS_PAUSED:B = 0x2t

.field private static final PLAY_STATUS_PLAYING:B = 0x1t

.field private static final PLAY_STATUS_REV_SEEK:B = 0x4t

.field private static final PLAY_STATUS_STOPPED:B = 0x0t

.field private static final REPEAT_STATUS_ALL_TRACK_REPEAT:B = 0x3t

.field private static final REPEAT_STATUS_GROUP_REPEAT:B = 0x4t

.field private static final REPEAT_STATUS_OFF:B = 0x1t

.field private static final REPEAT_STATUS_SINGLE_TRACK_REPEAT:B = 0x2t

.field private static final SCAN_STATUS_ALL_TRACK_SCAN:B = 0x2t

.field private static final SCAN_STATUS_GROUP_SCAN:B = 0x3t

.field private static final SCAN_STATUS_OFF:B = 0x1t

.field private static final SHUFFLE_STATUS_ALL_TRACK_SHUFFLE:B = 0x2t

.field private static final SHUFFLE_STATUS_GROUP_SHUFFLE:B = 0x3t

.field private static final SHUFFLE_STATUS_OFF:B = 0x1t

.field private static final TAG:Ljava/lang/String; = "AvrcpControllerService"

.field private static final TIMEOUT_MTC:I = 0xc8

.field private static final TIMEOUT_MTP:I = 0x3e8

.field private static final TIMEOUT_RCP:I = 0x64

.field private static mAudioManager:Landroid/media/AudioManager;

.field private static mDbInitialized:Z

.field private static sAvrcpControllerService:Lcom/android/bluetooth/avrcp/AvrcpControllerService;


# instance fields
.field private final BTSIG_COMPANY_ID:I

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mConnectedDevices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

.field mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

.field requestedElementAttribs:[I


# direct methods
.method static synthetic -get0()Landroid/media/AudioManager;
    .locals 1

    sget-object v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/bluetooth/avrcp/AvrcpControllerService;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mConnectedDevices:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/bluetooth/avrcp/AvrcpControllerService;)Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/bluetooth/avrcp/AvrcpControllerService;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->isAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/bluetooth/avrcp/AvrcpControllerService;[BII)Z
    .locals 1
    .param p1, "address"    # [B
    .param p2, "keyCode"    # I
    .param p3, "keyState"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->sendPassThroughCommandNative([BII)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/bluetooth/avrcp/AvrcpControllerService;I)V
    .locals 0
    .param p1, "cmd"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->handleCmdTimeout(I)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/bluetooth/avrcp/AvrcpControllerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->handleProcessAbsVolNotification()V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/bluetooth/avrcp/AvrcpControllerService;ILjava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "numAttributes"    # I
    .param p2, "attribBuffer"    # Ljava/nio/ByteBuffer;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->handleProcessGetElementAttribute(ILjava/nio/ByteBuffer;)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/bluetooth/avrcp/AvrcpControllerService;IILjava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "notificationId"    # I
    .param p2, "notificationType"    # I
    .param p3, "notificationRsp"    # Ljava/nio/ByteBuffer;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->handleProcessNotificationResponse(IILjava/nio/ByteBuffer;)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/bluetooth/avrcp/AvrcpControllerService;Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "bb"    # Ljava/nio/ByteBuffer;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->handleProcessPlayStatus(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/bluetooth/avrcp/AvrcpControllerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->initializeDatabase()V

    return-void
.end method

.method static synthetic -wrap16(Lcom/android/bluetooth/avrcp/AvrcpControllerService;I)V
    .locals 0
    .param p1, "exemptNotificaionId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->registerFurtherNotification(I)V

    return-void
.end method

.method static synthetic -wrap17(Lcom/android/bluetooth/avrcp/AvrcpControllerService;BI)V
    .locals 0
    .param p1, "rspType"    # B
    .param p2, "absVol"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->sendRegisterAbsVolRspNative(BI)V

    return-void
.end method

.method static synthetic -wrap18(Lcom/android/bluetooth/avrcp/AvrcpControllerService;I)V
    .locals 0
    .param p1, "absVol"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->setAbsVolume(I)V

    return-void
.end method

.method static synthetic -wrap19(Lcom/android/bluetooth/avrcp/AvrcpControllerService;II)V
    .locals 0
    .param p1, "attribId"    # I
    .param p2, "attribVal"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->setCurrentPlayerApplicationSettingsValues(II)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/bluetooth/avrcp/AvrcpControllerService;Landroid/bluetooth/BluetoothDevice;)[B
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap20(Lcom/android/bluetooth/avrcp/AvrcpControllerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->updatePlayerApplicationSettings()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/bluetooth/avrcp/AvrcpControllerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->deinitDatabase()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/bluetooth/avrcp/AvrcpControllerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->getCurrentPlayerApplicationSettingsValues()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/bluetooth/avrcp/AvrcpControllerService;I)V
    .locals 0
    .param p1, "operationId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->getFurtherElementAttribute(I)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/bluetooth/avrcp/AvrcpControllerService;I)V
    .locals 0
    .param p1, "operationId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->getFurtherPlayerSettingAttrib(I)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/bluetooth/avrcp/AvrcpControllerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->getPlayStatusNative()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/bluetooth/avrcp/AvrcpControllerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->getPlayerApplicationSettingsAttrib()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/bluetooth/avrcp/AvrcpControllerService;I)V
    .locals 0
    .param p1, "capability_id"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->getSupportedCapabilities(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 333
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mDbInitialized:Z

    .line 339
    invoke-static {}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->classInitNative()V

    .line 56
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 342
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/ProfileService;-><init>()V

    .line 264
    const/16 v0, 0x1958

    iput v0, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->BTSIG_COMPANY_ID:I

    .line 336
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 335
    iput-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mConnectedDevices:Ljava/util/ArrayList;

    .line 390
    new-instance v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$1;-><init>(Lcom/android/bluetooth/avrcp/AvrcpControllerService;)V

    iput-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 343
    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->initNative()V

    .line 342
    return-void
.end method

.method private asciiToInt(I[B)I
    .locals 1
    .param p1, "len"    # I
    .param p2, "array"    # [B

    .prologue
    .line 1390
    invoke-direct {p0, p2}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->utf8ToString([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupNative()V
.end method

.method private static declared-synchronized clearAvrcpControllerService()V
    .locals 2

    .prologue
    const-class v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    monitor-enter v0

    .line 474
    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->sAvrcpControllerService:Lcom/android/bluetooth/avrcp/AvrcpControllerService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 473
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private deinitDatabase()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1147
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mDbInitialized:Z

    .line 1148
    sget-object v1, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->sAvrcpControllerService:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    invoke-virtual {v1}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1149
    sget-object v2, Landroid/bluetooth/BluetoothAvrcpInfo;->CONTENT_URI:Landroid/net/Uri;

    .line 1148
    invoke-virtual {v1, v2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1150
    .local v0, "rows_deleted":I
    const-string/jumbo v1, "AvrcpControllerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " DeinitDatabase rows_deleted "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    return-void
.end method

.method public static declared-synchronized getAvrcpControllerService()Lcom/android/bluetooth/avrcp/AvrcpControllerService;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-class v1, Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    monitor-enter v1

    .line 443
    :try_start_0
    sget-object v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->sAvrcpControllerService:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->sAvrcpControllerService:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 444
    const-string/jumbo v0, "AvrcpControllerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getAvrcpControllerService(): returning "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 445
    sget-object v3, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->sAvrcpControllerService:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    .line 444
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    sget-object v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->sAvrcpControllerService:Lcom/android/bluetooth/avrcp/AvrcpControllerService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 449
    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->sAvrcpControllerService:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    if-nez v0, :cond_2

    .line 450
    const-string/jumbo v0, "AvrcpControllerService"

    const-string/jumbo v2, "getAvrcpControllerService(): service is NULL"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v1

    .line 455
    return-object v3

    .line 451
    :cond_2
    :try_start_2
    sget-object v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->sAvrcpControllerService:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 452
    const-string/jumbo v0, "AvrcpControllerService"

    const-string/jumbo v2, "getAvrcpControllerService(): service is not available"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 1989
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/Utils;->getBytesFromAddress(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private native getCapabilitiesNative(I)V
.end method

.method private getCurrentPlayerApplicationSettingsValues()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 959
    const/4 v0, 0x0

    .line 960
    .local v0, "count":I
    iget-object v7, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    if-eqz v7, :cond_0

    .line 961
    iget-object v7, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    invoke-static {v7}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get4(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Ljava/util/ArrayList;

    move-result-object v7

    if-nez v7, :cond_1

    .line 963
    :cond_0
    const-string/jumbo v7, "AvrcpControllerService"

    const-string/jumbo v8, " PlayerAppSettings not supporterd, returning"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    return-void

    .line 962
    :cond_1
    iget-object v7, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    invoke-static {v7}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get4(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-eqz v7, :cond_0

    .line 967
    iget-object v7, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    invoke-static {v7}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get4(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v6, v7, [B

    .line 969
    .local v6, "supported_attrib":[B
    iget-object v7, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    invoke-static {v7}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get4(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 968
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->byteValue()B

    move-result v7

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    .line 970
    .local v3, "numAttrib":B
    iget-object v7, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    invoke-static {v7}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get4(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "plSetting$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/bluetooth/avrcp/AvrcpControllerService$PlayerSettings;

    .line 972
    .local v4, "plSetting":Lcom/android/bluetooth/avrcp/AvrcpControllerService$PlayerSettings;
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "count":I
    .local v1, "count":I
    iget-byte v7, v4, Lcom/android/bluetooth/avrcp/AvrcpControllerService$PlayerSettings;->attr_Id:B

    aput-byte v7, v6, v0

    move v0, v1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    goto :goto_0

    .line 974
    .end local v4    # "plSetting":Lcom/android/bluetooth/avrcp/AvrcpControllerService$PlayerSettings;
    :cond_2
    iget-object v7, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    .line 975
    const/4 v8, 0x6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 974
    const/16 v9, 0x64

    invoke-virtual {v7, v9, v10, v10, v8}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 976
    .local v2, "msg":Landroid/os/Message;
    iget-object v7, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    const-wide/16 v8, 0x7d0

    invoke-virtual {v7, v2, v8, v9}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 977
    invoke-direct {p0, v3, v6}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->getPlayerApplicationSettingValuesNative(B[B)V

    .line 957
    return-void
.end method

.method private native getElementAttributeNative(BI)V
.end method

.method private getEqualizerStatusString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1209
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get4(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "plSettings$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$PlayerSettings;

    .line 1211
    .local v0, "plSettings":Lcom/android/bluetooth/avrcp/AvrcpControllerService$PlayerSettings;
    iget-byte v2, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$PlayerSettings;->attr_Id:B

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1213
    iget-byte v2, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$PlayerSettings;->attr_val:B

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 1216
    :pswitch_0
    const-string/jumbo v2, "EQUALIZER_OFF"

    return-object v2

    .line 1218
    :pswitch_1
    const-string/jumbo v2, "EQUALIZER_ON"

    return-object v2

    .line 1222
    .end local v0    # "plSettings":Lcom/android/bluetooth/avrcp/AvrcpControllerService$PlayerSettings;
    :cond_1
    const-string/jumbo v2, "NOT_SUPPORTED"

    return-object v2

    .line 1213
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getFurtherElementAttribute(I)V
    .locals 7
    .param p1, "operationId"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 993
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->requestedElementAttribs:[I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->requestedElementAttribs:[I

    array-length v2, v2

    if-nez v2, :cond_1

    .line 995
    :cond_0
    const-string/jumbo v2, "AvrcpControllerService"

    const-string/jumbo v3, " Applicaiton has not yet requested element attributes"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    return-void

    .line 998
    :cond_1
    const-string/jumbo v2, "AvrcpControllerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " getFurtherElementAttribute  op_Id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 999
    const-string/jumbo v4, " requestedIdLen = "

    .line 998
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 999
    iget-object v4, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->requestedElementAttribs:[I

    array-length v4, v4

    .line 998
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    const/4 v1, 0x1

    .line 1001
    .local v1, "numAttrib":B
    if-ne p1, v6, :cond_3

    .line 1002
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get2(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;->-set2(Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;I)I

    .line 1005
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get2(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;

    move-result-object v2

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;->-get2(Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;)I

    move-result v2

    iget-object v3, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->requestedElementAttribs:[I

    array-length v3, v3

    if-lt v2, v3, :cond_5

    .line 1010
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get2(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v2, v3}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;->-set2(Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;I)I

    .line 1011
    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->updateElementAttribute()V

    .line 1012
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->sendEmptyMessage(I)Z

    .line 1013
    return-void

    .line 1003
    :cond_3
    const/4 v2, 0x3

    if-eq p1, v2, :cond_4

    if-nez p1, :cond_2

    .line 1004
    :cond_4
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get2(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;

    move-result-object v2

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;->-get2(Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;->-set2(Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;I)I

    goto :goto_0

    .line 1015
    :cond_5
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    .line 1016
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->requestedElementAttribs:[I

    iget-object v4, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get2(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;

    move-result-object v4

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;->-get2(Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;)I

    move-result v4

    aget v3, v3, v4

    .line 1015
    add-int/lit16 v3, v3, 0xbb8

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1017
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v0, v4, v5}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1018
    const-string/jumbo v2, "AvrcpControllerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " getElemAttrReq numAttr "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " Id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1019
    iget-object v4, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->requestedElementAttribs:[I

    iget-object v5, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get2(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;

    move-result-object v5

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;->-get2(Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;)I

    move-result v5

    aget v4, v4, v5

    .line 1018
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->requestedElementAttribs:[I

    iget-object v3, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    invoke-static {v3}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get2(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;

    move-result-object v3

    invoke-static {v3}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;->-get2(Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;)I

    move-result v3

    aget v2, v2, v3

    .line 1020
    invoke-direct {p0, v1, v2}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->getElementAttributeNative(BI)V

    .line 991
    return-void
.end method

.method private getFurtherPlayerSettingAttrib(I)V
    .locals 6
    .param p1, "operationId"    # I

    .prologue
    const/4 v5, 0x0

    .line 1025
    const-string/jumbo v2, "AvrcpControllerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " getFurtherPlayerSettingAttrib  Id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    if-nez v2, :cond_0

    .line 1027
    return-void

    .line 1028
    :cond_0
    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    .line 1029
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    iput v5, v2, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->playerSettingAttribIdFetch:I

    .line 1032
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    iget v0, v2, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->playerSettingAttribIdFetch:I

    .line 1033
    .local v0, "fetch_id":I
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get4(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_3

    .line 1035
    const-string/jumbo v2, "AvrcpControllerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " All Attrib Fetched "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->sendEmptyMessage(I)Z

    .line 1037
    return-void

    .line 1030
    .end local v0    # "fetch_id":I
    :cond_2
    const/4 v2, 0x3

    if-ne p1, v2, :cond_1

    .line 1031
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    iget v3, v2, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->playerSettingAttribIdFetch:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->playerSettingAttribIdFetch:I

    goto :goto_0

    .line 1039
    .restart local v0    # "fetch_id":I
    :cond_3
    const-string/jumbo v2, "AvrcpControllerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " fetching_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    .line 1041
    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1040
    const/16 v4, 0x64

    invoke-virtual {v2, v4, v5, v5, v3}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1042
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v1, v4, v5}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1043
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get4(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/avrcp/AvrcpControllerService$PlayerSettings;

    iget-byte v2, v2, Lcom/android/bluetooth/avrcp/AvrcpControllerService$PlayerSettings;->attr_Id:B

    invoke-direct {p0, v2}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->listPlayerApplicationSettingValueNative(B)V

    .line 1023
    return-void
.end method

.method private native getPlayStatusNative()V
.end method

.method private getPlayStatusString(B)Ljava/lang/String;
    .locals 1
    .param p1, "playStatus"    # B

    .prologue
    .line 1154
    packed-switch p1, :pswitch_data_0

    .line 1167
    const-string/jumbo v0, "NOT_SUPPORTED"

    return-object v0

    .line 1157
    :pswitch_0
    const-string/jumbo v0, "STOPPED"

    return-object v0

    .line 1159
    :pswitch_1
    const-string/jumbo v0, "PLAYING"

    return-object v0

    .line 1161
    :pswitch_2
    const-string/jumbo v0, "PAUSED"

    return-object v0

    .line 1163
    :pswitch_3
    const-string/jumbo v0, "FWD_SEEK"

    return-object v0

    .line 1165
    :pswitch_4
    const-string/jumbo v0, "REV_SEEK"

    return-object v0

    .line 1154
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private native getPlayerApplicationSettingValuesNative(B[B)V
.end method

.method private getPlayerApplicationSettingsAttrib()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 952
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    .line 953
    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 952
    const/16 v3, 0x64

    invoke-virtual {v1, v3, v4, v4, v2}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 954
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 955
    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->listPlayerApplicationSettingAttributeNative()V

    .line 950
    return-void
.end method

.method private getRcFeatures([BI)V
    .locals 5
    .param p1, "address"    # [B
    .param p2, "features"    # I

    .prologue
    .line 1886
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    .line 1887
    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v3

    .line 1886
    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 1888
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    const/16 v3, 0x44c

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p2, v4, v0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1890
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    invoke-virtual {v2, v1}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1885
    return-void
.end method

.method private getRepeatStatusString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1226
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get4(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "plSettings$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$PlayerSettings;

    .line 1228
    .local v0, "plSettings":Lcom/android/bluetooth/avrcp/AvrcpControllerService$PlayerSettings;
    iget-byte v2, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$PlayerSettings;->attr_Id:B

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 1230
    iget-byte v2, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$PlayerSettings;->attr_val:B

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 1233
    :pswitch_0
    const-string/jumbo v2, "REPEAT_OFF"

    return-object v2

    .line 1235
    :pswitch_1
    const-string/jumbo v2, "REPEAT_SINGLE_TRACK_REPEAT"

    return-object v2

    .line 1237
    :pswitch_2
    const-string/jumbo v2, "REPEAT_GROUP_REPEAT"

    return-object v2

    .line 1239
    :pswitch_3
    const-string/jumbo v2, "REPEAT_ALL_TRACK_REPEAT"

    return-object v2

    .line 1243
    .end local v0    # "plSettings":Lcom/android/bluetooth/avrcp/AvrcpControllerService$PlayerSettings;
    :cond_1
    const-string/jumbo v2, "NOT_SUPPORTED"

    return-object v2

    .line 1230
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private getScanStatusString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1190
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get4(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "plSettings$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$PlayerSettings;

    .line 1192
    .local v0, "plSettings":Lcom/android/bluetooth/avrcp/AvrcpControllerService$PlayerSettings;
    iget-byte v2, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$PlayerSettings;->attr_Id:B

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 1194
    iget-byte v2, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$PlayerSettings;->attr_val:B

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 1197
    :pswitch_0
    const-string/jumbo v2, "SCAN_OFF"

    return-object v2

    .line 1199
    :pswitch_1
    const-string/jumbo v2, "SCAN_GROUP_SCAN"

    return-object v2

    .line 1201
    :pswitch_2
    const-string/jumbo v2, "SCAN_ALL_TRACK_SCAN"

    return-object v2

    .line 1205
    .end local v0    # "plSettings":Lcom/android/bluetooth/avrcp/AvrcpControllerService$PlayerSettings;
    :cond_1
    const-string/jumbo v2, "NOT_SUPPORTED"

    return-object v2

    .line 1194
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private getShuffleStatusString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1171
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get4(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "plSettings$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$PlayerSettings;

    .line 1173
    .local v0, "plSettings":Lcom/android/bluetooth/avrcp/AvrcpControllerService$PlayerSettings;
    iget-byte v2, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$PlayerSettings;->attr_Id:B

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 1175
    iget-byte v2, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$PlayerSettings;->attr_val:B

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 1178
    :pswitch_0
    const-string/jumbo v2, "SHUFFLE_OFF"

    return-object v2

    .line 1180
    :pswitch_1
    const-string/jumbo v2, "SHUFFLE_GROUP_SHUFFLE"

    return-object v2

    .line 1182
    :pswitch_2
    const-string/jumbo v2, "SHUFFLE_ALL_TRACK_SHUFFLE"

    return-object v2

    .line 1186
    .end local v0    # "plSettings":Lcom/android/bluetooth/avrcp/AvrcpControllerService$PlayerSettings;
    :cond_1
    const-string/jumbo v2, "NOT_SUPPORTED"

    return-object v2

    .line 1175
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private getSupportedCapabilities(I)V
    .locals 5
    .param p1, "capability_id"    # I

    .prologue
    const/4 v4, 0x0

    .line 946
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x64

    invoke-virtual {v1, v3, v4, v4, v2}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 947
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 948
    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->getCapabilitiesNative(I)V

    .line 944
    return-void
.end method

.method private handleCmdTimeout(I)V
    .locals 4
    .param p1, "cmd"    # I

    .prologue
    const/4 v3, 0x3

    .line 1339
    const-string/jumbo v0, "AvrcpControllerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " CMD "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " Timeout Happened"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    sparse-switch p1, :sswitch_data_0

    .line 1337
    :goto_0
    :sswitch_0
    return-void

    .line 1343
    :sswitch_1
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1347
    :sswitch_2
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    invoke-virtual {v0, v3}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1350
    :sswitch_3
    invoke-direct {p0, v3}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->getFurtherPlayerSettingAttrib(I)V

    goto :goto_0

    .line 1364
    :sswitch_4
    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->handleNotificationTimeout(I)V

    goto :goto_0

    .line 1373
    :sswitch_5
    invoke-direct {p0, v3}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->getFurtherElementAttribute(I)V

    goto :goto_0

    .line 1376
    :sswitch_6
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1340
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x3 -> :sswitch_0
        0x4 -> :sswitch_2
        0x5 -> :sswitch_3
        0x6 -> :sswitch_2
        0x7 -> :sswitch_0
        0x9 -> :sswitch_6
        0x7d1 -> :sswitch_4
        0x7d2 -> :sswitch_4
        0x7d5 -> :sswitch_4
        0x7d8 -> :sswitch_4
        0x7dd -> :sswitch_4
        0xbb9 -> :sswitch_5
        0xbba -> :sswitch_5
        0xbbb -> :sswitch_5
        0xbbc -> :sswitch_5
        0xbbd -> :sswitch_5
        0xbbe -> :sswitch_5
        0xbbf -> :sswitch_5
    .end sparse-switch
.end method

.method private handleCurrentPlayerApplicationSettingsResponse([B[B[BBB)V
    .locals 10
    .param p1, "address"    # [B
    .param p2, "ids"    # [B
    .param p3, "values"    # [B
    .param p4, "num_attrib"    # B
    .param p5, "rsp_type"    # B

    .prologue
    const/16 v9, 0x64

    const/4 v8, 0x6

    .line 2030
    const-string/jumbo v5, "AvrcpControllerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "handleCurrentPlayerApplicationSettingsResponse num_attrib ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2031
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v5

    .line 2032
    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v6

    .line 2031
    invoke-virtual {v5, v6}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 2033
    .local v2, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v5, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mConnectedDevices:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2034
    return-void

    .line 2035
    :cond_0
    iget-object v5, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    .line 2036
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 2035
    invoke-virtual {v5, v9, v6}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->hasMessages(ILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2038
    iget-object v5, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    .line 2039
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 2038
    invoke-virtual {v5, v9, v6}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->removeMessages(ILjava/lang/Object;)V

    .line 2040
    const-string/jumbo v5, "AvrcpControllerService"

    const-string/jumbo v6, " Timeout CMD dequeued "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2042
    :cond_1
    const/16 v5, 0xc

    if-ne p5, v5, :cond_2

    if-gtz p4, :cond_3

    .line 2044
    :cond_2
    iget-object v5, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    iget-object v6, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2045
    return-void

    .line 2047
    :cond_3
    const/4 v1, 0x0

    .local v1, "count":I
    :goto_0
    if-ge v1, p4, :cond_6

    .line 2049
    aget-byte v0, p2, v1

    .line 2050
    .local v0, "attribute":B
    iget-object v5, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get4(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "plSetting$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/avrcp/AvrcpControllerService$PlayerSettings;

    .line 2052
    .local v3, "plSetting":Lcom/android/bluetooth/avrcp/AvrcpControllerService$PlayerSettings;
    iget-byte v5, v3, Lcom/android/bluetooth/avrcp/AvrcpControllerService$PlayerSettings;->attr_Id:B

    if-ne v5, v0, :cond_4

    .line 2053
    aget-byte v5, p3, v1

    iput-byte v5, v3, Lcom/android/bluetooth/avrcp/AvrcpControllerService$PlayerSettings;->attr_val:B

    goto :goto_1

    .line 2047
    .end local v3    # "plSetting":Lcom/android/bluetooth/avrcp/AvrcpControllerService$PlayerSettings;
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2057
    .end local v0    # "attribute":B
    .end local v4    # "plSetting$iterator":Ljava/util/Iterator;
    :cond_6
    iget-object v5, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    const/16 v6, 0x3ee

    invoke-virtual {v5, v6}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->sendEmptyMessage(I)Z

    .line 2028
    return-void
.end method

.method private handleGetCapabilitiesResponse([BI[IIB)V
    .locals 9
    .param p1, "address"    # [B
    .param p2, "capability_id"    # I
    .param p3, "supported_values"    # [I
    .param p4, "num_supported"    # I
    .param p5, "rsp_type"    # B

    .prologue
    .line 1900
    const-string/jumbo v6, "AvrcpControllerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "handleGetCapabilitiesResponse cap_id"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " num_supported "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1901
    const-string/jumbo v8, "rsp_type "

    .line 1900
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1902
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v6

    .line 1903
    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v7

    .line 1902
    invoke-virtual {v6, v7}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 1904
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v6, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mConnectedDevices:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1905
    return-void

    .line 1906
    :cond_0
    if-gtz p4, :cond_3

    .line 1911
    iget-object v6, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v8, 0x64

    invoke-virtual {v6, v8, v7}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->hasMessages(ILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1912
    iget-object v6, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v8, 0x64

    invoke-virtual {v6, v8, v7}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->removeMessages(ILjava/lang/Object;)V

    .line 1915
    :cond_1
    :goto_0
    return-void

    .line 1913
    :cond_2
    iget-object v6, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    const/4 v7, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v8, 0x64

    invoke-virtual {v6, v8, v7}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->hasMessages(ILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1914
    iget-object v6, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    const/4 v7, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v8, 0x64

    invoke-virtual {v6, v8, v7}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->removeMessages(ILjava/lang/Object;)V

    goto :goto_0

    .line 1917
    :cond_3
    iget-object v6, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v8, 0x64

    invoke-virtual {v6, v8, v7}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->hasMessages(ILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1919
    iget-object v6, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v8, 0x64

    invoke-virtual {v6, v8, v7}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->removeMessages(ILjava/lang/Object;)V

    .line 1920
    const-string/jumbo v6, "AvrcpControllerService"

    const-string/jumbo v7, " Timeout CMD dequeued "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1922
    :cond_4
    const/16 v6, 0xc

    if-eq p5, v6, :cond_6

    .line 1924
    const/4 v6, 0x2

    if-ne p2, v6, :cond_5

    .line 1925
    iget-object v6, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->sendEmptyMessage(I)Z

    .line 1927
    :cond_5
    return-void

    .line 1930
    :cond_6
    packed-switch p2, :pswitch_data_0

    .line 1898
    :goto_1
    return-void

    .line 1933
    :pswitch_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1934
    .local v3, "supportedCompanyIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "count":I
    :goto_2
    if-ge v0, p4, :cond_7

    .line 1935
    aget v6, p3, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1934
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1936
    :cond_7
    iget-object v6, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    .line 1937
    const/16 v7, 0x3ea

    .line 1936
    invoke-virtual {v6, v7, v3}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1938
    .local v2, "msg":Landroid/os/Message;
    iget-object v6, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    invoke-virtual {v6, v2}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 1941
    .end local v0    # "count":I
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "supportedCompanyIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1942
    .local v4, "supportedEvents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const/4 v0, 0x0

    .restart local v0    # "count":I
    :goto_3
    if-ge v0, p4, :cond_9

    .line 1945
    aget v6, p3, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->byteValue()B

    move-result v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    .line 1946
    .local v5, "supported_event":Ljava/lang/Byte;
    invoke-virtual {v5}, Ljava/lang/Byte;->byteValue()B

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->isEventSupported(B)Z

    move-result v6

    if-nez v6, :cond_8

    .line 1942
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1948
    :cond_8
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1950
    .end local v5    # "supported_event":Ljava/lang/Byte;
    :cond_9
    iget-object v6, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    const/16 v7, 0x3eb

    invoke-virtual {v6, v7, v4}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1951
    .restart local v2    # "msg":Landroid/os/Message;
    iget-object v6, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    invoke-virtual {v6, v2}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 1930
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handleGetElementAttributes([BBI[BB)V
    .locals 9
    .param p1, "address"    # [B
    .param p2, "numAttributes"    # B
    .param p3, "attribRspLen"    # I
    .param p4, "attribRsp"    # [B
    .param p5, "rsp_type"    # B

    .prologue
    const/16 v8, 0x3f0

    const/4 v7, 0x0

    .line 2096
    const-string/jumbo v4, "AvrcpControllerService"

    const-string/jumbo v5, "handleGetElementAttributes "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2097
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    .line 2098
    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v5

    .line 2097
    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 2099
    .local v2, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v4, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mConnectedDevices:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-gtz p3, :cond_1

    .line 2100
    :cond_0
    return-void

    .line 2102
    :cond_1
    invoke-static {p4, v7, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 2103
    .local v1, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    .line 2104
    .local v0, "attributeId":I
    const-string/jumbo v4, "AvrcpControllerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " numAttrib "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " attribRspLen "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2105
    const-string/jumbo v6, " rsp_type "

    .line 2104
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2105
    const-string/jumbo v6, " attribId "

    .line 2104
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2106
    const/16 v4, 0xc

    if-eq p5, v4, :cond_3

    .line 2108
    iget-object v4, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    add-int/lit16 v5, v0, 0xbb8

    invoke-virtual {v4, v5}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2110
    iget-object v4, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    add-int/lit16 v5, v0, 0xbb8

    invoke-virtual {v4, v5}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->removeMessages(I)V

    .line 2111
    const-string/jumbo v4, "AvrcpControllerService"

    const-string/jumbo v5, " Timeout CMD dequeued "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2113
    :cond_2
    iget-object v4, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    iget-object v5, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    .line 2114
    const/4 v6, 0x3

    .line 2113
    invoke-virtual {v5, v8, v7, v6}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2115
    return-void

    .line 2117
    :cond_3
    iget-object v4, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    invoke-virtual {v4, v8, p2, v7, v1}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 2119
    .local v3, "msg":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    invoke-virtual {v4, v3}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2094
    return-void
.end method

.method private handleGetPlayStatus([BI[BB)V
    .locals 8
    .param p1, "address"    # [B
    .param p2, "paramLen"    # I
    .param p3, "playStatusRsp"    # [B
    .param p4, "rsp_type"    # B

    .prologue
    const/16 v7, 0x64

    const/16 v6, 0x9

    const/4 v5, 0x0

    .line 2128
    const-string/jumbo v3, "AvrcpControllerService"

    const-string/jumbo v4, "handleGetPlayStatus "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2129
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    .line 2130
    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v4

    .line 2129
    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 2131
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mConnectedDevices:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2132
    return-void

    .line 2133
    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v7, v4}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->hasMessages(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2135
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v7, v4}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->removeMessages(ILjava/lang/Object;)V

    .line 2136
    const-string/jumbo v3, "AvrcpControllerService"

    const-string/jumbo v4, " Timeout CMD dequeued "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2138
    :cond_1
    const/16 v3, 0xc

    if-ne p4, v3, :cond_2

    if-gtz p2, :cond_3

    .line 2139
    :cond_2
    return-void

    .line 2141
    :cond_3
    invoke-static {p3, v5, p2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2142
    .local v0, "bb":Ljava/nio/ByteBuffer;
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    const/16 v4, 0x3f1

    invoke-virtual {v3, v4, v5, v5, v0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 2143
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    invoke-virtual {v3, v2}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2126
    return-void
.end method

.method private handleListPlayerApplicationSettingValue([B[BBB)V
    .locals 11
    .param p1, "address"    # [B
    .param p2, "supported_val"    # [B
    .param p3, "num_supported_val"    # B
    .param p4, "rsp_type"    # B

    .prologue
    const/16 v10, 0x3ed

    const/16 v9, 0x64

    const/4 v8, 0x5

    const/4 v7, 0x0

    .line 2000
    const-string/jumbo v4, "AvrcpControllerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleListPlayerApplicationSettingValue num_supported "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2001
    const-string/jumbo v6, " rsp_type "

    .line 2000
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2002
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    .line 2003
    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v5

    .line 2002
    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 2004
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v4, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mConnectedDevices:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2005
    return-void

    .line 2006
    :cond_0
    iget-object v4, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    .line 2007
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 2006
    invoke-virtual {v4, v9, v5}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->hasMessages(ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2009
    iget-object v4, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    .line 2010
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 2009
    invoke-virtual {v4, v9, v5}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->removeMessages(ILjava/lang/Object;)V

    .line 2011
    const-string/jumbo v4, "AvrcpControllerService"

    const-string/jumbo v5, " Timeout CMD dequeued "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2013
    :cond_1
    const/16 v4, 0xc

    if-ne p4, v4, :cond_2

    if-gtz p3, :cond_3

    .line 2015
    :cond_2
    iget-object v4, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    iget-object v5, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    .line 2016
    const/4 v6, 0x3

    .line 2015
    invoke-virtual {v5, v10, v6, v7}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2017
    return-void

    .line 2019
    :cond_3
    iget-object v4, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    iget v2, v4, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->playerSettingAttribIdFetch:I

    .line 2020
    .local v2, "fetch_id":I
    iget-object v4, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get4(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/avrcp/AvrcpControllerService$PlayerSettings;

    .line 2021
    .local v3, "plSetting":Lcom/android/bluetooth/avrcp/AvrcpControllerService$PlayerSettings;
    new-array v4, p3, [B

    iput-object v4, v3, Lcom/android/bluetooth/avrcp/AvrcpControllerService$PlayerSettings;->supported_values:[B

    .line 2022
    const/4 v0, 0x0

    .local v0, "count":I
    :goto_0
    if-ge v0, p3, :cond_4

    .line 2023
    iget-object v4, v3, Lcom/android/bluetooth/avrcp/AvrcpControllerService$PlayerSettings;->supported_values:[B

    aget-byte v5, p2, v0

    aput-byte v5, v4, v0

    .line 2022
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2024
    :cond_4
    iget-object v4, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    iget-object v5, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    invoke-virtual {v5, v10, v7, v7}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1998
    return-void
.end method

.method private handleListPlayerApplicationSettingsAttrib([B[BIB)V
    .locals 10
    .param p1, "address"    # [B
    .param p2, "supported_setting_attrib"    # [B
    .param p3, "num_attrib"    # I
    .param p4, "rsp_type"    # B

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0x64

    const/4 v7, 0x4

    .line 1959
    const-string/jumbo v4, "AvrcpControllerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleListPlayerApplicationSettingsAttrib "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1960
    const-string/jumbo v6, " rsp_type "

    .line 1959
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1961
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    .line 1962
    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v5

    .line 1961
    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 1963
    .local v2, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v4, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mConnectedDevices:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1964
    return-void

    .line 1965
    :cond_0
    iget-object v4, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    .line 1966
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1965
    invoke-virtual {v4, v8, v5}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->hasMessages(ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1968
    iget-object v4, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    .line 1969
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1968
    invoke-virtual {v4, v8, v5}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->removeMessages(ILjava/lang/Object;)V

    .line 1970
    const-string/jumbo v4, "AvrcpControllerService"

    const-string/jumbo v5, " Timeout CMD dequeued "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1972
    :cond_1
    const/16 v4, 0xc

    if-ne p4, v4, :cond_2

    if-gtz p3, :cond_3

    .line 1974
    :cond_2
    iget-object v4, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->sendEmptyMessage(I)Z

    .line 1975
    return-void

    .line 1977
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1978
    .local v3, "supported_attrib":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/bluetooth/avrcp/AvrcpControllerService$PlayerSettings;>;"
    const/4 v1, 0x0

    .local v1, "count":I
    :goto_0
    if-ge v1, p3, :cond_4

    .line 1980
    new-instance v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$PlayerSettings;

    invoke-direct {v0, p0, v9}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$PlayerSettings;-><init>(Lcom/android/bluetooth/avrcp/AvrcpControllerService;Lcom/android/bluetooth/avrcp/AvrcpControllerService$PlayerSettings;)V

    .line 1981
    .local v0, "attrib":Lcom/android/bluetooth/avrcp/AvrcpControllerService$PlayerSettings;
    aget-byte v4, p2, v1

    iput-byte v4, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$PlayerSettings;->attr_Id:B

    .line 1982
    iput-object v9, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$PlayerSettings;->supported_values:[B

    .line 1983
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1978
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1985
    .end local v0    # "attrib":Lcom/android/bluetooth/avrcp/AvrcpControllerService$PlayerSettings;
    :cond_4
    iget-object v4, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    iget-object v5, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    .line 1986
    const/16 v6, 0x3ec

    .line 1985
    invoke-virtual {v5, v6, v3}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1957
    return-void
.end method

.method private handleNotificationRsp([BBI[B)V
    .locals 8
    .param p1, "address"    # [B
    .param p2, "rspType"    # B
    .param p3, "rspLen"    # I
    .param p4, "response"    # [B

    .prologue
    const/4 v7, 0x0

    .line 2066
    const-string/jumbo v4, "AvrcpControllerService"

    const-string/jumbo v5, "handleNotificationRsp "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2067
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    .line 2068
    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v5

    .line 2067
    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 2069
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v4, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mConnectedDevices:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-gtz p3, :cond_1

    .line 2070
    :cond_0
    return-void

    .line 2071
    :cond_1
    aget-byte v3, p4, v7

    .line 2072
    .local v3, "notificationEventId":I
    move v2, p2

    .line 2073
    .local v2, "notificaionRspType":I
    const-string/jumbo v4, "AvrcpControllerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " rsp_type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " notificationId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2074
    const/16 v4, 0xf

    if-eq p2, v4, :cond_3

    const/16 v4, 0xd

    if-eq p2, v4, :cond_3

    .line 2076
    iget-object v4, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    add-int/lit16 v5, v3, 0x7d0

    invoke-virtual {v4, v5}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2078
    iget-object v4, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    add-int/lit16 v5, v3, 0x7d0

    invoke-virtual {v4, v5}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->removeMessages(I)V

    .line 2079
    const-string/jumbo v4, "AvrcpControllerService"

    const-string/jumbo v5, " Timeout CMD dequeued "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2081
    :cond_2
    add-int/lit16 v4, v3, 0x7d0

    invoke-direct {p0, v4}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->handleNotificationTimeout(I)V

    .line 2082
    return-void

    .line 2084
    :cond_3
    invoke-static {p4, v7, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2085
    .local v0, "bb":Ljava/nio/ByteBuffer;
    iget-object v4, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    iget-object v5, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    const/16 v6, 0x3f7

    invoke-virtual {v5, v6, v3, v2, v0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2064
    return-void
.end method

.method private handleNotificationTimeout(I)V
    .locals 6
    .param p1, "cmd"    # I

    .prologue
    .line 1320
    const-string/jumbo v3, "AvrcpControllerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " handleNotificationTimeout cmd "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    add-int/lit16 v1, p1, -0x7d0

    .line 1323
    .local v1, "notificaitonId":I
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    invoke-static {v3}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get3(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 1324
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    invoke-static {v3}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get3(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/avrcp/AvrcpControllerService$NotifyEvents;

    iget-byte v3, v3, Lcom/android/bluetooth/avrcp/AvrcpControllerService$NotifyEvents;->notify_event_id:B

    if-ne v1, v3, :cond_1

    .line 1327
    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    invoke-static {v3}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get3(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v0, v3, :cond_2

    .line 1328
    return-void

    .line 1323
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1329
    :cond_2
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    invoke-static {v3}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get3(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/avrcp/AvrcpControllerService$NotifyEvents;

    .line 1330
    .local v2, "notifyEvent":Lcom/android/bluetooth/avrcp/AvrcpControllerService$NotifyEvents;
    iget-byte v3, v2, Lcom/android/bluetooth/avrcp/AvrcpControllerService$NotifyEvents;->notify_event_id:B

    if-ne v3, v1, :cond_3

    .line 1331
    iget-byte v3, v2, Lcom/android/bluetooth/avrcp/AvrcpControllerService$NotifyEvents;->notify_state:B

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 1333
    const/4 v3, 0x1

    iput-byte v3, v2, Lcom/android/bluetooth/avrcp/AvrcpControllerService$NotifyEvents;->notify_state:B

    .line 1334
    invoke-direct {p0, v1}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->registerFurtherNotification(I)V

    .line 1318
    :cond_3
    return-void
.end method

.method private handlePassthroughRsp(II)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "keyState"    # I

    .prologue
    .line 1894
    const-string/jumbo v0, "AvrcpControllerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "passthrough response received as: key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1895
    const-string/jumbo v2, " state: "

    .line 1894
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1893
    return-void
.end method

.method private handleProcessAbsVolNotification()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    .line 1627
    const-string/jumbo v4, "AvrcpControllerService"

    const-string/jumbo v5, " handleProcessAbsVolNotification "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1628
    iget-object v4, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    if-nez v4, :cond_0

    .line 1629
    return-void

    .line 1630
    :cond_0
    iget-object v4, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    iget v4, v4, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->absVolNotificationState:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 1632
    sget-object v4, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v6}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    .line 1633
    .local v1, "maxVol":I
    sget-object v4, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 1634
    .local v0, "currIndex":I
    mul-int/lit8 v4, v0, 0x7f

    div-int v2, v4, v1

    .line 1635
    .local v2, "percentageVol":I
    const-string/jumbo v4, "AvrcpControllerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " maxVol ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " currentIndex ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1636
    const-string/jumbo v6, " percentageVol ="

    .line 1635
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1637
    const/16 v3, 0xf

    .line 1638
    .local v3, "rspType":B
    iget-object v4, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    const/4 v5, 0x2

    iput v5, v4, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->absVolNotificationState:I

    .line 1639
    invoke-direct {p0, v3, v2}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->sendRegisterAbsVolRspNative(BI)V

    .line 1625
    .end local v0    # "currIndex":I
    .end local v1    # "maxVol":I
    .end local v2    # "percentageVol":I
    .end local v3    # "rspType":B
    :cond_1
    return-void
.end method

.method private handleProcessGetElementAttribute(ILjava/nio/ByteBuffer;)V
    .locals 7
    .param p1, "numAttributes"    # I
    .param p2, "attribBuffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 1465
    const-string/jumbo v3, "AvrcpControllerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleProcessGetElementAttribute numAttrib ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1466
    const/4 v0, 0x0

    .line 1467
    .local v0, "attributeId":I
    const/4 v2, 0x0

    .line 1468
    .local v2, "currentIndex":I
    const/4 v1, 0x0

    .local v1, "count":I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 1474
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    invoke-static {v3}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get2(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;

    move-result-object v3

    invoke-static {v3}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;->-get2(Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;)I

    move-result v3

    iget-object v4, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->requestedElementAttribs:[I

    array-length v4, v4

    if-lt v3, v4, :cond_0

    .line 1468
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1476
    :cond_0
    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    .line 1477
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->requestedElementAttribs:[I

    iget-object v4, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get2(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;

    move-result-object v4

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;->-get2(Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;)I

    move-result v4

    aget v3, v3, v4

    if-eq v3, v0, :cond_2

    .line 1479
    const-string/jumbo v3, "AvrcpControllerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " Received Rsp for attributeId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " Requested ID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1480
    iget-object v5, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->requestedElementAttribs:[I

    iget-object v6, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    invoke-static {v6}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get2(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;

    move-result-object v6

    invoke-static {v6}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;->-get2(Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;)I

    move-result v6

    aget v5, v5, v6

    .line 1479
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1495
    :cond_1
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->getFurtherElementAttribute(I)V

    .line 1463
    return-void

    .line 1483
    :cond_2
    add-int/lit8 v2, v2, 0x4

    .line 1484
    const-string/jumbo v3, "AvrcpControllerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " attributeID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1488
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    add-int/lit16 v4, v0, 0xbb8

    invoke-virtual {v3, v4}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1490
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    add-int/lit16 v4, v0, 0xbb8

    invoke-virtual {v3, v4}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->removeMessages(I)V

    .line 1491
    const-string/jumbo v3, "AvrcpControllerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " Timeout CMD = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "dequed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1493
    :cond_3
    invoke-direct {p0, v2, v0, p2}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->parseElementAttributes(IILjava/nio/ByteBuffer;)I

    move-result v2

    goto/16 :goto_1
.end method

.method private handleProcessNotificationResponse(IILjava/nio/ByteBuffer;)V
    .locals 16
    .param p1, "notificationId"    # I
    .param p2, "notificationType"    # I
    .param p3, "notificationRsp"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 1500
    const-string/jumbo v12, "AvrcpControllerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "handleProcessNotificationResponse id "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 1501
    const-string/jumbo v14, " type = "

    .line 1500
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1505
    const/4 v9, 0x1

    .line 1506
    .local v9, "oldState":B
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    move/from16 v0, p1

    add-int/lit16 v13, v0, 0x7d0

    invoke-virtual {v12, v13}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->hasMessages(I)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 1508
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    move/from16 v0, p1

    add-int/lit16 v13, v0, 0x7d0

    invoke-virtual {v12, v13}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->removeMessages(I)V

    .line 1509
    const-string/jumbo v12, "AvrcpControllerService"

    const-string/jumbo v13, " Timeout Notification CMD dequeued "

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1511
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    invoke-static {v12}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get3(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "notifyEvent$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/bluetooth/avrcp/AvrcpControllerService$NotifyEvents;

    .line 1513
    .local v5, "notifyEvent":Lcom/android/bluetooth/avrcp/AvrcpControllerService$NotifyEvents;
    iget-byte v12, v5, Lcom/android/bluetooth/avrcp/AvrcpControllerService$NotifyEvents;->notify_event_id:B

    move/from16 v0, p1

    if-ne v0, v12, :cond_1

    .line 1515
    iget-byte v9, v5, Lcom/android/bluetooth/avrcp/AvrcpControllerService$NotifyEvents;->notify_state:B

    .line 1516
    .local v9, "oldState":B
    const/4 v12, 0x2

    if-ne v9, v12, :cond_4

    .line 1517
    const/16 v12, 0xf

    move/from16 v0, p2

    if-ne v0, v12, :cond_4

    .line 1518
    const/4 v12, 0x3

    iput-byte v12, v5, Lcom/android/bluetooth/avrcp/AvrcpControllerService$NotifyEvents;->notify_state:B

    .line 1526
    .end local v5    # "notifyEvent":Lcom/android/bluetooth/avrcp/AvrcpControllerService$NotifyEvents;
    .end local v9    # "oldState":B
    :cond_2
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 1584
    :cond_3
    :goto_1
    :pswitch_0
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->registerFurtherNotification(I)V

    .line 1498
    return-void

    .line 1520
    .restart local v5    # "notifyEvent":Lcom/android/bluetooth/avrcp/AvrcpControllerService$NotifyEvents;
    .restart local v9    # "oldState":B
    :cond_4
    const/4 v12, 0x3

    if-ne v9, v12, :cond_2

    .line 1521
    const/16 v12, 0xd

    move/from16 v0, p2

    if-ne v0, v12, :cond_2

    .line 1522
    const/4 v12, 0x1

    iput-byte v12, v5, Lcom/android/bluetooth/avrcp/AvrcpControllerService$NotifyEvents;->notify_state:B

    goto :goto_0

    .line 1529
    .end local v5    # "notifyEvent":Lcom/android/bluetooth/avrcp/AvrcpControllerService$NotifyEvents;
    .end local v9    # "oldState":B
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    invoke-static {v12}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get2(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;

    move-result-object v12

    invoke-static {v12}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;->-get4(Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;)B

    move-result v8

    .line 1530
    .local v8, "oldPlayStatus":B
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    invoke-static {v12}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get2(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;

    move-result-object v12

    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v13

    invoke-static {v12, v13}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;->-set4(Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;B)B

    .line 1536
    if-eqz v8, :cond_5

    .line 1537
    const/4 v12, 0x2

    if-ne v8, v12, :cond_6

    .line 1538
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    invoke-static {v12}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get2(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;

    move-result-object v12

    invoke-static {v12}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;->-get4(Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;)B

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_6

    .line 1539
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    invoke-static {v12}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get1(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Ljava/util/ArrayList;

    move-result-object v12

    const/4 v13, 0x5

    invoke-static {v13}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 1540
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    invoke-static {v12}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get1(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Ljava/util/ArrayList;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 1545
    :cond_6
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->updatePlayStatus()V

    goto :goto_1

    .line 1541
    :cond_7
    const-string/jumbo v12, "AvrcpControllerService"

    const-string/jumbo v13, " State Transition Triggered, Que GetPlayStatus "

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1542
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    const/16 v13, 0x9

    invoke-virtual {v12, v13}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->sendEmptyMessage(I)Z

    goto :goto_2

    .line 1548
    .end local v8    # "oldPlayStatus":B
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    invoke-static {v12}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get2(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;

    move-result-object v12

    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v13

    int-to-long v14, v13

    invoke-static {v12, v14, v15}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;->-set5(Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;J)J

    .line 1549
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->updatePlayTime()V

    goto/16 :goto_1

    .line 1552
    :pswitch_3
    const/4 v12, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    .line 1553
    .local v7, "numPlayerSettingAttribs":I
    const/4 v2, 0x2

    .line 1554
    .local v2, "attribIndex":I
    const/4 v4, 0x0

    .local v4, "count":I
    :goto_3
    if-ge v4, v7, :cond_a

    .line 1556
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v12

    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    .line 1558
    .local v3, "attributeId":Ljava/lang/Byte;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    invoke-static {v12}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get4(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Ljava/util/ArrayList;

    move-result-object v12

    .line 1557
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "plSettings$iterator":Ljava/util/Iterator;
    :cond_8
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/bluetooth/avrcp/AvrcpControllerService$PlayerSettings;

    .line 1560
    .local v10, "plSettings":Lcom/android/bluetooth/avrcp/AvrcpControllerService$PlayerSettings;
    iget-byte v12, v10, Lcom/android/bluetooth/avrcp/AvrcpControllerService$PlayerSettings;->attr_Id:B

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v13

    if-ne v12, v13, :cond_8

    .line 1562
    add-int/lit8 v12, v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v12

    iput-byte v12, v10, Lcom/android/bluetooth/avrcp/AvrcpControllerService$PlayerSettings;->attr_val:B

    goto :goto_4

    .line 1565
    .end local v10    # "plSettings":Lcom/android/bluetooth/avrcp/AvrcpControllerService$PlayerSettings;
    :cond_9
    add-int/lit8 v2, v2, 0x2

    .line 1554
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1567
    .end local v3    # "attributeId":Ljava/lang/Byte;
    .end local v11    # "plSettings$iterator":Ljava/util/Iterator;
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->updatePlayerApplicationSettings()V

    .line 1568
    const/4 v12, 0x3

    if-ne v9, v12, :cond_3

    .line 1569
    const/16 v12, 0xd

    move/from16 v0, p2

    if-ne v0, v12, :cond_3

    .line 1571
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    const/4 v13, 0x6

    invoke-virtual {v12, v13}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    .line 1575
    .end local v2    # "attribIndex":I
    .end local v4    # "count":I
    .end local v7    # "numPlayerSettingAttribs":I
    :pswitch_4
    const/4 v12, 0x3

    if-ne v9, v12, :cond_3

    .line 1576
    const/16 v12, 0xd

    move/from16 v0, p2

    if-ne v0, v12, :cond_3

    .line 1578
    const-string/jumbo v12, "AvrcpControllerService"

    const-string/jumbo v13, " Track change Happened, que GetElement, PlayerSetting "

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1579
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->sendEmptyMessage(I)Z

    .line 1580
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    const/4 v13, 0x6

    invoke-virtual {v12, v13}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    .line 1526
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private handleProcessPlayStatus(Ljava/nio/ByteBuffer;)V
    .locals 6
    .param p1, "bb"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 1588
    const/4 v1, 0x0

    .line 1589
    .local v1, "currentIndex":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    .line 1590
    .local v0, "bufSize":I
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get2(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;

    move-result-object v2

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v3

    int-to-long v4, v3

    invoke-static {v2, v4, v5}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;->-set6(Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;J)J

    .line 1591
    const/4 v1, 0x4

    .line 1592
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get2(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;

    move-result-object v2

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v3

    int-to-long v4, v3

    invoke-static {v2, v4, v5}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;->-set5(Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;J)J

    .line 1593
    add-int/lit8 v1, v1, 0x4

    .line 1594
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get2(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;

    move-result-object v2

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    invoke-static {v2, v3}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;->-set4(Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;B)B

    .line 1595
    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->updatePlayStatus()V

    .line 1596
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get1(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1597
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get1(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1586
    :cond_0
    :goto_0
    return-void

    .line 1599
    :cond_1
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get2(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;

    move-result-object v2

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;->-get4(Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;)B

    move-result v2

    if-eqz v2, :cond_0

    .line 1600
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get2(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;

    move-result-object v2

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;->-get4(Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;)B

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 1601
    const-string/jumbo v2, "AvrcpControllerService"

    const-string/jumbo v3, " POS and Status changed not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1602
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    const-wide/16 v4, 0x1388

    const/16 v3, 0x9

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private handleRegisterNotificationAbsVol([B)V
    .locals 3
    .param p1, "address"    # [B

    .prologue
    .line 2157
    const-string/jumbo v1, "AvrcpControllerService"

    const-string/jumbo v2, "handleRegisterNotificationAbsVol "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2158
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 2159
    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v2

    .line 2158
    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 2160
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mConnectedDevices:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2161
    return-void

    .line 2162
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    const/16 v2, 0x3f9

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->sendEmptyMessage(I)Z

    .line 2155
    return-void
.end method

.method private handleSetAbsVolume([BB)V
    .locals 5
    .param p1, "address"    # [B
    .param p2, "absVol"    # B

    .prologue
    .line 2147
    const-string/jumbo v2, "AvrcpControllerService"

    const-string/jumbo v3, "handleSetAbsVolume "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2148
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    .line 2149
    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v3

    .line 2148
    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 2150
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mConnectedDevices:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2151
    return-void

    .line 2152
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    const/16 v3, 0x3f8

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p2, v4}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 2153
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    invoke-virtual {v2, v1}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2145
    return-void
.end method

.method private handleSetPlayerApplicationResponse([BB)V
    .locals 6
    .param p1, "address"    # [B
    .param p2, "rsp_type"    # B

    .prologue
    const/16 v5, 0x64

    const/4 v4, 0x7

    .line 2166
    const-string/jumbo v1, "AvrcpControllerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleSetPlayerApplicationResponse rsp_type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2167
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 2168
    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v2

    .line 2167
    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 2169
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mConnectedDevices:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2170
    return-void

    .line 2171
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    .line 2172
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 2171
    invoke-virtual {v1, v5, v2}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->hasMessages(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2174
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    .line 2175
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 2174
    invoke-virtual {v1, v5, v2}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->removeMessages(ILjava/lang/Object;)V

    .line 2176
    const-string/jumbo v1, "AvrcpControllerService"

    const-string/jumbo v2, " Timeout CMD dequeued "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2183
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->sendEmptyMessage(I)Z

    .line 2164
    return-void
.end method

.method private native initNative()V
.end method

.method private initializeDatabase()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/16 v3, 0xff

    const/4 v2, 0x0

    .line 1108
    sget-boolean v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mDbInitialized:Z

    if-eqz v0, :cond_0

    .line 1109
    return-void

    .line 1110
    :cond_0
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 1111
    .local v9, "values":Landroid/content/ContentValues;
    const-string/jumbo v0, "track_num"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1112
    const-string/jumbo v0, "title"

    const-string/jumbo v1, "NOT_SUPPORTED"

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    const-string/jumbo v0, "artist_name"

    const-string/jumbo v1, "NOT_SUPPORTED"

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    const-string/jumbo v0, "album_name"

    const-string/jumbo v1, "NOT_SUPPORTED"

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1115
    const-string/jumbo v0, "total_tracks"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1116
    const-string/jumbo v0, "genre"

    const-string/jumbo v1, "NOT_SUPPORTED"

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1117
    const-string/jumbo v0, "playing_time"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1118
    const-string/jumbo v0, "total_track_time"

    .line 1119
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1118
    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1120
    const-string/jumbo v0, "play_status"

    const-string/jumbo v1, "NOT_SUPPORTED"

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    const-string/jumbo v0, "repeat_status"

    const-string/jumbo v1, "NOT_SUPPORTED"

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1122
    const-string/jumbo v0, "shuffle_status"

    const-string/jumbo v1, "NOT_SUPPORTED"

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1123
    const-string/jumbo v0, "scan_status"

    const-string/jumbo v1, "NOT_SUPPORTED"

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1124
    const-string/jumbo v0, "equalizer_status"

    .line 1125
    const-string/jumbo v1, "NOT_SUPPORTED"

    .line 1124
    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1126
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/bluetooth/BluetoothAvrcpInfo;->CONTENT_URI:Landroid/net/Uri;

    .line 1127
    const-string/jumbo v5, "_id"

    move-object v3, v2

    move-object v4, v2

    .line 1126
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1128
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 1129
    sget-object v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->sAvrcpControllerService:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1130
    sget-object v1, Landroid/bluetooth/BluetoothAvrcpInfo;->CONTENT_URI:Landroid/net/Uri;

    .line 1129
    invoke-virtual {v0, v1, v9, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 1131
    .local v8, "rowsUpdated":I
    const-string/jumbo v0, "AvrcpControllerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " initializeDataBase num_rows_updated "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    sput-boolean v10, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mDbInitialized:Z

    .line 1133
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1134
    return-void

    .line 1136
    .end local v8    # "rowsUpdated":I
    :cond_1
    sget-object v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->sAvrcpControllerService:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1137
    sget-object v1, Landroid/bluetooth/BluetoothAvrcpInfo;->CONTENT_URI:Landroid/net/Uri;

    .line 1136
    invoke-virtual {v0, v1, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    .line 1138
    .local v6, "contentUri":Landroid/net/Uri;
    const-string/jumbo v0, "AvrcpControllerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " InitializeDatabase uri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    if-eqz v7, :cond_2

    .line 1142
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1143
    :cond_2
    sput-boolean v10, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mDbInitialized:Z

    .line 1106
    return-void
.end method

.method private isEventSupported(B)Z
    .locals 2
    .param p1, "eventId"    # B

    .prologue
    const/4 v1, 0x1

    .line 1310
    if-eq p1, v1, :cond_0

    .line 1311
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 1314
    :cond_0
    return v1

    .line 1312
    :cond_1
    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    .line 1313
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 1316
    const/4 v0, 0x0

    return v0
.end method

.method private isMetaDataPresent(I)Z
    .locals 13
    .param p1, "attributeId"    # I

    .prologue
    const/4 v2, 0x0

    const/16 v12, 0xff

    .line 700
    sget-object v1, Landroid/bluetooth/BluetoothAvrcpInfo;->CONTENT_URI:Landroid/net/Uri;

    .line 701
    .local v1, "avrcpDataUri":Landroid/net/Uri;
    sget-object v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->sAvrcpControllerService:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 702
    const-string/jumbo v5, "_id"

    move-object v3, v2

    move-object v4, v2

    .line 701
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 703
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 711
    const/4 v7, 0x0

    .line 712
    .local v7, "index":I
    const/4 v8, 0x0

    .line 713
    .local v8, "metaDataPresent":Z
    packed-switch p1, :pswitch_data_0

    .line 850
    .end local v8    # "metaDataPresent":Z
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 851
    const-string/jumbo v0, "AvrcpControllerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " returning "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "for attrib "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    return v8

    .line 704
    .end local v7    # "index":I
    :cond_1
    const-string/jumbo v0, "AvrcpControllerService"

    const-string/jumbo v2, " isMetaDataPresent cursor not valid, returing"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    if-eqz v6, :cond_2

    .line 708
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 709
    :cond_2
    const/4 v0, 0x0

    return v0

    .line 716
    .restart local v7    # "index":I
    .restart local v8    # "metaDataPresent":Z
    :pswitch_0
    const-string/jumbo v0, "album_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 717
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 718
    const-string/jumbo v2, "NOT_SUPPORTED"

    .line 717
    if-eq v0, v2, :cond_0

    .line 719
    const/4 v8, 0x1

    goto :goto_0

    .line 722
    :pswitch_1
    const-string/jumbo v0, "artist_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 723
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 724
    const-string/jumbo v2, "NOT_SUPPORTED"

    .line 723
    if-eq v0, v2, :cond_0

    .line 725
    const/4 v8, 0x1

    goto :goto_0

    .line 728
    :pswitch_2
    const-string/jumbo v0, "genre"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 729
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 730
    const-string/jumbo v2, "NOT_SUPPORTED"

    .line 729
    if-eq v0, v2, :cond_0

    .line 731
    const/4 v8, 0x1

    goto :goto_0

    .line 734
    :pswitch_3
    const-string/jumbo v0, "title"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 735
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 736
    const-string/jumbo v2, "NOT_SUPPORTED"

    .line 735
    if-eq v0, v2, :cond_0

    .line 737
    const/4 v8, 0x1

    goto :goto_0

    .line 741
    :pswitch_4
    const-string/jumbo v0, "playing_time"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 742
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eq v0, v12, :cond_0

    .line 744
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 747
    :pswitch_5
    const-string/jumbo v0, "total_tracks"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 748
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eq v0, v12, :cond_0

    .line 750
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 753
    :pswitch_6
    const-string/jumbo v0, "track_num"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 754
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eq v0, v12, :cond_0

    .line 756
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 759
    :pswitch_7
    const-string/jumbo v0, "track_num"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 760
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eq v0, v12, :cond_0

    .line 763
    const-string/jumbo v0, "total_tracks"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 764
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eq v0, v12, :cond_0

    .line 767
    const-string/jumbo v0, "playing_time"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 768
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eq v0, v12, :cond_0

    .line 771
    const-string/jumbo v0, "title"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 772
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 773
    const-string/jumbo v2, "NOT_SUPPORTED"

    .line 772
    if-eq v0, v2, :cond_0

    .line 775
    const-string/jumbo v0, "genre"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 776
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 777
    const-string/jumbo v2, "NOT_SUPPORTED"

    .line 776
    if-eq v0, v2, :cond_0

    .line 779
    const-string/jumbo v0, "artist_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 780
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 781
    const-string/jumbo v2, "NOT_SUPPORTED"

    .line 780
    if-eq v0, v2, :cond_0

    .line 783
    const-string/jumbo v0, "album_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 784
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 785
    const-string/jumbo v2, "NOT_SUPPORTED"

    .line 784
    if-eq v0, v2, :cond_0

    .line 788
    const/4 v8, 0x1

    .line 789
    goto/16 :goto_0

    .line 791
    :pswitch_8
    const-string/jumbo v0, "play_status"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 792
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 793
    const-string/jumbo v2, "NOT_SUPPORTED"

    .line 792
    if-eq v0, v2, :cond_0

    .line 794
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 797
    :pswitch_9
    const-string/jumbo v0, "total_track_time"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 798
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eq v0, v12, :cond_0

    .line 800
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 803
    :pswitch_a
    const-string/jumbo v0, "play_status"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 804
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 805
    const-string/jumbo v2, "NOT_SUPPORTED"

    .line 804
    if-eq v0, v2, :cond_0

    .line 807
    const-string/jumbo v0, "total_track_time"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 808
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eq v0, v12, :cond_0

    .line 812
    const/4 v8, 0x1

    .line 813
    goto/16 :goto_0

    .line 815
    :pswitch_b
    const/4 v11, 0x1

    .line 816
    .local v11, "plSettingSupported":Z
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get4(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "plSetting$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/bluetooth/avrcp/AvrcpControllerService$PlayerSettings;

    .line 817
    .local v9, "plSetting":Lcom/android/bluetooth/avrcp/AvrcpControllerService$PlayerSettings;
    iget-byte v0, v9, Lcom/android/bluetooth/avrcp/AvrcpControllerService$PlayerSettings;->attr_Id:B

    packed-switch v0, :pswitch_data_1

    .line 844
    :cond_4
    :goto_1
    if-nez v11, :cond_3

    .line 847
    .end local v9    # "plSetting":Lcom/android/bluetooth/avrcp/AvrcpControllerService$PlayerSettings;
    :cond_5
    move v8, v11

    .line 848
    .local v8, "metaDataPresent":Z
    goto/16 :goto_0

    .line 820
    .local v8, "metaDataPresent":Z
    .restart local v9    # "plSetting":Lcom/android/bluetooth/avrcp/AvrcpControllerService$PlayerSettings;
    :pswitch_c
    const-string/jumbo v0, "repeat_status"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 821
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 822
    const-string/jumbo v2, "NOT_SUPPORTED"

    .line 821
    if-ne v0, v2, :cond_4

    .line 823
    const/4 v11, 0x0

    goto :goto_1

    .line 826
    :pswitch_d
    const-string/jumbo v0, "equalizer_status"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 827
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 828
    const-string/jumbo v2, "NOT_SUPPORTED"

    .line 827
    if-ne v0, v2, :cond_4

    .line 829
    const/4 v11, 0x0

    goto :goto_1

    .line 832
    :pswitch_e
    const-string/jumbo v0, "scan_status"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 833
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 834
    const-string/jumbo v2, "NOT_SUPPORTED"

    .line 833
    if-ne v0, v2, :cond_4

    .line 835
    const/4 v11, 0x0

    goto :goto_1

    .line 838
    :pswitch_f
    const-string/jumbo v0, "shuffle_status"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 839
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 840
    const-string/jumbo v2, "NOT_SUPPORTED"

    .line 839
    if-ne v0, v2, :cond_4

    .line 841
    const/4 v11, 0x0

    goto :goto_1

    .line 713
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_2
        :pswitch_4
        :pswitch_a
        :pswitch_9
        :pswitch_4
        :pswitch_8
        :pswitch_b
    .end packed-switch

    .line 817
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_f
        :pswitch_e
    .end packed-switch
.end method

.method private native listPlayerApplicationSettingAttributeNative()V
.end method

.method private native listPlayerApplicationSettingValueNative(B)V
.end method

.method private onConnectionStateChanged(Z[B)V
    .locals 10
    .param p1, "connected"    # Z
    .param p2, "address"    # [B

    .prologue
    const/16 v9, 0x4b0

    const/4 v8, 0x0

    .line 1852
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v5

    .line 1853
    invoke-static {p2}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v6

    .line 1852
    invoke-virtual {v5, v6}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 1854
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    const-string/jumbo v5, "AvrcpControllerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onConnectionStateChanged "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " size "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1855
    iget-object v7, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mConnectedDevices:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 1854
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1856
    if-nez v0, :cond_0

    .line 1857
    return-void

    .line 1858
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v5, "android.bluetooth.acrcp-controller.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1859
    .local v1, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mConnectedDevices:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x2

    .line 1861
    .local v4, "oldState":I
    :goto_0
    if-eqz p1, :cond_2

    const/4 v3, 0x2

    .line 1864
    .local v3, "newState":I
    :goto_1
    if-eqz p1, :cond_5

    if-nez v4, :cond_5

    .line 1866
    iget-object v5, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mConnectedDevices:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 1867
    const-string/jumbo v5, "AvrcpControllerService"

    const-string/jumbo v6, "A Connection already exists, returning"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1868
    return-void

    .line 1860
    .end local v3    # "newState":I
    .end local v4    # "oldState":I
    :cond_1
    const/4 v4, 0x0

    .restart local v4    # "oldState":I
    goto :goto_0

    .line 1862
    :cond_2
    const/4 v3, 0x0

    .restart local v3    # "newState":I
    goto :goto_1

    .line 1870
    :cond_3
    iget-object v5, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mConnectedDevices:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1871
    iget-object v5, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    const/4 v6, 0x1

    invoke-virtual {v5, v9, v6, v8, v0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1872
    .local v2, "msg":Landroid/os/Message;
    iget-object v5, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    invoke-virtual {v5, v2}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1878
    .end local v2    # "msg":Landroid/os/Message;
    :cond_4
    :goto_2
    const-string/jumbo v5, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1879
    const-string/jumbo v5, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1880
    const-string/jumbo v5, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1882
    const-string/jumbo v5, "android.permission.BLUETOOTH"

    invoke-virtual {p0, v1, v5}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1851
    return-void

    .line 1873
    :cond_5
    if-nez p1, :cond_4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    .line 1874
    iget-object v5, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mConnectedDevices:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1875
    iget-object v5, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    invoke-virtual {v5, v9, v8, v8, v0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1876
    .restart local v2    # "msg":Landroid/os/Message;
    iget-object v5, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    invoke-virtual {v5, v2}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2
.end method

.method private parseElementAttributes(IILjava/nio/ByteBuffer;)I
    .locals 6
    .param p1, "currentIndex"    # I
    .param p2, "attributeId"    # I
    .param p3, "attribBuffer"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v5, 0x0

    .line 1422
    const-string/jumbo v2, "AvrcpControllerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "parseElementAttributes Id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1423
    add-int/lit8 p1, p1, 0x2

    .line 1424
    invoke-virtual {p3, p1}, Ljava/nio/ByteBuffer;->getChar(I)C

    move-result v1

    .line 1425
    .local v1, "asciiStringLen":I
    const-string/jumbo v2, "AvrcpControllerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " asciiStringLen "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1426
    add-int/lit8 p1, p1, 0x2

    .line 1427
    if-lez v1, :cond_0

    add-int v2, p1, v1

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-le v2, v3, :cond_1

    .line 1429
    :cond_0
    const-string/jumbo v2, "AvrcpControllerService"

    const-string/jumbo v3, " parseElementAttribute wrong buffer"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    invoke-direct {p0, p2, v1}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->resetElementAttribute(II)V

    .line 1431
    return p1

    .line 1433
    :cond_1
    new-array v0, v1, [B

    .line 1434
    .local v0, "asciiString":[B
    invoke-virtual {p3, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1435
    invoke-virtual {p3, v0, v5, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 1436
    add-int/2addr p1, v1

    .line 1437
    packed-switch p2, :pswitch_data_0

    .line 1461
    :goto_0
    return p1

    .line 1440
    :pswitch_0
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get2(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;

    move-result-object v2

    invoke-direct {p0, v0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->utf8ToString([B)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;->-set9(Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 1443
    :pswitch_1
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get2(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;

    move-result-object v2

    invoke-direct {p0, v0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->utf8ToString([B)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;->-set1(Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 1446
    :pswitch_2
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get2(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;

    move-result-object v2

    invoke-direct {p0, v0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->utf8ToString([B)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;->-set0(Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 1449
    :pswitch_3
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get2(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;

    move-result-object v2

    invoke-direct {p0, v0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->utf8ToString([B)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;->-set3(Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 1452
    :pswitch_4
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get2(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;

    move-result-object v2

    invoke-direct {p0, v1, v0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->asciiToInt(I[B)I

    move-result v3

    int-to-long v4, v3

    invoke-static {v2, v4, v5}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;->-set8(Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;J)J

    goto :goto_0

    .line 1455
    :pswitch_5
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get2(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;

    move-result-object v2

    invoke-direct {p0, v1, v0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->asciiToInt(I[B)I

    move-result v3

    int-to-long v4, v3

    invoke-static {v2, v4, v5}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;->-set7(Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;J)J

    goto :goto_0

    .line 1458
    :pswitch_6
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get2(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;

    move-result-object v2

    invoke-direct {p0, v1, v0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->asciiToInt(I[B)I

    move-result v3

    int-to-long v4, v3

    invoke-static {v2, v4, v5}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;->-set6(Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;J)J

    goto :goto_0

    .line 1437
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_6
    .end packed-switch
.end method

.method private registerFurtherNotification(I)V
    .locals 12
    .param p1, "exemptNotificaionId"    # I

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1055
    const-string/jumbo v4, "AvrcpControllerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " ExemptedNotificationId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    const/4 v1, 0x0

    .line 1062
    .local v1, "notificationSent":Z
    iget-object v4, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get3(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "notifyEvent$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/avrcp/AvrcpControllerService$NotifyEvents;

    .line 1064
    .local v2, "notifyEvent":Lcom/android/bluetooth/avrcp/AvrcpControllerService$NotifyEvents;
    const-string/jumbo v4, "AvrcpControllerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " ID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-byte v6, v2, Lcom/android/bluetooth/avrcp/AvrcpControllerService$NotifyEvents;->notify_event_id:B

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " state = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1065
    iget-byte v6, v2, Lcom/android/bluetooth/avrcp/AvrcpControllerService$NotifyEvents;->notify_state:B

    .line 1064
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    iget-byte v4, v2, Lcom/android/bluetooth/avrcp/AvrcpControllerService$NotifyEvents;->notify_event_id:B

    if-eq v4, p1, :cond_0

    .line 1068
    iget-byte v4, v2, Lcom/android/bluetooth/avrcp/AvrcpControllerService$NotifyEvents;->notify_state:B

    if-ne v4, v9, :cond_0

    .line 1070
    const/4 v1, 0x1

    .line 1071
    iput-byte v10, v2, Lcom/android/bluetooth/avrcp/AvrcpControllerService$NotifyEvents;->notify_state:B

    .line 1072
    const-string/jumbo v4, "AvrcpControllerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " queing notificaiton request id  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1073
    iget-byte v6, v2, Lcom/android/bluetooth/avrcp/AvrcpControllerService$NotifyEvents;->notify_event_id:B

    add-int/lit16 v6, v6, 0x7d0

    .line 1072
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    iget-object v4, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    iget-byte v5, v2, Lcom/android/bluetooth/avrcp/AvrcpControllerService$NotifyEvents;->notify_event_id:B

    add-int/lit16 v5, v5, 0x7d0

    invoke-virtual {v4, v5}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1075
    .local v0, "msg":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    const-wide/16 v6, 0x7d0

    invoke-virtual {v4, v0, v6, v7}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1076
    iget-byte v4, v2, Lcom/android/bluetooth/avrcp/AvrcpControllerService$NotifyEvents;->notify_event_id:B

    if-ne v4, v11, :cond_4

    .line 1077
    iget-byte v4, v2, Lcom/android/bluetooth/avrcp/AvrcpControllerService$NotifyEvents;->notify_event_id:B

    invoke-direct {p0, v4, v9}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->registerNotificationNative(BI)V

    .line 1083
    .end local v0    # "msg":Landroid/os/Message;
    .end local v2    # "notifyEvent":Lcom/android/bluetooth/avrcp/AvrcpControllerService$NotifyEvents;
    :cond_1
    :goto_0
    if-nez v1, :cond_3

    if-eqz p1, :cond_3

    .line 1088
    iget-object v4, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get3(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/avrcp/AvrcpControllerService$NotifyEvents;

    .line 1090
    .restart local v2    # "notifyEvent":Lcom/android/bluetooth/avrcp/AvrcpControllerService$NotifyEvents;
    iget-byte v4, v2, Lcom/android/bluetooth/avrcp/AvrcpControllerService$NotifyEvents;->notify_event_id:B

    if-ne v4, p1, :cond_2

    .line 1092
    const/4 v1, 0x1

    .line 1093
    iput-byte v10, v2, Lcom/android/bluetooth/avrcp/AvrcpControllerService$NotifyEvents;->notify_state:B

    .line 1094
    iget-object v4, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    iget-byte v5, v2, Lcom/android/bluetooth/avrcp/AvrcpControllerService$NotifyEvents;->notify_event_id:B

    add-int/lit16 v5, v5, 0x7d0

    invoke-virtual {v4, v5}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1095
    .restart local v0    # "msg":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    const-wide/16 v6, 0x7d0

    invoke-virtual {v4, v0, v6, v7}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1096
    iget-byte v4, v2, Lcom/android/bluetooth/avrcp/AvrcpControllerService$NotifyEvents;->notify_event_id:B

    if-ne v4, v11, :cond_5

    .line 1097
    iget-byte v4, v2, Lcom/android/bluetooth/avrcp/AvrcpControllerService$NotifyEvents;->notify_event_id:B

    invoke-direct {p0, v4, v9}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->registerNotificationNative(BI)V

    .line 1053
    .end local v0    # "msg":Landroid/os/Message;
    .end local v2    # "notifyEvent":Lcom/android/bluetooth/avrcp/AvrcpControllerService$NotifyEvents;
    :cond_3
    :goto_1
    return-void

    .line 1079
    .restart local v0    # "msg":Landroid/os/Message;
    .restart local v2    # "notifyEvent":Lcom/android/bluetooth/avrcp/AvrcpControllerService$NotifyEvents;
    :cond_4
    iget-byte v4, v2, Lcom/android/bluetooth/avrcp/AvrcpControllerService$NotifyEvents;->notify_event_id:B

    invoke-direct {p0, v4, v8}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->registerNotificationNative(BI)V

    goto :goto_0

    .line 1100
    :cond_5
    iget-byte v4, v2, Lcom/android/bluetooth/avrcp/AvrcpControllerService$NotifyEvents;->notify_event_id:B

    invoke-direct {p0, v4, v8}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->registerNotificationNative(BI)V

    goto :goto_1
.end method

.method private native registerNotificationNative(BI)V
.end method

.method private resetElementAttribute(II)V
    .locals 4
    .param p1, "attributeId"    # I
    .param p2, "asciiStringLen"    # I

    .prologue
    const-wide/16 v2, 0xff

    .line 1393
    if-nez p2, :cond_0

    .line 1394
    packed-switch p1, :pswitch_data_0

    .line 1392
    :cond_0
    :goto_0
    return-void

    .line 1397
    :pswitch_0
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get2(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;

    move-result-object v0

    const-string/jumbo v1, "NOT_SUPPORTED"

    invoke-static {v0, v1}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;->-set9(Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 1400
    :pswitch_1
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get2(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;

    move-result-object v0

    const-string/jumbo v1, "NOT_SUPPORTED"

    invoke-static {v0, v1}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;->-set1(Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 1403
    :pswitch_2
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get2(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;

    move-result-object v0

    const-string/jumbo v1, "NOT_SUPPORTED"

    invoke-static {v0, v1}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;->-set0(Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 1406
    :pswitch_3
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get2(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;

    move-result-object v0

    const-string/jumbo v1, "NOT_SUPPORTED"

    invoke-static {v0, v1}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;->-set3(Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 1409
    :pswitch_4
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get2(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;

    move-result-object v0

    invoke-static {v0, v2, v3}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;->-set8(Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;J)J

    goto :goto_0

    .line 1412
    :pswitch_5
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get2(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;

    move-result-object v0

    invoke-static {v0, v2, v3}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;->-set7(Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;J)J

    goto :goto_0

    .line 1415
    :pswitch_6
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get2(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;

    move-result-object v0

    invoke-static {v0, v2, v3}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;->-set6(Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;J)J

    goto :goto_0

    .line 1394
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_6
    .end packed-switch
.end method

.method private native sendAbsVolRspNative(I)V
.end method

.method private native sendPassThroughCommandNative([BII)Z
.end method

.method private native sendRegisterAbsVolRspNative(BI)V
.end method

.method private setAbsVolume(I)V
    .locals 7
    .param p1, "absVol"    # I

    .prologue
    const/4 v6, 0x3

    .line 1608
    sget-object v3, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v6}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    .line 1609
    .local v1, "maxVolume":I
    sget-object v3, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 1610
    .local v0, "currIndex":I
    mul-int v3, v1, p1

    div-int/lit8 v2, v3, 0x7f

    .line 1611
    .local v2, "newIndex":I
    const-string/jumbo v3, "AvrcpControllerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " setAbsVolume ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " maxVol = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " cur = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1612
    const-string/jumbo v5, " new = "

    .line 1611
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1618
    if-eq v2, v0, :cond_1

    .line 1619
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    iget v3, v3, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->absVolNotificationState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 1620
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    iput v6, v3, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->absVolNotificationState:I

    .line 1621
    :cond_0
    sget-object v3, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v6, v2, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1623
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->sendAbsVolRspNative(I)V

    .line 1606
    return-void
.end method

.method private static declared-synchronized setAvrcpControllerService(Lcom/android/bluetooth/avrcp/AvrcpControllerService;)V
    .locals 4
    .param p0, "instance"    # Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    .prologue
    const-class v1, Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    monitor-enter v1

    .line 459
    if-eqz p0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 460
    const-string/jumbo v0, "AvrcpControllerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAvrcpControllerService(): set to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->sAvrcpControllerService:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    sput-object p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->sAvrcpControllerService:Lcom/android/bluetooth/avrcp/AvrcpControllerService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v1

    .line 458
    return-void

    .line 464
    :cond_1
    :try_start_1
    sget-object v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->sAvrcpControllerService:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    if-nez v0, :cond_2

    .line 465
    const-string/jumbo v0, "AvrcpControllerService"

    const-string/jumbo v2, "setAvrcpControllerService(): service not available"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 466
    :cond_2
    :try_start_2
    sget-object v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->sAvrcpControllerService:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 467
    const-string/jumbo v0, "AvrcpControllerService"

    const-string/jumbo v2, "setAvrcpControllerService(): service is cleaning up"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private setCurrentPlayerApplicationSettingsValues(II)V
    .locals 10
    .param p1, "attribId"    # I
    .param p2, "attribVal"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 981
    iget-object v4, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    .line 982
    const/4 v5, 0x7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 981
    const/16 v6, 0x64

    invoke-virtual {v4, v6, v8, v8, v5}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 983
    .local v2, "msg":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    const-wide/16 v6, 0x7d0

    invoke-virtual {v4, v2, v6, v7}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 984
    const/4 v3, 0x1

    .line 985
    .local v3, "numAttrib":B
    new-array v0, v9, [B

    .line 986
    .local v0, "attributeId":[B
    new-array v1, v9, [B

    .line 987
    .local v1, "attributeVal":[B
    int-to-byte v4, p1

    aput-byte v4, v0, v8

    .line 988
    int-to-byte v4, p2

    aput-byte v4, v1, v8

    .line 989
    invoke-direct {p0, v3, v0, v1}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->setPlayerApplicationSettingValuesNative(B[B[B)V

    .line 979
    return-void
.end method

.method private native setPlayerApplicationSettingValuesNative(B[B[B)V
.end method

.method private triggerNotification()V
    .locals 3

    .prologue
    .line 696
    sget-object v0, Landroid/bluetooth/BluetoothAvrcpInfo;->CONTENT_URI:Landroid/net/Uri;

    .line 697
    .local v0, "avrcpDataUri":Landroid/net/Uri;
    sget-object v1, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->sAvrcpControllerService:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    invoke-virtual {v1}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 695
    return-void
.end method

.method private updateElementAttribute()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1248
    const-string/jumbo v2, "AvrcpControllerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " updateElementAttribute "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get2(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1250
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "title"

    iget-object v3, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    invoke-static {v3}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get2(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;

    move-result-object v3

    invoke-static {v3}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;->-get9(Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1251
    const-string/jumbo v2, "artist_name"

    iget-object v3, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    invoke-static {v3}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get2(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;

    move-result-object v3

    invoke-static {v3}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;->-get1(Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1252
    const-string/jumbo v2, "album_name"

    iget-object v3, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    invoke-static {v3}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get2(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;

    move-result-object v3

    invoke-static {v3}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;->-get0(Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1253
    const-string/jumbo v2, "track_num"

    iget-object v3, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    invoke-static {v3}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get2(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;

    move-result-object v3

    invoke-static {v3}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;->-get8(Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1254
    const-string/jumbo v2, "total_tracks"

    iget-object v3, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    invoke-static {v3}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get2(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;

    move-result-object v3

    invoke-static {v3}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;->-get7(Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1255
    const-string/jumbo v2, "genre"

    iget-object v3, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    invoke-static {v3}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get2(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;

    move-result-object v3

    invoke-static {v3}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;->-get3(Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1256
    const-string/jumbo v2, "playing_time"

    iget-object v3, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    invoke-static {v3}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get2(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;

    move-result-object v3

    invoke-static {v3}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;->-get5(Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1257
    const-string/jumbo v2, "total_track_time"

    iget-object v3, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    invoke-static {v3}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get2(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;

    move-result-object v3

    invoke-static {v3}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;->-get6(Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1258
    sget-object v2, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->sAvrcpControllerService:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    invoke-virtual {v2}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1259
    sget-object v3, Landroid/bluetooth/BluetoothAvrcpInfo;->CONTENT_URI:Landroid/net/Uri;

    .line 1258
    invoke-virtual {v2, v3, v1, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1260
    .local v0, "rowsUpdated":I
    const-string/jumbo v2, "AvrcpControllerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " updateElementAttribute num_rows_updated "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    return-void
.end method

.method private updatePlayStatus()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1291
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1292
    .local v2, "values":Landroid/content/ContentValues;
    const-string/jumbo v3, "AvrcpControllerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " updatePlayStatus "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get2(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    invoke-static {v3}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get2(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;

    move-result-object v3

    invoke-static {v3}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;->-get4(Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;)B

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1294
    invoke-static {}, Lcom/android/bluetooth/a2dp/A2dpSinkService;->getA2dpSinkService()Lcom/android/bluetooth/a2dp/A2dpSinkService;

    move-result-object v0

    .line 1295
    .local v0, "a2dpSinkService":Lcom/android/bluetooth/a2dp/A2dpSinkService;
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mConnectedDevices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1300
    .end local v0    # "a2dpSinkService":Lcom/android/bluetooth/a2dp/A2dpSinkService;
    :cond_0
    :goto_0
    const-string/jumbo v3, "play_status"

    .line 1301
    iget-object v4, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get2(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;

    move-result-object v4

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;->-get4(Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;)B

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->getPlayStatusString(B)Ljava/lang/String;

    move-result-object v4

    .line 1300
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1302
    const-string/jumbo v3, "playing_time"

    iget-object v4, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get2(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;

    move-result-object v4

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;->-get5(Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1303
    const-string/jumbo v3, "total_track_time"

    iget-object v4, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get2(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;

    move-result-object v4

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;->-get6(Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1304
    sget-object v3, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->sAvrcpControllerService:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    invoke-virtual {v3}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1305
    sget-object v4, Landroid/bluetooth/BluetoothAvrcpInfo;->CONTENT_URI:Landroid/net/Uri;

    .line 1304
    invoke-virtual {v3, v4, v2, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 1306
    .local v1, "rowsUpdated":I
    const-string/jumbo v3, "AvrcpControllerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " updatePlayStatus num_rows_updated "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    return-void

    .line 1296
    .end local v1    # "rowsUpdated":I
    .restart local v0    # "a2dpSinkService":Lcom/android/bluetooth/a2dp/A2dpSinkService;
    :cond_1
    const-string/jumbo v3, "AvrcpControllerService"

    const-string/jumbo v4, " State = PLAYING, inform A2DP SINK"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mConnectedDevices:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v3}, Lcom/android/bluetooth/a2dp/A2dpSinkService;->informAvrcpStatePlaying(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0
.end method

.method private updatePlayTime()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1272
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1273
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "playing_time"

    iget-object v3, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    invoke-static {v3}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get2(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;

    move-result-object v3

    invoke-static {v3}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;->-get5(Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1274
    sget-object v2, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->sAvrcpControllerService:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    invoke-virtual {v2}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1275
    sget-object v3, Landroid/bluetooth/BluetoothAvrcpInfo;->CONTENT_URI:Landroid/net/Uri;

    .line 1274
    invoke-virtual {v2, v3, v1, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1276
    .local v0, "rowsUpdated":I
    const-string/jumbo v2, "AvrcpControllerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " updatePlayTime num_rows_updated "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    return-void
.end method

.method private updatePlayerApplicationSettings()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1280
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1281
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "repeat_status"

    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->getRepeatStatusString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1282
    const-string/jumbo v2, "shuffle_status"

    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->getShuffleStatusString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1283
    const-string/jumbo v2, "scan_status"

    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->getScanStatusString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1284
    const-string/jumbo v2, "equalizer_status"

    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->getEqualizerStatusString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1285
    sget-object v2, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->sAvrcpControllerService:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    invoke-virtual {v2}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1286
    sget-object v3, Landroid/bluetooth/BluetoothAvrcpInfo;->CONTENT_URI:Landroid/net/Uri;

    .line 1285
    invoke-virtual {v2, v3, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1287
    .local v0, "rowsUpdated":I
    const-string/jumbo v2, "AvrcpControllerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " updatePlayerApplicationSettings num_rows_updated "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    return-void
.end method

.method private updateTrackNum()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1264
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1265
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "track_num"

    iget-object v3, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    invoke-static {v3}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get2(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;

    move-result-object v3

    invoke-static {v3}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;->-get8(Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1266
    sget-object v2, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->sAvrcpControllerService:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    invoke-virtual {v2}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1267
    sget-object v3, Landroid/bluetooth/BluetoothAvrcpInfo;->CONTENT_URI:Landroid/net/Uri;

    .line 1266
    invoke-virtual {v2, v3, v1, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1268
    .local v0, "rowsUpdated":I
    const-string/jumbo v2, "AvrcpControllerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " updateTrackNum num_rows_updated "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    return-void
.end method

.method private utf8ToString([B)Ljava/lang/String;
    .locals 2
    .param p1, "input"    # [B

    .prologue
    .line 1385
    const-string/jumbo v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 1386
    .local v0, "UTF8_CHARSET":Ljava/nio/charset/Charset;
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1
.end method


# virtual methods
.method protected cleanup()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 427
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    if-eqz v1, :cond_1

    .line 428
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 429
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    invoke-virtual {v1}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 430
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 431
    :cond_0
    if-eqz v0, :cond_1

    .line 432
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 435
    .end local v0    # "looper":Landroid/os/Looper;
    :cond_1
    invoke-static {}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->clearAvrcpControllerService()V

    .line 436
    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->cleanupNative()V

    .line 437
    const/4 v1, 0x1

    return v1
.end method

.method public dump(Ljava/lang/StringBuilder;)V
    .locals 0
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 1994
    invoke-super {p0, p1}, Lcom/android/bluetooth/btservice/ProfileService;->dump(Ljava/lang/StringBuilder;)V

    .line 1993
    return-void
.end method

.method public getConnectedDevices()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 478
    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mConnectedDevices:Ljava/util/ArrayList;

    return-object v0
.end method

.method getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 493
    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mConnectedDevices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    .line 495
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 3
    .param p1, "states"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 483
    const-string/jumbo v1, "android.permission.BLUETOOTH"

    const-string/jumbo v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 485
    aget v1, p1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 486
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mConnectedDevices:Ljava/util/ArrayList;

    return-object v1

    .line 484
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 489
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1
.end method

.method public getMetaData([I)V
    .locals 9
    .param p1, "attributeIds"    # [I

    .prologue
    const/4 v8, 0x7

    const/4 v4, 0x0

    .line 556
    const-string/jumbo v5, "AvrcpControllerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "num getMetaData = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, p1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    iget-object v5, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    if-nez v5, :cond_0

    .line 558
    return-void

    .line 560
    :cond_0
    const-string/jumbo v5, "android.permission.BLUETOOTH"

    const-string/jumbo v6, "Need BLUETOOTH permission"

    invoke-virtual {p0, v5, v6}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    iget-object v5, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get2(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;

    move-result-object v5

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;->-get2(Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 567
    iget-object v5, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->requestedElementAttribs:[I

    if-eqz v5, :cond_2

    .line 568
    iget-object v5, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->requestedElementAttribs:[I

    array-length v5, v5

    if-ge v5, v8, :cond_2

    .line 571
    iget-object v4, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->requestedElementAttribs:[I

    iget-object v5, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get2(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;

    move-result-object v5

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;->-get2(Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;)I

    move-result v5

    .line 570
    aget v1, v4, v5

    .line 572
    .local v1, "currAttributeId":I
    iget-object v4, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    add-int/lit16 v5, v1, 0xbb8

    invoke-virtual {v4, v5}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 573
    iget-object v4, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    add-int/lit16 v5, v1, 0xbb8

    invoke-virtual {v4, v5}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->removeMessages(I)V

    .line 574
    const-string/jumbo v4, "AvrcpControllerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " Timeout CMD dequeued ID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    :cond_1
    iget-object v4, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    const/16 v5, 0xfa8

    invoke-virtual {v4, v5}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->sendEmptyMessage(I)Z

    .line 577
    array-length v4, p1

    invoke-static {p1, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v4

    iput-object v4, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->requestedElementAttribs:[I

    .line 578
    return-void

    .line 580
    .end local v1    # "currAttributeId":I
    :cond_2
    array-length v5, p1

    if-ltz v5, :cond_5

    aget v5, p1, v4

    if-eqz v5, :cond_5

    .line 582
    array-length v5, p1

    invoke-static {p1, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v5

    iput-object v5, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->requestedElementAttribs:[I

    .line 590
    :cond_3
    iget-object v5, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->requestedElementAttribs:[I

    invoke-static {v5}, Ljava/util/Arrays;->sort([I)V

    .line 591
    const/4 v2, 0x1

    .line 592
    .local v2, "mMetaDataPresent":Z
    iget-object v5, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->requestedElementAttribs:[I

    array-length v6, v5

    :goto_0
    if-ge v4, v6, :cond_4

    aget v0, v5, v4

    .line 593
    .local v0, "attributeId":I
    invoke-direct {p0, v0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->isMetaDataPresent(I)Z

    move-result v7

    if-nez v7, :cond_6

    .line 594
    const/4 v2, 0x0

    .line 598
    .end local v0    # "attributeId":I
    :cond_4
    const-string/jumbo v4, "AvrcpControllerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " MetaDataPresent "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    if-eqz v2, :cond_7

    .line 600
    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->triggerNotification()V

    .line 555
    :goto_1
    return-void

    .line 586
    .end local v2    # "mMetaDataPresent":Z
    :cond_5
    new-array v5, v8, [I

    iput-object v5, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->requestedElementAttribs:[I

    .line 587
    const/4 v3, 0x0

    .local v3, "xx":I
    :goto_2
    if-ge v3, v8, :cond_3

    .line 588
    iget-object v5, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->requestedElementAttribs:[I

    add-int/lit8 v6, v3, 0x1

    aput v6, v5, v3

    .line 587
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 592
    .end local v3    # "xx":I
    .restart local v0    # "attributeId":I
    .restart local v2    # "mMetaDataPresent":Z
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 602
    .end local v0    # "attributeId":I
    :cond_7
    iget-object v4, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->sendEmptyMessage(I)Z

    goto :goto_1
.end method

.method protected getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 347
    const-string/jumbo v0, "AvrcpControllerService"

    return-object v0
.end method

.method public getPlayStatus([I)V
    .locals 10
    .param p1, "playStatusIds"    # [I

    .prologue
    const/16 v9, 0x9

    const/4 v8, 0x3

    const/4 v4, 0x0

    .line 605
    const-string/jumbo v5, "AvrcpControllerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "num getPlayStatus ID = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, p1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    iget-object v5, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    if-nez v5, :cond_0

    .line 607
    return-void

    .line 609
    :cond_0
    const-string/jumbo v5, "android.permission.BLUETOOTH"

    const-string/jumbo v6, "Need BLUETOOTH permission"

    invoke-virtual {p0, v5, v6}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    array-length v5, p1

    if-ltz v5, :cond_3

    aget v5, p1, v4

    const/16 v6, 0x8

    if-eq v5, v6, :cond_3

    .line 613
    array-length v5, p1

    invoke-static {p1, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    .line 621
    .local v1, "getApRequestedPlayStatusAttrib":[I
    :cond_1
    invoke-static {v1}, Ljava/util/Arrays;->sort([I)V

    .line 622
    const/4 v2, 0x1

    .line 623
    .local v2, "mMetaDataPresent":Z
    array-length v5, v1

    :goto_0
    if-ge v4, v5, :cond_2

    aget v0, v1, v4

    .line 624
    .local v0, "attributeId":I
    invoke-direct {p0, v0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->isMetaDataPresent(I)Z

    move-result v6

    if-nez v6, :cond_4

    .line 625
    const/4 v2, 0x0

    .line 629
    .end local v0    # "attributeId":I
    :cond_2
    if-eqz v2, :cond_5

    .line 630
    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->triggerNotification()V

    .line 604
    :goto_1
    return-void

    .line 617
    .end local v1    # "getApRequestedPlayStatusAttrib":[I
    .end local v2    # "mMetaDataPresent":Z
    :cond_3
    new-array v1, v8, [I

    .line 618
    .restart local v1    # "getApRequestedPlayStatusAttrib":[I
    const/4 v3, 0x0

    .local v3, "xx":I
    :goto_2
    if-ge v3, v8, :cond_1

    .line 619
    add-int/lit8 v5, v3, 0x9

    aput v5, v1, v3

    .line 618
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 623
    .end local v3    # "xx":I
    .restart local v0    # "attributeId":I
    .restart local v2    # "mMetaDataPresent":Z
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 632
    .end local v0    # "attributeId":I
    :cond_5
    const-string/jumbo v4, "AvrcpControllerService"

    const-string/jumbo v5, " Metadata not present"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    iget-object v4, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    invoke-virtual {v4, v9}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->sendEmptyMessage(I)Z

    goto :goto_1
.end method

.method public getPlayerApplicationSetting()V
    .locals 2

    .prologue
    .line 637
    const-string/jumbo v0, "AvrcpControllerService"

    const-string/jumbo v1, "getPlayerApplicationSetting "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    if-nez v0, :cond_0

    .line 639
    return-void

    .line 641
    :cond_0
    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->isMetaDataPresent(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 643
    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->triggerNotification()V

    .line 636
    :goto_0
    return-void

    .line 646
    :cond_1
    const-string/jumbo v0, "AvrcpControllerService"

    const-string/jumbo v1, " Metadata not present, fetch it"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public getSupportedFeatures(Landroid/bluetooth/BluetoothDevice;)I
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v3, 0x0

    .line 685
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mConnectedDevices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    if-nez v0, :cond_2

    .line 686
    :cond_0
    const-string/jumbo v0, "AvrcpControllerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " req Device "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " Internal List "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mConnectedDevices:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    const-string/jumbo v0, "AvrcpControllerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " remoteData "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    if-eqz v0, :cond_1

    .line 689
    const-string/jumbo v0, "AvrcpControllerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " getSupportedFeatures returning  from here "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    iget v2, v2, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->mRemoteFeatures:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    :cond_1
    return v3

    .line 692
    :cond_2
    const-string/jumbo v0, "AvrcpControllerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " getSupportedFeatures returning "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    iget v2, v2, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->mRemoteFeatures:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    iget v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->mRemoteFeatures:I

    return v0
.end method

.method public getSupportedPlayerAppSetting(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothAvrcpInfo;
    .locals 12
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v11, 0x0

    .line 660
    iget-object v10, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    invoke-static {v10}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get4(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_0

    .line 661
    iget-object v10, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mConnectedDevices:Ljava/util/ArrayList;

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 663
    iget-object v10, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    invoke-static {v10}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get4(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v0, v10, [B

    .line 664
    .local v0, "attribIds":[B
    iget-object v10, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    invoke-static {v10}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get4(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v3, v10, [B

    .line 665
    .local v3, "numAttribVals":[B
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 666
    .local v7, "supportedVals":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const/4 v2, 0x0

    .line 667
    .local v2, "index":I
    iget-object v10, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    invoke-static {v10}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get4(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "plSetting$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/bluetooth/avrcp/AvrcpControllerService$PlayerSettings;

    .line 668
    .local v4, "plSetting":Lcom/android/bluetooth/avrcp/AvrcpControllerService$PlayerSettings;
    iget-byte v10, v4, Lcom/android/bluetooth/avrcp/AvrcpControllerService$PlayerSettings;->attr_Id:B

    aput-byte v10, v0, v2

    .line 669
    iget-object v10, v4, Lcom/android/bluetooth/avrcp/AvrcpControllerService$PlayerSettings;->supported_values:[B

    array-length v10, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->byteValue()B

    move-result v10

    aput-byte v10, v3, v2

    .line 670
    const/4 v8, 0x0

    .local v8, "xx":I
    :goto_1
    aget-byte v10, v3, v2

    if-ge v8, v10, :cond_1

    .line 671
    iget-object v10, v4, Lcom/android/bluetooth/avrcp/AvrcpControllerService$PlayerSettings;->supported_values:[B

    aget-byte v10, v10, v8

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 670
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 662
    .end local v0    # "attribIds":[B
    .end local v2    # "index":I
    .end local v3    # "numAttribVals":[B
    .end local v4    # "plSetting":Lcom/android/bluetooth/avrcp/AvrcpControllerService$PlayerSettings;
    .end local v5    # "plSetting$iterator":Ljava/util/Iterator;
    .end local v7    # "supportedVals":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v8    # "xx":I
    :cond_0
    return-object v11

    .line 672
    .restart local v0    # "attribIds":[B
    .restart local v2    # "index":I
    .restart local v3    # "numAttribVals":[B
    .restart local v4    # "plSetting":Lcom/android/bluetooth/avrcp/AvrcpControllerService$PlayerSettings;
    .restart local v5    # "plSetting$iterator":Ljava/util/Iterator;
    .restart local v7    # "supportedVals":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .restart local v8    # "xx":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 674
    .end local v4    # "plSetting":Lcom/android/bluetooth/avrcp/AvrcpControllerService$PlayerSettings;
    .end local v8    # "xx":I
    :cond_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v6, v10, [B

    .line 675
    .local v6, "supportedPlSettingsVals":[B
    const/4 v9, 0x0

    .local v9, "zz":I
    :goto_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_3

    .line 676
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Byte;

    invoke-virtual {v10}, Ljava/lang/Byte;->byteValue()B

    move-result v10

    aput-byte v10, v6, v9

    .line 675
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 677
    :cond_3
    if-eqz v0, :cond_4

    if-nez v3, :cond_5

    .line 679
    :cond_4
    return-object v11

    .line 677
    :cond_5
    if-eqz v6, :cond_4

    .line 678
    array-length v10, v0

    if-eqz v10, :cond_4

    array-length v10, v3

    if-eqz v10, :cond_4

    .line 680
    new-instance v1, Landroid/bluetooth/BluetoothAvrcpInfo;

    invoke-direct {v1, v0, v3, v6}, Landroid/bluetooth/BluetoothAvrcpInfo;-><init>([B[B[B)V

    .line 682
    .local v1, "btAvrcpMetaData":Landroid/bluetooth/BluetoothAvrcpInfo;
    return-object v1
.end method

.method protected initBinder()Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;
    .locals 2

    .prologue
    .line 351
    const-string/jumbo v0, "AvrcpControllerService"

    const-string/jumbo v1, " initBinder Called "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    new-instance v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$BluetoothAvrcpControllerBinder;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$BluetoothAvrcpControllerBinder;-><init>(Lcom/android/bluetooth/avrcp/AvrcpControllerService;)V

    return-object v0
.end method

.method public sendPassThroughCmd(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 8
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "keyCode"    # I
    .param p3, "keyState"    # I

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 499
    const-string/jumbo v2, "AvrcpControllerService"

    const-string/jumbo v3, "sendPassThroughCmd"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    const-string/jumbo v2, "AvrcpControllerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "keyCode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " keyState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    if-nez p1, :cond_0

    .line 502
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "device == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 504
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mConnectedDevices:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 505
    const-string/jumbo v2, "AvrcpControllerService"

    const-string/jumbo v3, " Device does not match"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    return-void

    .line 508
    :cond_1
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get2(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;

    move-result-object v2

    if-nez v2, :cond_3

    .line 509
    :cond_2
    const-string/jumbo v2, "AvrcpControllerService"

    const-string/jumbo v3, " Device connected but PlayState not present "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    const-string/jumbo v2, "android.permission.BLUETOOTH"

    const-string/jumbo v3, "Need BLUETOOTH permission"

    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    invoke-virtual {v2, v5, p2, p3, p1}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 513
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    invoke-virtual {v2, v0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 514
    return-void

    .line 516
    .end local v0    # "msg":Landroid/os/Message;
    :cond_3
    const/4 v1, 0x0

    .line 517
    .local v1, "sendCommand":Z
    packed-switch p2, :pswitch_data_0

    .line 545
    :goto_0
    :pswitch_0
    if-eqz v1, :cond_c

    .line 546
    const-string/jumbo v2, "android.permission.BLUETOOTH"

    const-string/jumbo v3, "Need BLUETOOTH permission"

    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    invoke-virtual {v2, v5, p2, p3, p1}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 549
    .restart local v0    # "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    invoke-virtual {v2, v0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 498
    .end local v0    # "msg":Landroid/os/Message;
    :goto_1
    return-void

    .line 519
    :pswitch_1
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get2(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;

    move-result-object v2

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;->-get4(Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;)B

    move-result v2

    if-eqz v2, :cond_4

    .line 520
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get2(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;

    move-result-object v2

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;->-get4(Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;)B

    move-result v2

    if-ne v2, v6, :cond_5

    const/4 v1, 0x1

    goto :goto_0

    .line 519
    :cond_4
    const/4 v1, 0x1

    goto :goto_0

    .line 520
    :cond_5
    const/4 v1, 0x0

    goto :goto_0

    .line 523
    :pswitch_2
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get2(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;

    move-result-object v2

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;->-get4(Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;)B

    move-result v2

    if-eq v2, v5, :cond_6

    .line 524
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get2(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;

    move-result-object v2

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;->-get4(Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;)B

    move-result v2

    if-ne v2, v7, :cond_7

    .line 523
    :cond_6
    const/4 v1, 0x1

    goto :goto_0

    .line 525
    :cond_7
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get2(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;

    move-result-object v2

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;->-get4(Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;)B

    move-result v2

    if-eq v2, v6, :cond_6

    .line 526
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get2(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;

    move-result-object v2

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;->-get4(Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;)B

    move-result v2

    if-eqz v2, :cond_6

    .line 527
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get2(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;

    move-result-object v2

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;->-get4(Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;)B

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_8

    const/4 v1, 0x1

    goto :goto_0

    :cond_8
    const/4 v1, 0x0

    goto :goto_0

    .line 530
    :pswitch_3
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get2(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;

    move-result-object v2

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;->-get4(Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;)B

    move-result v2

    if-eq v2, v5, :cond_9

    .line 531
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get2(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;

    move-result-object v2

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;->-get4(Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;)B

    move-result v2

    if-ne v2, v7, :cond_a

    .line 530
    :cond_9
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 532
    :cond_a
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get2(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;

    move-result-object v2

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;->-get4(Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;)B

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_9

    .line 533
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get2(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;

    move-result-object v2

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;->-get4(Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;)B

    move-result v2

    if-eqz v2, :cond_9

    .line 534
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get2(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;

    move-result-object v2

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;->-get4(Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;)B

    move-result v2

    if-ne v2, v6, :cond_b

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_b
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 542
    :pswitch_4
    const/4 v1, 0x1

    .line 543
    goto/16 :goto_0

    .line 552
    :cond_c
    const-string/jumbo v2, "AvrcpControllerService"

    const-string/jumbo v3, " Not in right state, don\'t send Pass Thru cmd "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 517
    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public setPlayerApplicationSetting(II)V
    .locals 3
    .param p1, "attributeId"    # I
    .param p2, "attributeVal"    # I

    .prologue
    .line 651
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    if-nez v1, :cond_0

    .line 652
    return-void

    .line 654
    :cond_0
    const-string/jumbo v1, "android.permission.BLUETOOTH"

    const-string/jumbo v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 657
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 650
    return-void
.end method

.method protected start()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 356
    new-instance v2, Landroid/os/HandlerThread;

    const-string/jumbo v3, "BluetoothAvrcpHandler"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 357
    .local v2, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 358
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 359
    .local v1, "looper":Landroid/os/Looper;
    new-instance v3, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    invoke-direct {v3, p0, v1, v4}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;-><init>(Lcom/android/bluetooth/avrcp/AvrcpControllerService;Landroid/os/Looper;Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;)V

    iput-object v3, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    .line 360
    iput-object v4, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    .line 361
    invoke-static {p0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->setAvrcpControllerService(Lcom/android/bluetooth/avrcp/AvrcpControllerService;)V

    .line 362
    sget-object v3, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->sAvrcpControllerService:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    .line 363
    const-string/jumbo v4, "audio"

    .line 362
    invoke-virtual {v3, v4}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    sput-object v3, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mAudioManager:Landroid/media/AudioManager;

    .line 364
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 365
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 366
    const/4 v3, 0x1

    return v3
.end method

.method protected stop()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 370
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 372
    :try_start_0
    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->deinitDatabase()V

    .line 373
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    if-eqz v1, :cond_0

    .line 374
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    invoke-static {v1}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get0(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 375
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    invoke-static {v1}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get1(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 376
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    invoke-static {v1}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get2(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;->resetMetaData()V

    .line 377
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    invoke-static {v1}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get3(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 378
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    invoke-static {v1}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get4(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 379
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    const/4 v2, 0x1

    iput v2, v1, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->absVolNotificationState:I

    .line 380
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->mRemoteFeatures:I

    .line 381
    const-string/jumbo v1, "AvrcpControllerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " RC_features, STOP "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    iget v3, v3, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->mRemoteFeatures:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->playerSettingAttribIdFetch:I

    .line 383
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    :cond_0
    :goto_0
    return v4

    .line 385
    :catch_0
    move-exception v0

    .line 386
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "AvrcpControllerService"

    const-string/jumbo v2, "Cleanup failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
