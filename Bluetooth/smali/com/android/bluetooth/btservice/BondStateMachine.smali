.class final Lcom/android/bluetooth/btservice/BondStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "BondStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/btservice/BondStateMachine$StableState;,
        Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;
    }
.end annotation


# static fields
.field static final BONDING_STATE_CHANGE:I = 0x4

.field static final BOND_STATE_BONDED:I = 0x2

.field static final BOND_STATE_BONDING:I = 0x1

.field static final BOND_STATE_NONE:I = 0x0

.field static final CANCEL_BOND:I = 0x2

.field static final CREATE_BOND:I = 0x1

.field private static final DBG:Z = false

.field static final PIN_REQUEST:I = 0x6

.field static final REMOVE_BOND:I = 0x3

.field static final SSP_REQUEST:I = 0x5

.field private static final TAG:Ljava/lang/String; = "BluetoothBondStateMachine"


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

.field private mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

.field private final mDevices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingCommandState:Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;

.field private mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

.field private mStableState:Lcom/android/bluetooth/btservice/BondStateMachine$StableState;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static synthetic -get0(Lcom/android/bluetooth/btservice/BondStateMachine;)Lcom/android/bluetooth/btservice/AdapterService;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/bluetooth/btservice/BondStateMachine;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mDevices:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/bluetooth/btservice/BondStateMachine;)Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mPendingCommandState:Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/bluetooth/btservice/BondStateMachine;)Lcom/android/bluetooth/btservice/RemoteDevices;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/bluetooth/btservice/BondStateMachine;)Lcom/android/bluetooth/btservice/BondStateMachine$StableState;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mStableState:Lcom/android/bluetooth/btservice/BondStateMachine$StableState;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/bluetooth/btservice/BondStateMachine;)Landroid/os/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BondStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/bluetooth/btservice/BondStateMachine;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .param p1, "dev"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/BondStateMachine;->cancelBond(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/bluetooth/btservice/BondStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p1, "destState"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/BondStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/bluetooth/btservice/BondStateMachine;Landroid/bluetooth/BluetoothDevice;IZ)Z
    .locals 1
    .param p1, "dev"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "transport"    # I
    .param p3, "transition"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/btservice/BondStateMachine;->createBond(Landroid/bluetooth/BluetoothDevice;IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/bluetooth/btservice/BondStateMachine;Landroid/bluetooth/BluetoothDevice;Z)Z
    .locals 1
    .param p1, "dev"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "transition"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/btservice/BondStateMachine;->removeBond(Landroid/bluetooth/BluetoothDevice;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/android/bluetooth/btservice/BondStateMachine;I)I
    .locals 1
    .param p1, "reason"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/BondStateMachine;->getUnbondReasonFromHALCode(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Lcom/android/bluetooth/btservice/BondStateMachine;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/BondStateMachine;->clearProfilePriorty(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/bluetooth/btservice/BondStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/BondStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/bluetooth/btservice/BondStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/BondStateMachine;->infoLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/bluetooth/btservice/BondStateMachine;[BII)V
    .locals 0
    .param p1, "address"    # [B
    .param p2, "pin"    # I
    .param p3, "variant"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/btservice/BondStateMachine;->sendDisplayPinIntent([BII)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/bluetooth/btservice/BondStateMachine;Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "newState"    # I
    .param p3, "reason"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/btservice/BondStateMachine;->sendIntent(Landroid/bluetooth/BluetoothDevice;II)V

    return-void
.end method

.method private constructor <init>(Landroid/os/PowerManager;Lcom/android/bluetooth/btservice/AdapterService;Lcom/android/bluetooth/btservice/AdapterProperties;Lcom/android/bluetooth/btservice/RemoteDevices;)V
    .locals 2
    .param p1, "pm"    # Landroid/os/PowerManager;
    .param p2, "service"    # Lcom/android/bluetooth/btservice/AdapterService;
    .param p3, "prop"    # Lcom/android/bluetooth/btservice/AdapterProperties;
    .param p4, "remoteDevices"    # Lcom/android/bluetooth/btservice/RemoteDevices;

    .prologue
    const/4 v1, 0x0

    .line 80
    const-string/jumbo v0, "BondStateMachine:"

    invoke-direct {p0, v0}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 72
    new-instance v0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;-><init>(Lcom/android/bluetooth/btservice/BondStateMachine;Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;)V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mPendingCommandState:Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;

    .line 73
    new-instance v0, Lcom/android/bluetooth/btservice/BondStateMachine$StableState;

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/btservice/BondStateMachine$StableState;-><init>(Lcom/android/bluetooth/btservice/BondStateMachine;Lcom/android/bluetooth/btservice/BondStateMachine$StableState;)V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mStableState:Lcom/android/bluetooth/btservice/BondStateMachine$StableState;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 75
    iput-object v0, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mDevices:Ljava/util/ArrayList;

    .line 81
    iget-object v0, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mStableState:Lcom/android/bluetooth/btservice/BondStateMachine$StableState;

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/BondStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 82
    iget-object v0, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mPendingCommandState:Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/BondStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 83
    iput-object p4, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    .line 84
    iput-object p2, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    .line 85
    iput-object p3, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    .line 86
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 87
    iget-object v0, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mStableState:Lcom/android/bluetooth/btservice/BondStateMachine$StableState;

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/BondStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 91
    const-string/jumbo v0, "BluetoothBondStateMachine"

    .line 90
    const v1, 0x3000001a

    invoke-virtual {p1, v1, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 92
    iget-object v0, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 79
    return-void
.end method

.method private cancelBond(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .param p1, "dev"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v3, 0x0

    .line 299
    iget-object v1, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    if-nez v1, :cond_0

    return v3

    .line 300
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_1

    .line 301
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/bluetooth/Utils;->getBytesFromAddress(Ljava/lang/String;)[B

    move-result-object v0

    .line 302
    .local v0, "addr":[B
    iget-object v1, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/btservice/AdapterService;->cancelBondNative([B)Z

    move-result v1

    if-nez v1, :cond_2

    .line 303
    const-string/jumbo v1, "BluetoothBondStateMachine"

    const-string/jumbo v2, "Unexpected error while cancelling bond:"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    .end local v0    # "addr":[B
    :cond_1
    return v3

    .line 305
    .restart local v0    # "addr":[B
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method private clearProfilePriorty(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v3, -0x1

    .line 496
    invoke-static {}, Lcom/android/bluetooth/hid/HidService;->getHidService()Lcom/android/bluetooth/hid/HidService;

    move-result-object v2

    .line 497
    .local v2, "hidService":Lcom/android/bluetooth/hid/HidService;
    invoke-static {}, Lcom/android/bluetooth/a2dp/A2dpService;->getA2dpService()Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v0

    .line 498
    .local v0, "a2dpService":Lcom/android/bluetooth/a2dp/A2dpService;
    invoke-static {}, Lcom/android/bluetooth/hfp/HeadsetService;->getHeadsetService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v1

    .line 500
    .local v1, "headsetService":Lcom/android/bluetooth/hfp/HeadsetService;
    if-eqz v2, :cond_0

    .line 501
    invoke-virtual {v2, p1, v3}, Lcom/android/bluetooth/hid/HidService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 502
    :cond_0
    if-eqz v0, :cond_1

    .line 503
    invoke-virtual {v0, p1, v3}, Lcom/android/bluetooth/a2dp/A2dpService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 504
    :cond_1
    if-eqz v1, :cond_2

    .line 505
    invoke-virtual {v1, p1, v3}, Lcom/android/bluetooth/hfp/HeadsetService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 495
    :cond_2
    return-void
.end method

.method private createBond(Landroid/bluetooth/BluetoothDevice;IZ)Z
    .locals 5
    .param p1, "dev"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "transport"    # I
    .param p3, "transition"    # Z

    .prologue
    const/16 v4, 0xa

    const/4 v3, 0x0

    .line 327
    iget-object v1, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    if-nez v1, :cond_0

    return v3

    .line 328
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v1

    if-ne v1, v4, :cond_3

    .line 329
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bond address is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/bluetooth/btservice/BondStateMachine;->infoLog(Ljava/lang/String;)V

    .line 330
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/bluetooth/Utils;->getBytesFromAddress(Ljava/lang/String;)[B

    move-result-object v0

    .line 331
    .local v0, "addr":[B
    iget-object v1, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v1, v0, p2}, Lcom/android/bluetooth/btservice/AdapterService;->createBondNative([BI)Z

    move-result v1

    if-nez v1, :cond_1

    .line 333
    const/16 v1, 0x9

    .line 332
    invoke-direct {p0, p1, v4, v1}, Lcom/android/bluetooth/btservice/BondStateMachine;->sendIntent(Landroid/bluetooth/BluetoothDevice;II)V

    .line 334
    return v3

    .line 335
    :cond_1
    if-eqz p3, :cond_2

    .line 336
    iget-object v1, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mPendingCommandState:Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/btservice/BondStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 338
    :cond_2
    const/4 v1, 0x1

    return v1

    .line 340
    .end local v0    # "addr":[B
    :cond_3
    return v3
.end method

.method private errorLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 513
    const-string/jumbo v0, "BluetoothBondStateMachine"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    return-void
.end method

.method private getUnbondReasonFromHALCode(I)I
    .locals 2
    .param p1, "reason"    # I

    .prologue
    const/16 v1, 0x9

    const/4 v0, 0x0

    .line 521
    if-nez p1, :cond_0

    .line 522
    return v0

    .line 523
    :cond_0
    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    .line 524
    const/4 v0, 0x4

    return v0

    .line 525
    :cond_1
    if-ne p1, v1, :cond_2

    .line 526
    const/4 v0, 0x1

    return v0

    .line 527
    :cond_2
    const/16 v0, 0xb

    if-ne p1, v0, :cond_3

    .line 528
    const/4 v0, 0x2

    return v0

    .line 529
    :cond_3
    const/16 v0, 0xc

    if-ne p1, v0, :cond_4

    .line 530
    const/4 v0, 0x6

    return v0

    .line 533
    :cond_4
    return v1
.end method

.method private infoLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 509
    const-string/jumbo v0, "BluetoothBondStateMachine"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    return-void
.end method

.method public static make(Landroid/os/PowerManager;Lcom/android/bluetooth/btservice/AdapterService;Lcom/android/bluetooth/btservice/AdapterProperties;Lcom/android/bluetooth/btservice/RemoteDevices;)Lcom/android/bluetooth/btservice/BondStateMachine;
    .locals 3
    .param p0, "pm"    # Landroid/os/PowerManager;
    .param p1, "service"    # Lcom/android/bluetooth/btservice/AdapterService;
    .param p2, "prop"    # Lcom/android/bluetooth/btservice/AdapterProperties;
    .param p3, "remoteDevices"    # Lcom/android/bluetooth/btservice/RemoteDevices;

    .prologue
    .line 97
    const-string/jumbo v1, "BluetoothBondStateMachine"

    const-string/jumbo v2, "make"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    new-instance v0, Lcom/android/bluetooth/btservice/BondStateMachine;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/bluetooth/btservice/BondStateMachine;-><init>(Landroid/os/PowerManager;Lcom/android/bluetooth/btservice/AdapterService;Lcom/android/bluetooth/btservice/AdapterProperties;Lcom/android/bluetooth/btservice/RemoteDevices;)V

    .line 99
    .local v0, "bsm":Lcom/android/bluetooth/btservice/BondStateMachine;
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/BondStateMachine;->start()V

    .line 100
    return-object v0
.end method

.method private removeBond(Landroid/bluetooth/BluetoothDevice;Z)Z
    .locals 4
    .param p1, "dev"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "transition"    # Z

    .prologue
    const/4 v3, 0x0

    .line 312
    iget-object v1, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    if-nez v1, :cond_0

    return v3

    .line 313
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_1

    .line 314
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/bluetooth/Utils;->getBytesFromAddress(Ljava/lang/String;)[B

    move-result-object v0

    .line 315
    .local v0, "addr":[B
    iget-object v1, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/btservice/AdapterService;->removeBondNative([B)Z

    move-result v1

    if-nez v1, :cond_2

    .line 316
    const-string/jumbo v1, "BluetoothBondStateMachine"

    const-string/jumbo v2, "Unexpected error while removing bond:"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    .end local v0    # "addr":[B
    :cond_1
    return v3

    .line 318
    .restart local v0    # "addr":[B
    :cond_2
    if-eqz p2, :cond_3

    iget-object v1, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mPendingCommandState:Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/btservice/BondStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 319
    :cond_3
    const/4 v1, 0x1

    return v1
.end method

.method private sendDisplayPinIntent([BII)V
    .locals 3
    .param p1, "address"    # [B
    .param p2, "pin"    # I
    .param p3, "variant"    # I

    .prologue
    .line 346
    iget-object v1, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 347
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 348
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.bluetooth.device.extra.DEVICE"

    iget-object v2, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 349
    if-eqz p2, :cond_0

    .line 350
    const-string/jumbo v1, "android.bluetooth.device.extra.PAIRING_KEY"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 352
    :cond_0
    const-string/jumbo v1, "android.bluetooth.device.extra.PAIRING_VARIANT"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 353
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 354
    iget-object v1, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    const-string/jumbo v2, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v1, v0, v2}, Lcom/android/bluetooth/btservice/AdapterService;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 356
    iget-object v1, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 343
    return-void
.end method

.method private sendIntent(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "newState"    # I
    .param p3, "reason"    # I

    .prologue
    .line 360
    iget-object v3, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v3, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object v0

    .line 361
    .local v0, "devProp":Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;
    const/16 v2, 0xa

    .line 362
    .local v2, "oldState":I
    if-eqz v0, :cond_0

    .line 363
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->getBondState()I

    move-result v2

    .line 365
    :cond_0
    if-ne v2, p2, :cond_1

    return-void

    .line 366
    :cond_1
    iget-object v3, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v3, p1, p2}, Lcom/android/bluetooth/btservice/AdapterProperties;->onBondStateChanged(Landroid/bluetooth/BluetoothDevice;I)V

    .line 368
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 369
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 370
    const-string/jumbo v3, "android.bluetooth.device.extra.BOND_STATE"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 371
    const-string/jumbo v3, "android.bluetooth.device.extra.PREVIOUS_BOND_STATE"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 372
    const/16 v3, 0xa

    if-ne p2, v3, :cond_2

    .line 373
    const-string/jumbo v3, "android.bluetooth.device.extra.REASON"

    invoke-virtual {v1, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 374
    :cond_2
    iget-object v3, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 375
    const-string/jumbo v5, "android.permission.BLUETOOTH"

    .line 374
    invoke-virtual {v3, v1, v4, v5}, Lcom/android/bluetooth/btservice/AdapterService;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 376
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Bond State Change Intent:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " OldState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 377
    const-string/jumbo v4, " NewState: "

    .line 376
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/bluetooth/btservice/BondStateMachine;->infoLog(Ljava/lang/String;)V

    .line 359
    return-void
.end method

.method private setProfilePriorty(Landroid/bluetooth/BluetoothDevice;)V
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/16 v5, 0x64

    const/4 v4, -0x1

    .line 475
    invoke-static {}, Lcom/android/bluetooth/hid/HidService;->getHidService()Lcom/android/bluetooth/hid/HidService;

    move-result-object v2

    .line 476
    .local v2, "hidService":Lcom/android/bluetooth/hid/HidService;
    invoke-static {}, Lcom/android/bluetooth/a2dp/A2dpService;->getA2dpService()Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v0

    .line 477
    .local v0, "a2dpService":Lcom/android/bluetooth/a2dp/A2dpService;
    invoke-static {}, Lcom/android/bluetooth/hfp/HeadsetService;->getHeadsetService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v1

    .line 479
    .local v1, "headsetService":Lcom/android/bluetooth/hfp/HeadsetService;
    if-eqz v2, :cond_0

    .line 480
    invoke-virtual {v2, p1}, Lcom/android/bluetooth/hid/HidService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    if-ne v3, v4, :cond_0

    .line 481
    invoke-virtual {v2, p1, v5}, Lcom/android/bluetooth/hid/HidService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 484
    :cond_0
    if-eqz v0, :cond_1

    .line 485
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dp/A2dpService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    if-ne v3, v4, :cond_1

    .line 486
    invoke-virtual {v0, p1, v5}, Lcom/android/bluetooth/a2dp/A2dpService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 489
    :cond_1
    if-eqz v1, :cond_2

    .line 490
    invoke-virtual {v1, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    if-ne v3, v4, :cond_2

    .line 491
    invoke-virtual {v1, p1, v5}, Lcom/android/bluetooth/hfp/HeadsetService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 474
    :cond_2
    return-void
.end method

.method private warnLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 517
    const-string/jumbo v0, "BluetoothBondStateMachine"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    return-void
.end method


# virtual methods
.method bondStateChangeCallback(I[BI)V
    .locals 4
    .param p1, "status"    # I
    .param p2, "address"    # [B
    .param p3, "newState"    # I

    .prologue
    .line 381
    iget-object v2, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v2, p2}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 383
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    if-nez v0, :cond_0

    .line 384
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No record of the device:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/bluetooth/btservice/BondStateMachine;->infoLog(Ljava/lang/String;)V

    .line 387
    iget-object v2, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {p2}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 390
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "bondStateChangeCallback: Status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " Address: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 391
    const-string/jumbo v3, " newState: "

    .line 390
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/bluetooth/btservice/BondStateMachine;->infoLog(Ljava/lang/String;)V

    .line 393
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/btservice/BondStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 394
    .local v1, "msg":Landroid/os/Message;
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 396
    const/4 v2, 0x2

    if-ne p3, v2, :cond_1

    .line 397
    const/16 v2, 0xc

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 402
    :goto_0
    iput p1, v1, Landroid/os/Message;->arg2:I

    .line 404
    invoke-virtual {p0, v1}, Lcom/android/bluetooth/btservice/BondStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 380
    return-void

    .line 398
    :cond_1
    const/4 v2, 0x1

    if-ne p3, v2, :cond_2

    .line 399
    const/16 v2, 0xb

    iput v2, v1, Landroid/os/Message;->arg1:I

    goto :goto_0

    .line 401
    :cond_2
    const/16 v2, 0xa

    iput v2, v1, Landroid/os/Message;->arg1:I

    goto :goto_0
.end method

.method public cleanup()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 108
    iput-object v0, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    .line 109
    iput-object v0, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    .line 110
    iput-object v0, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    .line 107
    return-void
.end method

.method public doQuit()V
    .locals 0

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BondStateMachine;->quitNow()V

    .line 103
    return-void
.end method

.method pinRequestCallback([B[BIZ)V
    .locals 4
    .param p1, "address"    # [B
    .param p2, "name"    # [B
    .param p3, "cod"    # I
    .param p4, "min16Digits"    # Z

    .prologue
    .line 460
    iget-object v2, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 461
    .local v0, "bdDevice":Landroid/bluetooth/BluetoothDevice;
    if-nez v0, :cond_0

    .line 462
    iget-object v2, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->addDeviceProperties([B)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    .line 464
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pinRequestCallback: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " cod:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/bluetooth/btservice/BondStateMachine;->infoLog(Ljava/lang/String;)V

    .line 467
    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/btservice/BondStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 468
    .local v1, "msg":Landroid/os/Message;
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 469
    if-eqz p4, :cond_1

    const/4 v2, 0x1

    :goto_0
    iput v2, v1, Landroid/os/Message;->arg2:I

    .line 471
    invoke-virtual {p0, v1}, Lcom/android/bluetooth/btservice/BondStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 457
    return-void

    .line 469
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method sspRequestCallback([B[BIII)V
    .locals 7
    .param p1, "address"    # [B
    .param p2, "name"    # [B
    .param p3, "cod"    # I
    .param p4, "pairingVariant"    # I
    .param p5, "passkey"    # I

    .prologue
    .line 410
    iget-object v5, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v5, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 411
    .local v0, "bdDevice":Landroid/bluetooth/BluetoothDevice;
    if-nez v0, :cond_0

    .line 412
    iget-object v5, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v5, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->addDeviceProperties([B)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    .line 414
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sspRequestCallback: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " cod: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 415
    const-string/jumbo v6, " pairingVariant "

    .line 414
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 415
    const-string/jumbo v6, " passkey: "

    .line 414
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/bluetooth/btservice/BondStateMachine;->infoLog(Ljava/lang/String;)V

    .line 417
    const/4 v2, 0x0

    .line 418
    .local v2, "displayPasskey":Z
    packed-switch p4, :pswitch_data_0

    .line 439
    const-string/jumbo v5, "SSP Pairing variant not present"

    invoke-direct {p0, v5}, Lcom/android/bluetooth/btservice/BondStateMachine;->errorLog(Ljava/lang/String;)V

    .line 440
    return-void

    .line 421
    :pswitch_0
    const/4 v4, 0x2

    .line 422
    .local v4, "variant":I
    const/4 v2, 0x1

    .line 442
    :goto_0
    iget-object v5, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v5, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 443
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    if-nez v1, :cond_1

    .line 444
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Device is not known for:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/bluetooth/btservice/BondStateMachine;->warnLog(Ljava/lang/String;)V

    .line 445
    iget-object v5, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v5, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->addDeviceProperties([B)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    .line 446
    iget-object v5, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v5, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 449
    :cond_1
    const/4 v5, 0x5

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/btservice/BondStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 450
    .local v3, "msg":Landroid/os/Message;
    iput-object v1, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 451
    if-eqz v2, :cond_2

    .line 452
    iput p5, v3, Landroid/os/Message;->arg1:I

    .line 453
    :cond_2
    iput v4, v3, Landroid/os/Message;->arg2:I

    .line 454
    invoke-virtual {p0, v3}, Lcom/android/bluetooth/btservice/BondStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 408
    return-void

    .line 426
    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "msg":Landroid/os/Message;
    .end local v4    # "variant":I
    :pswitch_1
    const/4 v4, 0x3

    .line 427
    .restart local v4    # "variant":I
    goto :goto_0

    .line 430
    .end local v4    # "variant":I
    :pswitch_2
    const/4 v4, 0x1

    .line 431
    .restart local v4    # "variant":I
    goto :goto_0

    .line 434
    .end local v4    # "variant":I
    :pswitch_3
    const/4 v4, 0x4

    .line 435
    .restart local v4    # "variant":I
    const/4 v2, 0x1

    .line 436
    goto :goto_0

    .line 418
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
