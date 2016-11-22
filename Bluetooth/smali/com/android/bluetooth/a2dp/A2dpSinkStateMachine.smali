.class final Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "A2dpSinkStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;,
        Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;,
        Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;,
        Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$StackEvent;,
        Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$IntentBroadcastHandler;,
        Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$1;,
        Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$2;,
        Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$3;
    }
.end annotation


# static fields
.field private static final AUDIO_FOCUS_GAIN:I = 0x1

.field private static final AUDIO_FOCUS_LOSS:I = 0x0

.field private static final AUDIO_FOCUS_LOSS_CAN_DUCK:I = 0x3

.field private static final AUDIO_FOCUS_LOSS_TRANSIENT:I = 0x2

.field private static final AUDIO_FOCUS_REQUEST_MESSAGE_DELAYED:I = 0x1f4

.field static final AUDIO_STATE_REMOTE_SUSPEND:I = 0x0

.field static final AUDIO_STATE_STARTED:I = 0x2

.field static final AUDIO_STATE_STOPPED:I = 0x1

.field public static final AVRC_ID_PAUSE:I = 0x46

.field public static final AVRC_ID_PLAY:I = 0x44

.field static final CONNECT:I = 0x1

.field static final CONNECTION_STATE_CONNECTED:I = 0x2

.field static final CONNECTION_STATE_CONNECTING:I = 0x1

.field static final CONNECTION_STATE_DISCONNECTED:I = 0x0

.field static final CONNECTION_STATE_DISCONNECTING:I = 0x3

.field private static final CONNECT_TIMEOUT:I = 0xc9

.field private static final DBG:Z = true

.field static final DISCONNECT:I = 0x2

.field private static final EVENT_TYPE_AUDIO_CONFIG_CHANGED:I = 0x3

.field private static final EVENT_TYPE_AUDIO_STATE_CHANGED:I = 0x2

.field private static final EVENT_TYPE_CONNECTION_STATE_CHANGED:I = 0x1

.field private static final EVENT_TYPE_NONE:I = 0x0

.field private static final IS_INVALID_DEVICE:I = 0x0

.field private static final IS_VALID_DEVICE:I = 0x1

.field public static final KEY_STATE_PRESSED:I = 0x0

.field public static final KEY_STATE_RELEASED:I = 0x1

.field private static final MSG_CONNECTION_STATE_CHANGED:I = 0x0

.field private static final REQUEST_AUDIO_FOCUS:I = 0x4

.field private static final STACK_EVENT:I = 0x65

.field private static final STATE_FOCUS_GRANTED:I = 0x3

.field private static final STATE_FOCUS_LOST:I = 0x0

.field private static final STATE_FOCUS_READY:I = 0x1

.field private static final USE_AUDIOTRACK:Z = true

.field private static final maxA2dpSinkConnections:I = 0x1

.field private static final multiCastState:I


# instance fields
.field private final mA2dpReceiver:Landroid/content/BroadcastReceiver;

.field private mA2dpSinkAudioPatch:Landroid/media/AudioPatch;

.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mAudioConfigs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Landroid/bluetooth/BluetoothAudioConfig;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioFocusAcquired:I

.field private mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mAudioPortListener:Landroid/media/AudioManager$OnAudioPortUpdateListener;

.field private mConnected:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;

.field private mContext:Landroid/content/Context;

.field private mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

.field private mDisconnected:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;

.field private mInPortA2dpSink:Landroid/media/AudioDevicePort;

.field private mIncomingDevice:Landroid/bluetooth/BluetoothDevice;

.field private mIntentBroadcastHandler:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$IntentBroadcastHandler;

.field private final mLockForPatch:Ljava/lang/Object;

.field private mOutPortSpeaker:Landroid/media/AudioDevicePort;

.field private mPending:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;

.field private mPlayingDevice:Landroid/bluetooth/BluetoothDevice;

.field private mService:Lcom/android/bluetooth/a2dp/A2dpSinkService;

