.class Lcom/android/bluetooth/hfp/HeadsetService$1;
.super Landroid/content/BroadcastReceiver;
.source "HeadsetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/hfp/HeadsetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/hfp/HeadsetService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/hfp/HeadsetService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/bluetooth/hfp/HeadsetService;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetService$1;->this$0:Lcom/android/bluetooth/hfp/HeadsetService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x2

    .line 103
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 105
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetService$1;->this$0:Lcom/android/bluetooth/hfp/HeadsetService;

    invoke-static {v3}, Lcom/android/bluetooth/hfp/HeadsetService;->-get1(Lcom/android/bluetooth/hfp/HeadsetService;)Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    const-string/jumbo v3, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 107
    const-string/jumbo v3, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 108
    .local v2, "streamType":I
    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    .line 109
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetService$1;->this$0:Lcom/android/bluetooth/hfp/HeadsetService;

    invoke-static {v3}, Lcom/android/bluetooth/hfp/HeadsetService;->-get1(Lcom/android/bluetooth/hfp/HeadsetService;)Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    move-result-object v3

    const/4 v4, 0x7

    invoke-virtual {v3, v4, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 112
    .end local v2    # "streamType":I
    :cond_2
    const-string/jumbo v3, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 113
    const-string/jumbo v3, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 115
    .local v1, "requestType":I
    if-ne v1, v4, :cond_3

    .line 116
    const-string/jumbo v3, "HeadsetService"

    const-string/jumbo v4, "Received BluetoothDevice.ACTION_CONNECTION_ACCESS_REPLY"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetService$1;->this$0:Lcom/android/bluetooth/hfp/HeadsetService;

    invoke-static {v3}, Lcom/android/bluetooth/hfp/HeadsetService;->-get1(Lcom/android/bluetooth/hfp/HeadsetService;)Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->handleAccessPermissionResult(Landroid/content/Intent;)V

    .line 119
    :cond_3
    const-string/jumbo v3, "HeadsetService"

    const-string/jumbo v4, "HeadsetService -  Received BluetoothDevice.ACTION_CONNECTION_ACCESS_REPLY"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetService$1;->this$0:Lcom/android/bluetooth/hfp/HeadsetService;

    invoke-static {v3}, Lcom/android/bluetooth/hfp/HeadsetService;->-get1(Lcom/android/bluetooth/hfp/HeadsetService;)Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->handleAccessPermissionResult(Landroid/content/Intent;)V

    goto :goto_0

    .line 121
    .end local v1    # "requestType":I
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "android.bluetooth.a2dp.profile.action.PLAYING_STATE_CHANGED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 122
    const-string/jumbo v3, "HeadsetService"

    const-string/jumbo v4, "HeadsetService -  Received BluetoothA2dp Play State changed"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetService$1;->this$0:Lcom/android/bluetooth/hfp/HeadsetService;

    invoke-static {v3}, Lcom/android/bluetooth/hfp/HeadsetService;->-get1(Lcom/android/bluetooth/hfp/HeadsetService;)Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    move-result-object v3

    const/16 v4, 0x12

    invoke-virtual {v3, v4, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 124
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 125
    const-string/jumbo v3, "HeadsetService"

    const-string/jumbo v4, "HeadsetService -  Received BluetoothA2dp Conn State changed"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetService$1;->this$0:Lcom/android/bluetooth/hfp/HeadsetService;

    invoke-static {v3}, Lcom/android/bluetooth/hfp/HeadsetService;->-get1(Lcom/android/bluetooth/hfp/HeadsetService;)Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    move-result-object v3

    const/16 v4, 0x13

    invoke-virtual {v3, v4, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0
.end method
