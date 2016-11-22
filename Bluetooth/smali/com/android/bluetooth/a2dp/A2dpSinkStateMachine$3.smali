.class Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$3;
.super Ljava/lang/Object;
.source "A2dpSinkStateMachine.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


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
    .line 1146
    iput-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$3;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 7
    .param p1, "focusChange"    # I

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1148
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$3;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onAudioFocusChangeListener focuschange "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap9(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V

    .line 1149
    packed-switch p1, :pswitch_data_0

    .line 1147
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1151
    :pswitch_1
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$3;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get7(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1153
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$3;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$3;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get7(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->SendPassThruPause(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1154
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$3;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    const-string/jumbo v2, " Sending AVRCP Pause"

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap9(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V

    .line 1160
    :goto_1
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$3;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v1, v4}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap8(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;I)V

    .line 1161
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$3;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get4(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/media/AudioManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$3;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get3(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result v0

    .line 1162
    .local v0, "status":I
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$3;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "abandonAudioFocus returned"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap9(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V

    .line 1163
    if-ne v0, v5, :cond_0

    .line 1164
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$3;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v1, v4}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-set0(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;I)I

    goto :goto_0

    .line 1156
    .end local v0    # "status":I
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$3;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    const-string/jumbo v2, " Sending Disconnect AVRCP Not Up"

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap9(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V

    .line 1157
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$3;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$3;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$3;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get7(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap3(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap2(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;[B)Z

    goto :goto_1

    .line 1169
    :pswitch_2
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$3;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get7(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$3;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap4(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$3;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get5(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 1171
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$3;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-set0(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;I)I

    .line 1172
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$3;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$3;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get7(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->SendPassThruPause(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1173
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$3;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    const-string/jumbo v2, " Sending AVRCP Pause"

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap9(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V

    .line 1180
    :goto_2
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$3;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v1, v4}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap8(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;I)V

    goto/16 :goto_0

    .line 1175
    :cond_2
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$3;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    const-string/jumbo v2, " AVRCP Connection not UP"

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap9(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V

    .line 1176
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$3;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$3;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$3;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get7(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap3(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap2(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;[B)Z

    goto :goto_2

    .line 1184
    :pswitch_3
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$3;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    const-string/jumbo v2, " Received AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK "

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap9(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V

    .line 1185
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$3;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v1, v6}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-set0(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;I)I

    goto/16 :goto_0

    .line 1189
    :pswitch_4
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$3;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get7(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$3;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap4(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$3;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get5(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 1190
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$3;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get2(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)I

    move-result v1

    if-ne v1, v6, :cond_3

    .line 1191
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$3;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    const-string/jumbo v2, " Received Can_Duck earlier, Ignore Now "

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap9(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V

    .line 1192
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$3;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v1, v5}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-set0(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;I)I

    goto/16 :goto_0

    .line 1195
    :cond_3
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$3;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v1, v5}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-set0(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;I)I

    .line 1196
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$3;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$3;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get7(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->SendPassThruPlay(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1197
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$3;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    const-string/jumbo v2, " Sending AVRCP Play"

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap9(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V

    .line 1203
    :goto_3
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$3;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v1, v6}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap8(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;I)V

    goto/16 :goto_0

    .line 1199
    :cond_4
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$3;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    const-string/jumbo v2, " AVRCP Connection not up"

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap9(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V

    goto :goto_3

    .line 1149
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
