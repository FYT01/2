.class final Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "HeadsetClientStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;,
        Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;,
        Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;,
        Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$AudioOn;,
        Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;
    }
.end annotation


# static fields
.field static final ACCEPT_CALL:I = 0xc

.field static final CONNECT:I = 0x1

.field static final CONNECT_AUDIO:I = 0x3

.field private static final DBG:Z = false

.field static final DIAL_MEMORY:I = 0xb

.field static final DIAL_NUMBER:I = 0xa

.field static final DISABLE_NREC:I = 0x14

.field static final DISCONNECT:I = 0x2

.field static final DISCONNECT_AUDIO:I = 0x4

.field static final ENTER_PRIVATE_MODE:I = 0x10

.field private static final EVENT_TYPE_AUDIO_STATE_CHANGED:I = 0x2

.field private static final EVENT_TYPE_BATTERY_LEVEL:I = 0x7

.field private static final EVENT_TYPE_CALL:I = 0x9

.field private static final EVENT_TYPE_CALLHELD:I = 0xb

.field private static final EVENT_TYPE_CALLSETUP:I = 0xa

.field private static final EVENT_TYPE_CALL_WAITING:I = 0xd

.field private static final EVENT_TYPE_CLIP:I = 0xc

.field private static final EVENT_TYPE_CMD_RESULT:I = 0x10

.field private static final EVENT_TYPE_CONNECTION_STATE_CHANGED:I = 0x1

.field private static final EVENT_TYPE_CURRENT_CALLS:I = 0xe

.field private static final EVENT_TYPE_IN_BAND_RING:I = 0x13

.field private static final EVENT_TYPE_LAST_VOICE_TAG_NUMBER:I = 0x14

.field private static final EVENT_TYPE_NETWORK_SIGNAL:I = 0x6

.field private static final EVENT_TYPE_NETWORK_STATE:I = 0x4

.field private static final EVENT_TYPE_NONE:I = 0x0

.field private static final EVENT_TYPE_OPERATOR_NAME:I = 0x8

.field private static final EVENT_TYPE_RESP_AND_HOLD:I = 0x12

.field private static final EVENT_TYPE_RING_INDICATION:I = 0x15

.field private static final EVENT_TYPE_ROAMING_STATE:I = 0x5

.field private static final EVENT_TYPE_SUBSCRIBER_INFO:I = 0x11

.field private static final EVENT_TYPE_VOLUME_CHANGED:I = 0xf

.field private static final EVENT_TYPE_VR_STATE_CHANGED:I = 0x3

.field static final EXPLICIT_CALL_TRANSFER:I = 0x12

.field static final HOLD_CALL:I = 0xe

.field static final LAST_VTAG_NUMBER:I = 0x13

.field static final NO_ACTION:I = 0x0

.field static final QUERY_CURRENT_CALLS:I = 0x32

.field static final QUERY_OPERATOR_NAME:I = 0x33

.field static final REDIAL:I = 0x9

.field static final REJECT_CALL:I = 0xd

.field static final SEND_DTMF:I = 0x11

.field static final SET_MIC_VOLUME:I = 0x7

.field static final SET_SPEAKER_VOLUME:I = 0x8

.field private static final STACK_EVENT:I = 0x64

.field static final SUBSCRIBER_INFO:I = 0x34

.field private static final TAG:Ljava/lang/String; = "HeadsetClientStateMachine"

.field static final TERMINATE_CALL:I = 0xf

.field static final TERMINATE_SPECIFIC_CALL:I = 0x35

.field static final VOICE_RECOGNITION_START:I = 0x5

.field static final VOICE_RECOGNITION_STOP:I = 0x6


# instance fields
.field private final EVENT_TYPE_NAMES:[Ljava/lang/String;

.field private final mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mAudioOn:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$AudioOn;

.field private mAudioRouteAllowed:Z

.field private mAudioState:I

.field private mAudioWbs:Z

.field private mCalls:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/bluetooth/BluetoothHeadsetClientCall;",
            ">;"
        }
    .end annotation
.end field

.field private mCallsUpdate:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/bluetooth/BluetoothHeadsetClientCall;",
            ">;"
        }
    .end annotation
.end field

.field private mChldFeatures:I

.field private final mConnected:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;

.field private final mConnecting:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;

.field private mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

.field private final mDisconnected:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;

.field private mInBandRingtone:I

.field private mIndicatorBatteryLevel:I

.field private mIndicatorCall:I

.field private mIndicatorCallHeld:I

.field private mIndicatorCallSetup:I

.field private mIndicatorNetworkSignal:I

.field private mIndicatorNetworkState:I

.field private mIndicatorNetworkType:I

.field private mNativeAvailable:Z

.field private mOperatorName:Ljava/lang/String;

.field private mPeerFeatures:I

.field private mPendingAction:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mQueryCallsSupported:Z

.field private mQueuedActions:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;

.field private mSubscriberInfo:Ljava/lang/String;

.field private mVgmFromStack:Z

.field private mVgsFromStack:Z

.field private mVoiceRecognitionActive:I


