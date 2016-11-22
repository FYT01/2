.class public Lcom/android/bluetooth/hfpclient/HeadsetClientService;
.super Lcom/android/bluetooth/btservice/ProfileService;
.source "HeadsetClientService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;,
        Lcom/android/bluetooth/hfpclient/HeadsetClientService$1;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "HeadsetClientService"

.field private static sHeadsetClientService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;


# direct methods
.method static synthetic -get0(Lcom/android/bluetooth/hfpclient/HeadsetClientService;)Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/bluetooth/hfpclient/HeadsetClientService;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->isAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/bluetooth/hfpclient/HeadsetClientService;[I)Ljava/util/List;
    .locals 1
    .param p1, "states"    # [I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/ProfileService;-><init>()V

    .line 97
    new-instance v0, Lcom/android/bluetooth/hfpclient/HeadsetClientService$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$1;-><init>(Lcom/android/bluetooth/hfpclient/HeadsetClientService;)V

    iput-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 46
    return-void
.end method

.method private static declared-synchronized clearHeadsetClientService()V
    .locals 2

    .prologue
    const-class v0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    monitor-enter v0

    .line 455
    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->sHeadsetClientService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 454
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 2
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
    .line 503
    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getHeadsetClientService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-class v1, Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    monitor-enter v1

    .line 421
    :try_start_0
    sget-object v0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->sHeadsetClientService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->sHeadsetClientService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    invoke-virtual {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 425
    sget-object v0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->sHeadsetClientService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_0
    monitor-exit v1

    .line 434
    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized setHeadsetClientService(Lcom/android/bluetooth/hfpclient/HeadsetClientService;)V
    .locals 2
    .param p0, "instance"    # Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    .prologue
    const-class v1, Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    monitor-enter v1

    .line 438
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    sput-object p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->sHeadsetClientService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 437
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method acceptCall(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "flag"    # I

    .prologue
    const/4 v4, 0x1

    .line 615
    const-string/jumbo v2, "android.permission.BLUETOOTH"

    const-string/jumbo v3, "Need BLUETOOTH permission"

    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 617
    .local v0, "connectionState":I
    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 618
    if-eq v0, v4, :cond_0

    .line 619
    const/4 v2, 0x0

    return v2

    .line 621
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 622
    .local v1, "msg":Landroid/os/Message;
    iput p2, v1, Landroid/os/Message;->arg1:I

    .line 623
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v2, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 624
    return v4
.end method

.method acceptIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 561
    const/4 v0, 0x0

    return v0
.end method

.method protected cleanup()Z
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->cleanup()V

    .line 93
    :cond_0
    invoke-static {}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->clearHeadsetClientService()V

    .line 94
    const/4 v0, 0x1

    return v0
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 459
    const-string/jumbo v2, "android.permission.BLUETOOTH_ADMIN"

    .line 460
    const-string/jumbo v3, "Need BLUETOOTH ADMIN permission"

    .line 459
    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    if-nez v2, :cond_0

    .line 463
    return v4

    .line 466
    :cond_0
    invoke-static {}, Lcom/android/bluetooth/a2dp/A2dpService;->getA2dpService()Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v0

    .line 468
    .local v0, "a2dpService":Lcom/android/bluetooth/a2dp/A2dpService;
    if-eqz v0, :cond_1

    .line 469
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dp/A2dpService;->isMulticastOngoing(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    .line 468
    if-eqz v2, :cond_1

    .line 470
    const-string/jumbo v2, "HeadsetClientService"

    const-string/jumbo v3, "A2dp Multicast is Ongoing, ignore Connection Request"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    return v4

    .line 474
    :cond_1
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    .line 475
    .local v1, "connectionState":I
    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    .line 476
    if-ne v1, v5, :cond_3

    .line 477
    :cond_2
    return v4

    .line 480
    :cond_3
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v2, v5, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 481
    return v5
.end method

.method connectAudio()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 582
    const-string/jumbo v0, "android.permission.BLUETOOTH_ADMIN"

    const-string/jumbo v1, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 584
    return v2

    .line 586
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->isAudioOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 587
    return v2

    .line 589
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(I)V

    .line 590
    const/4 v0, 0x1

    return v0
.end method

.method dial(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 682
    const-string/jumbo v2, "android.permission.BLUETOOTH"

    const-string/jumbo v3, "Need BLUETOOTH permission"

    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 684
    .local v0, "connectionState":I
    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 685
    if-eq v0, v4, :cond_0

    .line 686
    const/4 v2, 0x0

    return v2

    .line 689
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 690
    .local v1, "msg":Landroid/os/Message;
    iput-object p2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 691
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v2, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 692
    return v4
.end method

.method dialMemory(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "location"    # I

    .prologue
    const/4 v4, 0x1

    .line 696
    const-string/jumbo v2, "android.permission.BLUETOOTH"

    const-string/jumbo v3, "Need BLUETOOTH permission"

    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 698
    .local v0, "connectionState":I
    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 699
    if-eq v0, v4, :cond_0

    .line 700
    const/4 v2, 0x0

    return v2

    .line 702
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 703
    .local v1, "msg":Landroid/os/Message;
    iput p2, v1, Landroid/os/Message;->arg1:I

    .line 704
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v2, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 705
    return v4
.end method

.method disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 485
    const-string/jumbo v1, "android.permission.BLUETOOTH_ADMIN"

    .line 486
    const-string/jumbo v2, "Need BLUETOOTH ADMIN permission"

    .line 485
    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 488
    .local v0, "connectionState":I
    if-eq v0, v4, :cond_0

    .line 489
    if-eq v0, v3, :cond_0

    .line 490
    const/4 v1, 0x0

    return v1

    .line 493
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v1, v4, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 494
    return v3
.end method

.method disconnectAudio()Z
    .locals 2

    .prologue
    .line 594
    const-string/jumbo v0, "android.permission.BLUETOOTH_ADMIN"

    const-string/jumbo v1, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->isAudioOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 596
    const/4 v0, 0x0

    return v0

    .line 598
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(I)V

    .line 599
    const/4 v0, 0x1

    return v0
.end method

.method public dump(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 775
    invoke-super {p0, p1}, Lcom/android/bluetooth/btservice/ProfileService;->dump(Ljava/lang/StringBuilder;)V

    .line 776
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    if-eqz v0, :cond_0

    .line 777
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->dump(Ljava/lang/StringBuilder;)V

    .line 774
    :cond_0
    return-void
.end method

.method enterPrivateMode(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "index"    # I

    .prologue
    const/4 v4, 0x1

    .line 655
    const-string/jumbo v2, "android.permission.BLUETOOTH"

    const-string/jumbo v3, "Need BLUETOOTH permission"

    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 657
    .local v0, "connectionState":I
    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 658
    if-eq v0, v4, :cond_0

    .line 659
    const/4 v2, 0x0

    return v2

    .line 662
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 663
    .local v1, "msg":Landroid/os/Message;
    iput p2, v1, Landroid/os/Message;->arg1:I

    .line 664
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v2, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 665
    return v4
.end method

.method public explicitCallTransfer(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v4, 0x1

    .line 743
    const-string/jumbo v2, "android.permission.BLUETOOTH"

    const-string/jumbo v3, "Need BLUETOOTH permission"

    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 745
    .local v0, "connectionState":I
    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 746
    if-eq v0, v4, :cond_0

    .line 747
    const/4 v2, 0x0

    return v2

    .line 749
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    .line 750
    const/16 v3, 0x12

    .line 749
    invoke-virtual {v2, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 751
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v2, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 752
    return v4
.end method

.method public getAudioRouteAllowed()Z
    .locals 1

    .prologue
    .line 578
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getAudioRouteAllowed()Z

    move-result v0

    return v0
.end method

.method getAudioState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 570
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    return v0
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
    .line 498
    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 508
    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    return v0
.end method

.method public getCurrentAgEvents(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 756
    const-string/jumbo v1, "android.permission.BLUETOOTH"

    const-string/jumbo v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 758
    .local v0, "connectionState":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 759
    const/4 v1, 0x0

    return-object v1

    .line 761
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCurrentAgEvents()Landroid/os/Bundle;

    move-result-object v1

    return-object v1
.end method

.method public getCurrentAgFeatures(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 765
    const-string/jumbo v1, "android.permission.BLUETOOTH"

    const-string/jumbo v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 767
    .local v0, "connectionState":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 768
    const/4 v1, 0x0

    return-object v1

    .line 770
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCurrentAgFeatures()Landroid/os/Bundle;

    move-result-object v1

    return-object v1
.end method

.method public getCurrentCalls(Landroid/bluetooth/BluetoothDevice;)Ljava/util/List;
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothDevice;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothHeadsetClientCall;",
            ">;"
        }
    .end annotation

    .prologue
    .line 734
    const-string/jumbo v1, "android.permission.BLUETOOTH"

    const-string/jumbo v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 736
    .local v0, "connectionState":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 737
    const/4 v1, 0x0

    return-object v1

    .line 739
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCurrentCalls()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getLastVoiceTagNumber(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v4, 0x1

    .line 722
    const-string/jumbo v2, "android.permission.BLUETOOTH"

    const-string/jumbo v3, "Need BLUETOOTH permission"

    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 724
    .local v0, "connectionState":I
    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 725
    if-eq v0, v4, :cond_0

    .line 726
    const/4 v2, 0x0

    return v2

    .line 728
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/16 v3, 0x13

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 729
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v2, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 730
    return v4
.end method

.method protected getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    const-string/jumbo v0, "HeadsetClientService"

    return-object v0
.end method

.method public getPriority(Landroid/bluetooth/BluetoothDevice;)I
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 526
    const-string/jumbo v1, "android.permission.BLUETOOTH_ADMIN"

    .line 527
    const-string/jumbo v2, "Need BLUETOOTH_ADMIN permission"

    .line 526
    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 529
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/Settings$Global;->getBluetoothHeadsetPriorityKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 530
    const/4 v3, -0x1

    .line 528
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 531
    .local v0, "priority":I
    return v0
.end method

.method holdCall(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v4, 0x1

    .line 603
    const-string/jumbo v2, "android.permission.BLUETOOTH"

    const-string/jumbo v3, "Need BLUETOOTH permission"

    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 605
    .local v0, "connectionState":I
    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 606
    if-eq v0, v4, :cond_0

    .line 607
    const/4 v2, 0x0

    return v2

    .line 609
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 610
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v2, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 611
    return v4
.end method

.method public initBinder()Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;-><init>(Lcom/android/bluetooth/hfpclient/HeadsetClientService;)V

    return-object v0
.end method

.method redial(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v4, 0x1

    .line 669
    const-string/jumbo v2, "android.permission.BLUETOOTH"

    const-string/jumbo v3, "Need BLUETOOTH permission"

    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 671
    .local v0, "connectionState":I
    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 672
    if-eq v0, v4, :cond_0

    .line 673
    const/4 v2, 0x0

    return v2

    .line 676
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 677
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v2, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 678
    return v4
.end method

.method rejectCall(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v4, 0x1

    .line 628
    const-string/jumbo v2, "android.permission.BLUETOOTH"

    const-string/jumbo v3, "Need BLUETOOTH permission"

    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 630
    .local v0, "connectionState":I
    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 631
    if-eq v0, v4, :cond_0

    .line 632
    const/4 v2, 0x0

    return v2

    .line 635
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 636
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v2, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 637
    return v4
.end method

.method rejectIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 566
    const/4 v0, 0x0

    return v0
.end method

.method public sendDTMF(Landroid/bluetooth/BluetoothDevice;B)Z
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "code"    # B

    .prologue
    const/4 v4, 0x1

    .line 709
    const-string/jumbo v2, "android.permission.BLUETOOTH"

    const-string/jumbo v3, "Need BLUETOOTH permission"

    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 711
    .local v0, "connectionState":I
    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 712
    if-eq v0, v4, :cond_0

    .line 713
    const/4 v2, 0x0

    return v2

    .line 715
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 716
    .local v1, "msg":Landroid/os/Message;
    iput p2, v1, Landroid/os/Message;->arg1:I

    .line 717
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v2, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 718
    return v4
.end method

.method public setAudioRouteAllowed(Z)V
    .locals 1
    .param p1, "allowed"    # Z

    .prologue
    .line 574
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->setAudioRouteAllowed(Z)V

    .line 573
    return-void
.end method

.method public setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "priority"    # I

    .prologue
    .line 514
    const-string/jumbo v0, "android.permission.BLUETOOTH_ADMIN"

    .line 515
    const-string/jumbo v1, "Need BLUETOOTH_ADMIN permission"

    .line 514
    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 517
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Settings$Global;->getBluetoothHeadsetPriorityKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 516
    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 522
    const/4 v0, 0x1

    return v0
.end method

.method protected start()Z
    .locals 4

    .prologue
    .line 65
    invoke-static {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->make(Lcom/android/bluetooth/hfpclient/HeadsetClientService;)Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    move-result-object v2

    iput-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    .line 66
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 67
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 69
    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_0
    invoke-static {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->setHeadsetClientService(Lcom/android/bluetooth/hfpclient/HeadsetClientService;)V

    .line 74
    const/4 v2, 0x1

    return v2

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "HeadsetClientService"

    const-string/jumbo v3, "Unable to register broadcat receiver"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method startVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v3, 0x1

    .line 535
    const-string/jumbo v1, "android.permission.BLUETOOTH"

    const-string/jumbo v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 537
    .local v0, "connectionState":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 538
    if-eq v0, v3, :cond_0

    .line 539
    const/4 v1, 0x0

    return v1

    .line 541
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(I)V

    .line 542
    return v3
.end method

.method protected stop()Z
    .locals 3

    .prologue
    .line 80
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->doQuit()V

    .line 85
    const/4 v1, 0x1

    return v1

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "HeadsetClientService"

    const-string/jumbo v2, "Unable to unregister broadcast receiver"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v3, 0x1

    .line 546
    const-string/jumbo v1, "android.permission.BLUETOOTH"

    const-string/jumbo v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 551
    .local v0, "connectionState":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 552
    if-eq v0, v3, :cond_0

    .line 553
    const/4 v1, 0x0

    return v1

    .line 555
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(I)V

    .line 556
    return v3
.end method

.method terminateCall(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "index"    # I

    .prologue
    const/4 v4, 0x1

    .line 641
    const-string/jumbo v2, "android.permission.BLUETOOTH"

    const-string/jumbo v3, "Need BLUETOOTH permission"

    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 643
    .local v0, "connectionState":I
    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 644
    if-eq v0, v4, :cond_0

    .line 645
    const/4 v2, 0x0

    return v2

    .line 648
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 649
    .local v1, "msg":Landroid/os/Message;
    iput p2, v1, Landroid/os/Message;->arg1:I

    .line 650
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v2, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 651
    return v4
.end method
