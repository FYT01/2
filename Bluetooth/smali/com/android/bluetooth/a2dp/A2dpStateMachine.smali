.class final Lcom/android/bluetooth/a2dp/A2dpStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "A2dpStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;,
        Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;,
        Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;,
        Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;,
        Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;,
        Lcom/android/bluetooth/a2dp/A2dpStateMachine$IntentBroadcastHandler;
    }
.end annotation


# static fields
.field static final AUDIO_STATE_REMOTE_SUSPEND:I = 0x0

.field static final AUDIO_STATE_STARTED:I = 0x2

.field static final AUDIO_STATE_STOPPED:I = 0x1

.field static final CONNECT:I = 0x1

.field static final CONNECTION_STATE_CONNECTED:I = 0x2

.field static final CONNECTION_STATE_CONNECTING:I = 0x1

.field static final CONNECTION_STATE_DISCONNECTED:I = 0x0

.field static final CONNECTION_STATE_DISCONNECTING:I = 0x3

.field private static final CONNECT_TIMEOUT:I = 0xc9

.field private static final CONNECT_TIMEOUT_SEC:I = 0x9470

.field private static final DBG:Z = true

.field private static final DISABLE_MULTICAST:I = 0x0

.field static final DISCONNECT:I = 0x2

.field private static final ENABLE_MULTICAST:I = 0x1

.field private static final EVENT_TYPE_AUDIO_STATE_CHANGED:I = 0x2

.field private static final EVENT_TYPE_CONNECTION_STATE_CHANGED:I = 0x1

.field private static final EVENT_TYPE_NONE:I = 0x0

.field private static final IS_INVALID_DEVICE:I = 0x0

.field private static final IS_VALID_DEVICE:I = 0x1

.field private static final MSG_CONNECTION_STATE_CHANGED:I = 0x0

.field private static final STACK_EVENT:I = 0x65

.field private static final TAG:Ljava/lang/String; = "A2dpStateMachine"

.field private static isMultiCastEnabled:Z

.field private static isMultiCastFeatureEnabled:Z

.field private static isScanDisabled:Z


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mConnected:Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;

.field private mConnectedDevicesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

.field private mDisconnected:Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;

.field private mIncomingDevice:Landroid/bluetooth/BluetoothDevice;

.field private mIntentBroadcastHandler:Lcom/android/bluetooth/a2dp/A2dpStateMachine$IntentBroadcastHandler;

.field private mMultiConnectionPending:Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;

.field private mMultiDisconnectDevice:Landroid/bluetooth/BluetoothDevice;

.field private mPending:Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;

.field private mPlayingA2dpDevice:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/android/bluetooth/a2dp/A2dpService;

