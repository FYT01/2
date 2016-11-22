.class Lcom/android/bluetooth/sap/SapService$SapBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SapService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/sap/SapService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SapBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/sap/SapService;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/sap/SapService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/bluetooth/sap/SapService;

    .prologue
    .line 771
    iput-object p1, p0, Lcom/android/bluetooth/sap/SapService$SapBroadcastReceiver;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/sap/SapService;Lcom/android/bluetooth/sap/SapService$SapBroadcastReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/bluetooth/sap/SapService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/sap/SapService$SapBroadcastReceiver;-><init>(Lcom/android/bluetooth/sap/SapService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v10, 0x1388

    const/4 v9, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 775
    sget-boolean v5, Lcom/android/bluetooth/sap/SapService;->VERBOSE:Z

    if-eqz v5, :cond_0

    const-string/jumbo v5, "SapService"

    const-string/jumbo v6, "onReceive"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 777
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v5, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 778
    const-string/jumbo v5, "android.bluetooth.adapter.extra.STATE"

    .line 779
    const/high16 v6, -0x80000000

    .line 778
    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 780
    .local v4, "state":I
    const/16 v5, 0xd

    if-ne v4, v5, :cond_3

    .line 781
    sget-boolean v5, Lcom/android/bluetooth/sap/SapService;->DEBUG:Z

    if-eqz v5, :cond_1

    const-string/jumbo v5, "SapService"

    const-string/jumbo v6, "STATE_TURNING_OFF"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    :cond_1
    iget-object v5, p0, Lcom/android/bluetooth/sap/SapService$SapBroadcastReceiver;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {v5}, Lcom/android/bluetooth/sap/SapService;->-wrap6(Lcom/android/bluetooth/sap/SapService;)V

    .line 773
    .end local v4    # "state":I
    :cond_2
    :goto_0
    return-void

    .line 783
    .restart local v4    # "state":I
    :cond_3
    const/16 v5, 0xc

    if-ne v4, v5, :cond_2

    .line 784
    sget-boolean v5, Lcom/android/bluetooth/sap/SapService;->DEBUG:Z

    if-eqz v5, :cond_4

    const-string/jumbo v5, "SapService"

    const-string/jumbo v6, "STATE_ON"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    :cond_4
    iget-object v5, p0, Lcom/android/bluetooth/sap/SapService$SapBroadcastReceiver;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {v5}, Lcom/android/bluetooth/sap/SapService;->-get6(Lcom/android/bluetooth/sap/SapService;)Lcom/android/bluetooth/sap/SapService$SapServiceMessageHandler;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 787
    iget-object v5, p0, Lcom/android/bluetooth/sap/SapService$SapBroadcastReceiver;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {v5}, Lcom/android/bluetooth/sap/SapService;->-get6(Lcom/android/bluetooth/sap/SapService;)Lcom/android/bluetooth/sap/SapService$SapServiceMessageHandler;

    move-result-object v5

    iget-object v6, p0, Lcom/android/bluetooth/sap/SapService$SapBroadcastReceiver;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {v6}, Lcom/android/bluetooth/sap/SapService;->-get6(Lcom/android/bluetooth/sap/SapService;)Lcom/android/bluetooth/sap/SapService$SapServiceMessageHandler;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/android/bluetooth/sap/SapService$SapServiceMessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/bluetooth/sap/SapService$SapServiceMessageHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 790
    .end local v4    # "state":I
    :cond_5
    const-string/jumbo v5, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 791
    sget-boolean v5, Lcom/android/bluetooth/sap/SapService;->DEBUG:Z

    if-eqz v5, :cond_6

    const-string/jumbo v5, "SapService"

    const-string/jumbo v6, " - Received BluetoothDevice.ACTION_CONNECTION_ACCESS_REPLY"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    :cond_6
    iget-object v5, p0, Lcom/android/bluetooth/sap/SapService$SapBroadcastReceiver;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {v5}, Lcom/android/bluetooth/sap/SapService;->-get2(Lcom/android/bluetooth/sap/SapService;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 794
    return-void

    .line 797
    :cond_7
    iget-object v5, p0, Lcom/android/bluetooth/sap/SapService$SapBroadcastReceiver;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {v5, v8}, Lcom/android/bluetooth/sap/SapService;->-set1(Lcom/android/bluetooth/sap/SapService;Z)Z

    .line 799
    const-string/jumbo v5, "android.bluetooth.device.extra.CONNECTION_ACCESS_RESULT"

    invoke-virtual {p2, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v7, :cond_a

    .line 803
    const-string/jumbo v5, "android.bluetooth.device.extra.ALWAYS_ALLOWED"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 804
    iget-object v5, p0, Lcom/android/bluetooth/sap/SapService$SapBroadcastReceiver;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {v5}, Lcom/android/bluetooth/sap/SapService;->-get3(Lcom/android/bluetooth/sap/SapService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/bluetooth/BluetoothDevice;->setSimAccessPermission(I)Z

    move-result v3

    .line 806
    .local v3, "result":Z
    sget-boolean v5, Lcom/android/bluetooth/sap/SapService;->VERBOSE:Z

    if-eqz v5, :cond_8

    .line 807
    const-string/jumbo v5, "SapService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setSimAccessPermission(ACCESS_ALLOWED) result="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    .end local v3    # "result":Z
    :cond_8
    :try_start_0
    iget-object v5, p0, Lcom/android/bluetooth/sap/SapService$SapBroadcastReceiver;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {v5}, Lcom/android/bluetooth/sap/SapService;->-get1(Lcom/android/bluetooth/sap/SapService;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 812
    iget-object v5, p0, Lcom/android/bluetooth/sap/SapService$SapBroadcastReceiver;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {v5}, Lcom/android/bluetooth/sap/SapService;->-wrap10(Lcom/android/bluetooth/sap/SapService;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 816
    :catch_0
    move-exception v2

    .line 817
    .local v2, "ex":Ljava/io/IOException;
    const-string/jumbo v5, "SapService"

    const-string/jumbo v6, "Caught the error: "

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 814
    .end local v2    # "ex":Ljava/io/IOException;
    :cond_9
    :try_start_1
    iget-object v5, p0, Lcom/android/bluetooth/sap/SapService$SapBroadcastReceiver;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {v5}, Lcom/android/bluetooth/sap/SapService;->-wrap11(Lcom/android/bluetooth/sap/SapService;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 820
    :cond_a
    const-string/jumbo v5, "android.bluetooth.device.extra.ALWAYS_ALLOWED"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 821
    iget-object v5, p0, Lcom/android/bluetooth/sap/SapService$SapBroadcastReceiver;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {v5}, Lcom/android/bluetooth/sap/SapService;->-get3(Lcom/android/bluetooth/sap/SapService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/bluetooth/BluetoothDevice;->setSimAccessPermission(I)Z

    move-result v3

    .line 823
    .restart local v3    # "result":Z
    sget-boolean v5, Lcom/android/bluetooth/sap/SapService;->VERBOSE:Z

    if-eqz v5, :cond_b

    .line 824
    const-string/jumbo v5, "SapService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setSimAccessPermission(ACCESS_REJECTED) result="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    .end local v3    # "result":Z
    :cond_b
    iget-object v5, p0, Lcom/android/bluetooth/sap/SapService$SapBroadcastReceiver;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {v5}, Lcom/android/bluetooth/sap/SapService;->-get6(Lcom/android/bluetooth/sap/SapService;)Lcom/android/bluetooth/sap/SapService$SapServiceMessageHandler;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 830
    iget-object v5, p0, Lcom/android/bluetooth/sap/SapService$SapBroadcastReceiver;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {v5}, Lcom/android/bluetooth/sap/SapService;->-get6(Lcom/android/bluetooth/sap/SapService;)Lcom/android/bluetooth/sap/SapService$SapServiceMessageHandler;

    move-result-object v5

    invoke-virtual {v5, v10}, Lcom/android/bluetooth/sap/SapService$SapServiceMessageHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 832
    :cond_c
    const-string/jumbo v5, "com.android.bluetooth.sap.USER_CONFIRM_TIMEOUT"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 833
    sget-boolean v5, Lcom/android/bluetooth/sap/SapService;->DEBUG:Z

    if-eqz v5, :cond_d

    const-string/jumbo v5, "SapService"

    const-string/jumbo v6, "USER_CONFIRM_TIMEOUT ACTION Received."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    :cond_d
    iget-object v5, p0, Lcom/android/bluetooth/sap/SapService$SapBroadcastReceiver;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {v5}, Lcom/android/bluetooth/sap/SapService;->-wrap5(Lcom/android/bluetooth/sap/SapService;)V

    goto/16 :goto_0

    .line 836
    :cond_e
    const-string/jumbo v5, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 837
    iget-object v5, p0, Lcom/android/bluetooth/sap/SapService$SapBroadcastReceiver;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {v5}, Lcom/android/bluetooth/sap/SapService;->-get2(Lcom/android/bluetooth/sap/SapService;)Z

    move-result v5

    .line 836
    if-eqz v5, :cond_2

    .line 838
    const-string/jumbo v5, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 840
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v5, p0, Lcom/android/bluetooth/sap/SapService$SapBroadcastReceiver;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {v5}, Lcom/android/bluetooth/sap/SapService;->-get3(Lcom/android/bluetooth/sap/SapService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    if-eqz v5, :cond_f

    if-nez v1, :cond_10

    .line 841
    :cond_f
    const-string/jumbo v5, "SapService"

    const-string/jumbo v6, "Unexpected error!"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    return-void

    .line 845
    :cond_10
    sget-boolean v5, Lcom/android/bluetooth/sap/SapService;->DEBUG:Z

    if-eqz v5, :cond_11

    const-string/jumbo v5, "SapService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ACL disconnected for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    :cond_11
    iget-object v5, p0, Lcom/android/bluetooth/sap/SapService$SapBroadcastReceiver;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {v5}, Lcom/android/bluetooth/sap/SapService;->-get3(Lcom/android/bluetooth/sap/SapService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 848
    iget-object v5, p0, Lcom/android/bluetooth/sap/SapService$SapBroadcastReceiver;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {v5}, Lcom/android/bluetooth/sap/SapService;->-get4(Lcom/android/bluetooth/sap/SapService;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 850
    iget-object v5, p0, Lcom/android/bluetooth/sap/SapService$SapBroadcastReceiver;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {v5}, Lcom/android/bluetooth/sap/SapService;->-wrap2(Lcom/android/bluetooth/sap/SapService;)V

    .line 851
    iget-object v5, p0, Lcom/android/bluetooth/sap/SapService$SapBroadcastReceiver;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {v5}, Lcom/android/bluetooth/sap/SapService;->-get6(Lcom/android/bluetooth/sap/SapService;)Lcom/android/bluetooth/sap/SapService$SapServiceMessageHandler;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/android/bluetooth/sap/SapService$SapServiceMessageHandler;->removeMessages(I)V

    .line 852
    iget-object v5, p0, Lcom/android/bluetooth/sap/SapService$SapBroadcastReceiver;->this$0:Lcom/android/bluetooth/sap/SapService;

    iget-object v6, p0, Lcom/android/bluetooth/sap/SapService$SapBroadcastReceiver;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {v6}, Lcom/android/bluetooth/sap/SapService;->-get3(Lcom/android/bluetooth/sap/SapService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/bluetooth/sap/SapService;->-wrap4(Lcom/android/bluetooth/sap/SapService;Landroid/bluetooth/BluetoothDevice;)V

    .line 853
    iget-object v5, p0, Lcom/android/bluetooth/sap/SapService$SapBroadcastReceiver;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {v5, v8}, Lcom/android/bluetooth/sap/SapService;->-set3(Lcom/android/bluetooth/sap/SapService;Z)Z

    .line 855
    :cond_12
    iget-object v5, p0, Lcom/android/bluetooth/sap/SapService$SapBroadcastReceiver;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {v5, v8}, Lcom/android/bluetooth/sap/SapService;->-set1(Lcom/android/bluetooth/sap/SapService;Z)Z

    .line 856
    iget-object v5, p0, Lcom/android/bluetooth/sap/SapService$SapBroadcastReceiver;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {v5, v8}, Lcom/android/bluetooth/sap/SapService;->-wrap7(Lcom/android/bluetooth/sap/SapService;I)V

    .line 858
    iget-object v5, p0, Lcom/android/bluetooth/sap/SapService$SapBroadcastReceiver;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {v5}, Lcom/android/bluetooth/sap/SapService;->-get6(Lcom/android/bluetooth/sap/SapService;)Lcom/android/bluetooth/sap/SapService$SapServiceMessageHandler;

    move-result-object v5

    invoke-virtual {v5, v10}, Lcom/android/bluetooth/sap/SapService$SapServiceMessageHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method
