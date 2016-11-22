.class Lcom/android/bluetooth/opp/BluetoothOppService$2;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothOppService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/BluetoothOppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/bluetooth/opp/BluetoothOppService;

    .prologue
    .line 408
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 411
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 413
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 414
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v1}, Lcom/android/bluetooth/opp/BluetoothOppService;->-get1(Lcom/android/bluetooth/opp/BluetoothOppService;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 410
    :cond_0
    :goto_0
    return-void

    .line 416
    :pswitch_0
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppService;->-get0()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "BtOppService"

    .line 417
    const-string/jumbo v2, "Receiver BLUETOOTH_STATE_CHANGED_ACTION, BLUETOOTH_STATE_ON"

    .line 416
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v1}, Lcom/android/bluetooth/opp/BluetoothOppService;->-get3(Lcom/android/bluetooth/opp/BluetoothOppService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppService;->-get3(Lcom/android/bluetooth/opp/BluetoothOppService;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 421
    :pswitch_1
    const-string/jumbo v1, "BtOppService"

    const-string/jumbo v2, "Receiver BLUETOOTH_STATE_CHANGED_ACTION, STATE_TURNING_OFF"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v1}, Lcom/android/bluetooth/opp/BluetoothOppService;->-get3(Lcom/android/bluetooth/opp/BluetoothOppService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppService;->-get3(Lcom/android/bluetooth/opp/BluetoothOppService;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0xc8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 414
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