.field private mTargetDevice:Landroid/bluetooth/BluetoothDevice;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private maxA2dpConnections:I


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->isScanDisabled:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mPending:Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mPlayingA2dpDevice:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpService;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mService:Lcom/android/bluetooth/a2dp/A2dpService;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->maxA2dpConnections:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mConnected:Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mConnectedDevicesList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mDisconnected:Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mMultiConnectionPending:Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mMultiDisconnectDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic -set0(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->isScanDisabled:Z

    return p0
.end method

.method static synthetic -set1(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mMultiDisconnectDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/bluetooth/a2dp/A2dpStateMachine;I)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .param p1, "what"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getDeviceForMessage(I)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/os/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap10(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->logi(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->logw(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/bluetooth/a2dp/A2dpStateMachine;I[B)V
    .locals 0
    .param p1, "state"    # I
    .param p2, "address"    # [B

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->onConnectionStateChanged(I[B)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/bluetooth/a2dp/A2dpStateMachine;I)V
    .locals 0
    .param p1, "what"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p1, "destState"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/bluetooth/a2dp/A2dpStateMachine;[B)Z
    .locals 1
    .param p1, "address"    # [B

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->connectA2dpNative([B)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/bluetooth/a2dp/A2dpStateMachine;[B)Z
    .locals 1
    .param p1, "address"    # [B

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->disconnectA2dpNative([B)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)[B
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap5(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I
    .param p3, "prevState"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->broadcastAudioState(Landroid/bluetooth/BluetoothDevice;II)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "newState"    # I
    .param p3, "prevState"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 89
    sput-boolean v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->isMultiCastEnabled:Z

    .line 90
    sput-boolean v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->isScanDisabled:Z

    .line 91
    sput-boolean v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->isMultiCastFeatureEnabled:Z

    .line 147
    invoke-static {}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->classInitNative()V

    .line 68
    return-void
.end method

.method private constructor <init>(Lcom/android/bluetooth/a2dp/A2dpService;Landroid/content/Context;II)V
    .locals 5
    .param p1, "svc"    # Lcom/android/bluetooth/a2dp/A2dpService;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "maxConnections"    # I
    .param p4, "multiCastState"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 152
    const-string/jumbo v1, "A2dpStateMachine"

    invoke-direct {p0, v1}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 81
    iput v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->maxA2dpConnections:I

    .line 136
    iput-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    .line 137
    iput-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;

    .line 138
    iput-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;

    .line 139
    iput-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mMultiDisconnectDevice:Landroid/bluetooth/BluetoothDevice;

    .line 142
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 141
    iput-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mConnectedDevicesList:Ljava/util/ArrayList;

    .line 144
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 143
    iput-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mPlayingA2dpDevice:Ljava/util/ArrayList;

    .line 153
    iput-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mService:Lcom/android/bluetooth/a2dp/A2dpService;

    .line 154
    iput-object p2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mContext:Landroid/content/Context;

    .line 155
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 156
    iput p3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->maxA2dpConnections:I

    .line 158
    sput-boolean v4, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->isMultiCastEnabled:Z

    .line 159
    if-ne p4, v3, :cond_0

    .line 160
    sput-boolean v3, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->isMultiCastFeatureEnabled:Z

    .line 165
    :goto_0
    iget v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->maxA2dpConnections:I

    invoke-direct {p0, v1, p4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->initNative(II)V

    .line 167
    new-instance v1, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;

    invoke-direct {v1, p0, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;-><init>(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;)V

    iput-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mDisconnected:Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;

    .line 168
    new-instance v1, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;

    invoke-direct {v1, p0, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;-><init>(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;)V

    iput-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mPending:Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;

    .line 169
    new-instance v1, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;

    invoke-direct {v1, p0, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;-><init>(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;)V

    iput-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mConnected:Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;

    .line 171
    new-instance v1, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;

    invoke-direct {v1, p0, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;-><init>(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;)V

    iput-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mMultiConnectionPending:Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;

    .line 173
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mDisconnected:Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 174
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mPending:Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 175
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mConnected:Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 177
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mMultiConnectionPending:Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 179
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mDisconnected:Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 181
    const-string/jumbo v1, "power"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 182
    .local v0, "pm":Landroid/os/PowerManager;
    const-string/jumbo v1, "BluetoothA2dpService"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 184
    new-instance v1, Lcom/android/bluetooth/a2dp/A2dpStateMachine$IntentBroadcastHandler;

    invoke-direct {v1, p0, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$IntentBroadcastHandler;-><init>(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/bluetooth/a2dp/A2dpStateMachine$IntentBroadcastHandler;)V

    iput-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mIntentBroadcastHandler:Lcom/android/bluetooth/a2dp/A2dpStateMachine$IntentBroadcastHandler;

    .line 186
    const-string/jumbo v1, "audio"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mAudioManager:Landroid/media/AudioManager;

    .line 151
    return-void

    .line 162
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_0
    sput-boolean v4, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->isMultiCastFeatureEnabled:Z

    goto :goto_0
.end method

.method private native allowConnectionNative(I[B)V
.end method

.method private broadcastAudioState(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I
    .param p3, "prevState"    # I

    .prologue
    .line 1672
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.bluetooth.a2dp.profile.action.PLAYING_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1673
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1674
    const-string/jumbo v1, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1675
    const-string/jumbo v1, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1676
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1677
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1679
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

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V

    .line 1671
    return-void
.end method

.method private broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "newState"    # I
    .param p3, "prevState"    # I

    .prologue
    .line 1654
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mAudioManager:Landroid/media/AudioManager;

    .line 1655
    const/4 v2, 0x2

    .line 1654
    invoke-virtual {v1, p1, p2, v2}, Landroid/media/AudioManager;->setBluetoothA2dpDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;II)I

    move-result v0

    .line 1656
    .local v0, "delay":I
    const-string/jumbo v1, "A2dpStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "connectoin state change "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1658
    const/4 v1, 0x3

    if-eq p2, v1, :cond_0

    .line 1659
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 1660
    :cond_0
    const/4 v0, 0x0

    .line 1662
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1663
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mIntentBroadcastHandler:Lcom/android/bluetooth/a2dp/A2dpStateMachine$IntentBroadcastHandler;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mIntentBroadcastHandler:Lcom/android/bluetooth/a2dp/A2dpStateMachine$IntentBroadcastHandler;

    .line 1664
    const/4 v3, 0x0

    .line 1663
    invoke-virtual {v2, v3, p3, p2, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$IntentBroadcastHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1668
    int-to-long v4, v0

    .line 1663
    invoke-virtual {v1, v2, v4, v5}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$IntentBroadcastHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1652
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
    .line 1683
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
    .line 1723
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0
.end method

.method private getDeviceForMessage(I)Landroid/bluetooth/BluetoothDevice;
    .locals 5
    .param p1, "what"    # I

    .prologue
    const/4 v4, 0x0

    .line 1631
    const/16 v2, 0xc9

    if-ne p1, v2, :cond_0

    .line 1632
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getDeviceForMessage: returning mTargetDevice for what="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V

    .line 1633
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v2

    .line 1635
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mConnectedDevicesList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 1636
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getDeviceForMessage: No connected device. what="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V

    .line 1637
    return-object v4

    .line 1639
    :cond_1
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mConnectedDevicesList:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "device$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 1640
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1641
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getDeviceForMessage: returning "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "for what "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V

    .line 1643
    return-object v0

    .line 1646
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getDeviceForMessage: No matching device for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ". Returning null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V

    .line 1647
    return-object v4
.end method

.method private native initNative(II)V
.end method

.method static make(Lcom/android/bluetooth/a2dp/A2dpService;Landroid/content/Context;II)Lcom/android/bluetooth/a2dp/A2dpStateMachine;
    .locals 3
    .param p0, "svc"    # Lcom/android/bluetooth/a2dp/A2dpService;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "maxConnections"    # I
    .param p3, "multiCastState"    # I

    .prologue
    .line 191
    const-string/jumbo v1, "A2dpStateMachine"

    const-string/jumbo v2, "make"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    new-instance v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;-><init>(Lcom/android/bluetooth/a2dp/A2dpService;Landroid/content/Context;II)V

    .line 194
    .local v0, "a2dpSm":Lcom/android/bluetooth/a2dp/A2dpStateMachine;
    invoke-virtual {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->start()V

    .line 195
    return-object v0
.end method

.method private onAudioStateChanged(I[B)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "address"    # [B

    .prologue
    .line 1694
    new-instance v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/a2dp/A2dpStateMachine;ILcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;)V

    .line 1695
    .local v0, "event":Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;
    iput p1, v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->valueInt:I

    .line 1696
    invoke-direct {p0, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iput-object v1, v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    .line 1697
    const/16 v1, 0x65

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 1693
    return-void
.end method

.method private onCheckConnectionPriority([B)V
    .locals 3
    .param p1, "address"    # [B

    .prologue
    .line 1701
    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 1702
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " device "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " okToConnect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->okToConnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->logw(Ljava/lang/String;)V

    .line 1703
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->okToConnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1705
    invoke-direct {p0, v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v2, v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->allowConnectionNative(I[B)V

    .line 1700
    :goto_0
    return-void

    .line 1708
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v2, v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->allowConnectionNative(I[B)V

    goto :goto_0
.end method

.method private onConnectionStateChanged(I[B)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "address"    # [B

    .prologue
    .line 1687
    new-instance v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/a2dp/A2dpStateMachine;ILcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;)V

    .line 1688
    .local v0, "event":Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;
    iput p1, v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->valueInt:I

    .line 1689
    invoke-direct {p0, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iput-object v1, v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    .line 1690
    const/16 v1, 0x65

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 1686
    return-void
.end method

.method private onMulticastStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    const/4 v2, 0x1

    .line 1713
    if-ne p1, v2, :cond_0

    .line 1714
    const-string/jumbo v0, "A2dpStateMachine"

    const-string/jumbo v1, "A2dp Multicast is Enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1715
    sput-boolean v2, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->isMultiCastEnabled:Z

    .line 1712
    :goto_0
    return-void

    .line 1717
    :cond_0
    const-string/jumbo v0, "A2dpStateMachine"

    const-string/jumbo v1, "A2dp Multicast is Disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1718
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->isMultiCastEnabled:Z

    goto :goto_0
.end method


# virtual methods
.method public cleanup()V
    .locals 5

    .prologue
    .line 217
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mConnectedDevicesList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 218
    .local v0, "deviceSize":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "cleanup: mConnectedDevicesList size is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V

    .line 219
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 220
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mConnectedDevicesList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    iput-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    .line 221
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v3, 0x0

    .line 222
    const/4 v4, 0x2

    .line 221
    invoke-direct {p0, v2, v3, v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V

    .line 219
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 224
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->cleanupNative()V

    .line 216
    return-void
.end method

.method public doQuit()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 199
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 201
    const-string/jumbo v0, "doQuit()- Move A2DP State to DISCONNECTED"

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v0, v2, v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 208
    const-string/jumbo v0, "doQuit()- Move A2DP State to DISCONNECTED"

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v0, v2, v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V

    .line 213
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->quitNow()V

    .line 198
    return-void
.end method

.method public dump(Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 1761
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCurrentDevice: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1762
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mTargetDevice: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1763
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mIncomingDevice: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1764
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mPlayingA2dpDevice: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mPlayingA2dpDevice:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1765
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "StateMachine: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1760
    return-void
.end method

.method getConnectedDevices()Ljava/util/List;
    .locals 5
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
    .line 1556
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1557
    .local v0, "devices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    const-string/jumbo v2, "A2dpStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mConnectedDevicesList size is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1558
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mConnectedDevicesList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1557
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1559
    monitor-enter p0

    .line 1561
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mConnectedDevicesList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1562
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mConnectedDevicesList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1561
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    monitor-exit p0

    .line 1565
    return-object v0

    .line 1559
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1504
    invoke-virtual {p0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mDisconnected:Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;

    if-ne v1, v2, :cond_0

    .line 1505
    const-string/jumbo v1, "currentState is Disconnected"

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V

    .line 1506
    return v3

    .line 1509
    :cond_0
    monitor-enter p0

    .line 1510
    :try_start_0
    invoke-virtual {p0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    .line 1511
    .local v0, "currentState":Lcom/android/internal/util/IState;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "currentState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V

    .line 1512
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mPending:Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;

    if-ne v0, v1, :cond_4

    .line 1513
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    monitor-exit p0

    .line 1514
    return v4

    .line 1516
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mConnectedDevicesList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_2

    monitor-exit p0

    .line 1517
    return v6

    .line 1519
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    if-eqz v1, :cond_3

    monitor-exit p0

    .line 1520
    return v4

    :cond_3
    monitor-exit p0

    .line 1522
    return v3

    .line 1525
    :cond_4
    :try_start_3
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mMultiConnectionPending:Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;

    if-ne v0, v1, :cond_a

    .line 1526
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v1

    if-eqz v1, :cond_5

    monitor-exit p0

    .line 1527
    return v4

    .line 1529
    :cond_5
    :try_start_4
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v1

    if-eqz v1, :cond_6

    monitor-exit p0

    .line 1530
    return v4

    .line 1532
    :cond_6
    :try_start_5
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mConnectedDevicesList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1533
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mMultiDisconnectDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_7

    .line 1534
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mMultiDisconnectDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    monitor-exit p0

    .line 1538
    return v6

    :cond_8
    monitor-exit p0

    .line 1536
    return v5

    :cond_9
    monitor-exit p0

    .line 1540
    return v3

    .line 1543
    :cond_a
    :try_start_6
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mConnected:Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;

    if-ne v0, v1, :cond_c

    .line 1544
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mConnectedDevicesList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v1

    if-eqz v1, :cond_b

    monitor-exit p0

    .line 1545
    return v5

    :cond_b
    monitor-exit p0

    .line 1547
    return v3

    .line 1549
    :cond_c
    :try_start_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bad currentState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->loge(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    .line 1550
    return v3

    .line 1509
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

    .line 1611
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1612
    .local v4, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    iget-object v7, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    .line 1615
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

    .line 1616
    .local v2, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v5

    .line 1617
    .local v5, "featureUuids":[Landroid/os/ParcelUuid;
    sget-object v7, Landroid/bluetooth/BluetoothUuid;->AudioSink:Landroid/os/ParcelUuid;

    invoke-static {v5, v7}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1620
    invoke-virtual {p0, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    .line 1621
    .local v1, "connectionState":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v7, p1

    if-ge v6, v7, :cond_0

    .line 1622
    aget v7, p1, v6

    if-ne v1, v7, :cond_1

    .line 1623
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1621
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .end local v1    # "connectionState":I
    .end local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v5    # "featureUuids":[Landroid/os/ParcelUuid;
    .end local v6    # "i":I
    :cond_2
    monitor-exit p0

    .line 1627
    return-object v4

    .end local v0    # "bondedDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v3    # "device$iterator":Ljava/util/Iterator;
    .end local v4    # "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method public getPlayingDevice()Ljava/util/List;
    .locals 1
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
    .line 1578
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mPlayingA2dpDevice:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isMulticastEnabled()Z
    .locals 1

    .prologue
    .line 1582
    sget-boolean v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->isMultiCastEnabled:Z

    return v0
.end method

.method public isMulticastFeatureEnabled()Z
    .locals 1

    .prologue
    .line 1586
    sget-boolean v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->isMultiCastFeatureEnabled:Z

    return v0
.end method

.method isPlaying(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 1569
    monitor-enter p0

    .line 1570
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mPlayingA2dpDevice:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 1571
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :cond_0
    monitor-exit p0

    .line 1574
    const/4 v0, 0x0

    return v0

    .line 1569
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method okToConnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 1590
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1591
    .local v0, "adapterService":Lcom/android/bluetooth/btservice/AdapterService;
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mService:Lcom/android/bluetooth/a2dp/A2dpService;

    invoke-virtual {v3, p1}, Lcom/android/bluetooth/a2dp/A2dpService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    .line 1592
    .local v1, "priority":I
    const/4 v2, 0x0

    .line 1594
    .local v2, "ret":Z
    if-eqz v0, :cond_0

    .line 1595
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->isQuietModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1596
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v3, :cond_2

    .line 1597
    :cond_0
    const/4 v2, 0x0

    .line 1607
    :cond_1
    :goto_0
    return v2

    .line 1602
    :cond_2
    if-gtz v1, :cond_3

    .line 1603
    const/4 v3, -0x1

    if-ne v3, v1, :cond_1

    .line 1604
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_1

    .line 1605
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method
