.class Lcom/android/bluetooth/pbap/BluetoothPbapService$1;
.super Landroid/os/Handler;
.source "BluetoothPbapService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/pbap/BluetoothPbapService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/bluetooth/pbap/BluetoothPbapService;

    .prologue
    .line 681
    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v8, 0x138d

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 684
    sget-boolean v3, Lcom/android/bluetooth/pbap/BluetoothPbapService;->VERBOSE:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "BluetoothPbapService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Handler(): got msg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    :cond_0
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 683
    :cond_1
    :goto_0
    :sswitch_0
    return-void

    .line 688
    :sswitch_1
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-static {v3}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->-get0(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 689
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-static {v3}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->-wrap8(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V

    goto :goto_0

    .line 691
    :cond_2
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-static {v3}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->-wrap2(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V

    goto :goto_0

    .line 695
    :sswitch_2
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.bluetooth.device.action.CONNECTION_ACCESS_CANCEL"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 696
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "android.bluetooth.device.extra.DEVICE"

    iget-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-static {v4}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->-get2(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 697
    const-string/jumbo v3, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    .line 698
    const/4 v4, 0x2

    .line 697
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 699
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-virtual {v3, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->sendBroadcast(Landroid/content/Intent;)V

    .line 700
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-static {v3, v7}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->-set1(Lcom/android/bluetooth/pbap/BluetoothPbapService;Z)Z

    .line 701
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-static {v3}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->-wrap9(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V

    goto :goto_0

    .line 704
    .end local v1    # "intent":Landroid/content/Intent;
    :sswitch_3
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "com.android.bluetooth.pbap.userconfirmtimeout"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 705
    .local v0, "i":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-virtual {v3, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->sendBroadcast(Landroid/content/Intent;)V

    .line 706
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    const v4, -0xf4242

    invoke-static {v3, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->-wrap5(Lcom/android/bluetooth/pbap/BluetoothPbapService;I)V

    .line 707
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-static {v3}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->-wrap4(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V

    goto :goto_0

    .line 710
    .end local v0    # "i":Landroid/content/Intent;
    :sswitch_4
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-static {v3}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->-wrap9(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V

    goto :goto_0

    .line 718
    :sswitch_5
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    const-string/jumbo v4, "com.android.bluetooth.pbap.authchall"

    invoke-static {v3, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->-wrap3(Lcom/android/bluetooth/pbap/BluetoothPbapService;Ljava/lang/String;)V

    .line 719
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-static {v3}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->-get5(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-static {v4}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->-get5(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/os/Handler;

    move-result-object v4

    .line 720
    const/4 v5, 0x3

    .line 719
    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 720
    const-wide/16 v6, 0x7530

    .line 719
    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 723
    :sswitch_6
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-static {v3}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->-get7(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    if-nez v3, :cond_3

    .line 724
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    .line 725
    const-string/jumbo v4, "power"

    .line 724
    invoke-virtual {v3, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 726
    .local v2, "pm":Landroid/os/PowerManager;
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    .line 727
    const-string/jumbo v4, "StartingObexPbapTransaction"

    .line 726
    const/4 v5, 0x1

    invoke-virtual {v2, v5, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->-set4(Lcom/android/bluetooth/pbap/BluetoothPbapService;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;

    .line 728
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-static {v3}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->-get7(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 729
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-static {v3}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->-get7(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 730
    const-string/jumbo v3, "BluetoothPbapService"

    const-string/jumbo v4, "Acquire Wake Lock"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    .end local v2    # "pm":Landroid/os/PowerManager;
    :cond_3
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-static {v3}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->-get5(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 733
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-static {v3}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->-get5(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-static {v4}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->-get5(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 734
    const-wide/16 v6, 0x2710

    .line 733
    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 737
    :sswitch_7
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-static {v3}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->-get7(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 738
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-static {v3}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->-get7(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 739
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-static {v3, v6}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->-set4(Lcom/android/bluetooth/pbap/BluetoothPbapService;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;

    .line 740
    const-string/jumbo v3, "BluetoothPbapService"

    const-string/jumbo v4, "Release Wake Lock"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 686
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x1388 -> :sswitch_4
        0x1389 -> :sswitch_0
        0x138a -> :sswitch_0
        0x138b -> :sswitch_5
        0x138c -> :sswitch_6
        0x138d -> :sswitch_7
    .end sparse-switch
.end method
