.class Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;
.super Lcom/android/internal/util/State;
.source "HeadsetClientStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Connecting"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    .prologue
    .line 1408
    iput-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;-><init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)V

    return-void
.end method

.method private processConnectionEvent(IIILandroid/bluetooth/BluetoothDevice;)V
    .locals 8
    .param p1, "state"    # I
    .param p2, "peer_feat"    # I
    .param p3, "chld_feat"    # I
    .param p4, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/16 v1, 0xf

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 1470
    packed-switch p1, :pswitch_data_0

    .line 1531
    const-string/jumbo v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Incorrect state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1469
    :cond_0
    :goto_0
    return-void

    .line 1472
    :pswitch_0
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get9(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-static {v1, v3, v2, v5}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap24(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 1474
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v1, v6}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-set5(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 1475
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get10(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap36(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 1478
    :pswitch_1
    const-string/jumbo v3, "HeadsetClientStateMachine"

    const-string/jumbo v4, "HFPClient Connected from Connecting state"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1480
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v3, p2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-set15(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I

    .line 1481
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v3, p3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-set4(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I

    .line 1483
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget-object v4, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v4}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get9(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-static {v3, v4, v7, v5}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap24(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 1487
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get14(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v7, :cond_1

    .line 1489
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v3, v1, v5, v2, v6}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap12(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;IIILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1491
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/16 v4, 0x14

    invoke-static {v3, v4}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap21(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V

    .line 1496
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget-object v4, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v4}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get7(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap36(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Lcom/android/internal/util/IState;)V

    .line 1498
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1499
    .local v0, "adapterService":Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_2

    .line 1500
    invoke-virtual {v0, p4, v5}, Lcom/android/bluetooth/btservice/AdapterService;->connectOtherProfile(Landroid/bluetooth/BluetoothDevice;I)V

    .line 1504
    :cond_2
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget-object v4, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    .line 1505
    iget-object v5, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v5}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get1(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/media/AudioManager;

    move-result-object v5

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    .line 1504
    const/16 v6, 0x8

    invoke-virtual {v4, v6, v5, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1506
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget-object v4, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    .line 1507
    iget-object v5, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v5}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get1(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/media/AudioManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result v5

    if-eqz v5, :cond_3

    move v1, v2

    .line 1506
    :cond_3
    const/4 v5, 0x7

    invoke-virtual {v4, v5, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1510
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/16 v2, 0x34

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 1493
    .end local v0    # "adapterService":Lcom/android/bluetooth/btservice/AdapterService;
    :cond_4
    const-string/jumbo v3, "HeadsetClientStateMachine"

    const-string/jumbo v4, "Failed to send NREC"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1513
    :pswitch_2
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get9(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1514
    const-string/jumbo v1, "HeadsetClientStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "incoming connection event, device: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1516
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get9(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-static {v1, v3, v2, v5}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap24(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 1519
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v1, p4, v5, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap24(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 1522
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v1, p4}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-set5(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    goto/16 :goto_0

    .line 1527
    :pswitch_3
    const-string/jumbo v1, "HeadsetClientStateMachine"

    const-string/jumbo v2, "outgoing connection started, ignore"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1470
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 1411
    const-string/jumbo v0, "HeadsetClientStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Enter Connecting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap1(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/os/Message;

    move-result-object v2

    iget v2, v2, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    return-void
.end method

.method public exit()V
    .locals 3

    .prologue
    .line 1538
    const-string/jumbo v0, "HeadsetClientStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exit Connecting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap1(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/os/Message;

    move-result-object v2

    iget v2, v2, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1537
    return-void
.end method

.method public declared-synchronized processMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    monitor-enter p0

    .line 1416
    :try_start_0
    const-string/jumbo v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Connecting process message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1419
    iget v1, p1, Landroid/os/Message;->what:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sparse-switch v1, :sswitch_data_0

    .line 1463
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 1423
    :sswitch_0
    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v1, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap26(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1418
    :goto_0
    const/4 v1, 0x1

    monitor-exit p0

    .line 1465
    return v1

    .line 1426
    :sswitch_1
    :try_start_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;

    .line 1430
    .local v0, "event":Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;
    iget v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->type:I

    packed-switch v1, :pswitch_data_0

    .line 1458
    :pswitch_0
    const-string/jumbo v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Connecting: ignoring stack event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v0    # "event":Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1432
    .restart local v0    # "event":Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;
    :pswitch_1
    :try_start_3
    const-string/jumbo v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Connecting: Connection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " state changed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1433
    iget v3, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    .line 1432
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    iget v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    iget v2, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt2:I

    .line 1435
    iget v3, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt3:I

    iget-object v4, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    .line 1434
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;->processConnectionEvent(IIILandroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 1451
    :pswitch_2
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v1, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap26(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/os/Message;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1419
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x64 -> :sswitch_1
    .end sparse-switch

    .line 1430
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
