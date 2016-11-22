.class Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;
.super Lcom/android/internal/util/State;
.source "A2dpStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/a2dp/A2dpStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiConnectionPending"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    .prologue
    .line 1098
    iput-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;-><init>(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)V

    return-void
.end method

.method private processAudioStateEvent(ILandroid/bluetooth/BluetoothDevice;)V
    .locals 7
    .param p1, "state"    # I
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/16 v6, 0x14

    const/4 v5, 0x1

    .line 1418
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get3(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1419
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Audio State Device:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "is not in mConnectedDevicesList"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1420
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get5(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    .line 1419
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap9(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    .line 1421
    return-void

    .line 1423
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MultiPendingState: processAudioStateEvent state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " device "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1424
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1423
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap8(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    .line 1425
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mPlayingA2dpDevice size is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get11(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap8(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    .line 1426
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mConnectedDevicesList size is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get3(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap8(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    .line 1427
    packed-switch p1, :pswitch_data_0

    .line 1481
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Audio State Device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " bad state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap9(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    .line 1417
    :goto_0
    return-void

    .line 1429
    :pswitch_0
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    monitor-enter v2

    .line 1430
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get3(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1431
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get11(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_3

    .line 1432
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get11(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 1431
    if-eqz v1, :cond_3

    .line 1449
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get11(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    .line 1450
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get1(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1451
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get1(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_2
    monitor-exit v2

    goto :goto_0

    .line 1436
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get11(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v5, :cond_4

    .line 1437
    const-string/jumbo v1, "A2dpStateMachine"

    const-string/jumbo v3, "setScanMode:SCAN_MODE_NONE"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1438
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-set0(Z)Z

    .line 1439
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get1(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    const/16 v3, 0x14

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)Z

    .line 1441
    :cond_4
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get11(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1442
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get12(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v1

    const/16 v3, 0xa

    invoke-virtual {v1, v3, p2}, Lcom/android/bluetooth/a2dp/A2dpService;->setAvrcpAudioState(ILandroid/bluetooth/BluetoothDevice;)V

    .line 1443
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const/16 v3, 0xa

    .line 1444
    const/16 v4, 0xb

    .line 1443
    invoke-static {v1, p2, v3, v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap5(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1429
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 1458
    :pswitch_1
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    monitor-enter v2

    .line 1459
    :try_start_2
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get11(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_5

    .line 1460
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get11(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 1459
    if-eqz v1, :cond_5

    .line 1461
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get11(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1462
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get12(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v1

    const/16 v3, 0xb

    invoke-virtual {v1, v3, p2}, Lcom/android/bluetooth/a2dp/A2dpService;->setAvrcpAudioState(ILandroid/bluetooth/BluetoothDevice;)V

    .line 1463
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const/16 v3, 0xb

    .line 1464
    const/16 v4, 0xa

    .line 1463
    invoke-static {v1, p2, v3, v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap5(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 1467
    :cond_5
    const-string/jumbo v1, "A2dpStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getScanMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get1(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->getScanMode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1468
    const-string/jumbo v4, " isScanDisabled: "

    .line 1467
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1468
    invoke-static {}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get0()Z

    move-result v4

    .line 1467
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1469
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get11(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v1, v5, :cond_2

    .line 1470
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get1(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getScanMode()I

    move-result v1

    if-ne v1, v6, :cond_2

    .line 1471
    invoke-static {}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get0()Z

    move-result v1

    .line 1469
    if-eqz v1, :cond_2

    .line 1472
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-set0(Z)Z

    .line 1473
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1474
    .local v0, "adapterService":Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_2

    .line 1475
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->restoreScanMode()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_2

    .line 1458
    .end local v0    # "adapterService":Lcom/android/bluetooth/btservice/AdapterService;
    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1

    .line 1427
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private processConnectionEvent(ILandroid/bluetooth/BluetoothDevice;)V
    .locals 9
    .param p1, "state"    # I
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1171
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "processConnectionEvent state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1172
    const-string/jumbo v3, ", device = "

    .line 1171
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap8(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    .line 1173
    packed-switch p1, :pswitch_data_0

    .line 1410
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Incorrect state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap9(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    .line 1170
    :cond_0
    :goto_0
    return-void

    .line 1175
    :pswitch_0
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get3(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1176
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get11(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 1177
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get11(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 1176
    if-eqz v1, :cond_1

    .line 1178
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const-string/jumbo v2, "mPlayingA2dpDevice is disconnected, setting it to null"

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap8(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    .line 1179
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const/16 v2, 0xb

    .line 1180
    const/16 v3, 0xa

    .line 1179
    invoke-static {v1, p2, v2, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap5(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 1181
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get11(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1184
    :cond_1
    const-string/jumbo v1, "A2dpStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getScanMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get1(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getScanMode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1185
    const-string/jumbo v3, " isScanDisabled: "

    .line 1184
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1185
    invoke-static {}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get0()Z

    move-result v3

    .line 1184
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get11(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v1, v6, :cond_2

    .line 1187
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get1(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getScanMode()I

    move-result v1

    .line 1188
    const/16 v2, 0x14

    .line 1187
    if-ne v1, v2, :cond_2

    .line 1189
    invoke-static {}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get0()Z

    move-result v1

    .line 1186
    if-eqz v1, :cond_2

    .line 1190
    invoke-static {v5}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-set0(Z)Z

    .line 1192
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1193
    .local v0, "adapterService":Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_2

    .line 1194
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->restoreScanMode()Z

    .line 1197
    .end local v0    # "adapterService":Lcom/android/bluetooth/btservice/AdapterService;
    :cond_2
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get9(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 1198
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get9(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1197
    if-eqz v1, :cond_6

    .line 1199
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1, v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-set3(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 1200
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    monitor-enter v2

    .line 1201
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get3(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1202
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "device "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1203
    const-string/jumbo v4, " is removed in MultiConnectionPending state"

    .line 1202
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap8(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 1205
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1, p2, v5, v8}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap6(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 1208
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get13(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1209
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get13(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap4(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap2(Lcom/android/bluetooth/a2dp/A2dpStateMachine;[B)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1210
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get13(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-static {v1, v2, v5, v6}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap6(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 1213
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    monitor-enter v2

    .line 1214
    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-set4(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 1215
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get3(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 1218
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const-string/jumbo v3, "Should be not in this state, error handling"

    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap8(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    .line 1219
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get6(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap14(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/internal/util/IState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    monitor-exit v2

    goto/16 :goto_0

    .line 1200
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 1222
    :cond_3
    :try_start_2
    invoke-direct {p0, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->processMultiA2dpDisconnected(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 1213
    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1

    .line 1227
    :cond_4
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    monitor-enter v2

    .line 1228
    :try_start_3
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-set2(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 1229
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get3(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_5

    .line 1230
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get6(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap14(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/internal/util/IState;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    .line 1227
    :catchall_2
    move-exception v1

    monitor-exit v2

    throw v1

    .line 1232
    :cond_5
    :try_start_4
    invoke-direct {p0, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->processMultiA2dpDisconnected(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    .line 1238
    :cond_6
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    monitor-enter v2

    .line 1239
    :try_start_5
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get3(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1241
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "device "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1242
    const-string/jumbo v4, " is removed in MultiConnectionPending state"

    .line 1241
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap8(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    monitor-exit v2

    .line 1244
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1, p2, v5, v7}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap6(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    goto/16 :goto_0

    .line 1238
    :catchall_3
    move-exception v1

    monitor-exit v2

    throw v1

    .line 1248
    :cond_7
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get13(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get13(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1249
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get13(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-static {v1, v2, v5, v6}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap6(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 1252
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    monitor-enter v2

    .line 1253
    :try_start_6
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-set4(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 1254
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get3(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_8

    .line 1255
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get6(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap14(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/internal/util/IState;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto/16 :goto_1

    .line 1252
    :catchall_4
    move-exception v1

    monitor-exit v2

    throw v1

    .line 1257
    :cond_8
    :try_start_7
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get2(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap14(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/internal/util/IState;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto/16 :goto_1

    .line 1260
    :cond_9
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get7(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get7(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1262
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get7(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-static {v1, v2, v5, v6}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap6(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 1265
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    monitor-enter v2

    .line 1266
    :try_start_8
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-set2(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 1267
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get3(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_a

    .line 1268
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get6(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap14(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/internal/util/IState;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    goto/16 :goto_1

    .line 1265
    :catchall_5
    move-exception v1

    monitor-exit v2

    throw v1

    .line 1270
    :cond_a
    :try_start_9
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get2(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap14(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/internal/util/IState;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto/16 :goto_1

    .line 1278
    :cond_b
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get13(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get7(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-nez v1, :cond_c

    .line 1279
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get3(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1280
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get15(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)I

    move-result v2

    .line 1279
    if-ne v1, v2, :cond_c

    .line 1281
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get2(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap14(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/internal/util/IState;)V

    .line 1283
    :cond_c
    const-string/jumbo v1, "A2dpStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown device Disconnected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1288
    :pswitch_1
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get13(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get13(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1289
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const-string/jumbo v2, "Outgoing Connection initiated, Ignore it"

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap8(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1290
    :cond_d
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get7(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 1291
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get7(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1290
    if-eqz v1, :cond_e

    .line 1292
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const-string/jumbo v2, "Incoming connection from same device, Ignore it"

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap8(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1293
    :cond_e
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get3(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1294
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const-string/jumbo v2, "current device tries to connect back"

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap8(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1296
    :cond_f
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Connection event from new device "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap8(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    .line 1297
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-virtual {v1, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->okToConnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1298
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get3(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get15(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)I

    move-result v2

    if-ge v1, v2, :cond_10

    .line 1299
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1, p2, v6, v5}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap6(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 1301
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-set2(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    goto/16 :goto_0

    .line 1303
    :cond_10
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v2, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap4(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap3(Lcom/android/bluetooth/a2dp/A2dpStateMachine;[B)Z

    .line 1305
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1306
    .restart local v0    # "adapterService":Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    .line 1307
    invoke-virtual {v0, p2, v7}, Lcom/android/bluetooth/btservice/AdapterService;->connectOtherProfile(Landroid/bluetooth/BluetoothDevice;I)V

    goto/16 :goto_0

    .line 1314
    .end local v0    # "adapterService":Lcom/android/bluetooth/btservice/AdapterService;
    :pswitch_2
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Connected event for device "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap8(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    .line 1315
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get3(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get15(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)I

    move-result v2

    if-ne v1, v2, :cond_12

    .line 1320
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get13(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get13(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1321
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const-string/jumbo v2, "mTargetDevice, connected list is full"

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap8(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    .line 1322
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1, p2, v5, v6}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap6(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 1324
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    monitor-enter v2

    .line 1325
    :try_start_a
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-set4(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    monitor-exit v2

    .line 1327
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v2, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap4(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap3(Lcom/android/bluetooth/a2dp/A2dpStateMachine;[B)Z

    .line 1328
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    .line 1329
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v2, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap4(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v2

    .line 1328
    invoke-static {v1, v5, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap12(Lcom/android/bluetooth/a2dp/A2dpStateMachine;I[B)V

    .line 1331
    :cond_11
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get7(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get7(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1332
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const-string/jumbo v2, "mIncomingDevice connected list is full"

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap8(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    .line 1333
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1, p2, v5, v6}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap6(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 1335
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    monitor-enter v2

    .line 1336
    :try_start_b
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-set2(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    monitor-exit v2

    .line 1339
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v2, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap4(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap3(Lcom/android/bluetooth/a2dp/A2dpStateMachine;[B)Z

    .line 1340
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    .line 1341
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v2, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap4(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v2

    .line 1340
    invoke-static {v1, v5, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap12(Lcom/android/bluetooth/a2dp/A2dpStateMachine;I[B)V

    .line 1344
    :cond_12
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get3(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1345
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Disconnection failed event for device "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap8(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    .line 1346
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1, p2, v7, v8}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap6(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 1348
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get13(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 1349
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get13(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-static {v1, v2, v5, v6}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap6(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 1353
    :cond_13
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    monitor-enter v2

    .line 1354
    :try_start_c
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-set4(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 1355
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get2(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap14(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/internal/util/IState;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    goto/16 :goto_1

    .line 1353
    :catchall_6
    move-exception v1

    monitor-exit v2

    throw v1

    .line 1324
    :catchall_7
    move-exception v1

    monitor-exit v2

    throw v1

    .line 1335
    :catchall_8
    move-exception v1

    monitor-exit v2

    throw v1

    .line 1357
    :cond_14
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get13(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get13(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1358
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    monitor-enter v2

    .line 1359
    :try_start_d
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-set1(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 1360
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get3(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1361
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "device "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1362
    const-string/jumbo v4, " is added in MultiConnectionPending state"

    .line 1361
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap8(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    .line 1363
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-set4(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 1364
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get2(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap14(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/internal/util/IState;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    monitor-exit v2

    .line 1366
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1, p2, v7, v6}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap6(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    goto/16 :goto_0

    .line 1358
    :catchall_9
    move-exception v1

    monitor-exit v2

    throw v1

    .line 1368
    :cond_15
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get7(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get7(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1369
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    monitor-enter v2

    .line 1370
    :try_start_e
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-set1(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 1371
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get3(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1372
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "device "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1373
    const-string/jumbo v4, " is added in MultiConnectionPending state"

    .line 1372
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap8(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    .line 1374
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-set2(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 1375
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get2(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap14(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/internal/util/IState;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_a

    monitor-exit v2

    .line 1377
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1, p2, v7, v6}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap6(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    goto/16 :goto_0

    .line 1369
    :catchall_a
    move-exception v1

    monitor-exit v2

    throw v1

    .line 1381
    :cond_16
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const-string/jumbo v2, "Unknown Device connected"

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap8(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    .line 1382
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-virtual {v1, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->okToConnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1383
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get3(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get15(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)I

    move-result v2

    if-ge v1, v2, :cond_17

    .line 1384
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-set1(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 1385
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get3(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1386
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "device "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1387
    const-string/jumbo v3, " is added in MultiConnectionPending state"

    .line 1386
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap8(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    .line 1388
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1, p2, v7, v5}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap6(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    goto/16 :goto_0

    .line 1392
    :cond_17
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v2, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap4(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap3(Lcom/android/bluetooth/a2dp/A2dpStateMachine;[B)Z

    goto/16 :goto_0

    .line 1398
    :pswitch_3
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get3(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1400
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const-string/jumbo v2, "stack is disconnecting mCurrentDevice"

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap8(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1401
    :cond_18
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get13(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get13(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1402
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const-string/jumbo v2, "TargetDevice is getting disconnected"

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap9(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1403
    :cond_19
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get7(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get7(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1404
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const-string/jumbo v2, "mIncomingDevice is getting disconnected"

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap9(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1406
    :cond_1a
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Disconnecting unknow device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap9(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1173
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private processMultiA2dpDisconnected(Landroid/bluetooth/BluetoothDevice;)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 1487
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const-string/jumbo v2, "processMultiA2dpDisconnected state: processMultiA2dpDisconnected"

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap8(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    .line 1489
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get5(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get5(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1490
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get3(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1491
    .local v0, "deviceSize":I
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get3(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v1

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    invoke-static {v2, v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-set1(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 1493
    .end local v0    # "deviceSize":I
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get2(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap14(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/internal/util/IState;)V

    .line 1494
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "processMultiA2dpDisconnected , the latest mCurrentDevice is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1495
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get5(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    .line 1494
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap8(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    .line 1496
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const-string/jumbo v2, "MultiA2dpPending state: processMultiA2dpDisconnected ,fake broadcasting for mCurrentDevice"

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap8(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    .line 1498
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get5(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    const/4 v3, 0x2

    .line 1499
    const/4 v4, 0x0

    .line 1498
    invoke-static {v1, v2, v3, v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap6(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 1486
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 1101
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Enter MultiConnectionPending: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap1(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/os/Message;

    move-result-object v2

    iget v2, v2, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1102
    const-string/jumbo v2, ", size: "

    .line 1101
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1102
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get3(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1101
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap8(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    .line 1100
    return-void
.end method

.method public exit()V
    .locals 3

    .prologue
    .line 1166
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exit MultiConnectionPending: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap1(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/os/Message;

    move-result-object v2

    iget v2, v2, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap8(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    .line 1165
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 8
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    .line 1106
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "MultiConnectionPending process message: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1107
    const-string/jumbo v6, ", size: "

    .line 1106
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1107
    iget-object v6, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v6}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get3(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1106
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap8(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    .line 1108
    const/4 v3, 0x1

    .line 1109
    .local v3, "retValue":Z
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 1159
    return v7

    .line 1111
    :sswitch_0
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v4, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap7(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/os/Message;)V

    .line 1161
    :goto_0
    return v3

    .line 1114
    :sswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 1115
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get3(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1116
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get13(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get13(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 1115
    if-eqz v4, :cond_0

    .line 1118
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    .line 1120
    const/4 v5, 0x1

    .line 1118
    invoke-static {v4, v1, v7, v5}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap6(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 1121
    iget-object v5, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    monitor-enter v5

    .line 1122
    :try_start_0
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const/4 v6, 0x0

    invoke-static {v4, v6}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-set4(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    goto :goto_0

    .line 1121
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 1125
    :cond_0
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v4, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap7(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/os/Message;)V

    goto :goto_0

    .line 1130
    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 1132
    .local v0, "dev":Landroid/bluetooth/BluetoothDevice;
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Timeout for device in MCP "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap8(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    .line 1133
    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get13(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1134
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get13(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1140
    :cond_1
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v5, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v6, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v6}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get13(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap4(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap3(Lcom/android/bluetooth/a2dp/A2dpStateMachine;[B)Z

    .line 1141
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    .line 1142
    iget-object v5, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v6, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v6}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get13(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap4(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v5

    .line 1141
    invoke-static {v4, v7, v5}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap12(Lcom/android/bluetooth/a2dp/A2dpStateMachine;I[B)V

    goto/16 :goto_0

    .line 1135
    :cond_2
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Timeout for incoming device "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap8(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    .line 1136
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    .line 1137
    iget-object v5, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v5, v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap4(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v5

    .line 1136
    invoke-static {v4, v7, v5}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap12(Lcom/android/bluetooth/a2dp/A2dpStateMachine;I[B)V

    goto/16 :goto_0

    .line 1145
    .end local v0    # "dev":Landroid/bluetooth/BluetoothDevice;
    :sswitch_3
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;

    .line 1146
    .local v2, "event":Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;
    iget v4, v2, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->type:I

    packed-switch v4, :pswitch_data_0

    .line 1154
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unexpected stack event: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->type:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap9(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1148
    :pswitch_0
    iget v4, v2, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->valueInt:I

    iget-object v5, v2, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v4, v5}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->processConnectionEvent(ILandroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 1151
    :pswitch_1
    iget v4, v2, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->valueInt:I

    iget-object v5, v2, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v4, v5}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$MultiConnectionPending;->processAudioStateEvent(ILandroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 1109
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x65 -> :sswitch_3
        0xc9 -> :sswitch_2
    .end sparse-switch

    .line 1146
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
