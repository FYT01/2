.class Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;
.super Lcom/android/internal/util/State;
.source "A2dpStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/a2dp/A2dpStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Pending"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    .prologue
    .line 366
    iput-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;-><init>(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)V

    return-void
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

    .line 431
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "processConnectionEvent state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 432
    const-string/jumbo v3, ", device = "

    .line 431
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap8(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    .line 433
    packed-switch p1, :pswitch_data_0

    .line 671
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

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

    .line 430
    :cond_0
    :goto_0
    return-void

    .line 436
    :pswitch_0
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get11(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 437
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get11(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 436
    if-eqz v1, :cond_1

    .line 438
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const-string/jumbo v2, "Playing A2dp Device is disconnected, setting it to null"

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap8(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    .line 439
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    .line 440
    const/16 v2, 0xb

    .line 441
    const/16 v3, 0xa

    .line 439
    invoke-static {v1, p2, v2, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap5(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 442
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get11(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 445
    :cond_1
    const-string/jumbo v1, "A2dpStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getScanMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get1(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getScanMode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 446
    const-string/jumbo v3, " isScanDisabled: "

    .line 445
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 446
    invoke-static {}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get0()Z

    move-result v3

    .line 445
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get11(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v1, v6, :cond_2

    .line 448
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get1(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getScanMode()I

    move-result v1

    .line 449
    const/16 v2, 0x14

    .line 448
    if-ne v1, v2, :cond_2

    .line 450
    invoke-static {}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get0()Z

    move-result v1

    .line 447
    if-eqz v1, :cond_2

    .line 451
    invoke-static {v5}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-set0(Z)Z

    .line 453
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 454
    .local v0, "adapterService":Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_2

    .line 455
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->restoreScanMode()Z

    .line 458
    .end local v0    # "adapterService":Lcom/android/bluetooth/btservice/AdapterService;
    :cond_2
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get3(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 459
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    monitor-enter v2

    .line 460
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get3(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 461
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "device "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 462
    const-string/jumbo v4, " is removed in Pending state"

    .line 461
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap8(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 464
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1, p2, v5, v8}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap6(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 467
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    monitor-enter v2

    .line 468
    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-set1(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v2

    .line 470
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "disconnected for target in pending state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get13(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap8(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    .line 471
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get13(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 472
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get13(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap4(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap2(Lcom/android/bluetooth/a2dp/A2dpStateMachine;[B)Z

    move-result v1

    if-nez v1, :cond_0

    .line 473
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get13(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-static {v1, v2, v5, v6}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap6(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 476
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    monitor-enter v2

    .line 477
    :try_start_2
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-set4(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 478
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get6(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap14(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/internal/util/IState;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_1
    monitor-exit v2

    goto/16 :goto_0

    .line 459
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 467
    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1

    .line 476
    :catchall_2
    move-exception v1

    monitor-exit v2

    throw v1

    .line 482
    :cond_3
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    monitor-enter v2

    .line 483
    :try_start_3
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-set2(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 484
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get3(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_4

    .line 485
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get6(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap14(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/internal/util/IState;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_1

    .line 482
    :catchall_3
    move-exception v1

    monitor-exit v2

    throw v1

    .line 487
    :cond_4
    :try_start_4
    invoke-direct {p0, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->processMultiA2dpDisconnected(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_1

    .line 491
    :cond_5
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get13(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get13(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 493
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get13(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-static {v1, v2, v5, v6}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap6(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 497
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get7(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 498
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const-string/jumbo v2, "disconnect for outgoing in pending state"

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap10(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    .line 499
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    monitor-enter v2

    .line 500
    :try_start_5
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-set4(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_1

    .line 499
    :catchall_4
    move-exception v1

    monitor-exit v2

    throw v1

    .line 504
    :cond_6
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    monitor-enter v2

    .line 505
    :try_start_6
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-set4(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 506
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get3(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_7

    .line 507
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get6(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap14(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/internal/util/IState;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    goto/16 :goto_1

    .line 504
    :catchall_5
    move-exception v1

    monitor-exit v2

    throw v1

    .line 509
    :cond_7
    :try_start_7
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get2(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap14(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/internal/util/IState;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto/16 :goto_1

    .line 512
    :cond_8
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get7(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get7(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 513
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get7(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-static {v1, v2, v5, v6}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap6(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 517
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get13(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 518
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const-string/jumbo v2, "disconnect for incoming in pending state"

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap10(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    .line 519
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    monitor-enter v2

    .line 520
    :try_start_8
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-set2(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    goto/16 :goto_1

    .line 519
    :catchall_6
    move-exception v1

    monitor-exit v2

    throw v1

    .line 524
    :cond_9
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    monitor-enter v2

    .line 525
    :try_start_9
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-set2(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 526
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get3(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_a

    .line 527
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get6(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap14(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/internal/util/IState;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    goto/16 :goto_1

    .line 524
    :catchall_7
    move-exception v1

    monitor-exit v2

    throw v1

    .line 529
    :cond_a
    :try_start_a
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get2(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap14(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/internal/util/IState;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    goto/16 :goto_1

    .line 533
    :cond_b
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown device Disconnected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap9(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 537
    :pswitch_1
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get3(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 539
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1, p2, v7, v8}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap6(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 541
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get13(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 542
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get13(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-static {v1, v2, v5, v6}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap6(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 545
    :cond_c
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    monitor-enter v2

    .line 546
    :try_start_b
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-set4(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 547
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get2(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap14(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/internal/util/IState;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    goto/16 :goto_1

    .line 545
    :catchall_8
    move-exception v1

    monitor-exit v2

    throw v1

    .line 549
    :cond_d
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get13(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get13(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 550
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    monitor-enter v2

    .line 551
    :try_start_c
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get13(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-set1(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 552
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get3(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get13(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 553
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-set4(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 554
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "device "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 555
    const-string/jumbo v4, " is added in Pending state"

    .line 554
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap8(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    .line 556
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get7(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 557
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get7(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get7(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->okToConnect(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_9

    move-result v1

    if-eqz v1, :cond_f

    :cond_e
    :goto_2
    monitor-exit v2

    .line 560
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1, p2, v7, v6}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap6(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    goto/16 :goto_0

    .line 558
    :cond_f
    :try_start_d
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get2(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap14(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/internal/util/IState;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    goto :goto_2

    .line 550
    :catchall_9
    move-exception v1

    monitor-exit v2

    throw v1

    .line 562
    :cond_10
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get7(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get7(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 564
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get7(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->okToConnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 565
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const-string/jumbo v2, "Ready to connect incoming Connection from pending state"

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap10(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    .line 566
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    monitor-enter v2

    .line 567
    :try_start_e
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get7(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-set1(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 568
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get3(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get7(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 569
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-set2(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 570
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get13(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-nez v1, :cond_11

    .line 571
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get2(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap14(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/internal/util/IState;)V

    .line 572
    :cond_11
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "device "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 573
    const-string/jumbo v4, " is added in Pending state"

    .line 572
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap8(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_a

    monitor-exit v2

    .line 575
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1, p2, v7, v6}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap6(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    goto/16 :goto_0

    .line 566
    :catchall_a
    move-exception v1

    monitor-exit v2

    throw v1

    .line 579
    :cond_12
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const-string/jumbo v2, "Incoming A2DP rejected from pending state"

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap9(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    .line 580
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v2, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap4(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap3(Lcom/android/bluetooth/a2dp/A2dpStateMachine;[B)Z

    .line 582
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 583
    .restart local v0    # "adapterService":Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    .line 584
    invoke-virtual {v0, p2, v7}, Lcom/android/bluetooth/btservice/AdapterService;->connectOtherProfile(Landroid/bluetooth/BluetoothDevice;I)V

    goto/16 :goto_0

    .line 589
    .end local v0    # "adapterService":Lcom/android/bluetooth/btservice/AdapterService;
    :cond_13
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown device Connected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap9(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    .line 591
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-virtual {v1, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->okToConnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 592
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    monitor-enter v2

    .line 593
    :try_start_f
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get3(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 594
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get13(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 595
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const-string/jumbo v3, "Waiting for Connected event for mTargetDevice"

    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap8(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    .line 599
    :cond_14
    :goto_3
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "device "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 600
    const-string/jumbo v4, " is added in Pending state"

    .line 599
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap8(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_b

    monitor-exit v2

    .line 602
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1, p2, v7, v5}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap6(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    goto/16 :goto_0

    .line 596
    :cond_15
    :try_start_10
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get7(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 597
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const-string/jumbo v3, "Waiting for Connected event for mIncomingDevice"

    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap8(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_b

    goto :goto_3

    .line 592
    :catchall_b
    move-exception v1

    monitor-exit v2

    throw v1

    .line 606
    :cond_16
    const-string/jumbo v1, "A2dpStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Incoming A2dp rejected. priority="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 607
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get12(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/android/bluetooth/a2dp/A2dpService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    .line 606
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 607
    const-string/jumbo v3, " bondState="

    .line 606
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 608
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v3

    .line 606
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v2, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap4(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap3(Lcom/android/bluetooth/a2dp/A2dpStateMachine;[B)Z

    .line 611
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 612
    .restart local v0    # "adapterService":Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    .line 613
    invoke-virtual {v0, p2, v7}, Lcom/android/bluetooth/btservice/AdapterService;->connectOtherProfile(Landroid/bluetooth/BluetoothDevice;I)V

    goto/16 :goto_0

    .line 620
    .end local v0    # "adapterService":Lcom/android/bluetooth/btservice/AdapterService;
    :pswitch_2
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get3(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 621
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const-string/jumbo v2, "current device tries to connect back"

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap8(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 623
    :cond_17
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get13(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get13(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 627
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const-string/jumbo v2, "Stack and target device are connecting"

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap8(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 629
    :cond_18
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get7(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 630
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get7(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 631
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const-string/jumbo v2, "Connecting for same device"

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap9(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 633
    :cond_19
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Processing incoming "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get7(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 634
    const-string/jumbo v3, " Rejecting incoming "

    .line 633
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap8(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    .line 635
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v2, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap4(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap3(Lcom/android/bluetooth/a2dp/A2dpStateMachine;[B)Z

    goto/16 :goto_0

    .line 640
    :cond_1a
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const-string/jumbo v2, "Incoming connection while pending, accept it"

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap8(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    .line 641
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-virtual {v1, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->okToConnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 642
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1, p2, v6, v5}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap6(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 644
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-set2(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    goto/16 :goto_0

    .line 646
    :cond_1b
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v2, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap4(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap3(Lcom/android/bluetooth/a2dp/A2dpStateMachine;[B)Z

    .line 648
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 649
    .restart local v0    # "adapterService":Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    .line 650
    invoke-virtual {v0, p2, v7}, Lcom/android/bluetooth/btservice/AdapterService;->connectOtherProfile(Landroid/bluetooth/BluetoothDevice;I)V

    goto/16 :goto_0

    .line 657
    .end local v0    # "adapterService":Lcom/android/bluetooth/btservice/AdapterService;
    :pswitch_3
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get5(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get5(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 660
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const-string/jumbo v2, "stack is disconnecting mCurrentDevice"

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap8(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 662
    :cond_1c
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get13(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get13(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 663
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const-string/jumbo v2, "TargetDevice is getting disconnected"

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap9(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 664
    :cond_1d
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get7(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get7(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 665
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const-string/jumbo v2, "IncomingDevice is getting disconnected"

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap9(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 667
    :cond_1e
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

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

    .line 433
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private processMultiA2dpDisconnected(Landroid/bluetooth/BluetoothDevice;)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 677
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const-string/jumbo v2, "Pending state: processMultiA2dpDisconnected"

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap8(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    .line 680
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get5(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get5(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 681
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get3(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 682
    .local v0, "deviceSize":I
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get3(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v1

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    invoke-static {v2, v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-set1(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 684
    .end local v0    # "deviceSize":I
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get2(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap14(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/internal/util/IState;)V

    .line 685
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "processMultiA2dpDisconnected , the latest mCurrentDevice is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 686
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get5(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    .line 685
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap8(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    .line 687
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const-string/jumbo v2, "Pending state: processMultiA2dpDisconnected ,fake broadcasting for new mCurrentDevice"

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap8(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    .line 689
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get5(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    const/4 v3, 0x2

    .line 690
    const/4 v4, 0x0

    .line 689
    invoke-static {v1, v2, v3, v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap6(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 676
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Enter Pending: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap1(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/os/Message;

    move-result-object v2

    iget v2, v2, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap8(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    .line 368
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 8
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    .line 374
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Pending process message: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 375
    iget-object v6, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v6}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get3(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 374
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap8(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    .line 377
    const/4 v3, 0x1

    .line 378
    .local v3, "retValue":Z
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 424
    return v7

    .line 380
    :sswitch_0
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v4, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap7(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/os/Message;)V

    .line 426
    :goto_0
    return v3

    .line 384
    :sswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 386
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    const-string/jumbo v4, "A2dpStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "device for timeout is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get13(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 388
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get13(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 394
    :cond_0
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v5, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v6, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v6}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get13(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap4(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap3(Lcom/android/bluetooth/a2dp/A2dpStateMachine;[B)Z

    .line 395
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    .line 396
    iget-object v5, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v6, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v6}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get13(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap4(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v5

    .line 395
    invoke-static {v4, v7, v5}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap12(Lcom/android/bluetooth/a2dp/A2dpStateMachine;I[B)V

    goto :goto_0

    .line 389
    :cond_1
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Timeout for unknown device "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap8(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    .line 390
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    .line 391
    iget-object v5, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v5, v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap4(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v5

    .line 390
    invoke-static {v4, v7, v5}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap12(Lcom/android/bluetooth/a2dp/A2dpStateMachine;I[B)V

    goto :goto_0

    .line 399
    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 400
    .local v0, "dev":Landroid/bluetooth/BluetoothDevice;
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get5(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get13(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 401
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get13(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 400
    if-eqz v4, :cond_2

    .line 403
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    .line 404
    const/4 v5, 0x1

    .line 403
    invoke-static {v4, v0, v7, v5}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap6(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 405
    iget-object v5, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    monitor-enter v5

    .line 406
    :try_start_0
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const/4 v6, 0x0

    invoke-static {v4, v6}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-set4(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    goto/16 :goto_0

    .line 405
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 409
    :cond_2
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v4, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap7(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 413
    .end local v0    # "dev":Landroid/bluetooth/BluetoothDevice;
    :sswitch_3
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;

    .line 414
    .local v2, "event":Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;
    iget v4, v2, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->type:I

    packed-switch v4, :pswitch_data_0

    .line 419
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

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

    .line 416
    :pswitch_0
    iget v4, v2, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->valueInt:I

    iget-object v5, v2, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v4, v5}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->processConnectionEvent(ILandroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 378
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x65 -> :sswitch_3
        0xc9 -> :sswitch_1
    .end sparse-switch

    .line 414
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
