.class final Lcom/android/bluetooth/btservice/AdapterState;
.super Lcom/android/internal/util/StateMachine;
.source "AdapterState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/btservice/AdapterState$OffState;,
        Lcom/android/bluetooth/btservice/AdapterState$BleOnState;,
        Lcom/android/bluetooth/btservice/AdapterState$OnState;,
        Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;
    }
.end annotation


# static fields
.field static final ALL_DEVICES_DISCONNECTED:I = 0x16

.field static final BEGIN_DISABLE:I = 0x15

.field static final BLE_STARTED:I = 0x4

.field static final BLE_START_TIMEOUT:I = 0x6a

.field private static final BLE_START_TIMEOUT_DELAY:I = 0x7d0

.field static final BLE_STOPPED:I = 0x19

.field static final BLE_STOP_TIMEOUT:I = 0x68

.field private static final BLE_STOP_TIMEOUT_DELAY:I = 0x7d0

.field static final BLE_TURN_OFF:I = 0x17

.field static final BLE_TURN_ON:I = 0x0

.field static final BREDR_STARTED:I = 0x2

.field static final BREDR_START_TIMEOUT:I = 0x64

.field private static final BREDR_START_TIMEOUT_DELAY:I = 0xfa0

.field static final BREDR_STOPPED:I = 0x1a

.field static final BREDR_STOP_TIMEOUT:I = 0x6b

.field private static final BREDR_STOP_TIMEOUT_DELAY:I = 0xfa0

.field private static final DBG:Z = true

.field static final DISABLED:I = 0x18

.field static final DISABLE_TIMEOUT:I = 0x67

.field private static final DISABLE_TIMEOUT_DELAY:I = 0x1f40

.field static final ENABLED_READY:I = 0x3

.field static final ENABLE_TIMEOUT:I = 0x65

.field private static final ENABLE_TIMEOUT_DELAY:I = 0x2ee0

.field private static final PROPERTY_OP_DELAY:I = 0x7d0

.field static final SET_SCAN_MODE_TIMEOUT:I = 0x69

.field private static final TAG:Ljava/lang/String; = "BluetoothAdapterState"

.field static final USER_TURN_OFF:I = 0x14

.field static final USER_TURN_OFF_DELAY_MS:I = 0x1f4

.field static final USER_TURN_ON:I = 0x1

.field private static final VDBG:Z = true


# instance fields
.field private mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

.field private mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

.field private mBleOnState:Lcom/android/bluetooth/btservice/AdapterState$BleOnState;

.field private mOffState:Lcom/android/bluetooth/btservice/AdapterState$OffState;

.field private mOnState:Lcom/android/bluetooth/btservice/AdapterState$OnState;

.field private mPendingCommandState:Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;


