.class Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;
.super Lcom/android/internal/util/State;
.source "A2dpSinkStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Disconnected"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    .prologue
    .line 327
    iput-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;-><init>(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)V

    return-void
.end method

.method private processConnectionEvent(ILandroid/bluetooth/BluetoothDevice;)V
    .locals 6
    .param p1, "state"    # I
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 396
    packed-switch p1, :pswitch_data_0

    .line 453
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Incorrect state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap10(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V

    .line 395
    :cond_0
    :goto_0
    return-void

    .line 398
    :pswitch_0
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Ignore HF DISCONNECTED event, device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap12(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V

    goto :goto_0

    .line 401
    :pswitch_1
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-virtual {v1, p2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->okToConnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 402
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    const-string/jumbo v2, "Incoming A2DP accepted"

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap11(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V

    .line 403
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v1, p2, v5, v4}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap6(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 405
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    monitor-enter v2

    .line 406
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v1, p2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-set3(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 407
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get12(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap19(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Lcom/android/internal/util/IState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    goto :goto_0

    .line 405
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 411
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    const-string/jumbo v2, "Incoming A2DP rejected"

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap11(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V

    .line 412
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v2, p2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap3(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap2(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;[B)Z

    .line 414
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 415
    .local v0, "adapterService":Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    .line 416
    invoke-virtual {v0, p2, v3}, Lcom/android/bluetooth/btservice/AdapterService;->connectOtherProfile(Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_0

    .line 422
    .end local v0    # "adapterService":Lcom/android/bluetooth/btservice/AdapterService;
    :pswitch_2
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    const-string/jumbo v2, "A2DP Connected from Disconnected state"

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap12(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V

    .line 423
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-virtual {v1, p2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->okToConnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 424
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    const-string/jumbo v2, "Incoming A2DP accepted"

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap11(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V

    .line 425
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v1, p2, v3, v4}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap6(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 427
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    monitor-enter v2

    .line 428
    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v1, p2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-set1(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 429
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get5(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap19(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Lcom/android/internal/util/IState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v2

    .line 432
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 433
    .restart local v0    # "adapterService":Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    .line 434
    invoke-virtual {v0, p2, v5}, Lcom/android/bluetooth/btservice/AdapterService;->connectOtherProfile(Landroid/bluetooth/BluetoothDevice;I)V

    goto/16 :goto_0

    .line 427
    .end local v0    # "adapterService":Lcom/android/bluetooth/btservice/AdapterService;
    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1

    .line 439
    :cond_2
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    const-string/jumbo v2, "Incoming A2DP rejected"

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap11(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V

    .line 440
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v2, p2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap3(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap2(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;[B)Z

    .line 442
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 443
    .restart local v0    # "adapterService":Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    .line 444
    invoke-virtual {v0, p2, v3}, Lcom/android/bluetooth/btservice/AdapterService;->connectOtherProfile(Landroid/bluetooth/BluetoothDevice;I)V

    goto/16 :goto_0

    .line 450
    .end local v0    # "adapterService":Lcom/android/bluetooth/btservice/AdapterService;
    :pswitch_3
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Ignore HF DISCONNECTING event, device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap12(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 396
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Enter Disconnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap0(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/os/Message;

    move-result-object v2

    iget v2, v2, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap9(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap17(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;I)V

    .line 329
    return-void
.end method

.method public exit()V
    .locals 3

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exit Disconnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap0(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/os/Message;

    move-result-object v2

    iget v2, v2, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap9(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V

    .line 390
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 8
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 339
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Disconnected process message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap9(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V

    .line 340
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get7(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get15(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 341
    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    const-string/jumbo v4, "ERROR: current, target, or mIncomingDevice not null in Disconnected"

    invoke-static {v3, v4}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap10(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V

    .line 342
    return v6

    .line 340
    :cond_1
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get10(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    if-nez v3, :cond_0

    .line 345
    const/4 v2, 0x1

    .line 346
    .local v2, "retValue":Z
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 384
    return v6

    .line 348
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 349
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v3, v0, v7, v6}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap6(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 352
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v4, v0}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap3(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap1(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;[B)Z

    move-result v3

    if-nez v3, :cond_2

    .line 353
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v3, v0, v6, v7}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap6(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 386
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    :goto_0
    :sswitch_1
    return v2

    .line 358
    .restart local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_2
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    monitor-enter v4

    .line 359
    :try_start_0
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v3, v0}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-set6(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 360
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    iget-object v5, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v5}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get12(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap19(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Lcom/android/internal/util/IState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 364
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    const-wide/16 v4, 0x7530

    const/16 v6, 0xc9

    invoke-virtual {v3, v6, v4, v5}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->sendMessageDelayed(IJ)V

    goto :goto_0

    .line 358
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 370
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    :sswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$StackEvent;

    .line 371
    .local v1, "event":Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$StackEvent;
    iget v3, v1, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$StackEvent;->type:I

    packed-switch v3, :pswitch_data_0

    .line 379
    :pswitch_0
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unexpected stack event: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$StackEvent;->type:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap10(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V

    goto :goto_0

    .line 373
    :pswitch_1
    iget v3, v1, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$StackEvent;->valueInt:I

    iget-object v4, v1, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v3, v4}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;->processConnectionEvent(ILandroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 376
    :pswitch_2
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    iget-object v4, v1, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$StackEvent;->audioConfig:Landroid/bluetooth/BluetoothAudioConfig;

    iget-object v5, v1, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v3, v4, v5}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap15(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothAudioConfig;Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 346
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x65 -> :sswitch_2
    .end sparse-switch

    .line 371
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