# direct methods
.method static synthetic -get0(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->EVENT_TYPE_NAMES:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/media/AudioManager;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mDisconnected:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mInBandRingtone:I

    return v0
.end method

.method static synthetic -get12(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorNetworkState:I

    return v0
.end method

.method static synthetic -get13(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mOperatorName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPeerFeatures:I

    return v0
.end method

.method static synthetic -get15(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/util/Pair;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPendingAction:Landroid/util/Pair;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Ljava/util/Queue;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mQueuedActions:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic -get17(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    return-object v0
.end method

.method static synthetic -get18(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mSubscriberInfo:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get19(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mVgmFromStack:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$AudioOn;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioOn:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$AudioOn;

    return-object v0
.end method

.method static synthetic -get20(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mVgsFromStack:Z

    return v0
.end method

.method static synthetic -get21(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mVoiceRecognitionActive:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioRouteAllowed:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioState:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioWbs:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Ljava/util/Hashtable;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mConnected:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mConnecting:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/bluetooth/BluetoothDevice;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioState:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioWbs:Z

    return p1
.end method

.method static synthetic -set10(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorCallSetup:I

    return p1
.end method

.method static synthetic -set11(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorNetworkSignal:I

    return p1
.end method

.method static synthetic -set12(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorNetworkState:I

    return p1
.end method

.method static synthetic -set13(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorNetworkType:I

    return p1
.end method

.method static synthetic -set14(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mOperatorName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set15(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPeerFeatures:I

    return p1
.end method

.method static synthetic -set16(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/util/Pair;)Landroid/util/Pair;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPendingAction:Landroid/util/Pair;

    return-object p1
.end method

.method static synthetic -set17(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mQueryCallsSupported:Z

    return p1
.end method

.method static synthetic -set18(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Ljava/util/Queue;)Ljava/util/Queue;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mQueuedActions:Ljava/util/Queue;

    return-object p1
.end method

.method static synthetic -set19(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mSubscriberInfo:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Ljava/util/Hashtable;)Ljava/util/Hashtable;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    return-object p1
.end method

.method static synthetic -set20(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mVgmFromStack:Z

    return p1
.end method

.method static synthetic -set21(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mVgsFromStack:Z

    return p1
.end method

.method static synthetic -set22(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mVoiceRecognitionActive:I

    return p1
.end method

.method static synthetic -set3(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Ljava/util/Hashtable;)Ljava/util/Hashtable;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCallsUpdate:Ljava/util/Hashtable;

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mChldFeatures:I

    return p1
.end method

.method static synthetic -set5(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic -set6(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mInBandRingtone:I

    return p1
.end method

.method static synthetic -set7(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorBatteryLevel:I

    return p1
.end method

.method static synthetic -set8(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorCall:I

    return p1
.end method

.method static synthetic -set9(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorCallHeld:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;[I)Landroid/bluetooth/BluetoothHeadsetClientCall;
    .locals 1
    .param p1, "states"    # [I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCall([I)Landroid/bluetooth/BluetoothHeadsetClientCall;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/os/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap10(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->requestLastVoiceTagNumberNative()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap11(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->retrieveSubscriberInfoNative()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap12(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;IIILjava/lang/String;)Z
    .locals 1
    .param p1, "ATCmd"    # I
    .param p2, "val1"    # I
    .param p3, "val2"    # I
    .param p4, "arg"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendATCmdNative(IIILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap13(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;B)Z
    .locals 1
    .param p1, "code"    # B

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendDtmfNative(B)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap14(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;II)Z
    .locals 1
    .param p1, "volumeType"    # I
    .param p2, "volume"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->setVolumeNative(II)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap15(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->startVoiceRecognitionNative()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap16(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->stopVoiceRecognitionNative()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap17(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;)[B
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap18(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I
    .locals 1
    .param p1, "state"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->callsInState(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap19(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;IZ)V
    .locals 0
    .param p1, "flag"    # I
    .param p2, "retry"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->acceptCall(IZ)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;[B)Z
    .locals 1
    .param p1, "address"    # [B

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->connectAudioNative([B)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap20(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addCallWaiting(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap21(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V
    .locals 0
    .param p1, "action"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addQueuedAction(I)V

    return-void
.end method

.method static synthetic -wrap22(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;ILjava/lang/Object;)V
    .locals 0
    .param p1, "action"    # I
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addQueuedAction(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic -wrap23(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "newState"    # I
    .param p3, "prevState"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->broadcastAudioState(Landroid/bluetooth/BluetoothDevice;II)V

    return-void
.end method

.method static synthetic -wrap24(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "newState"    # I
    .param p3, "prevState"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V

    return-void
.end method

.method static synthetic -wrap25(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->clearPendingAction()V

    return-void
.end method

.method static synthetic -wrap26(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap27(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V
    .locals 0
    .param p1, "idx"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->enterPrivateMode(I)V

    return-void
.end method

.method static synthetic -wrap28(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->explicitCallTransfer()V

    return-void
.end method

.method static synthetic -wrap29(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->holdCall()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;[B)Z
    .locals 1
    .param p1, "address"    # [B

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->connectNative([B)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap30(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->queryCallsDone()V

    return-void
.end method

.method static synthetic -wrap31(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;IILjava/lang/String;ZZ)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "state"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "multiParty"    # Z
    .param p5, "outgoing"    # Z

    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->queryCallsUpdate(IILjava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic -wrap32(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->rejectCall()V

    return-void
.end method

.method static synthetic -wrap33(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V
    .locals 0
    .param p1, "what"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic -wrap34(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothHeadsetClientCall;I)V
    .locals 0
    .param p1, "c"    # Landroid/bluetooth/BluetoothHeadsetClientCall;
    .param p2, "state"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->setCallState(Landroid/bluetooth/BluetoothHeadsetClientCall;I)V

    return-void
.end method

.method static synthetic -wrap35(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V
    .locals 0
    .param p1, "idx"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->terminateCall(I)V

    return-void
.end method

.method static synthetic -wrap36(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p1, "destState"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic -wrap37(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V
    .locals 0
    .param p1, "callheld"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->updateCallHeldIndicator(I)V

    return-void
.end method

.method static synthetic -wrap38(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V
    .locals 0
    .param p1, "call"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->updateCallIndicator(I)V

    return-void
.end method

.method static synthetic -wrap39(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V
    .locals 0
    .param p1, "callsetup"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->updateCallSetupIndicator(I)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)Z
    .locals 1
    .param p1, "location"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->dialMemoryNative(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap40(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->updateClip(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap41(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V
    .locals 0
    .param p1, "resp_and_hold"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->updateRespAndHold(I)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Ljava/lang/String;)Z
    .locals 1
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->dialNative(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap6(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;[B)Z
    .locals 1
    .param p1, "address"    # [B

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->disconnectAudioNative([B)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap7(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;[B)Z
    .locals 1
    .param p1, "address"    # [B

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->disconnectNative([B)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap8(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->queryCallsStart()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap9(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->queryCurrentOperatorNameNative()Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 161
    invoke-static {}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->classInitNative()V

    .line 73
    return-void
.end method

.method private constructor <init>(Lcom/android/bluetooth/hfpclient/HeadsetClientService;)V
    .locals 7
    .param p1, "context"    # Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1206
    const-string/jumbo v0, "HeadsetClientStateMachine"

    invoke-direct {p0, v0}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 129
    iput-boolean v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mVgsFromStack:Z

    .line 130
    iput-boolean v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mVgmFromStack:Z

    .line 154
    iput-object v4, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    .line 2623
    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/String;

    .line 2624
    const-string/jumbo v1, "EVENT_TYPE_NONE"

    aput-object v1, v0, v3

    .line 2625
    const-string/jumbo v1, "EVENT_TYPE_CONNECTION_STATE_CHANGED"

    aput-object v1, v0, v6

    .line 2626
    const-string/jumbo v1, "EVENT_TYPE_AUDIO_STATE_CHANGED"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 2627
    const-string/jumbo v1, "EVENT_TYPE_VR_STATE_CHANGED"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 2628
    const-string/jumbo v1, "EVENT_TYPE_NETWORK_STATE"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 2629
    const-string/jumbo v1, "EVENT_TYPE_ROAMING_STATE"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 2630
    const-string/jumbo v1, "EVENT_TYPE_NETWORK_SIGNAL"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 2631
    const-string/jumbo v1, "EVENT_TYPE_BATTERY_LEVEL"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 2632
    const-string/jumbo v1, "EVENT_TYPE_OPERATOR_NAME"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 2633
    const-string/jumbo v1, "EVENT_TYPE_CALL"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 2634
    const-string/jumbo v1, "EVENT_TYPE_CALLSETUP"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 2635
    const-string/jumbo v1, "EVENT_TYPE_CALLHELD"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 2636
    const-string/jumbo v1, "EVENT_TYPE_CLIP"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 2637
    const-string/jumbo v1, "EVENT_TYPE_CALL_WAITING"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 2638
    const-string/jumbo v1, "EVENT_TYPE_CURRENT_CALLS"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 2639
    const-string/jumbo v1, "EVENT_TYPE_VOLUME_CHANGED"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 2640
    const-string/jumbo v1, "EVENT_TYPE_CMD_RESULT"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 2641
    const-string/jumbo v1, "EVENT_TYPE_SUBSCRIBER_INFO"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 2642
    const-string/jumbo v1, "EVENT_TYPE_RESP_AND_HOLD"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 2643
    const-string/jumbo v1, "EVENT_TYPE_IN_BAND_RING"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 2644
    const-string/jumbo v1, "EVENT_TYPE_LAST_VOICE_TAG_NUMBER"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 2645
    const-string/jumbo v1, "EVENT_TYPE_RING_INDICATION"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 2622
    iput-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->EVENT_TYPE_NAMES:[Ljava/lang/String;

    .line 1207
    iput-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    .line 1209
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 1210
    const-string/jumbo v0, "audio"

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioManager:Landroid/media/AudioManager;

    .line 1211
    iput v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioState:I

    .line 1212
    iput-boolean v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioWbs:Z

    .line 1214
    invoke-virtual {p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1215
    const v1, 0x7f070011

    .line 1214
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioRouteAllowed:Z

    .line 1217
    iput v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorNetworkState:I

    .line 1218
    iput v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorNetworkType:I

    .line 1219
    iput v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorNetworkSignal:I

    .line 1220
    iput v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorBatteryLevel:I

    .line 1223
    iput v5, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorCall:I

    .line 1224
    iput v5, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorCallSetup:I

    .line 1225
    iput v5, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorCallHeld:I

    .line 1227
    iput-object v4, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mOperatorName:Ljava/lang/String;

    .line 1228
    iput-object v4, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mSubscriberInfo:Ljava/lang/String;

    .line 1230
    iput v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mVoiceRecognitionActive:I

    .line 1231
    iput v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mInBandRingtone:I

    .line 1233
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mQueuedActions:Ljava/util/Queue;

    .line 1234
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->clearPendingAction()V

    .line 1236
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    .line 1237
    iput-object v4, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCallsUpdate:Ljava/util/Hashtable;

    .line 1238
    iput-boolean v6, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mQueryCallsSupported:Z

    .line 1240
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->initializeNative()V

    .line 1241
    iput-boolean v6, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mNativeAvailable:Z

    .line 1243
    new-instance v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;

    invoke-direct {v0, p0, v4}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;-><init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;)V

    iput-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mDisconnected:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;

    .line 1244
    new-instance v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;

    invoke-direct {v0, p0, v4}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;-><init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;)V

    iput-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mConnecting:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;

    .line 1245
    new-instance v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;

    invoke-direct {v0, p0, v4}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;-><init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;)V

    iput-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mConnected:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;

    .line 1246
    new-instance v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$AudioOn;

    invoke-direct {v0, p0, v4}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$AudioOn;-><init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$AudioOn;)V

    iput-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioOn:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$AudioOn;

    .line 1248
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mDisconnected:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 1249
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mConnecting:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 1250
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mConnected:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 1251
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioOn:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$AudioOn;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mConnected:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1253
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mDisconnected:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 1205
    return-void
.end method

.method private acceptCall(IZ)V
    .locals 8
    .param p1, "flag"    # I
    .param p2, "retry"    # Z

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 910
    const-string/jumbo v2, "HeadsetClientStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "acceptCall: ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    const/4 v2, 0x4

    .line 913
    const/4 v3, 0x5

    .line 912
    filled-new-array {v2, v3}, [I

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCall([I)Landroid/bluetooth/BluetoothHeadsetClientCall;

    move-result-object v1

    .line 914
    .local v1, "c":Landroid/bluetooth/BluetoothHeadsetClientCall;
    if-nez v1, :cond_0

    .line 915
    const/4 v2, 0x6

    filled-new-array {v2, v6}, [I

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCall([I)Landroid/bluetooth/BluetoothHeadsetClientCall;

    move-result-object v1

    .line 918
    if-nez v1, :cond_0

    .line 919
    return-void

    .line 923
    :cond_0
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getState()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 988
    :pswitch_0
    return-void

    .line 925
    :pswitch_1
    if-eqz p1, :cond_1

    .line 926
    return-void

    .line 938
    :cond_1
    const/4 v0, 0x7

    .line 940
    .local v0, "action":I
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    move-result v2

    if-ne v2, v6, :cond_2

    if-eqz p2, :cond_2

    .line 941
    const/4 v0, 0x1

    .line 991
    :cond_2
    :goto_0
    invoke-direct {p0, v0, v5}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->handleCallActionNative(II)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 992
    const/16 v2, 0xc

    invoke-direct {p0, v2, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addQueuedAction(II)V

    .line 907
    :goto_1
    return-void

    .line 945
    .end local v0    # "action":I
    :pswitch_2
    invoke-direct {p0, v5}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->callsInState(I)I

    move-result v2

    if-nez v2, :cond_5

    .line 947
    if-eqz p1, :cond_3

    .line 948
    return-void

    .line 953
    :cond_3
    if-eqz p2, :cond_4

    .line 954
    const/4 v0, 0x7

    .restart local v0    # "action":I
    goto :goto_0

    .line 956
    .end local v0    # "action":I
    :cond_4
    const/4 v0, 0x2

    .restart local v0    # "action":I
    goto :goto_0

    .line 962
    .end local v0    # "action":I
    :cond_5
    if-ne p1, v6, :cond_6

    .line 963
    const/4 v0, 0x2

    .restart local v0    # "action":I
    goto :goto_0

    .line 964
    .end local v0    # "action":I
    :cond_6
    if-ne p1, v7, :cond_7

    .line 965
    const/4 v0, 0x1

    .restart local v0    # "action":I
    goto :goto_0

    .line 967
    .end local v0    # "action":I
    :cond_7
    return-void

    .line 971
    :pswitch_3
    if-ne p1, v6, :cond_8

    .line 972
    const/4 v0, 0x2

    .restart local v0    # "action":I
    goto :goto_0

    .line 973
    .end local v0    # "action":I
    :cond_8
    if-ne p1, v7, :cond_9

    .line 974
    const/4 v0, 0x1

    .restart local v0    # "action":I
    goto :goto_0

    .line 975
    .end local v0    # "action":I
    :cond_9
    new-array v2, v6, [I

    aput v5, v2, v5

    invoke-direct {p0, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCall([I)Landroid/bluetooth/BluetoothHeadsetClientCall;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 976
    const/4 v0, 0x3

    .restart local v0    # "action":I
    goto :goto_0

    .line 978
    .end local v0    # "action":I
    :cond_a
    const/4 v0, 0x2

    .restart local v0    # "action":I
    goto :goto_0

    .line 982
    .end local v0    # "action":I
    :pswitch_4
    const/16 v0, 0xa

    .line 983
    .restart local v0    # "action":I
    goto :goto_0

    .line 994
    :cond_b
    const-string/jumbo v2, "HeadsetClientStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ERROR: Couldn\'t accept a call, action:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 923
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method private addCall(ILjava/lang/String;)V
    .locals 8
    .param p1, "state"    # I
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 215
    const-string/jumbo v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "addToCalls state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " number:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    .line 218
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    const/4 v6, 0x1

    .line 221
    .local v6, "outgoing":Z
    :goto_0
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 222
    .local v7, "id":Ljava/lang/Integer;
    :goto_1
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-virtual {v1, v7}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 223
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_1

    .line 217
    .end local v6    # "outgoing":Z
    .end local v7    # "id":Ljava/lang/Integer;
    :cond_0
    const/4 v6, 0x1

    .restart local v6    # "outgoing":Z
    goto :goto_0

    .line 218
    .end local v6    # "outgoing":Z
    :cond_1
    const/4 v6, 0x0

    .restart local v6    # "outgoing":Z
    goto :goto_0

    .line 226
    .restart local v7    # "id":Ljava/lang/Integer;
    :cond_2
    new-instance v0, Landroid/bluetooth/BluetoothHeadsetClientCall;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 227
    const/4 v5, 0x0

    move v3, p1

    move-object v4, p2

    .line 226
    invoke-direct/range {v0 .. v6}, Landroid/bluetooth/BluetoothHeadsetClientCall;-><init>(Landroid/bluetooth/BluetoothDevice;IILjava/lang/String;ZZ)V

    .line 228
    .local v0, "c":Landroid/bluetooth/BluetoothHeadsetClientCall;
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-virtual {v1, v7, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    invoke-direct {p0, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendCallChangedIntent(Landroid/bluetooth/BluetoothHeadsetClientCall;)V

    .line 214
    return-void
.end method

.method private addCallWaiting(Ljava/lang/String;)V
    .locals 3
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x5

    .line 794
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v2, v0, v1

    invoke-direct {p0, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCall([I)Landroid/bluetooth/BluetoothHeadsetClientCall;

    move-result-object v0

    if-nez v0, :cond_0

    .line 795
    invoke-direct {p0, v2, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addCall(ILjava/lang/String;)V

    .line 793
    :cond_0
    return-void
.end method

.method private addQueuedAction(I)V
    .locals 1
    .param p1, "action"    # I

    .prologue
    .line 203
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addQueuedAction(II)V

    .line 202
    return-void
.end method

.method private addQueuedAction(II)V
    .locals 4
    .param p1, "action"    # I
    .param p2, "data"    # I

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mQueuedActions:Ljava/util/Queue;

    new-instance v1, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 210
    return-void
.end method

.method private addQueuedAction(ILjava/lang/Object;)V
    .locals 3
    .param p1, "action"    # I
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mQueuedActions:Ljava/util/Queue;

    new-instance v1, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 206
    return-void
.end method

.method private broadcastAudioState(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "newState"    # I
    .param p3, "prevState"    # I

    .prologue
    .line 2269
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.bluetooth.headsetclient.profile.action.AUDIO_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2270
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2271
    const-string/jumbo v1, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2273
    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    .line 2274
    const-string/jumbo v1, "android.bluetooth.headsetclient.extra.AUDIO_WBS"

    iget-boolean v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioWbs:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2277
    :cond_0
    const-string/jumbo v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2278
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    const-string/jumbo v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2279
    const-string/jumbo v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Audio state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2268
    return-void
.end method

.method private broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 8
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "newState"    # I
    .param p3, "prevState"    # I

    .prologue
    const/16 v7, 0x20

    const/16 v6, 0x10

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 2284
    const-string/jumbo v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Connection state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2291
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    invoke-virtual {v1, p1, v6, p2, p3}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->notifyProfileConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;III)V

    .line 2293
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.bluetooth.headsetclient.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2294
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2295
    const-string/jumbo v1, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2296
    const-string/jumbo v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2299
    if-ne p2, v5, :cond_9

    .line 2300
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPeerFeatures:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v4, :cond_0

    .line 2302
    const-string/jumbo v1, "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_3WAY_CALLING"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2304
    :cond_0
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPeerFeatures:I

    and-int/lit8 v1, v1, 0x4

    .line 2305
    const/4 v2, 0x4

    .line 2304
    if-ne v1, v2, :cond_1

    .line 2306
    const-string/jumbo v1, "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_VOICE_RECOGNITION"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2308
    :cond_1
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPeerFeatures:I

    and-int/lit8 v1, v1, 0x10

    if-ne v1, v6, :cond_2

    .line 2310
    const-string/jumbo v1, "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_ATTACH_NUMBER_TO_VT"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2312
    :cond_2
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPeerFeatures:I

    and-int/lit8 v1, v1, 0x20

    if-ne v1, v7, :cond_3

    .line 2314
    const-string/jumbo v1, "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_REJECT_CALL"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2316
    :cond_3
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPeerFeatures:I

    and-int/lit16 v1, v1, 0x80

    .line 2317
    const/16 v2, 0x80

    .line 2316
    if-ne v1, v2, :cond_4

    .line 2318
    const-string/jumbo v1, "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_ECC"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2322
    :cond_4
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mChldFeatures:I

    and-int/lit8 v1, v1, 0x8

    .line 2323
    const/16 v2, 0x8

    .line 2322
    if-ne v1, v2, :cond_5

    .line 2324
    const-string/jumbo v1, "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_ACCEPT_HELD_OR_WAITING_CALL"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2326
    :cond_5
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mChldFeatures:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v4, :cond_6

    .line 2328
    const-string/jumbo v1, "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_RELEASE_HELD_OR_WAITING_CALL"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2330
    :cond_6
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mChldFeatures:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v5, :cond_7

    .line 2332
    const-string/jumbo v1, "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_RELEASE_AND_ACCEPT"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2334
    :cond_7
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mChldFeatures:I

    and-int/lit8 v1, v1, 0x20

    if-ne v1, v7, :cond_8

    .line 2336
    const-string/jumbo v1, "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_MERGE"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2338
    :cond_8
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mChldFeatures:I

    and-int/lit8 v1, v1, 0x40

    .line 2339
    const/16 v2, 0x40

    .line 2338
    if-ne v1, v2, :cond_9

    .line 2340
    const-string/jumbo v1, "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_MERGE_AND_DETACH"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2344
    :cond_9
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    const-string/jumbo v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2283
    return-void
.end method

.method private callsInState(I)I
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 276
    const/4 v2, 0x0

    .line 277
    .local v2, "i":I
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "c$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothHeadsetClientCall;

    .line 278
    .local v0, "c":Landroid/bluetooth/BluetoothHeadsetClientCall;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getState()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 279
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 283
    .end local v0    # "c":Landroid/bluetooth/BluetoothHeadsetClientCall;
    :cond_1
    return v2
.end method

.method private changeCallsState(II)V
    .locals 5
    .param p1, "old_state"    # I
    .param p2, "new_state"    # I

    .prologue
    .line 253
    const-string/jumbo v2, "HeadsetClientStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "changeStateFromCalls old:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " new: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "c$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothHeadsetClientCall;

    .line 256
    .local v0, "c":Landroid/bluetooth/BluetoothHeadsetClientCall;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getState()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 257
    invoke-direct {p0, v0, p2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->setCallState(Landroid/bluetooth/BluetoothHeadsetClientCall;I)V

    goto :goto_0

    .line 252
    .end local v0    # "c":Landroid/bluetooth/BluetoothHeadsetClientCall;
    :cond_1
    return-void
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupNative()V
.end method

.method private clearPendingAction()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 199
    new-instance v0, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPendingAction:Landroid/util/Pair;

    .line 198
    return-void
.end method

.method private native connectAudioNative([B)Z
.end method

.method private native connectNative([B)Z
.end method

.method private native dialMemoryNative(I)Z
.end method

.method private native dialNative(Ljava/lang/String;)Z
.end method

.method private native disconnectAudioNative([B)Z
.end method

.method private native disconnectNative([B)Z
.end method

.method private enterPrivateMode(I)V
    .locals 4
    .param p1, "idx"    # I

    .prologue
    .line 1118
    const-string/jumbo v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "enterPrivateMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothHeadsetClientCall;

    .line 1122
    .local v0, "c":Landroid/bluetooth/BluetoothHeadsetClientCall;
    if-nez v0, :cond_0

    .line 1123
    return-void

    .line 1126
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getState()I

    move-result v1

    if-eqz v1, :cond_1

    .line 1127
    return-void

    .line 1130
    :cond_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadsetClientCall;->isMultiParty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1131
    return-void

    .line 1134
    :cond_2
    const/4 v1, 0x6

    invoke-direct {p0, v1, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->handleCallActionNative(II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1135
    const/16 v1, 0x10

    invoke-direct {p0, v1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addQueuedAction(ILjava/lang/Object;)V

    .line 1117
    :goto_0
    return-void

    .line 1137
    :cond_3
    const-string/jumbo v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ERROR: Couldn\'t enter private  id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private explicitCallTransfer()V
    .locals 2

    .prologue
    .line 1142
    const-string/jumbo v0, "HeadsetClientStateMachine"

    const-string/jumbo v1, "explicitCallTransfer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 1146
    return-void

    .line 1149
    :cond_0
    const/4 v0, 0x4

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->handleCallActionNative(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1150
    const/16 v0, 0x12

    invoke-direct {p0, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addQueuedAction(I)V

    .line 1141
    :goto_0
    return-void

    .line 1152
    :cond_1
    const-string/jumbo v0, "HeadsetClientStateMachine"

    const-string/jumbo v1, "ERROR: Couldn\'t transfer call"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 2594
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/Utils;->getBytesFromAddress(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private varargs getCall([I)Landroid/bluetooth/BluetoothHeadsetClientCall;
    .locals 6
    .param p1, "states"    # [I

    .prologue
    .line 263
    const-string/jumbo v3, "HeadsetClientStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getFromCallsWithStates states:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "c$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothHeadsetClientCall;

    .line 265
    .local v0, "c":Landroid/bluetooth/BluetoothHeadsetClientCall;
    const/4 v3, 0x0

    array-length v4, p1

    :goto_0
    if-ge v3, v4, :cond_0

    aget v2, p1, v3

    .line 266
    .local v2, "s":I
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getState()I

    move-result v5

    if-ne v5, v2, :cond_1

    .line 267
    return-object v0

    .line 265
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 272
    .end local v0    # "c":Landroid/bluetooth/BluetoothHeadsetClientCall;
    .end local v2    # "s":I
    :cond_2
    const/4 v3, 0x0

    return-object v3
.end method

.method private getCurrentDeviceName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2582
    const-string/jumbo v0, "<unknown>"

    .line 2583
    .local v0, "defaultName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v2, :cond_0

    .line 2584
    return-object v0

    .line 2586
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    .line 2587
    .local v1, "deviceName":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 2588
    return-object v0

    .line 2590
    :cond_1
    return-object v1
.end method

.method private getDevice([B)Landroid/bluetooth/BluetoothDevice;
    .locals 2
    .param p1, "address"    # [B

    .prologue
    .line 2422
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0
.end method

.method private native handleCallActionNative(II)Z
.end method

.method private holdCall()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1040
    const-string/jumbo v2, "HeadsetClientStateMachine"

    const-string/jumbo v3, "holdCall"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    new-array v2, v5, [I

    const/4 v3, 0x4

    aput v3, v2, v4

    invoke-direct {p0, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCall([I)Landroid/bluetooth/BluetoothHeadsetClientCall;

    move-result-object v1

    .line 1043
    .local v1, "c":Landroid/bluetooth/BluetoothHeadsetClientCall;
    if-eqz v1, :cond_0

    .line 1044
    const/16 v0, 0x9

    .line 1054
    .local v0, "action":I
    :goto_0
    invoke-direct {p0, v0, v4}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->handleCallActionNative(II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1055
    const/16 v2, 0xe

    invoke-direct {p0, v2, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addQueuedAction(II)V

    .line 1037
    :goto_1
    return-void

    .line 1046
    .end local v0    # "action":I
    :cond_0
    new-array v2, v5, [I

    aput v4, v2, v4

    invoke-direct {p0, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCall([I)Landroid/bluetooth/BluetoothHeadsetClientCall;

    move-result-object v1

    .line 1047
    if-nez v1, :cond_1

    .line 1048
    return-void

    .line 1051
    :cond_1
    const/4 v0, 0x2

    .restart local v0    # "action":I
    goto :goto_0

    .line 1057
    :cond_2
    const-string/jumbo v2, "HeadsetClientStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ERROR: Couldn\'t hold a call, action:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private native initializeNative()V
.end method

.method private loopQueryCalls()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 893
    invoke-direct {p0, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->callsInState(I)I

    move-result v1

    if-le v1, v4, :cond_0

    .line 894
    return v4

    .line 900
    :cond_0
    new-array v1, v4, [I

    const/4 v2, 0x4

    aput v2, v1, v3

    invoke-direct {p0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCall([I)Landroid/bluetooth/BluetoothHeadsetClientCall;

    move-result-object v0

    .line 901
    .local v0, "c":Landroid/bluetooth/BluetoothHeadsetClientCall;
    if-eqz v0, :cond_1

    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorCallSetup:I

    if-nez v1, :cond_1

    .line 902
    return v4

    .line 904
    :cond_1
    return v3
.end method

.method static make(Lcom/android/bluetooth/hfpclient/HeadsetClientService;)Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;
    .locals 3
    .param p0, "context"    # Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    .prologue
    .line 1257
    const-string/jumbo v1, "HeadsetClientStateMachine"

    const-string/jumbo v2, "make"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    new-instance v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;-><init>(Lcom/android/bluetooth/hfpclient/HeadsetClientService;)V

    .line 1259
    .local v0, "hfcsm":Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;
    invoke-virtual {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->start()V

    .line 1260
    return-object v0
.end method

.method private onAudioStateChanged(I[B)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "address"    # [B

    .prologue
    .line 2436
    new-instance v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;ILcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;)V

    .line 2437
    .local v0, "event":Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;
    iput p1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    .line 2438
    invoke-direct {p0, p2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iput-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    .line 2439
    const-string/jumbo v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "incoming"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2440
    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 2435
    return-void
.end method

.method private onBatteryLevel(I)V
    .locals 4
    .param p1, "level"    # I

    .prologue
    .line 2472
    new-instance v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;ILcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;)V

    .line 2473
    .local v0, "event":Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;
    iput p1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    .line 2474
    const-string/jumbo v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "incoming"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2475
    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 2471
    return-void
.end method

.method private onCall(I)V
    .locals 4
    .param p1, "call"    # I

    .prologue
    .line 2486
    new-instance v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;ILcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;)V

    .line 2487
    .local v0, "event":Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;
    iput p1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    .line 2488
    const-string/jumbo v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "incoming"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2489
    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 2485
    return-void
.end method

.method private onCallHeld(I)V
    .locals 4
    .param p1, "callheld"    # I

    .prologue
    .line 2500
    new-instance v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;ILcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;)V

    .line 2501
    .local v0, "event":Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;
    iput p1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    .line 2502
    const-string/jumbo v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "incoming"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2503
    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 2499
    return-void
.end method

.method private onCallSetup(I)V
    .locals 4
    .param p1, "callsetup"    # I

    .prologue
    .line 2493
    new-instance v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;ILcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;)V

    .line 2494
    .local v0, "event":Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;
    iput p1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    .line 2495
    const-string/jumbo v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "incoming"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2496
    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 2492
    return-void
.end method

.method private onCallWaiting(Ljava/lang/String;)V
    .locals 4
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 2521
    new-instance v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;

    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;ILcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;)V

    .line 2522
    .local v0, "event":Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;
    iput-object p1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueString:Ljava/lang/String;

    .line 2523
    const-string/jumbo v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "incoming"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2524
    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 2520
    return-void
.end method

.method private onClip(Ljava/lang/String;)V
    .locals 4
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 2514
    new-instance v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;ILcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;)V

    .line 2515
    .local v0, "event":Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;
    iput-object p1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueString:Ljava/lang/String;

    .line 2516
    const-string/jumbo v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "incoming"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2517
    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 2513
    return-void
.end method

.method private onCmdResult(II)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "cme"    # I

    .prologue
    .line 2547
    new-instance v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;ILcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;)V

    .line 2548
    .local v0, "event":Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;
    iput p1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    .line 2549
    iput p2, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt2:I

    .line 2550
    const-string/jumbo v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "incoming"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2551
    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 2546
    return-void
.end method

.method private onConnectionStateChanged(III[B)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "peer_feat"    # I
    .param p3, "chld_feat"    # I
    .param p4, "address"    # [B

    .prologue
    .line 2426
    new-instance v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;ILcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;)V

    .line 2427
    .local v0, "event":Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;
    iput p1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    .line 2428
    iput p2, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt2:I

    .line 2429
    iput p3, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt3:I

    .line 2430
    invoke-direct {p0, p4}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iput-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    .line 2431
    const-string/jumbo v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "incoming"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2432
    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 2425
    return-void
.end method

.method private onCurrentCalls(IIIILjava/lang/String;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "dir"    # I
    .param p3, "state"    # I
    .param p4, "mparty"    # I
    .param p5, "number"    # Ljava/lang/String;

    .prologue
    .line 2528
    new-instance v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;

    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;ILcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;)V

    .line 2529
    .local v0, "event":Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;
    iput p1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    .line 2530
    iput p2, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt2:I

    .line 2531
    iput p3, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt3:I

    .line 2532
    iput p4, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt4:I

    .line 2533
    iput-object p5, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueString:Ljava/lang/String;

    .line 2534
    const-string/jumbo v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "incoming "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2535
    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 2527
    return-void
.end method

.method private onCurrentOperator(Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 2479
    new-instance v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;ILcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;)V

    .line 2480
    .local v0, "event":Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;
    iput-object p1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueString:Ljava/lang/String;

    .line 2481
    const-string/jumbo v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "incoming"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2482
    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 2478
    return-void
.end method

.method private onInBandRing(I)V
    .locals 4
    .param p1, "in_band"    # I

    .prologue
    .line 2563
    new-instance v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;

    const/16 v1, 0x13

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;ILcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;)V

    .line 2564
    .local v0, "event":Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;
    iput p1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    .line 2565
    const-string/jumbo v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "incoming"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2566
    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 2562
    return-void
.end method

.method private onLastVoiceTagNumber(Ljava/lang/String;)V
    .locals 4
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 2570
    new-instance v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;

    const/16 v1, 0x14

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;ILcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;)V

    .line 2571
    .local v0, "event":Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;
    iput-object p1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueString:Ljava/lang/String;

    .line 2572
    const-string/jumbo v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "incoming"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2573
    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 2569
    return-void
.end method

.method private onNetworkRoaming(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 2458
    new-instance v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;ILcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;)V

    .line 2459
    .local v0, "event":Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;
    iput p1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    .line 2460
    const-string/jumbo v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "incoming"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2461
    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 2457
    return-void
.end method

.method private onNetworkSignal(I)V
    .locals 4
    .param p1, "signal"    # I

    .prologue
    .line 2465
    new-instance v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;ILcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;)V

    .line 2466
    .local v0, "event":Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;
    iput p1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    .line 2467
    const-string/jumbo v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "incoming"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2468
    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 2464
    return-void
.end method

.method private onNetworkState(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 2451
    new-instance v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;ILcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;)V

    .line 2452
    .local v0, "event":Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;
    iput p1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    .line 2453
    const-string/jumbo v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "incoming"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2454
    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 2450
    return-void
.end method

.method private onRespAndHold(I)V
    .locals 4
    .param p1, "resp_and_hold"    # I

    .prologue
    .line 2507
    new-instance v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;

    const/16 v1, 0x12

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;ILcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;)V

    .line 2508
    .local v0, "event":Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;
    iput p1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    .line 2509
    const-string/jumbo v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "incoming"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2510
    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 2506
    return-void
.end method

.method private onRingIndication()V
    .locals 4

    .prologue
    .line 2576
    new-instance v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;

    const/16 v1, 0x15

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;ILcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;)V

    .line 2577
    .local v0, "event":Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;
    const-string/jumbo v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "incoming"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2578
    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 2575
    return-void
.end method

.method private onSubscriberInfo(Ljava/lang/String;I)V
    .locals 4
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 2555
    new-instance v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;

    const/16 v1, 0x11

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;ILcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;)V

    .line 2556
    .local v0, "event":Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;
    iput p2, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    .line 2557
    iput-object p1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueString:Ljava/lang/String;

    .line 2558
    const-string/jumbo v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "incoming"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2559
    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 2554
    return-void
.end method

.method private onVolumeChange(II)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "volume"    # I

    .prologue
    .line 2539
    new-instance v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;

    const/16 v1, 0xf

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;ILcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;)V

    .line 2540
    .local v0, "event":Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;
    iput p1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    .line 2541
    iput p2, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt2:I

    .line 2542
    const-string/jumbo v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "incoming"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2543
    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 2538
    return-void
.end method

.method private onVrStateChanged(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 2444
    new-instance v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;ILcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;)V

    .line 2445
    .local v0, "event":Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;
    iput p1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    .line 2446
    const-string/jumbo v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "incoming"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2447
    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 2443
    return-void
.end method

.method private queryCallsDone()V
    .locals 6

    .prologue
    .line 828
    const-string/jumbo v3, "HeadsetClientStateMachine"

    const-string/jumbo v4, "queryCallsDone"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 833
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/bluetooth/BluetoothHeadsetClientCall;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 834
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 836
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/bluetooth/BluetoothHeadsetClientCall;>;"
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCallsUpdate:Ljava/util/Hashtable;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 840
    const-string/jumbo v4, "HeadsetClientStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateCallsDone call removed id:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothHeadsetClientCall;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getId()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothHeadsetClientCall;

    .line 843
    .local v0, "c":Landroid/bluetooth/BluetoothHeadsetClientCall;
    const/4 v3, 0x7

    invoke-direct {p0, v0, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->setCallState(Landroid/bluetooth/BluetoothHeadsetClientCall;I)V

    goto :goto_0

    .line 847
    .end local v0    # "c":Landroid/bluetooth/BluetoothHeadsetClientCall;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/bluetooth/BluetoothHeadsetClientCall;>;"
    :cond_1
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCallsUpdate:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 848
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 849
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 851
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/bluetooth/BluetoothHeadsetClientCall;>;"
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 853
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothHeadsetClientCall;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getNumber()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 854
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothHeadsetClientCall;

    iget-object v4, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothHeadsetClientCall;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothHeadsetClientCall;->setNumber(Ljava/lang/String;)V

    .line 857
    :cond_3
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothHeadsetClientCall;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothHeadsetClientCall;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 861
    const-string/jumbo v4, "HeadsetClientStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateCallsDone call changed id:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothHeadsetClientCall;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getId()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothHeadsetClientCall;

    invoke-direct {p0, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendCallChangedIntent(Landroid/bluetooth/BluetoothHeadsetClientCall;)V

    goto/16 :goto_1

    .line 864
    :cond_4
    const-string/jumbo v4, "HeadsetClientStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateCallsDone new call id:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothHeadsetClientCall;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getId()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothHeadsetClientCall;

    invoke-direct {p0, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendCallChangedIntent(Landroid/bluetooth/BluetoothHeadsetClientCall;)V

    goto/16 :goto_1

    .line 869
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/bluetooth/BluetoothHeadsetClientCall;>;"
    :cond_5
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCallsUpdate:Ljava/util/Hashtable;

    iput-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    .line 870
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCallsUpdate:Ljava/util/Hashtable;

    .line 872
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->loopQueryCalls()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 873
    const-string/jumbo v3, "HeadsetClientStateMachine"

    const-string/jumbo v4, "queryCallsDone ambigious calls, starting call query loop"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    const-wide/16 v4, 0x5f3

    const/16 v3, 0x32

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessageDelayed(IJ)V

    .line 827
    :cond_6
    return-void
.end method

.method private queryCallsStart()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 801
    const-string/jumbo v0, "HeadsetClientStateMachine"

    const-string/jumbo v1, "queryCallsStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    iget-boolean v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mQueryCallsSupported:Z

    if-nez v0, :cond_0

    .line 805
    return v2

    .line 808
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->clearPendingAction()V

    .line 811
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCallsUpdate:Ljava/util/Hashtable;

    if-eqz v0, :cond_1

    .line 812
    return v3

    .line 815
    :cond_1
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->queryCurrentCallsNative()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 816
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCallsUpdate:Ljava/util/Hashtable;

    .line 817
    const/16 v0, 0x32

    invoke-direct {p0, v0, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addQueuedAction(II)V

    .line 818
    return v3

    .line 821
    :cond_2
    const-string/jumbo v0, "HeadsetClientStateMachine"

    const-string/jumbo v1, "updateCallsStart queryCurrentCallsNative failed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    iput-boolean v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mQueryCallsSupported:Z

    .line 823
    iput-object v4, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCallsUpdate:Ljava/util/Hashtable;

    .line 824
    return v2
.end method

.method private queryCallsUpdate(IILjava/lang/String;ZZ)V
    .locals 9
    .param p1, "id"    # I
    .param p2, "state"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "multiParty"    # Z
    .param p5, "outgoing"    # Z

    .prologue
    .line 880
    const-string/jumbo v0, "HeadsetClientStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "queryCallsUpdate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCallsUpdate:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 884
    return-void

    .line 887
    :cond_0
    iget-object v7, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCallsUpdate:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Landroid/bluetooth/BluetoothHeadsetClientCall;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/bluetooth/BluetoothHeadsetClientCall;-><init>(Landroid/bluetooth/BluetoothDevice;IILjava/lang/String;ZZ)V

    invoke-virtual {v7, v8, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 879
    return-void
.end method

.method private native queryCurrentCallsNative()Z
.end method

.method private native queryCurrentOperatorNameNative()Z
.end method

.method private rejectCall()V
    .locals 6

    .prologue
    .line 1001
    const-string/jumbo v2, "HeadsetClientStateMachine"

    const-string/jumbo v3, "rejectCall"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    const/4 v2, 0x4

    .line 1005
    const/4 v3, 0x5

    .line 1006
    const/4 v4, 0x6

    .line 1007
    const/4 v5, 0x1

    .line 1004
    filled-new-array {v2, v3, v4, v5}, [I

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCall([I)Landroid/bluetooth/BluetoothHeadsetClientCall;

    move-result-object v1

    .line 1008
    .local v1, "c":Landroid/bluetooth/BluetoothHeadsetClientCall;
    if-nez v1, :cond_0

    .line 1009
    return-void

    .line 1012
    :cond_0
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getState()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1027
    :pswitch_0
    return-void

    .line 1014
    :pswitch_1
    const/16 v0, 0x8

    .line 1030
    .local v0, "action":I
    :goto_0
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->handleCallActionNative(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1031
    const/16 v2, 0xd

    invoke-direct {p0, v2, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addQueuedAction(II)V

    .line 998
    :goto_1
    return-void

    .line 1018
    .end local v0    # "action":I
    :pswitch_2
    const/4 v0, 0x0

    .line 1019
    .restart local v0    # "action":I
    goto :goto_0

    .line 1021
    .end local v0    # "action":I
    :pswitch_3
    const/16 v0, 0xb

    .line 1022
    .restart local v0    # "action":I
    goto :goto_0

    .line 1033
    :cond_1
    const-string/jumbo v2, "HeadsetClientStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ERROR: Couldn\'t reject a call, action:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1012
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private varargs removeCalls([I)V
    .locals 6
    .param p1, "states"    # [I

    .prologue
    .line 234
    const-string/jumbo v3, "HeadsetClientStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeFromCalls states:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 239
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/bluetooth/BluetoothHeadsetClientCall;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 240
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothHeadsetClientCall;

    .line 242
    .local v0, "c":Landroid/bluetooth/BluetoothHeadsetClientCall;
    const/4 v3, 0x0

    array-length v4, p1

    :goto_1
    if-ge v3, v4, :cond_0

    aget v2, p1, v3

    .line 243
    .local v2, "s":I
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getState()I

    move-result v5

    if-ne v5, v2, :cond_1

    .line 244
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 245
    const/4 v3, 0x7

    invoke-direct {p0, v0, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->setCallState(Landroid/bluetooth/BluetoothHeadsetClientCall;I)V

    goto :goto_0

    .line 242
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 233
    .end local v0    # "c":Landroid/bluetooth/BluetoothHeadsetClientCall;
    .end local v2    # "s":I
    :cond_2
    return-void
.end method

.method private native requestLastVoiceTagNumberNative()Z
.end method

.method private native retrieveSubscriberInfoNative()Z
.end method

.method private native sendATCmdNative(IIILjava/lang/String;)Z
.end method

.method private sendCallChangedIntent(Landroid/bluetooth/BluetoothHeadsetClientCall;)V
    .locals 3
    .param p1, "c"    # Landroid/bluetooth/BluetoothHeadsetClientCall;

    .prologue
    .line 324
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.bluetooth.headsetclient.profile.action.AG_CALL_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 325
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.bluetooth.headsetclient.extra.CALL"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 326
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    const-string/jumbo v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 323
    return-void
.end method

.method private native sendDtmfNative(B)Z
.end method

.method private setCallState(Landroid/bluetooth/BluetoothHeadsetClientCall;I)V
    .locals 2
    .param p1, "c"    # Landroid/bluetooth/BluetoothHeadsetClientCall;
    .param p2, "state"    # I

    .prologue
    const/4 v1, 0x0

    .line 307
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getState()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 308
    return-void

    .line 311
    :cond_0
    const/4 v0, 0x7

    if-ne p2, v0, :cond_1

    .line 312
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    if-eqz v0, :cond_1

    .line 313
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V

    .line 314
    const-string/jumbo v0, "HeadsetClientStateMachine"

    const-string/jumbo v1, "abandonAudioFocus "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->abandonAudioFocusForCall()V

    .line 319
    :cond_1
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothHeadsetClientCall;->setState(I)V

    .line 320
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendCallChangedIntent(Landroid/bluetooth/BluetoothHeadsetClientCall;)V

    .line 306
    return-void
.end method

.method private native setVolumeNative(II)Z
.end method

.method private native startVoiceRecognitionNative()Z
.end method

.method private native stopVoiceRecognitionNative()Z
.end method

.method private terminateCall(I)V
    .locals 7
    .param p1, "idx"    # I

    .prologue
    const/16 v6, 0xf

    const/4 v5, 0x0

    .line 1062
    const-string/jumbo v2, "HeadsetClientStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "terminateCall: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    if-nez p1, :cond_4

    .line 1065
    const/16 v0, 0x8

    .line 1068
    .local v0, "action":I
    const/4 v2, 0x2

    .line 1069
    const/4 v3, 0x3

    .line 1067
    filled-new-array {v2, v3}, [I

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCall([I)Landroid/bluetooth/BluetoothHeadsetClientCall;

    move-result-object v1

    .line 1070
    .local v1, "c":Landroid/bluetooth/BluetoothHeadsetClientCall;
    if-eqz v1, :cond_0

    .line 1071
    invoke-direct {p0, v0, v5}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->handleCallActionNative(II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1072
    invoke-direct {p0, v6, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addQueuedAction(II)V

    .line 1078
    :cond_0
    :goto_0
    invoke-direct {p0, v5}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->callsInState(I)I

    move-result v2

    if-lez v2, :cond_1

    .line 1079
    invoke-direct {p0, v0, v5}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->handleCallActionNative(II)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1080
    invoke-direct {p0, v6, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addQueuedAction(II)V

    .line 1061
    :cond_1
    :goto_1
    return-void

    .line 1074
    :cond_2
    const-string/jumbo v2, "HeadsetClientStateMachine"

    const-string/jumbo v3, "ERROR: Couldn\'t terminate outgoing call"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1082
    :cond_3
    const-string/jumbo v2, "HeadsetClientStateMachine"

    const-string/jumbo v3, "ERROR: Couldn\'t terminate active calls"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1087
    .end local v0    # "action":I
    .end local v1    # "c":Landroid/bluetooth/BluetoothHeadsetClientCall;
    :cond_4
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothHeadsetClientCall;

    .line 1089
    .restart local v1    # "c":Landroid/bluetooth/BluetoothHeadsetClientCall;
    if-nez v1, :cond_5

    .line 1090
    return-void

    .line 1093
    :cond_5
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getState()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1102
    :pswitch_0
    return-void

    .line 1095
    :pswitch_1
    const/4 v0, 0x5

    .line 1105
    .restart local v0    # "action":I
    :goto_2
    invoke-direct {p0, v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->handleCallActionNative(II)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1106
    const/4 v2, 0x5

    if-ne v0, v2, :cond_6

    .line 1107
    const/16 v2, 0x35

    invoke-direct {p0, v2, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addQueuedAction(ILjava/lang/Object;)V

    goto :goto_1

    .line 1099
    .end local v0    # "action":I
    :pswitch_2
    const/16 v0, 0x8

    .line 1100
    .restart local v0    # "action":I
    goto :goto_2

    .line 1109
    :cond_6
    invoke-direct {p0, v6, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addQueuedAction(II)V

    goto :goto_1

    .line 1112
    :cond_7
    const-string/jumbo v2, "HeadsetClientStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ERROR: Couldn\'t terminate a call, action:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1093
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private updateCallHeldIndicator(I)V
    .locals 11
    .param p1, "callheld"    # I

    .prologue
    const/4 v10, 0x5

    const/4 v9, 0x2

    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 581
    const-string/jumbo v3, "HeadsetClientStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateCallHeld "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    invoke-direct {p0, v8, v8, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->waitForIndicators(III)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 584
    return-void

    .line 587
    :cond_0
    iget-boolean v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mQueryCallsSupported:Z

    if-eqz v3, :cond_1

    .line 588
    const/16 v3, 0x32

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(I)V

    .line 589
    return-void

    .line 592
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 728
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->updateCallsMultiParty()V

    .line 730
    iput p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorCallHeld:I

    .line 580
    return-void

    .line 594
    :pswitch_0
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPendingAction:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 627
    const-string/jumbo v3, "HeadsetClientStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unexpected callheld=0 while in action "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPendingAction:Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 596
    :sswitch_0
    new-array v3, v7, [I

    aput v7, v3, v6

    invoke-direct {p0, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->removeCalls([I)V

    .line 597
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->clearPendingAction()V

    goto :goto_0

    .line 600
    :sswitch_1
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPendingAction:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    packed-switch v3, :pswitch_data_1

    :pswitch_1
    goto :goto_0

    .line 602
    :pswitch_2
    new-array v3, v7, [I

    aput v6, v3, v6

    invoke-direct {p0, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->removeCalls([I)V

    .line 603
    invoke-direct {p0, v7, v6}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->changeCallsState(II)V

    .line 605
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->clearPendingAction()V

    goto :goto_0

    .line 608
    :pswitch_3
    invoke-direct {p0, v7, v6}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->changeCallsState(II)V

    .line 610
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->clearPendingAction()V

    goto :goto_0

    .line 617
    :sswitch_2
    iget v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorCall:I

    if-ne v3, v7, :cond_3

    .line 618
    iget v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorCallHeld:I

    if-ne v3, v9, :cond_3

    .line 619
    invoke-direct {p0, v7, v6}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->changeCallsState(II)V

    goto :goto_0

    .line 624
    :cond_3
    new-array v3, v7, [I

    aput v7, v3, v6

    invoke-direct {p0, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->removeCalls([I)V

    goto :goto_0

    .line 632
    :pswitch_4
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPendingAction:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sparse-switch v3, :sswitch_data_1

    .line 686
    const-string/jumbo v3, "HeadsetClientStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unexpected callheld=0 while in action "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPendingAction:Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 634
    :sswitch_3
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPendingAction:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v9, :cond_2

    .line 637
    new-array v3, v7, [I

    aput v10, v3, v6

    invoke-direct {p0, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCall([I)Landroid/bluetooth/BluetoothHeadsetClientCall;

    move-result-object v0

    .line 638
    .local v0, "c":Landroid/bluetooth/BluetoothHeadsetClientCall;
    if-eqz v0, :cond_5

    .line 639
    invoke-direct {p0, v6, v7}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->changeCallsState(II)V

    .line 641
    invoke-direct {p0, v0, v6}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->setCallState(Landroid/bluetooth/BluetoothHeadsetClientCall;I)V

    .line 655
    :cond_4
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->clearPendingAction()V

    goto/16 :goto_0

    .line 643
    :cond_5
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "cc$iterator":Ljava/util/Iterator;
    :cond_6
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothHeadsetClientCall;

    .line 644
    .local v1, "cc":Landroid/bluetooth/BluetoothHeadsetClientCall;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getState()I

    move-result v3

    if-nez v3, :cond_7

    .line 646
    invoke-direct {p0, v1, v7}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->setCallState(Landroid/bluetooth/BluetoothHeadsetClientCall;I)V

    goto :goto_1

    .line 648
    :cond_7
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getState()I

    move-result v3

    if-ne v3, v7, :cond_6

    .line 650
    invoke-direct {p0, v1, v6}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->setCallState(Landroid/bluetooth/BluetoothHeadsetClientCall;I)V

    goto :goto_1

    .line 660
    .end local v0    # "c":Landroid/bluetooth/BluetoothHeadsetClientCall;
    .end local v1    # "cc":Landroid/bluetooth/BluetoothHeadsetClientCall;
    .end local v2    # "cc$iterator":Ljava/util/Iterator;
    :sswitch_4
    new-array v3, v7, [I

    aput v10, v3, v6

    invoke-direct {p0, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCall([I)Landroid/bluetooth/BluetoothHeadsetClientCall;

    move-result-object v0

    .line 661
    .restart local v0    # "c":Landroid/bluetooth/BluetoothHeadsetClientCall;
    if-eqz v0, :cond_8

    .line 662
    invoke-direct {p0, v6, v7}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->changeCallsState(II)V

    .line 664
    invoke-direct {p0, v0, v6}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->setCallState(Landroid/bluetooth/BluetoothHeadsetClientCall;I)V

    goto/16 :goto_0

    .line 669
    :cond_8
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "cc$iterator":Ljava/util/Iterator;
    :cond_9
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothHeadsetClientCall;

    .line 670
    .restart local v1    # "cc":Landroid/bluetooth/BluetoothHeadsetClientCall;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getState()I

    move-result v3

    if-nez v3, :cond_a

    .line 671
    invoke-direct {p0, v1, v7}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->setCallState(Landroid/bluetooth/BluetoothHeadsetClientCall;I)V

    goto :goto_2

    .line 672
    :cond_a
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getState()I

    move-result v3

    if-ne v3, v7, :cond_9

    .line 673
    invoke-direct {p0, v1, v6}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->setCallState(Landroid/bluetooth/BluetoothHeadsetClientCall;I)V

    goto :goto_2

    .line 678
    .end local v0    # "c":Landroid/bluetooth/BluetoothHeadsetClientCall;
    .end local v1    # "cc":Landroid/bluetooth/BluetoothHeadsetClientCall;
    .end local v2    # "cc$iterator":Ljava/util/Iterator;
    :sswitch_5
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "cc$iterator":Ljava/util/Iterator;
    :cond_b
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothHeadsetClientCall;

    .line 679
    .restart local v1    # "cc":Landroid/bluetooth/BluetoothHeadsetClientCall;
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPendingAction:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/bluetooth/BluetoothHeadsetClientCall;

    if-eq v1, v3, :cond_b

    .line 680
    invoke-direct {p0, v1, v7}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->setCallState(Landroid/bluetooth/BluetoothHeadsetClientCall;I)V

    goto :goto_3

    .line 683
    .end local v1    # "cc":Landroid/bluetooth/BluetoothHeadsetClientCall;
    :cond_c
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->clearPendingAction()V

    goto/16 :goto_0

    .line 691
    .end local v2    # "cc$iterator":Ljava/util/Iterator;
    :pswitch_5
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPendingAction:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sparse-switch v3, :sswitch_data_2

    .line 720
    const-string/jumbo v3, "HeadsetClientStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unexpected callheld=0 while in action "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPendingAction:Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 695
    :sswitch_6
    invoke-direct {p0, v6, v7}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->changeCallsState(II)V

    goto/16 :goto_0

    .line 699
    :sswitch_7
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPendingAction:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    packed-switch v3, :pswitch_data_2

    :pswitch_6
    goto/16 :goto_0

    .line 701
    :pswitch_7
    new-array v3, v7, [I

    aput v6, v3, v6

    invoke-direct {p0, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->removeCalls([I)V

    .line 702
    invoke-direct {p0, v7, v6}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->changeCallsState(II)V

    .line 704
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->clearPendingAction()V

    goto/16 :goto_0

    .line 707
    :pswitch_8
    invoke-direct {p0, v7, v6}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->changeCallsState(II)V

    .line 709
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->clearPendingAction()V

    goto/16 :goto_0

    .line 717
    :sswitch_8
    new-array v3, v7, [I

    aput v6, v3, v6

    invoke-direct {p0, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->removeCalls([I)V

    goto/16 :goto_0

    .line 592
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 594
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0xc -> :sswitch_1
        0xd -> :sswitch_0
    .end sparse-switch

    .line 600
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch

    .line 632
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_4
        0xc -> :sswitch_3
        0x10 -> :sswitch_5
    .end sparse-switch

    .line 691
    :sswitch_data_2
    .sparse-switch
        0x0 -> :sswitch_8
        0x9 -> :sswitch_6
        0xa -> :sswitch_6
        0xb -> :sswitch_6
        0xd -> :sswitch_7
        0xf -> :sswitch_8
    .end sparse-switch

    .line 699
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_8
    .end packed-switch
.end method

.method private updateCallIndicator(I)V
    .locals 7
    .param p1, "call"    # I

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 397
    const-string/jumbo v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateCallIndicator "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    invoke-direct {p0, p1, v6, v6}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->waitForIndicators(III)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 400
    return-void

    .line 403
    :cond_0
    iget-boolean v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mQueryCallsSupported:Z

    if-eqz v1, :cond_1

    .line 404
    const/16 v1, 0x32

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(I)V

    .line 405
    return-void

    .line 408
    :cond_1
    const/4 v0, 0x0

    .line 410
    .local v0, "c":Landroid/bluetooth/BluetoothHeadsetClientCall;
    packed-switch p1, :pswitch_data_0

    .line 450
    .end local v0    # "c":Landroid/bluetooth/BluetoothHeadsetClientCall;
    :cond_2
    :goto_0
    iput p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorCall:I

    .line 396
    return-void

    .line 414
    .restart local v0    # "c":Landroid/bluetooth/BluetoothHeadsetClientCall;
    :pswitch_0
    const/4 v1, 0x6

    .line 412
    filled-new-array {v4, v5, v1}, [I

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->removeCalls([I)V

    goto :goto_0

    .line 418
    :pswitch_1
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorCall:I

    if-ne v1, v5, :cond_3

    .line 421
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorCallSetup:I

    if-eqz v1, :cond_2

    .line 422
    new-array v1, v5, [I

    const/4 v2, 0x5

    aput v2, v1, v4

    invoke-direct {p0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCall([I)Landroid/bluetooth/BluetoothHeadsetClientCall;

    move-result-object v0

    .line 423
    .local v0, "c":Landroid/bluetooth/BluetoothHeadsetClientCall;
    if-eqz v0, :cond_2

    .line 424
    const/4 v1, 0x7

    invoke-direct {p0, v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->setCallState(Landroid/bluetooth/BluetoothHeadsetClientCall;I)V

    .line 425
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 435
    .local v0, "c":Landroid/bluetooth/BluetoothHeadsetClientCall;
    :cond_3
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorCallSetup:I

    if-eqz v1, :cond_4

    .line 436
    const/4 v1, 0x2

    .line 437
    const/4 v2, 0x3

    .line 438
    const/4 v3, 0x4

    .line 436
    filled-new-array {v1, v2, v3}, [I

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCall([I)Landroid/bluetooth/BluetoothHeadsetClientCall;

    move-result-object v0

    .line 439
    .local v0, "c":Landroid/bluetooth/BluetoothHeadsetClientCall;
    if-eqz v0, :cond_4

    .line 440
    invoke-direct {p0, v0, v4}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->setCallState(Landroid/bluetooth/BluetoothHeadsetClientCall;I)V

    .line 444
    .end local v0    # "c":Landroid/bluetooth/BluetoothHeadsetClientCall;
    :cond_4
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->updateCallsMultiParty()V

    goto :goto_0

    .line 410
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateCallSetupIndicator(I)V
    .locals 9
    .param p1, "callsetup"    # I

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 454
    const-string/jumbo v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateCallSetupIndicator "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPendingAction:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-direct {p0, v1, p1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->waitForIndicators(III)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 457
    return-void

    .line 460
    :cond_0
    iget-boolean v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mQueryCallsSupported:Z

    if-eqz v1, :cond_1

    .line 461
    const/16 v1, 0x32

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(I)V

    .line 462
    return-void

    .line 465
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 575
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->updateCallsMultiParty()V

    .line 577
    iput p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorCallSetup:I

    .line 453
    return-void

    .line 467
    :pswitch_0
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPendingAction:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    .line 527
    :pswitch_1
    const-string/jumbo v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unexpected callsetup=0 while in action "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 528
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPendingAction:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 527
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 469
    :pswitch_2
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPendingAction:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_2

    .line 496
    :pswitch_3
    const-string/jumbo v1, "HeadsetClientStateMachine"

    const-string/jumbo v2, "Unexpected callsetup=0 while in action ACCEPT_CALL"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 471
    :pswitch_4
    filled-new-array {v6, v7}, [I

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->removeCalls([I)V

    .line 473
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->clearPendingAction()V

    goto :goto_0

    .line 476
    :pswitch_5
    new-array v1, v5, [I

    aput v4, v1, v4

    invoke-direct {p0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->removeCalls([I)V

    .line 477
    invoke-direct {p0, v8, v4}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->changeCallsState(II)V

    .line 479
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->clearPendingAction()V

    goto :goto_0

    .line 484
    :pswitch_6
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorCallHeld:I

    if-ne v1, v5, :cond_2

    .line 486
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->clearPendingAction()V

    goto :goto_0

    .line 490
    :pswitch_7
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorCallHeld:I

    if-nez v1, :cond_2

    .line 492
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->clearPendingAction()V

    goto :goto_0

    .line 501
    :pswitch_8
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPendingAction:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 511
    const-string/jumbo v1, "HeadsetClientStateMachine"

    const-string/jumbo v2, "Unexpected callsetup=0 while in action REJECT_CALL"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 503
    :sswitch_0
    new-array v1, v5, [I

    const/4 v2, 0x4

    aput v2, v1, v4

    invoke-direct {p0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->removeCalls([I)V

    .line 504
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->clearPendingAction()V

    goto/16 :goto_0

    .line 507
    :sswitch_1
    new-array v1, v5, [I

    aput v8, v1, v4

    invoke-direct {p0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->removeCalls([I)V

    .line 508
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->clearPendingAction()V

    goto/16 :goto_0

    .line 520
    :pswitch_9
    const/4 v1, 0x4

    filled-new-array {v1, v6, v8, v7}, [I

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->removeCalls([I)V

    .line 524
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->clearPendingAction()V

    goto/16 :goto_0

    .line 534
    :pswitch_a
    new-array v1, v5, [I

    aput v6, v1, v4

    invoke-direct {p0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCall([I)Landroid/bluetooth/BluetoothHeadsetClientCall;

    move-result-object v0

    .line 535
    .local v0, "c":Landroid/bluetooth/BluetoothHeadsetClientCall;
    if-nez v0, :cond_4

    .line 536
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPendingAction:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_3

    .line 538
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPendingAction:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 537
    invoke-direct {p0, v7, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addCall(ILjava/lang/String;)V

    .line 546
    :goto_1
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPendingAction:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_3

    goto/16 :goto_0

    .line 550
    :pswitch_b
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->clearPendingAction()V

    goto/16 :goto_0

    .line 540
    :cond_3
    const-string/jumbo v1, ""

    invoke-direct {p0, v7, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addCall(ILjava/lang/String;)V

    goto :goto_1

    .line 543
    :cond_4
    invoke-direct {p0, v0, v7}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->setCallState(Landroid/bluetooth/BluetoothHeadsetClientCall;I)V

    goto :goto_1

    .line 557
    .end local v0    # "c":Landroid/bluetooth/BluetoothHeadsetClientCall;
    :pswitch_c
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPendingAction:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_5

    .line 559
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPendingAction:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 558
    invoke-direct {p0, v6, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addCall(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 561
    :cond_5
    const-string/jumbo v1, ""

    invoke-direct {p0, v6, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addCall(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 565
    :pswitch_d
    new-array v1, v5, [I

    aput v8, v1, v4

    invoke-direct {p0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCall([I)Landroid/bluetooth/BluetoothHeadsetClientCall;

    move-result-object v1

    if-nez v1, :cond_2

    .line 568
    const-string/jumbo v1, ""

    const/4 v2, 0x4

    invoke-direct {p0, v2, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addCall(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 465
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_a
    .end packed-switch

    .line 467
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_2
        :pswitch_8
        :pswitch_1
        :pswitch_9
    .end packed-switch

    .line 469
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 501
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch

    .line 546
    :pswitch_data_3
    .packed-switch 0x9
        :pswitch_b
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method

.method private updateCallsMultiParty()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 287
    invoke-direct {p0, v5}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->callsInState(I)I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    const/4 v2, 0x1

    .line 289
    .local v2, "multi":Z
    :goto_0
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "c$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothHeadsetClientCall;

    .line 290
    .local v0, "c":Landroid/bluetooth/BluetoothHeadsetClientCall;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getState()I

    move-result v3

    if-nez v3, :cond_2

    .line 291
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadsetClientCall;->isMultiParty()Z

    move-result v3

    if-eq v3, v2, :cond_0

    .line 295
    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothHeadsetClientCall;->setMultiParty(Z)V

    .line 296
    invoke-direct {p0, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendCallChangedIntent(Landroid/bluetooth/BluetoothHeadsetClientCall;)V

    goto :goto_1

    .line 287
    .end local v0    # "c":Landroid/bluetooth/BluetoothHeadsetClientCall;
    .end local v1    # "c$iterator":Ljava/util/Iterator;
    .end local v2    # "multi":Z
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "multi":Z
    goto :goto_0

    .line 298
    .restart local v0    # "c":Landroid/bluetooth/BluetoothHeadsetClientCall;
    .restart local v1    # "c$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadsetClientCall;->isMultiParty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 299
    invoke-virtual {v0, v5}, Landroid/bluetooth/BluetoothHeadsetClientCall;->setMultiParty(Z)V

    .line 300
    invoke-direct {p0, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendCallChangedIntent(Landroid/bluetooth/BluetoothHeadsetClientCall;)V

    goto :goto_1

    .line 286
    .end local v0    # "c":Landroid/bluetooth/BluetoothHeadsetClientCall;
    :cond_3
    return-void
.end method

.method private updateClip(Ljava/lang/String;)V
    .locals 6
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x4

    .line 775
    new-array v2, v3, [I

    aput v4, v2, v5

    invoke-direct {p0, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCall([I)Landroid/bluetooth/BluetoothHeadsetClientCall;

    move-result-object v0

    .line 777
    .local v0, "c":Landroid/bluetooth/BluetoothHeadsetClientCall;
    if-nez v0, :cond_1

    .line 780
    new-array v2, v3, [I

    const/4 v3, 0x5

    aput v3, v2, v5

    invoke-direct {p0, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCall([I)Landroid/bluetooth/BluetoothHeadsetClientCall;

    move-result-object v1

    .line 781
    .local v1, "cw":Landroid/bluetooth/BluetoothHeadsetClientCall;
    if-eqz v1, :cond_0

    .line 782
    invoke-direct {p0, v1, v4}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->setCallState(Landroid/bluetooth/BluetoothHeadsetClientCall;I)V

    .line 774
    .end local v1    # "cw":Landroid/bluetooth/BluetoothHeadsetClientCall;
    :goto_0
    return-void

    .line 785
    .restart local v1    # "cw":Landroid/bluetooth/BluetoothHeadsetClientCall;
    :cond_0
    invoke-direct {p0, v4, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addCall(ILjava/lang/String;)V

    goto :goto_0

    .line 788
    .end local v1    # "cw":Landroid/bluetooth/BluetoothHeadsetClientCall;
    :cond_1
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothHeadsetClientCall;->setNumber(Ljava/lang/String;)V

    .line 789
    invoke-direct {p0, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendCallChangedIntent(Landroid/bluetooth/BluetoothHeadsetClientCall;)V

    goto :goto_0
.end method

.method private updateRespAndHold(I)V
    .locals 7
    .param p1, "resp_and_hold"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x6

    const/4 v4, 0x0

    .line 734
    const-string/jumbo v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updatRespAndHold "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    iget-boolean v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mQueryCallsSupported:Z

    if-eqz v1, :cond_0

    .line 737
    const/16 v1, 0x32

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(I)V

    .line 738
    return-void

    .line 741
    :cond_0
    const/4 v0, 0x0

    .line 743
    .local v0, "c":Landroid/bluetooth/BluetoothHeadsetClientCall;
    packed-switch p1, :pswitch_data_0

    .line 733
    .end local v0    # "c":Landroid/bluetooth/BluetoothHeadsetClientCall;
    :cond_1
    :goto_0
    return-void

    .line 746
    .restart local v0    # "c":Landroid/bluetooth/BluetoothHeadsetClientCall;
    :pswitch_0
    const/4 v1, 0x4

    filled-new-array {v1, v4}, [I

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCall([I)Landroid/bluetooth/BluetoothHeadsetClientCall;

    move-result-object v0

    .line 748
    .local v0, "c":Landroid/bluetooth/BluetoothHeadsetClientCall;
    if-eqz v0, :cond_2

    .line 749
    invoke-direct {p0, v0, v5}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->setCallState(Landroid/bluetooth/BluetoothHeadsetClientCall;I)V

    goto :goto_0

    .line 752
    :cond_2
    const-string/jumbo v1, ""

    invoke-direct {p0, v5, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addCall(ILjava/lang/String;)V

    goto :goto_0

    .line 756
    .local v0, "c":Landroid/bluetooth/BluetoothHeadsetClientCall;
    :pswitch_1
    new-array v1, v6, [I

    aput v5, v1, v4

    invoke-direct {p0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCall([I)Landroid/bluetooth/BluetoothHeadsetClientCall;

    move-result-object v0

    .line 757
    .local v0, "c":Landroid/bluetooth/BluetoothHeadsetClientCall;
    if-eqz v0, :cond_3

    .line 758
    invoke-direct {p0, v0, v4}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->setCallState(Landroid/bluetooth/BluetoothHeadsetClientCall;I)V

    .line 760
    :cond_3
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPendingAction:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_1

    .line 761
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPendingAction:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 762
    const/16 v2, 0xa

    .line 761
    if-ne v1, v2, :cond_1

    .line 763
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->clearPendingAction()V

    goto :goto_0

    .line 767
    .local v0, "c":Landroid/bluetooth/BluetoothHeadsetClientCall;
    :pswitch_2
    new-array v1, v6, [I

    aput v5, v1, v4

    invoke-direct {p0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->removeCalls([I)V

    goto :goto_0

    .line 743
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private waitForIndicators(III)Z
    .locals 4
    .param p1, "call"    # I
    .param p2, "callsetup"    # I
    .param p3, "callheld"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 331
    iget v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorCall:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorCallSetup:I

    if-eq v0, v1, :cond_0

    .line 332
    iget v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorCallHeld:I

    if-eq v0, v1, :cond_0

    .line 333
    return v3

    .line 336
    :cond_0
    if-eq p1, v1, :cond_3

    .line 337
    iput p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorCall:I

    .line 345
    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorCall:I

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorCallSetup:I

    if-ne v0, v1, :cond_5

    .line 347
    :cond_2
    return v2

    .line 338
    :cond_3
    if-eq p2, v1, :cond_4

    .line 339
    iput p2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorCallSetup:I

    goto :goto_0

    .line 340
    :cond_4
    if-eq p3, v1, :cond_1

    .line 341
    iput p3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorCallHeld:I

    goto :goto_0

    .line 346
    :cond_5
    iget v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorCallHeld:I

    if-eq v0, v1, :cond_2

    .line 351
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->queryCallsStart()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mQueryCallsSupported:Z

    .line 353
    iget-boolean v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mQueryCallsSupported:Z

    if-eqz v0, :cond_6

    .line 354
    return v2

    .line 359
    :cond_6
    iget v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorCallSetup:I

    packed-switch v0, :pswitch_data_0

    .line 374
    :goto_1
    iget v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorCall:I

    packed-switch v0, :pswitch_data_1

    .line 383
    :goto_2
    iget v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorCallHeld:I

    packed-switch v0, :pswitch_data_2

    .line 393
    :goto_3
    return v2

    .line 361
    :pswitch_0
    const-string/jumbo v0, ""

    const/4 v1, 0x4

    invoke-direct {p0, v1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addCall(ILjava/lang/String;)V

    goto :goto_1

    .line 364
    :pswitch_1
    const-string/jumbo v0, ""

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addCall(ILjava/lang/String;)V

    goto :goto_1

    .line 367
    :pswitch_2
    const-string/jumbo v0, ""

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addCall(ILjava/lang/String;)V

    goto :goto_1

    .line 376
    :pswitch_3
    const-string/jumbo v0, ""

    invoke-direct {p0, v3, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addCall(ILjava/lang/String;)V

    goto :goto_2

    .line 386
    :pswitch_4
    const-string/jumbo v0, ""

    invoke-direct {p0, v2, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addCall(ILjava/lang/String;)V

    goto :goto_3

    .line 359
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 374
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch

    .line 383
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    .prologue
    .line 1273
    iget-boolean v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mNativeAvailable:Z

    if-eqz v0, :cond_0

    .line 1274
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->cleanupNative()V

    .line 1275
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mNativeAvailable:Z

    .line 1272
    :cond_0
    return-void
.end method

.method public doQuit()V
    .locals 2

    .prologue
    .line 1264
    const-string/jumbo v0, "HeadsetClientStateMachine"

    const-string/jumbo v1, "doQuit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 1267
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioManager:Landroid/media/AudioManager;

    const-string/jumbo v1, "hfp_enable=false"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1269
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->quitNow()V

    .line 1263
    return-void
.end method

.method public dump(Ljava/lang/StringBuilder;)V
    .locals 4
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 165
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mCurrentDevice: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 166
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mAudioOn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioOn:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$AudioOn;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 167
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mAudioState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 168
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mAudioWbs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioWbs:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 169
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mIndicatorNetworkState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorNetworkState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 170
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mIndicatorNetworkType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorNetworkType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 171
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mIndicatorNetworkSignal: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorNetworkSignal:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 172
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mIndicatorBatteryLevel: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorBatteryLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 173
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mIndicatorCall: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorCall:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 174
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mIndicatorCallSetup: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorCallSetup:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 175
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mIndicatorCallHeld: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorCallHeld:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 176
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mVgsFromStack: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mVgsFromStack:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 177
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mVgmFromStack: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mVgmFromStack:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 178
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mOperatorName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mOperatorName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 179
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mSubscriberInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mSubscriberInfo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 180
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mVoiceRecognitionActive: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mVoiceRecognitionActive:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 181
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mInBandRingtone: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mInBandRingtone:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 183
    const-string/jumbo v2, "mCalls:"

    invoke-static {p1, v2}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 184
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    if-eqz v2, :cond_0

    .line 185
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "call$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothHeadsetClientCall;

    .line 186
    .local v0, "call":Landroid/bluetooth/BluetoothHeadsetClientCall;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_0

    .line 190
    .end local v0    # "call":Landroid/bluetooth/BluetoothHeadsetClientCall;
    .end local v1    # "call$iterator":Ljava/util/Iterator;
    :cond_0
    const-string/jumbo v2, "mCallsUpdate:"

    invoke-static {p1, v2}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 191
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCallsUpdate:Ljava/util/Hashtable;

    if-eqz v2, :cond_1

    .line 192
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCallsUpdate:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "call$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothHeadsetClientCall;

    .line 193
    .restart local v0    # "call":Landroid/bluetooth/BluetoothHeadsetClientCall;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_1

    .line 164
    .end local v0    # "call":Landroid/bluetooth/BluetoothHeadsetClientCall;
    .end local v1    # "call$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public getAudioRouteAllowed()Z
    .locals 1

    .prologue
    .line 2398
    iget-boolean v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioRouteAllowed:Z

    return v0
.end method

.method declared-synchronized getAudioState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    monitor-enter p0

    .line 2402
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2405
    iget v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 2403
    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getConnectedDevices()Ljava/util/List;
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
    .line 2412
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2413
    .local v0, "devices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    monitor-enter p0

    .line 2414
    :try_start_0
    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2415
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 2418
    return-object v0

    .line 2413
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v4, 0x0

    monitor-enter p0

    .line 2247
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit p0

    .line 2248
    return v4

    .line 2251
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    monitor-exit p0

    .line 2252
    return v4

    .line 2255
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    .line 2256
    .local v0, "currentState":Lcom/android/internal/util/IState;
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mConnecting:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v0, v1, :cond_2

    .line 2257
    const/4 v1, 0x1

    monitor-exit p0

    return v1

    .line 2260
    :cond_2
    :try_start_3
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mConnected:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;

    if-eq v0, v1, :cond_3

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioOn:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$AudioOn;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne v0, v1, :cond_4

    .line 2261
    :cond_3
    const/4 v1, 0x2

    monitor-exit p0

    return v1

    .line 2264
    :cond_4
    :try_start_4
    const-string/jumbo v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Bad currentState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    .line 2265
    return v4

    .end local v0    # "currentState":Lcom/android/internal/util/IState;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getCurrentAgEvents()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 2720
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2721
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v1, "android.bluetooth.headsetclient.extra.NETWORK_STATUS"

    iget v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorNetworkState:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2722
    const-string/jumbo v1, "android.bluetooth.headsetclient.extra.NETWORK_SIGNAL_STRENGTH"

    iget v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorNetworkSignal:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2723
    const-string/jumbo v1, "android.bluetooth.headsetclient.extra.NETWORK_ROAMING"

    iget v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorNetworkType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2724
    const-string/jumbo v1, "android.bluetooth.headsetclient.extra.BATTERY_LEVEL"

    iget v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorBatteryLevel:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2725
    const-string/jumbo v1, "android.bluetooth.headsetclient.extra.OPERATOR_NAME"

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mOperatorName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2726
    const-string/jumbo v1, "android.bluetooth.headsetclient.extra.VOICE_RECOGNITION"

    iget v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mVoiceRecognitionActive:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2727
    const-string/jumbo v1, "android.bluetooth.headsetclient.extra.IN_BAND_RING"

    iget v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mInBandRingtone:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2728
    const-string/jumbo v1, "android.bluetooth.headsetclient.extra.SUBSCRIBER_INFO"

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mSubscriberInfo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2729
    return-object v0
.end method

.method public getCurrentAgFeatures()Landroid/os/Bundle;
    .locals 5

    .prologue
    const/16 v4, 0x20

    const/4 v3, 0x1

    .line 1158
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1159
    .local v0, "b":Landroid/os/Bundle;
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPeerFeatures:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v3, :cond_0

    .line 1161
    const-string/jumbo v1, "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_3WAY_CALLING"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1163
    :cond_0
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPeerFeatures:I

    and-int/lit8 v1, v1, 0x4

    .line 1164
    const/4 v2, 0x4

    .line 1163
    if-ne v1, v2, :cond_1

    .line 1165
    const-string/jumbo v1, "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_VOICE_RECOGNITION"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1167
    :cond_1
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPeerFeatures:I

    and-int/lit8 v1, v1, 0x10

    .line 1168
    const/16 v2, 0x10

    .line 1167
    if-ne v1, v2, :cond_2

    .line 1169
    const-string/jumbo v1, "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_ATTACH_NUMBER_TO_VT"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1171
    :cond_2
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPeerFeatures:I

    and-int/lit8 v1, v1, 0x20

    if-ne v1, v4, :cond_3

    .line 1173
    const-string/jumbo v1, "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_REJECT_CALL"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1175
    :cond_3
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPeerFeatures:I

    and-int/lit16 v1, v1, 0x80

    .line 1176
    const/16 v2, 0x80

    .line 1175
    if-ne v1, v2, :cond_4

    .line 1177
    const-string/jumbo v1, "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_ECC"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1181
    :cond_4
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mChldFeatures:I

    and-int/lit8 v1, v1, 0x8

    .line 1182
    const/16 v2, 0x8

    .line 1181
    if-ne v1, v2, :cond_5

    .line 1183
    const-string/jumbo v1, "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_ACCEPT_HELD_OR_WAITING_CALL"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1185
    :cond_5
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mChldFeatures:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v3, :cond_6

    .line 1187
    const-string/jumbo v1, "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_RELEASE_HELD_OR_WAITING_CALL"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1189
    :cond_6
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mChldFeatures:I

    and-int/lit8 v1, v1, 0x2

    .line 1190
    const/4 v2, 0x2

    .line 1189
    if-ne v1, v2, :cond_7

    .line 1191
    const-string/jumbo v1, "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_RELEASE_AND_ACCEPT"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1193
    :cond_7
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mChldFeatures:I

    and-int/lit8 v1, v1, 0x20

    if-ne v1, v4, :cond_8

    .line 1195
    const-string/jumbo v1, "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_MERGE"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1197
    :cond_8
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mChldFeatures:I

    and-int/lit8 v1, v1, 0x40

    .line 1198
    const/16 v2, 0x40

    .line 1197
    if-ne v1, v2, :cond_9

    .line 1199
    const-string/jumbo v1, "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_MERGE_AND_DETACH"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1202
    :cond_9
    return-object v0
.end method

.method public getCurrentCalls()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothHeadsetClientCall;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2716
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 9
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
    .line 2353
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2354
    .local v4, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    iget-object v7, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    .line 2356
    .local v0, "bondedDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    monitor-enter p0

    .line 2357
    :try_start_0
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

    .line 2358
    .local v2, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v5

    .line 2359
    .local v5, "featureUuids":[Landroid/os/ParcelUuid;
    sget-object v7, Landroid/bluetooth/BluetoothUuid;->Handsfree_AG:Landroid/os/ParcelUuid;

    invoke-static {v5, v7}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2362
    invoke-virtual {p0, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    .line 2363
    .local v1, "connectionState":I
    const/4 v7, 0x0

    array-length v8, p1

    :goto_0
    if-ge v7, v8, :cond_0

    aget v6, p1, v7

    .line 2364
    .local v6, "state":I
    if-ne v1, v6, :cond_1

    .line 2365
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2363
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .end local v1    # "connectionState":I
    .end local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v5    # "featureUuids":[Landroid/os/ParcelUuid;
    .end local v6    # "state":I
    :cond_2
    monitor-exit p0

    .line 2370
    return-object v4

    .line 2356
    .end local v3    # "device$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method isAudioOn()Z
    .locals 2

    .prologue
    .line 2390
    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioOn:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$AudioOn;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isConnected()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 2348
    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    .line 2349
    .local v0, "currentState":Lcom/android/internal/util/IState;
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mConnected:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;

    if-eq v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioOn:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$AudioOn;

    if-ne v0, v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method okToConnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 2374
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 2375
    .local v0, "priority":I
    const/4 v1, 0x0

    .line 2381
    .local v1, "ret":Z
    if-gtz v0, :cond_0

    .line 2382
    const/4 v2, -0x1

    if-ne v2, v0, :cond_1

    .line 2383
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_1

    .line 2384
    :cond_0
    const/4 v1, 0x1

    .line 2386
    :cond_1
    return v1
.end method

.method public setAudioRouteAllowed(Z)V
    .locals 0
    .param p1, "allowed"    # Z

    .prologue
    .line 2394
    iput-boolean p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioRouteAllowed:Z

    .line 2393
    return-void
.end method