# direct methods
.method static synthetic -get0(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterProperties;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterState;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterService;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterState;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$BleOnState;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterState;->mBleOnState:Lcom/android/bluetooth/btservice/AdapterState$BleOnState;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$OffState;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterState;->mOffState:Lcom/android/bluetooth/btservice/AdapterState$OffState;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$OnState;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterState;->mOnState:Lcom/android/bluetooth/btservice/AdapterState$OnState;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterState;->mPendingCommandState:Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/bluetooth/btservice/AdapterState;Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/AdapterState;->debugLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/bluetooth/btservice/AdapterState;Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/AdapterState;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/bluetooth/btservice/AdapterState;Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/AdapterState;->errorLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/bluetooth/btservice/AdapterState;Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/AdapterState;->infoLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/bluetooth/btservice/AdapterState;I)V
    .locals 0
    .param p1, "newState"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/AdapterState;->notifyAdapterStateChange(I)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/bluetooth/btservice/AdapterState;I)V
    .locals 0
    .param p1, "what"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/AdapterState;->removeMessages(I)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/bluetooth/btservice/AdapterState;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p1, "destState"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/AdapterState;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/bluetooth/btservice/AdapterState;Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/AdapterState;->warningLog(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lcom/android/bluetooth/btservice/AdapterService;Lcom/android/bluetooth/btservice/AdapterProperties;)V
    .locals 2
    .param p1, "service"    # Lcom/android/bluetooth/btservice/AdapterService;
    .param p2, "adapterProperties"    # Lcom/android/bluetooth/btservice/AdapterProperties;

    .prologue
    const/4 v1, 0x0

    .line 111
    const-string/jumbo v0, "BluetoothAdapterState:"

    invoke-direct {p0, v0}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 81
    new-instance v0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;-><init>(Lcom/android/bluetooth/btservice/AdapterState;Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;)V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterState;->mPendingCommandState:Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;

    .line 82
    new-instance v0, Lcom/android/bluetooth/btservice/AdapterState$OnState;

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/btservice/AdapterState$OnState;-><init>(Lcom/android/bluetooth/btservice/AdapterState;Lcom/android/bluetooth/btservice/AdapterState$OnState;)V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterState;->mOnState:Lcom/android/bluetooth/btservice/AdapterState$OnState;

    .line 83
    new-instance v0, Lcom/android/bluetooth/btservice/AdapterState$OffState;

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/btservice/AdapterState$OffState;-><init>(Lcom/android/bluetooth/btservice/AdapterState;Lcom/android/bluetooth/btservice/AdapterState$OffState;)V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterState;->mOffState:Lcom/android/bluetooth/btservice/AdapterState$OffState;

    .line 84
    new-instance v0, Lcom/android/bluetooth/btservice/AdapterState$BleOnState;

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/btservice/AdapterState$BleOnState;-><init>(Lcom/android/bluetooth/btservice/AdapterState;Lcom/android/bluetooth/btservice/AdapterState$BleOnState;)V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterState;->mBleOnState:Lcom/android/bluetooth/btservice/AdapterState$BleOnState;

    .line 112
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterState;->mOnState:Lcom/android/bluetooth/btservice/AdapterState$OnState;

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/AdapterState;->addState(Lcom/android/internal/util/State;)V

    .line 113
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterState;->mBleOnState:Lcom/android/bluetooth/btservice/AdapterState$BleOnState;

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/AdapterState;->addState(Lcom/android/internal/util/State;)V

    .line 114
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterState;->mOffState:Lcom/android/bluetooth/btservice/AdapterState$OffState;

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/AdapterState;->addState(Lcom/android/internal/util/State;)V

    .line 115
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterState;->mPendingCommandState:Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/AdapterState;->addState(Lcom/android/internal/util/State;)V

    .line 116
    iput-object p1, p0, Lcom/android/bluetooth/btservice/AdapterState;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    .line 117
    iput-object p2, p0, Lcom/android/bluetooth/btservice/AdapterState;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    .line 118
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterState;->mOffState:Lcom/android/bluetooth/btservice/AdapterState$OffState;

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/AdapterState;->setInitialState(Lcom/android/internal/util/State;)V

    .line 110
    return-void
.end method

.method private debugLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 521
    const-string/jumbo v0, "BluetoothAdapterState"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    return-void
.end method

.method private errorLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 533
    const-string/jumbo v0, "BluetoothAdapterState"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    return-void
.end method

.method private infoLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 517
    const-string/jumbo v0, "BluetoothAdapterState"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    return-void
.end method

.method public static make(Lcom/android/bluetooth/btservice/AdapterService;Lcom/android/bluetooth/btservice/AdapterProperties;)Lcom/android/bluetooth/btservice/AdapterState;
    .locals 3
    .param p0, "service"    # Lcom/android/bluetooth/btservice/AdapterService;
    .param p1, "adapterProperties"    # Lcom/android/bluetooth/btservice/AdapterProperties;

    .prologue
    .line 122
    const-string/jumbo v1, "BluetoothAdapterState"

    const-string/jumbo v2, "make() - Creating AdapterState"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    new-instance v0, Lcom/android/bluetooth/btservice/AdapterState;

    invoke-direct {v0, p0, p1}, Lcom/android/bluetooth/btservice/AdapterState;-><init>(Lcom/android/bluetooth/btservice/AdapterService;Lcom/android/bluetooth/btservice/AdapterProperties;)V

    .line 124
    .local v0, "as":Lcom/android/bluetooth/btservice/AdapterState;
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterState;->start()V

    .line 125
    return-object v0
