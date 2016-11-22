.class Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$2;
.super Landroid/content/BroadcastReceiver;
.source "A2dpSinkStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    .prologue
    .line 1116
    iput-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$2;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    .line 1119
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1120
    .local v0, "action":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$2;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onReceive  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap9(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V

    .line 1121
    const-string/jumbo v3, "com.android.music.musicservicecommand"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1122
    const-string/jumbo v3, "command"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1123
    .local v1, "cmd":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$2;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Command Received  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap9(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V

    .line 1124
    const-string/jumbo v3, "pause"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1125
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$2;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get7(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1126
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$2;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$2;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v4}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get7(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->SendPassThruPause(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1127
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$2;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    const-string/jumbo v4, " Sending AVRCP Pause"

    invoke-static {v3, v4}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap9(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V

    .line 1132
    :goto_0
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$2;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap16(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)V

    .line 1133
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$2;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get2(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 1134
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$2;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get4(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/media/AudioManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$2;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v4}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get3(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result v2

    .line 1135
    .local v2, "status":I
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$2;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "abandonAudioFocus returned"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap9(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V

    .line 1136
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1137
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$2;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v3, v6}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-set0(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;I)I

    .line 1118
    .end local v1    # "cmd":Ljava/lang/String;
    .end local v2    # "status":I
    :cond_0
    return-void

    .line 1129
    .restart local v1    # "cmd":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$2;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    const-string/jumbo v4, " Sending Disconnect AVRCP Not Up"

    invoke-static {v3, v4}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap9(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V

    .line 1130
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$2;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$2;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    iget-object v5, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$2;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v5}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get7(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap3(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap2(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;[B)Z

    goto :goto_0
.end method
