.class Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$IntentBroadcastHandler;
.super Landroid/os/Handler;
.source "A2dpSinkStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IntentBroadcastHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    .prologue
    .line 1061
    iput-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$IntentBroadcastHandler;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$IntentBroadcastHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$IntentBroadcastHandler;-><init>(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)V

    return-void
.end method

.method private onConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "prevState"    # I
    .param p3, "state"    # I

    .prologue
    .line 1064
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.bluetooth.a2dp-sink.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1065
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1066
    const-string/jumbo v1, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1067
    const-string/jumbo v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1069
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$IntentBroadcastHandler;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get6(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1070
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$IntentBroadcastHandler;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Connection state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap9(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V

    .line 1071
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$IntentBroadcastHandler;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get14(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Lcom/android/bluetooth/a2dp/A2dpSinkService;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v1, p1, v2, p3, p2}, Lcom/android/bluetooth/a2dp/A2dpSinkService;->notifyProfileConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;III)V

    .line 1063
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1077
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1076
    :goto_0
    return-void

    .line 1079
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$IntentBroadcastHandler;->onConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;II)V

    .line 1080
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$IntentBroadcastHandler;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get16(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 1077
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