.field private mTargetDevice:Landroid/bluetooth/BluetoothDevice;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static synthetic -get0(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/media/AudioPatch;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mA2dpSinkAudioPatch:Landroid/media/AudioPatch;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mAudioConfigs:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mLockForPatch:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mPending:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mPlayingDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Lcom/android/bluetooth/a2dp/A2dpSinkService;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mService:Lcom/android/bluetooth/a2dp/A2dpSinkService;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mAudioFocusAcquired:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/media/AudioManager;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mConnected:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mDisconnected:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/media/AudioDevicePort;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mInPortA2dpSink:Landroid/media/AudioDevicePort;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;I)I
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mAudioFocusAcquired:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/media/AudioDevicePort;)Landroid/media/AudioDevicePort;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mInPortA2dpSink:Landroid/media/AudioDevicePort;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/media/AudioDevicePort;)Landroid/media/AudioDevicePort;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mOutPortSpeaker:Landroid/media/AudioDevicePort;

    return-object p1
.end method

.method static synthetic -set5(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mPlayingDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic -set6(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/os/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;[B)Z
    .locals 1
    .param p1, "address"    # [B

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->connectA2dpNative([B)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->logi(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->logw(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;I[B)V
    .locals 0
    .param p1, "state"    # I
    .param p2, "address"    # [B

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->onConnectionStateChanged(I[B)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->patchPorts()V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothAudioConfig;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .param p1, "audioConfig"    # Landroid/bluetooth/BluetoothAudioConfig;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->processAudioConfigEvent(Landroid/bluetooth/BluetoothAudioConfig;Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic -wrap16(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->releasePatch()V

    return-void
.end method

.method static synthetic -wrap17(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;I)V
    .locals 0
    .param p1, "what"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic -wrap18(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;ZLandroid/bluetooth/BluetoothDevice;I)V
    .locals 0
    .param p1, "enable"    # Z
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "delay"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->requestAudioFocus(ZLandroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic -wrap19(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p1, "destState"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;[B)Z
    .locals 1
    .param p1, "address"    # [B

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->disconnectA2dpNative([B)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;)[B
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap4(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Lcom/android/internal/util/IState;
    .locals 1

    invoke-virtual {p0}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap5(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I
    .param p3, "prevState"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->broadcastAudioState(Landroid/bluetooth/BluetoothDevice;II)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "newState"    # I
    .param p3, "prevState"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;I)V
    .locals 0
    .param p1, "focusGranted"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->informAudioFocusStateNative(I)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 157
    invoke-static {}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->classInitNative()V

    .line 74
    return-void
.end method

.method private constructor <init>(Lcom/android/bluetooth/a2dp/A2dpSinkService;Landroid/content/Context;)V
    .locals 5
    .param p1, "svc"    # Lcom/android/bluetooth/a2dp/A2dpSinkService;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 161
    const-string/jumbo v1, "A2dpSinkStateMachine"

    invoke-direct {p0, v1}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 110
    iput v3, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mAudioFocusAcquired:I

    .line 119
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mLockForPatch:Ljava/lang/Object;

    .line 148
    iput-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    .line 149
    iput-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;

    .line 150
    iput-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;

    .line 151
    iput-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mPlayingDevice:Landroid/bluetooth/BluetoothDevice;

    .line 154
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 153
    iput-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mAudioConfigs:Ljava/util/HashMap;

    .line 250
    new-instance v1, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$1;

    invoke-direct {v1, p0}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$1;-><init>(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)V

    .line 249
    iput-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mAudioPortListener:Landroid/media/AudioManager$OnAudioPortUpdateListener;

    .line 1116
    new-instance v1, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$2;

    invoke-direct {v1, p0}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$2;-><init>(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)V

    iput-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mA2dpReceiver:Landroid/content/BroadcastReceiver;

    .line 1146
    new-instance v1, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$3;

    invoke-direct {v1, p0}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$3;-><init>(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)V

    iput-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 162
    iput-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mService:Lcom/android/bluetooth/a2dp/A2dpSinkService;

    .line 163
    iput-object p2, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mContext:Landroid/content/Context;

    .line 164
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 167
    invoke-direct {p0, v4, v3}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->initNative(II)V

    .line 169
    new-instance v1, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;

    invoke-direct {v1, p0, v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;-><init>(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;)V

    iput-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mDisconnected:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;

    .line 170
    new-instance v1, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;

    invoke-direct {v1, p0, v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;-><init>(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;)V

    iput-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mPending:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;

    .line 171
    new-instance v1, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;

    invoke-direct {v1, p0, v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;-><init>(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;)V

    iput-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mConnected:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;

    .line 173
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mDisconnected:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 174
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mPending:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 175
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mConnected:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 177
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mDisconnected:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 179
    const-string/jumbo v1, "power"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 180
    .local v0, "pm":Landroid/os/PowerManager;
    const-string/jumbo v1, "BluetoothA2dpSinkService"

    invoke-virtual {v0, v4, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 182
    new-instance v1, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$IntentBroadcastHandler;

    invoke-direct {v1, p0, v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$IntentBroadcastHandler;-><init>(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$IntentBroadcastHandler;)V

    iput-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mIntentBroadcastHandler:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$IntentBroadcastHandler;

    .line 184
    const-string/jumbo v1, "audio"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mAudioManager:Landroid/media/AudioManager;

    .line 160
    return-void
.end method

.method private broadcastAudioConfig(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothAudioConfig;)V
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "audioConfig"    # Landroid/bluetooth/BluetoothAudioConfig;

    .prologue
    .line 994
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.bluetooth.a2dp-sink.profile.action.AUDIO_CONFIG_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 995
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 996
    const-string/jumbo v1, "android.bluetooth.a2dp-sink.profile.extra.AUDIO_CONFIG"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 998
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1000
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "A2DP Audio Config : device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " config: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->log(Ljava/lang/String;)V

    .line 993
    return-void
.end method

.method private broadcastAudioState(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I
    .param p3, "prevState"    # I

    .prologue
    .line 983
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.bluetooth.a2dp-sink.profile.action.PLAYING_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 984
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 985
    const-string/jumbo v1, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 986
    const-string/jumbo v1, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 988
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 990
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "A2DP Playing state : device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " State:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->log(Ljava/lang/String;)V

    .line 982
    return-void
.end method

.method private broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "newState"    # I
    .param p3, "prevState"    # I

    .prologue
    .line 973
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 974
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mIntentBroadcastHandler:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$IntentBroadcastHandler;

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mIntentBroadcastHandler:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$IntentBroadcastHandler;

    .line 975
    const/4 v2, 0x0

    .line 974
    invoke-virtual {v1, v2, p3, p2, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$IntentBroadcastHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 979
    const-wide/16 v2, 0x0

    .line 974
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$IntentBroadcastHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 966
    return-void
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupNative()V
.end method

.method private native connectA2dpNative([B)Z
.end method

.method private native disconnectA2dpNative([B)Z
.end method

.method private getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 1004
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/Utils;->getBytesFromAddress(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private getDevice([B)Landroid/bluetooth/BluetoothDevice;
    .locals 2
    .param p1, "address"    # [B

    .prologue
    .line 1047
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0
.end method

.method private native informAudioFocusStateNative(I)V
.end method

.method private native initNative(II)V
.end method

.method static make(Lcom/android/bluetooth/a2dp/A2dpSinkService;Landroid/content/Context;)Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;
    .locals 3
    .param p0, "svc"    # Lcom/android/bluetooth/a2dp/A2dpSinkService;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 295
    const-string/jumbo v1, "A2dpSinkStateMachine"

    const-string/jumbo v2, "make"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    new-instance v0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-direct {v0, p0, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;-><init>(Lcom/android/bluetooth/a2dp/A2dpSinkService;Landroid/content/Context;)V

    .line 297
    .local v0, "a2dpSm":Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;
    invoke-virtual {v0}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->start()V

    .line 298
    return-object v0
.end method

.method private onAudioConfigChanged([BII)V
    .locals 4
    .param p1, "address"    # [B
    .param p2, "sampleRate"    # I
    .param p3, "channelCount"    # I

    .prologue
    .line 1022
    new-instance v1, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$StackEvent;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;ILcom/android/bluetooth/a2dp/A2dpSinkStateMachine$StackEvent;)V

    .line 1023
    .local v1, "event":Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$StackEvent;
    const/4 v2, 0x1

    if-ne p3, v2, :cond_0

    const/16 v0, 0x10

    .line 1025
    .local v0, "channelConfig":I
    :goto_0
    new-instance v2, Landroid/bluetooth/BluetoothAudioConfig;

    .line 1026
    const/4 v3, 0x2

    .line 1025
    invoke-direct {v2, p2, v0, v3}, Landroid/bluetooth/BluetoothAudioConfig;-><init>(III)V

    iput-object v2, v1, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$StackEvent;->audioConfig:Landroid/bluetooth/BluetoothAudioConfig;

    .line 1027
    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    iput-object v2, v1, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    .line 1028
    const/16 v2, 0x65

    invoke-virtual {p0, v2, v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 1021
    return-void

    .line 1024
    .end local v0    # "channelConfig":I
    :cond_0
    const/16 v0, 0xc

    .restart local v0    # "channelConfig":I
    goto :goto_0
.end method

.method private onAudioFocusRequested([B)V
    .locals 3
    .param p1, "address"    # [B

    .prologue
    .line 1032
    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 1033
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mPlayingDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1034
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->requestAudioFocus(ZLandroid/bluetooth/BluetoothDevice;I)V

    .line 1031
    :cond_0
    return-void
.end method

.method private onAudioStateChanged(I[B)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "address"    # [B

    .prologue
    .line 1015
    new-instance v0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$StackEvent;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;ILcom/android/bluetooth/a2dp/A2dpSinkStateMachine$StackEvent;)V

    .line 1016
    .local v0, "event":Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$StackEvent;
    iput p1, v0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$StackEvent;->valueInt:I

    .line 1017
    invoke-direct {p0, p2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iput-object v1, v0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    .line 1018
    const/16 v1, 0x65

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 1014
    return-void
.end method

.method private onConnectionStateChanged(I[B)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "address"    # [B

    .prologue
    .line 1008
    new-instance v0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$StackEvent;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;ILcom/android/bluetooth/a2dp/A2dpSinkStateMachine$StackEvent;)V

    .line 1009
    .local v0, "event":Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$StackEvent;
    iput p1, v0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$StackEvent;->valueInt:I

    .line 1010
    invoke-direct {p0, p2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iput-object v1, v0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    .line 1011
    const/16 v1, 0x65

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 1007
    return-void
.end method

.method private patchPorts()V
    .locals 3

    .prologue
    .line 205
    const-string/jumbo v0, " patchPorts: AudioTrack, inform focus gain"

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->log(Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mPlayingDevice:Landroid/bluetooth/BluetoothDevice;

    const/16 v1, 0xa

    .line 207
    const/16 v2, 0xb

    .line 206
    invoke-direct {p0, v0, v1, v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->broadcastAudioState(Landroid/bluetooth/BluetoothDevice;II)V

    .line 208
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->informAudioFocusStateNative(I)V

    .line 209
    return-void
.end method

.method private processAudioConfigEvent(Landroid/bluetooth/BluetoothAudioConfig;Landroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .param p1, "audioConfig"    # Landroid/bluetooth/BluetoothAudioConfig;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 851
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "processAudioConfigEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->log(Ljava/lang/String;)V

    .line 852
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mAudioConfigs:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 853
    invoke-direct {p0, p2, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->broadcastAudioConfig(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothAudioConfig;)V

    .line 850
    return-void
.end method

.method private releasePatch()V
    .locals 1

    .prologue
    .line 190
    const-string/jumbo v0, " releasePatch: AudioTrack, inform focus loss"

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->log(Ljava/lang/String;)V

    .line 191
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->informAudioFocusStateNative(I)V

    .line 192
    return-void
.end method

.method private requestAudioFocus(ZLandroid/bluetooth/BluetoothDevice;I)V
    .locals 4
    .param p1, "enable"    # Z
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "delay"    # I

    .prologue
    .line 1038
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " requestAudioFocus for  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " enable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->log(Ljava/lang/String;)V

    .line 1039
    if-eqz p1, :cond_0

    .line 1041
    const/4 v1, 0x4

    invoke-virtual {p0, v1, p2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1042
    .local v0, "posMsg":Landroid/os/Message;
    int-to-long v2, p3

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 1037
    .end local v0    # "posMsg":Landroid/os/Message;
    :cond_0
    return-void
.end method


# virtual methods
.method public SendPassThruPause(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .param p1, "mDevice"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/16 v4, 0x46

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1102
    const-string/jumbo v1, "SendPassThruPause + "

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->log(Ljava/lang/String;)V

    .line 1103
    invoke-static {}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->getAvrcpControllerService()Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-result-object v0

    .line 1104
    .local v0, "avrcpCtrlService":Lcom/android/bluetooth/avrcp/AvrcpControllerService;
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1105
    invoke-virtual {v0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 1104
    if-eqz v1, :cond_0

    .line 1106
    invoke-virtual {v0, p1, v4, v2}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->sendPassThroughCmd(Landroid/bluetooth/BluetoothDevice;II)V

    .line 1107
    invoke-virtual {v0, p1, v4, v3}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->sendPassThroughCmd(Landroid/bluetooth/BluetoothDevice;II)V

    .line 1108
    const-string/jumbo v1, " SendPassThruPause command sent - "

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->log(Ljava/lang/String;)V

    .line 1109
    return v3

    .line 1111
    :cond_0
    const-string/jumbo v1, "passthru command not sent, connection unavailable"

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->log(Ljava/lang/String;)V

    .line 1112
    return v2
.end method

.method public SendPassThruPlay(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .param p1, "mDevice"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/16 v4, 0x44

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1087
    const-string/jumbo v1, "SendPassThruPlay + "

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->log(Ljava/lang/String;)V

    .line 1088
    invoke-static {}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->getAvrcpControllerService()Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-result-object v0

    .line 1089
    .local v0, "avrcpCtrlService":Lcom/android/bluetooth/avrcp/AvrcpControllerService;
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1090
    invoke-virtual {v0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 1089
    if-eqz v1, :cond_0

    .line 1091
    invoke-virtual {v0, p1, v4, v2}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->sendPassThroughCmd(Landroid/bluetooth/BluetoothDevice;II)V

    .line 1092
    invoke-virtual {v0, p1, v4, v3}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->sendPassThroughCmd(Landroid/bluetooth/BluetoothDevice;II)V

    .line 1093
    const-string/jumbo v1, " SendPassThruPlay command sent - "

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->log(Ljava/lang/String;)V

    .line 1094
    return v3

    .line 1096
    :cond_0
    const-string/jumbo v1, "passthru command not sent, connection unavailable"

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->log(Ljava/lang/String;)V

    .line 1097
    return v2
.end method

.method public cleanup()V
    .locals 1

    .prologue
    .line 312
    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->cleanupNative()V

    .line 313
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mAudioConfigs:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 314
    return-void
.end method

.method public doQuit()V
    .locals 0

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->quitNow()V

    .line 301
    return-void
.end method

.method public dump(Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCurrentDevice: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mTargetDevice: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mIncomingDevice: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "StateMachine: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 320
    return-void
.end method

.method getAudioConfig(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothAudioConfig;
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 889
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mAudioConfigs:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothAudioConfig;

    return-object v0
.end method

.method getConnectedDevices()Ljava/util/List;
    .locals 3
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
    .line 893
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 894
    .local v0, "devices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    monitor-enter p0

    .line 895
    :try_start_0
    invoke-virtual {p0}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mConnected:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;

    if-ne v1, v2, :cond_0

    .line 896
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 899
    return-object v0

    .line 894
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 857
    invoke-virtual {p0}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mDisconnected:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;

    if-ne v1, v2, :cond_0

    .line 858
    return v3

    .line 861
    :cond_0
    monitor-enter p0

    .line 862
    :try_start_0
    invoke-virtual {p0}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    .line 863
    .local v0, "currentState":Lcom/android/internal/util/IState;
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mPending:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;

    if-ne v0, v1, :cond_4

    .line 864
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    monitor-exit p0

    .line 865
    return v4

    .line 867
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_2

    .line 868
    const/4 v1, 0x3

    monitor-exit p0

    return v1

    .line 870
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    if-eqz v1, :cond_3

    monitor-exit p0

    .line 871
    return v4

    :cond_3
    monitor-exit p0

    .line 873
    return v3

    .line 876
    :cond_4
    :try_start_3
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mConnected:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;

    if-ne v0, v1, :cond_6

    .line 877
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v1

    if-eqz v1, :cond_5

    .line 878
    const/4 v1, 0x2

    monitor-exit p0

    return v1

    :cond_5
    monitor-exit p0

    .line 880
    return v3

    .line 882
    :cond_6
    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bad currentState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->loge(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    .line 883
    return v3

    .line 861
    .end local v0    # "currentState":Lcom/android/internal/util/IState;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 8
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
    monitor-enter p0

    .line 945
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 946
    .local v4, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    iget-object v7, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    .line 949
    .local v0, "bondedDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "device$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 950
    .local v2, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v5

    .line 951
    .local v5, "featureUuids":[Landroid/os/ParcelUuid;
    sget-object v7, Landroid/bluetooth/BluetoothUuid;->AudioSource:Landroid/os/ParcelUuid;

    invoke-static {v5, v7}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 954
    invoke-virtual {p0, v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    .line 955
    .local v1, "connectionState":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v7, p1

    if-ge v6, v7, :cond_0

    .line 956
    aget v7, p1, v6

    if-ne v1, v7, :cond_1

    .line 957
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 955
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .end local v1    # "connectionState":I
    .end local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v5    # "featureUuids":[Landroid/os/ParcelUuid;
    .end local v6    # "i":I
    :cond_2
    monitor-exit p0

    .line 961
    return-object v4

    .end local v0    # "bondedDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v3    # "device$iterator":Ljava/util/Iterator;
    .end local v4    # "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method informAvrcpStatePlaying(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 912
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mPlayingDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mPlayingDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 913
    const-string/jumbo v0, " AVRCP State is Playing"

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->log(Ljava/lang/String;)V

    .line 917
    iget v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mAudioFocusAcquired:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 918
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->SendPassThruPause(Landroid/bluetooth/BluetoothDevice;)Z

    .line 919
    :cond_0
    iget v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mAudioFocusAcquired:I

    if-nez v0, :cond_1

    .line 920
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->informAudioFocusStateNative(I)V

    .line 911
    :cond_1
    return-void
.end method

.method isPlaying(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 903
    monitor-enter p0

    .line 904
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mPlayingDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mPlayingDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 905
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :cond_0
    monitor-exit p0

    .line 908
    const/4 v0, 0x0

    return v0

    .line 903
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method okToConnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 924
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 925
    .local v0, "adapterService":Lcom/android/bluetooth/btservice/AdapterService;
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mService:Lcom/android/bluetooth/a2dp/A2dpSinkService;

    invoke-virtual {v3, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    .line 926
    .local v1, "priority":I
    const/4 v2, 0x0

    .line 928
    .local v2, "ret":Z
    if-eqz v0, :cond_0

    .line 929
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->isQuietModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 930
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v3, :cond_2

    .line 931
    :cond_0
    const/4 v2, 0x0

    .line 941
    :cond_1
    :goto_0
    return v2

    .line 936
    :cond_2
    if-gtz v1, :cond_3

    .line 937
    const/4 v3, -0x1

    if-ne v3, v1, :cond_1

    .line 938
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_1

    .line 939
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method
