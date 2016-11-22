.class Lcom/android/bluetooth/opp/BluetoothOppTransfer$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothOppTransfer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/BluetoothOppTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    .prologue
    .line 492
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 495
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 496
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v3, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 497
    const-string/jumbo v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 498
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    if-nez v1, :cond_0

    .line 499
    const-string/jumbo v3, "BtOppTransfer"

    const-string/jumbo v4, "Receive ACTION_ACL_DISCONNECTED, device null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    return-void

    .line 503
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get0()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "BtOppTransfer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ACTION_ACL_DISCONNECTED for device "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 504
    const-string/jumbo v5, "- OPP device: "

    .line 503
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 504
    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v5}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get1(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppBatch;

    move-result-object v5

    iget-object v5, v5, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDestination:Landroid/bluetooth/BluetoothDevice;

    .line 503
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    :cond_1
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get0()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "BtOppTransfer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mCurrentShare.mConfirm == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v5}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get4(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object v5

    iget v5, v5, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mConfirm:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    :cond_2
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v3}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get1(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppBatch;

    move-result-object v3

    iget-object v3, v3, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDestination:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 507
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v3}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get4(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object v3

    iget v3, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mConfirm:I

    if-nez v3, :cond_4

    .line 508
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get0()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v3, "BtOppTransfer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ACTION_ACL_DISCONNECTED to be processed for batch: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 509
    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v5}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get1(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppBatch;

    move-result-object v5

    iget v5, v5, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mId:I

    .line 508
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    :cond_3
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v3}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get6(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->removeMessages(I)V

    .line 513
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v3}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get6(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v4}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get6(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;

    move-result-object v4

    .line 514
    const/4 v5, 0x4

    .line 513
    invoke-virtual {v4, v5}, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 494
    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_4
    :goto_0
    return-void

    .line 516
    .restart local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    :catch_0
    move-exception v2

    .line 517
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