.end method

.method private notifyAdapterStateChange(I)V
    .locals 5
    .param p1, "newState"    # I

    .prologue
    .line 490
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterState;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    .line 491
    .local v1, "adapterService":Lcom/android/bluetooth/btservice/AdapterService;
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterState;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    .line 492
    .local v0, "adapterProperties":Lcom/android/bluetooth/btservice/AdapterProperties;
    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 493
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifyAdapterStateChange after cleanup:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/bluetooth/btservice/AdapterState;->errorLog(Ljava/lang/String;)V

    .line 494
    return-void

    .line 497
    :cond_1
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->getState()I

    move-result v2

    .line 498
    .local v2, "oldState":I
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterProperties;->setState(I)V

    .line 499
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Bluetooth adapter state changed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "-> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/bluetooth/btservice/AdapterState;->infoLog(Ljava/lang/String;)V

    .line 500
    invoke-virtual {v1, v2, p1}, Lcom/android/bluetooth/btservice/AdapterService;->updateAdapterState(II)V

    .line 489
    return-void
.end method

.method private verboseLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 529
    const-string/jumbo v0, "BluetoothAdapterState"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    return-void
.end method

.method private warningLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 525
    const-string/jumbo v0, "BluetoothAdapterState"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 133
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterState;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    if-eqz v0, :cond_0

    .line 134
    iput-object v1, p0, Lcom/android/bluetooth/btservice/AdapterState;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterState;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    if-eqz v0, :cond_1

    .line 136
    iput-object v1, p0, Lcom/android/bluetooth/btservice/AdapterState;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    .line 132
    :cond_1
    return-void
.end method

.method public doQuit()V
    .locals 0

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterState;->quitNow()V

    .line 128
    return-void
.end method

.method public isBleTurningOff()Z
    .locals 3

    .prologue
    .line 99
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterState;->mPendingCommandState:Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;

    invoke-virtual {v1}, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->isBleTurningOff()Z

    move-result v0

    .line 100
    .local v0, "isBleTurningOff":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isBleTurningOff()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/bluetooth/btservice/AdapterState;->verboseLog(Ljava/lang/String;)V

    .line 101
    return v0
.end method

.method public isBleTurningOn()Z
    .locals 3

    .prologue
    .line 93
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterState;->mPendingCommandState:Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;

    invoke-virtual {v1}, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->isBleTurningOn()Z

    move-result v0

    .line 94
    .local v0, "isBleTurningOn":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isBleTurningOn()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/bluetooth/btservice/AdapterState;->verboseLog(Ljava/lang/String;)V

    .line 95
    return v0
.end method

.method public isTurningOff()Z
    .locals 3

    .prologue
    .line 105
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterState;->mPendingCommandState:Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;

    invoke-virtual {v1}, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->isTurningOff()Z

    move-result v0

    .line 106
    .local v0, "isTurningOff":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isTurningOff()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/bluetooth/btservice/AdapterState;->verboseLog(Ljava/lang/String;)V

    .line 107
    return v0
.end method

.method public isTurningOn()Z
    .locals 3

    .prologue
    .line 87
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterState;->mPendingCommandState:Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;

    invoke-virtual {v1}, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->isTurningOn()Z

    move-result v0

    .line 88
    .local v0, "isTurningOn":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isTurningOn()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/bluetooth/btservice/AdapterState;->verboseLog(Ljava/lang/String;)V

    .line 89
    return v0
.end method

.method stateChangeCallback(I)V
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 504
    if-nez p1, :cond_0

    .line 505
    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/AdapterState;->sendMessage(I)V

    .line 503
    :goto_0
    return-void

    .line 507
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 509
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/AdapterState;->sendMessage(I)V

    goto :goto_0

    .line 512
    :cond_1
    const-string/jumbo v0, "Incorrect status in stateChangeCallback"

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/AdapterState;->errorLog(Ljava/lang/String;)V

    goto :goto_0
.end method
