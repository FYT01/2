.class Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;
.super Lcom/android/internal/util/State;
.source "A2dpSinkStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Pending"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    .prologue
    .line 459
    iput-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;-><init>(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)V

    return-void
.end method

.method private processConnectionEvent(ILandroid/bluetooth/BluetoothDevice;)V
    .locals 7
    .param p1, "state"    # I
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v3, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 519
    packed-switch p1, :pswitch_data_0

    .line 648
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

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

    .line 518
    :cond_0
    :goto_0
    return-void

    .line 521
    :pswitch_0
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get1(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get7(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get7(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 523
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get7(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-static {v1, v2, v5, v3}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap6(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 526
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    monitor-enter v2

    .line 527
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-set1(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 530
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get15(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 531
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get15(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap3(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap1(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;[B)Z

    move-result v1

    if-nez v1, :cond_0

    .line 532
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get15(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-static {v1, v2, v5, v4}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap6(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 535
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    monitor-enter v2

    .line 536
    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-set6(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 537
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get8(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap19(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Lcom/android/internal/util/IState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    monitor-exit v2

    goto :goto_0

    .line 526
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 535
    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1

    .line 541
    :cond_1
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    monitor-enter v2

    .line 542
    :try_start_2
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-set3(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 543
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get8(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap19(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Lcom/android/internal/util/IState;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    .line 541
    :catchall_2
    move-exception v1

    monitor-exit v2

    throw v1

    .line 546
    :cond_2
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get15(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get15(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 548
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get15(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-static {v1, v2, v5, v4}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap6(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 550
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    monitor-enter v2

    .line 551
    :try_start_3
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-set6(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 552
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get8(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap19(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Lcom/android/internal/util/IState;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_1

    .line 550
    :catchall_3
    move-exception v1

    monitor-exit v2

    throw v1

    .line 554
    :cond_3
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get10(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get10(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 555
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get10(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-static {v1, v2, v5, v4}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap6(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 558
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    monitor-enter v2

    .line 559
    :try_start_4
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-set3(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 560
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get8(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap19(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Lcom/android/internal/util/IState;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto/16 :goto_1

    .line 558
    :catchall_4
    move-exception v1

    monitor-exit v2

    throw v1

    .line 563
    :cond_4
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown device Disconnected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap10(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 567
    :pswitch_1
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get7(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get7(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 569
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get7(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-static {v1, v2, v6, v3}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap6(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 571
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get15(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 572
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get15(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-static {v1, v2, v5, v4}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap6(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 575
    :cond_5
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    monitor-enter v2

    .line 576
    :try_start_5
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-set6(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 577
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get5(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap19(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Lcom/android/internal/util/IState;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    :goto_2
    monitor-exit v2

    .line 608
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 609
    .local v0, "adapterService":Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    .line 610
    invoke-virtual {v0, p2, v4}, Lcom/android/bluetooth/btservice/AdapterService;->connectOtherProfile(Landroid/bluetooth/BluetoothDevice;I)V

    goto/16 :goto_0

    .line 575
    .end local v0    # "adapterService":Lcom/android/bluetooth/btservice/AdapterService;
    :catchall_5
    move-exception v1

    monitor-exit v2

    throw v1

    .line 579
    :cond_6
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get15(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get15(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 580
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get15(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-static {v1, v2, v6, v4}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap6(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 582
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    monitor-enter v2

    .line 583
    :try_start_6
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get15(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-set1(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 584
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-set6(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 585
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get5(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap19(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Lcom/android/internal/util/IState;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    goto :goto_2

    .line 582
    :catchall_6
    move-exception v1

    monitor-exit v2

    throw v1

    .line 587
    :cond_7
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get10(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get10(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 588
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get10(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-static {v1, v2, v6, v4}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap6(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 590
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    monitor-enter v2

    .line 591
    :try_start_7
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get10(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-set1(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 592
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-set3(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 593
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get5(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap19(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Lcom/android/internal/util/IState;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    goto/16 :goto_2

    .line 590
    :catchall_7
    move-exception v1

    monitor-exit v2

    throw v1

    .line 596
    :cond_8
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown device Connected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap10(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V

    .line 598
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v1, p2, v6, v5}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap6(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 600
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    monitor-enter v2

    .line 601
    :try_start_8
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v1, p2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-set1(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 602
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-set6(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 603
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-set3(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 604
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get5(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap19(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Lcom/android/internal/util/IState;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    goto/16 :goto_2

    .line 600
    :catchall_8
    move-exception v1

    monitor-exit v2

    throw v1

    .line 616
    :pswitch_2
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get7(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get7(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 617
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    const-string/jumbo v2, "current device tries to connect back"

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap9(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 619
    :cond_9
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get15(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get15(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 623
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    const-string/jumbo v2, "Stack and target device are connecting"

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap9(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 625
    :cond_a
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get10(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get10(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 626
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    const-string/jumbo v2, "Another connecting event on the incoming device"

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap10(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 630
    :cond_b
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    const-string/jumbo v2, "Incoming connection while pending, ignore"

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap9(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 634
    :pswitch_3
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get7(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get7(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 637
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    const-string/jumbo v2, "stack is disconnecting mCurrentDevice"

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap9(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 639
    :cond_c
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get15(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get15(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 640
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    const-string/jumbo v2, "TargetDevice is getting disconnected"

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap10(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 641
    :cond_d
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get10(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get10(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 642
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    const-string/jumbo v2, "IncomingDevice is getting disconnected"

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap10(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 644
    :cond_e
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Disconnecting unknown device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap10(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 519
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 462
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Enter Pending: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap0(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/os/Message;

    move-result-object v2

    iget v2, v2, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap9(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V

    .line 466
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap17(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;I)V

    .line 461
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    .line 471
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Pending process message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap9(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V

    .line 473
    const/4 v2, 0x1

    .line 474
    .local v2, "retValue":Z
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 512
    return v6

    .line 476
    :sswitch_0
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v3, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap7(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/os/Message;)V

    .line 514
    :goto_0
    return v2

    .line 479
    :sswitch_1
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    .line 480
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    iget-object v5, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v5}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get15(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap3(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v4

    .line 479
    invoke-static {v3, v6, v4}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap13(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;I[B)V

    goto :goto_0

    .line 483
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 484
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get7(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get15(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 485
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get15(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 484
    if-eqz v3, :cond_0

    .line 487
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    .line 488
    const/4 v4, 0x1

    .line 487
    invoke-static {v3, v0, v6, v4}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap6(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 489
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    monitor-enter v4

    .line 490
    :try_start_0
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    const/4 v5, 0x0

    invoke-static {v3, v5}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-set6(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    goto :goto_0

    .line 489
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 493
    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v3, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap7(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/os/Message;)V

    goto :goto_0

    .line 497
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    :sswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$StackEvent;

    .line 498
    .local v1, "event":Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$StackEvent;
    iget v3, v1, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$StackEvent;->type:I

    packed-switch v3, :pswitch_data_0

    .line 507
    :pswitch_0
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

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

    .line 500
    :pswitch_1
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    const/16 v4, 0xc9

    invoke-static {v3, v4}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap17(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;I)V

    .line 501
    iget v3, v1, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$StackEvent;->valueInt:I

    iget-object v4, v1, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v3, v4}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->processConnectionEvent(ILandroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 504
    :pswitch_2
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    iget-object v4, v1, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$StackEvent;->audioConfig:Landroid/bluetooth/BluetoothAudioConfig;

    iget-object v5, v1, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v3, v4, v5}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap15(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothAudioConfig;Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 474
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x65 -> :sswitch_3
        0xc9 -> :sswitch_1
    .end sparse-switch

    .line 498
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
