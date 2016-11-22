.class Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;
.super Lcom/android/internal/util/State;
.source "HeadsetStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/hfp/HeadsetStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiHFPending"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .prologue
    .line 1799
    iput-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;-><init>(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)V

    return-void
.end method

.method private processAudioEvent(ILandroid/bluetooth/BluetoothDevice;)V
    .locals 6
    .param p1, "state"    # I
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v5, 0x1

    const/16 v4, 0xc

    const/16 v1, 0xb

    const/4 v3, 0x0

    const/16 v2, 0xa

    .line 2221
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get8(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2222
    const-string/jumbo v0, "HeadsetStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Audio changed on disconnected device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2223
    return-void

    .line 2226
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 2275
    const-string/jumbo v0, "HeadsetStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Audio State Device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " bad state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2220
    :cond_1
    :goto_0
    return-void

    .line 2228
    :pswitch_0
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-wrap9(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2229
    const-string/jumbo v0, "HeadsetStateMachine"

    const-string/jumbo v1, "Audio Connected without any listener"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2230
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v1, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-wrap11(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-wrap6(Lcom/android/bluetooth/hfp/HeadsetStateMachine;[B)Z

    goto :goto_0

    .line 2233
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0, v4}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-set2(Lcom/android/bluetooth/hfp/HeadsetStateMachine;I)I

    .line 2234
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-wrap44(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)V

    .line 2235
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get4(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 2236
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-set1(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 2237
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0, p2, v4, v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-wrap13(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_0

    .line 2244
    :pswitch_1
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0, v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-set2(Lcom/android/bluetooth/hfp/HeadsetStateMachine;I)I

    .line 2245
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0, p2, v1, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-wrap13(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_0

    .line 2249
    :pswitch_2
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get6(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 2250
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-set2(Lcom/android/bluetooth/hfp/HeadsetStateMachine;I)I

    .line 2251
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get4(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2254
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get4(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 2255
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get4(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 2259
    :goto_1
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get2(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2260
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-wrap8(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get20(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2261
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const-string/jumbo v1, "Audio is closed,Set A2dpSuspended=false"

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    .line 2262
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get4(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/media/AudioManager;

    move-result-object v0

    const-string/jumbo v1, "A2dpSuspended=false"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 2263
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-set0(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Z)Z

    .line 2266
    :cond_3
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0, p2, v2, v4}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-wrap13(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    goto/16 :goto_0

    .line 2257
    :cond_4
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get4(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    goto :goto_1

    .line 2226
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private processConnectionEvent(ILandroid/bluetooth/BluetoothDevice;)V
    .locals 9
    .param p1, "state"    # I
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/16 v8, 0xc

    const/4 v7, 0x1

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 2028
    const-string/jumbo v1, "HeadsetStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "processConnectionEvent state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2029
    const-string/jumbo v3, ", device = "

    .line 2028
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2030
    packed-switch p1, :pswitch_data_0

    .line 2215
    const-string/jumbo v1, "HeadsetStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Incorrect state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2027
    :cond_0
    :goto_0
    return-void

    .line 2032
    :pswitch_0
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get8(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2033
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get15(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 2034
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get15(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 2033
    if-eqz v1, :cond_4

    .line 2035
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v1, v4}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-set6(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 2037
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    monitor-enter v2

    .line 2038
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get8(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2039
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get12(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2040
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get13(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2041
    const-string/jumbo v1, "HeadsetStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "device "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2042
    const-string/jumbo v4, " is removed in MultiHFPending state"

    .line 2041
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2043
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .line 2044
    const/4 v3, 0x0

    .line 2045
    const/4 v4, 0x3

    .line 2043
    invoke-static {v1, p2, v3, v4}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-wrap14(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 2048
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get24(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2049
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get24(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-wrap11(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-wrap5(Lcom/android/bluetooth/hfp/HeadsetStateMachine;[B)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2051
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get24(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-static {v1, v2, v5, v7}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-wrap14(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 2054
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    monitor-enter v2

    .line 2055
    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-set9(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 2056
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get8(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 2059
    const-string/jumbo v1, "HeadsetStateMachine"

    const-string/jumbo v3, "Should be not in this state, error handling"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2060
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get11(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-wrap45(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/internal/util/IState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    monitor-exit v2

    goto/16 :goto_0

    .line 2037
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 2063
    :cond_1
    :try_start_2
    invoke-direct {p0, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->processMultiHFDisconnect(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 2054
    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1

    .line 2068
    :cond_2
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    monitor-enter v2

    .line 2069
    :try_start_3
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-set5(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 2070
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get8(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 2071
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get11(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-wrap45(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/internal/util/IState;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    .line 2068
    :catchall_2
    move-exception v1

    monitor-exit v2

    throw v1

    .line 2074
    :cond_3
    :try_start_4
    invoke-direct {p0, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->processMultiHFDisconnect(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    .line 2080
    :cond_4
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    monitor-enter v2

    .line 2081
    :try_start_5
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get8(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2082
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get12(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2083
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get13(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2085
    const-string/jumbo v1, "HeadsetStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "device "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2086
    const-string/jumbo v4, " is removed in MultiHFPending state"

    .line 2085
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    monitor-exit v2

    .line 2088
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v1, p2, v5, v6}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-wrap14(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    goto/16 :goto_0

    .line 2080
    :catchall_3
    move-exception v1

    monitor-exit v2

    throw v1

    .line 2092
    :cond_5
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get24(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get24(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2093
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get22(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get24(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2094
    const-string/jumbo v1, "HeadsetStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Removing conn retry entry for device = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get24(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2095
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get22(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get24(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2097
    :cond_6
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get24(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-static {v1, v2, v5, v7}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-wrap14(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 2099
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    monitor-enter v2

    .line 2100
    :try_start_6
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-set9(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 2101
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get8(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_7

    .line 2102
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get11(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-wrap45(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/internal/util/IState;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto/16 :goto_1

    .line 2099
    :catchall_4
    move-exception v1

    monitor-exit v2

    throw v1

    .line 2106
    :cond_7
    :try_start_7
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get6(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)I

    move-result v1

    if-ne v1, v8, :cond_8

    .line 2107
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get5(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-wrap45(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 2108
    :cond_8
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get7(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-wrap45(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/internal/util/IState;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto/16 :goto_1

    .line 2112
    :cond_9
    const-string/jumbo v1, "HeadsetStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown device Disconnected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2117
    :pswitch_1
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get8(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2119
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .line 2120
    const/4 v2, 0x3

    .line 2119
    invoke-static {v1, p2, v6, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-wrap14(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 2121
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get24(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 2122
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get24(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-static {v1, v2, v5, v7}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-wrap14(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 2125
    :cond_a
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    monitor-enter v2

    .line 2126
    :try_start_8
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-set9(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 2127
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get6(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)I

    move-result v1

    if-ne v1, v8, :cond_b

    .line 2128
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get5(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-wrap45(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/internal/util/IState;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    goto/16 :goto_1

    .line 2125
    :catchall_5
    move-exception v1

    monitor-exit v2

    throw v1

    .line 2129
    :cond_b
    :try_start_9
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get7(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-wrap45(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/internal/util/IState;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto/16 :goto_1

    .line 2131
    :cond_c
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get24(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get24(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2133
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    monitor-enter v2

    .line 2134
    :try_start_a
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v1, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-set3(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 2135
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get8(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2136
    const-string/jumbo v1, "HeadsetStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "device "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2137
    const-string/jumbo v4, " is added in MultiHFPending state"

    .line 2136
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2138
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-set9(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 2139
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get6(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)I

    move-result v1

    if-ne v1, v8, :cond_d

    .line 2140
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get5(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-wrap45(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/internal/util/IState;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    :goto_2
    monitor-exit v2

    .line 2144
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v1, p2, v6, v7}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-wrap14(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 2146
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v1, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-wrap15(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 2141
    :cond_d
    :try_start_b
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get7(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-wrap45(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/internal/util/IState;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    goto :goto_2

    .line 2133
    :catchall_6
    move-exception v1

    monitor-exit v2

    throw v1

    .line 2148
    :cond_e
    const-string/jumbo v1, "HeadsetStateMachine"

    const-string/jumbo v2, "Some other incoming HF connectedin Multi Pending state"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2150
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-virtual {v1, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->okToConnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 2151
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get8(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get26(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)I

    move-result v2

    if-ge v1, v2, :cond_10

    .line 2152
    const-string/jumbo v1, "HeadsetStateMachine"

    const-string/jumbo v2, "Incoming Hf accepted"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2153
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v1, p2, v6, v5}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-wrap14(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 2156
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    monitor-enter v2

    .line 2157
    :try_start_c
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get8(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 2158
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v1, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-set3(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 2159
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get8(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2160
    const-string/jumbo v1, "HeadsetStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "device "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2161
    const-string/jumbo v4, " is added in MultiHFPending state"

    .line 2160
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    :cond_f
    monitor-exit v2

    .line 2164
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v1, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-wrap15(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 2156
    :catchall_7
    move-exception v1

    monitor-exit v2

    throw v1

    .line 2167
    :cond_10
    const-string/jumbo v1, "HeadsetStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Incoming Hf rejected. priority="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2168
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get23(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/android/bluetooth/hfp/HeadsetService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    .line 2167
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2169
    const-string/jumbo v3, " bondState="

    .line 2167
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2169
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v3

    .line 2167
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2170
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v2, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-wrap11(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-wrap7(Lcom/android/bluetooth/hfp/HeadsetStateMachine;[B)Z

    .line 2172
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 2173
    .local v0, "adapterService":Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    .line 2174
    invoke-virtual {v0, p2, v6}, Lcom/android/bluetooth/btservice/AdapterService;->connectOtherProfile(Landroid/bluetooth/BluetoothDevice;I)V

    goto/16 :goto_0

    .line 2181
    .end local v0    # "adapterService":Lcom/android/bluetooth/btservice/AdapterService;
    :pswitch_2
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get22(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 2182
    const-string/jumbo v1, "HeadsetStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Removing device "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2183
    const-string/jumbo v3, " conn retry entry since we got SLC"

    .line 2182
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2184
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get22(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2186
    :cond_11
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->processSlcConnected()V

    goto/16 :goto_0

    .line 2189
    :pswitch_3
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get8(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 2190
    const-string/jumbo v1, "HeadsetStateMachine"

    const-string/jumbo v2, "current device tries to connect back"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2191
    :cond_12
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get24(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get24(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 2192
    invoke-static {}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get0()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2193
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const-string/jumbo v2, "Stack and target device are connecting"

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2196
    :cond_13
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get14(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get14(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2197
    const-string/jumbo v1, "HeadsetStateMachine"

    const-string/jumbo v2, "Another connecting event onthe incoming device"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2202
    :pswitch_4
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get8(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 2203
    invoke-static {}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get0()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2204
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const-string/jumbo v2, "stack is disconnecting mCurrentDevice"

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2206
    :cond_14
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get24(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get24(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 2207
    const-string/jumbo v1, "HeadsetStateMachine"

    const-string/jumbo v2, "TargetDevice is getting disconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2208
    :cond_15
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get14(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get14(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 2209
    const-string/jumbo v1, "HeadsetStateMachine"

    const-string/jumbo v2, "IncomingDevice is getting disconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2211
    :cond_16
    const-string/jumbo v1, "HeadsetStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Disconnecting unknow device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2030
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method private processIntentScoVolume(Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v4, 0x0

    .line 2326
    const-string/jumbo v2, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 2327
    .local v1, "volumeValue":I
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get20(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->getSpeakerVolume()I

    move-result v2

    if-eq v2, v1, :cond_0

    .line 2328
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get20(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->setSpeakerVolume(I)V

    .line 2330
    const-string/jumbo v2, "bt.pts.certification"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2331
    .local v0, "scoVolume":Z
    if-nez v0, :cond_1

    .line 2332
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .line 2333
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v3, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-wrap11(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v3

    .line 2332
    invoke-static {v2, v4, v1, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-wrap10(Lcom/android/bluetooth/hfp/HeadsetStateMachine;II[B)Z

    .line 2325
    .end local v0    # "scoVolume":Z
    :cond_0
    :goto_0
    return-void

    .line 2335
    .restart local v0    # "scoVolume":Z
    :cond_1
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .line 2336
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v3, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-wrap11(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v3

    .line 2335
    invoke-static {v2, v4, v4, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-wrap10(Lcom/android/bluetooth/hfp/HeadsetStateMachine;II[B)Z

    goto :goto_0
.end method

.method private processMultiHFDisconnect(Landroid/bluetooth/BluetoothDevice;)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v3, 0x0

    .line 2302
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const-string/jumbo v2, "MultiHFPending state: processMultiHFDisconnect"

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    .line 2303
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get3(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get3(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2304
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const-string/jumbo v2, "mActiveScoDevice is disconnected, setting it to null"

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    .line 2305
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v1, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-set1(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 2309
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get9(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get9(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2310
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get8(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2311
    .local v0, "deviceSize":I
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get8(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Ljava/util/ArrayList;

    move-result-object v1

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    invoke-static {v2, v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-set3(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 2314
    .end local v0    # "deviceSize":I
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get6(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_2

    .line 2315
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get5(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-wrap45(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/internal/util/IState;)V

    .line 2317
    :goto_0
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "processMultiHFDisconnect , the latest mCurrentDevice is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2318
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get9(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    .line 2317
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    .line 2319
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const-string/jumbo v2, "MultiHFPending state: processMultiHFDisconnect ,fake broadcasting for mCurrentDevice"

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    .line 2321
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get9(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    const/4 v3, 0x2

    .line 2322
    const/4 v4, 0x0

    .line 2321
    invoke-static {v1, v2, v3, v4}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-wrap14(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 2301
    return-void

    .line 2316
    :cond_2
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get7(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-wrap45(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0
.end method

.method private processSlcConnected()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2280
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get19(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/IBluetoothHeadsetPhone;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2285
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get20(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->listenForPhoneState(Z)V

    .line 2286
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const-wide/16 v2, 0x64

    const/16 v1, 0x14

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->sendMessageDelayed(IJ)V

    .line 2287
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0, v4}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-set0(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Z)Z

    .line 2288
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0, v4}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-set7(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Z)Z

    .line 2289
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get18(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 2290
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-wrap8(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get1(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2291
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const-string/jumbo v1, "Headset connected while we are in some call state"

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    .line 2292
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const-string/jumbo v1, "Make A2dpSuspended=true here"

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    .line 2293
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get4(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/media/AudioManager;

    move-result-object v0

    const-string/jumbo v1, "A2dpSuspended=true"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 2294
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0, v5}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-set0(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Z)Z

    .line 2279
    :cond_0
    :goto_0
    return-void

    .line 2297
    :cond_1
    const-string/jumbo v0, "HeadsetStateMachine"

    const-string/jumbo v1, "Handsfree phone proxy null for query phone state"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 1802
    const-string/jumbo v0, "HeadsetStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Enter MultiHFPending: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-wrap1(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/os/Message;

    move-result-object v2

    iget v2, v2, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1803
    const-string/jumbo v2, ", size: "

    .line 1802
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1803
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get8(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1802
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1801
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 14
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/16 v5, 0xc9

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1808
    const-string/jumbo v0, "HeadsetStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "MultiHFPending process message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1809
    const-string/jumbo v4, ", size: "

    .line 1808
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1809
    iget-object v4, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v4}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get8(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1808
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1811
    const/4 v13, 0x1

    .line 1812
    .local v13, "retValue":Z
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 2021
    return v1

    .line 1814
    :sswitch_0
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-wrap16(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/os/Message;)V

    .line 2023
    :cond_0
    :goto_0
    return v13

    .line 1818
    :sswitch_1
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get9(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1819
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get9(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-wrap11(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-wrap4(Lcom/android/bluetooth/hfp/HeadsetStateMachine;[B)Z

    goto :goto_0

    .line 1823
    :sswitch_2
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .line 1824
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get24(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-wrap11(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v2

    .line 1823
    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-wrap17(Lcom/android/bluetooth/hfp/HeadsetStateMachine;I[B)V

    goto :goto_0

    .line 1828
    :sswitch_3
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get3(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1829
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get3(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-wrap11(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-wrap6(Lcom/android/bluetooth/hfp/HeadsetStateMachine;[B)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1830
    const-string/jumbo v0, "HeadsetStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MultiHFPending, Disconnecting SCO audio for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1831
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get3(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 1830
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1833
    :cond_1
    const-string/jumbo v0, "HeadsetStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "disconnectAudioNative failedfor device = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1834
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get3(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 1833
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1839
    :sswitch_4
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/bluetooth/BluetoothDevice;

    .line 1840
    .local v9, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get8(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1841
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get24(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get24(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1840
    if-eqz v0, :cond_2

    .line 1843
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0, v9, v1, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-wrap14(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 1846
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    monitor-enter v1

    .line 1847
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-set9(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    goto/16 :goto_0

    .line 1846
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1850
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-wrap16(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1854
    .end local v9    # "device":Landroid/bluetooth/BluetoothDevice;
    :sswitch_5
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/bluetooth/BluetoothDevice;

    .line 1855
    .restart local v9    # "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get8(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1856
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-wrap33(Lcom/android/bluetooth/hfp/HeadsetStateMachine;I)V

    goto/16 :goto_0

    .line 1860
    .end local v9    # "device":Landroid/bluetooth/BluetoothDevice;
    :sswitch_6
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/bluetooth/BluetoothDevice;

    .line 1861
    .restart local v9    # "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get8(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1862
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0, v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-wrap33(Lcom/android/bluetooth/hfp/HeadsetStateMachine;I)V

    goto/16 :goto_0

    .line 1866
    .end local v9    # "device":Landroid/bluetooth/BluetoothDevice;
    :sswitch_7
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get3(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1867
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get3(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->processIntentScoVolume(Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 1871
    :sswitch_8
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-static {v1, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-wrap31(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1874
    :sswitch_9
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/bluetooth/hfp/HeadsetCallState;

    .line 1875
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v2, :cond_3

    move v1, v2

    .line 1874
    :cond_3
    invoke-static {v3, v0, v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-wrap25(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/bluetooth/hfp/HeadsetCallState;Z)V

    goto/16 :goto_0

    .line 1878
    :sswitch_a
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/bluetooth/hfp/HeadsetDeviceState;

    invoke-static {v1, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-wrap26(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/bluetooth/hfp/HeadsetDeviceState;)V

    goto/16 :goto_0

    .line 1881
    :sswitch_b
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/bluetooth/hfp/HeadsetClccResponse;

    invoke-static {v1, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-wrap35(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/bluetooth/hfp/HeadsetClccResponse;)V

    goto/16 :goto_0

    .line 1885
    :sswitch_c
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/bluetooth/BluetoothDevice;

    .line 1886
    .restart local v9    # "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const-string/jumbo v6, ""

    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v2, v9}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-wrap11(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v8

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    move v7, v1

    invoke-static/range {v0 .. v8}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-wrap2(Lcom/android/bluetooth/hfp/HeadsetStateMachine;IIIIZLjava/lang/String;I[B)Z

    goto/16 :goto_0

    .line 1890
    .end local v9    # "device":Landroid/bluetooth/BluetoothDevice;
    :sswitch_d
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-static {v1, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-wrap29(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1893
    :sswitch_e
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-static {v1, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-wrap30(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1896
    :sswitch_f
    const-string/jumbo v0, "HeadsetStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mDialingOut is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get10(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1897
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get10(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1898
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/bluetooth/BluetoothDevice;

    .line 1899
    .restart local v9    # "device":Landroid/bluetooth/BluetoothDevice;
    const-string/jumbo v0, "HeadsetStateMachine"

    const-string/jumbo v2, "Timeout waiting for call to be placed, resetting mDialingOut"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1900
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0, v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-set4(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Z)Z

    .line 1901
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .line 1902
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v2, v9}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-wrap11(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v2

    .line 1901
    invoke-virtual {v0, v1, v1, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->atResponseCodeNative(II[B)Z

    goto/16 :goto_0

    .line 1906
    .end local v9    # "device":Landroid/bluetooth/BluetoothDevice;
    :sswitch_10
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/bluetooth/BluetoothDevice;

    .line 1907
    .restart local v9    # "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get8(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1908
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->initiateScoUsingVirtualVoiceCall()Z

    goto/16 :goto_0

    .line 1912
    .end local v9    # "device":Landroid/bluetooth/BluetoothDevice;
    :sswitch_11
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/bluetooth/BluetoothDevice;

    .line 1913
    .restart local v9    # "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get8(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1914
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->terminateScoUsingVirtualVoiceCall()Z

    goto/16 :goto_0

    .line 1919
    .end local v9    # "device":Landroid/bluetooth/BluetoothDevice;
    :sswitch_12
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/bluetooth/BluetoothDevice;

    .line 1920
    .restart local v9    # "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v1, v9}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-wrap11(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-wrap3(Lcom/android/bluetooth/hfp/HeadsetStateMachine;[BI)Z

    goto/16 :goto_0

    .line 1925
    .end local v9    # "device":Landroid/bluetooth/BluetoothDevice;
    :sswitch_13
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/bluetooth/BluetoothDevice;

    .line 1926
    .restart local v9    # "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v1, v9}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-wrap11(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-wrap3(Lcom/android/bluetooth/hfp/HeadsetStateMachine;[BI)Z

    goto/16 :goto_0

    .line 1930
    .end local v9    # "device":Landroid/bluetooth/BluetoothDevice;
    :sswitch_14
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get25(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1931
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/bluetooth/BluetoothDevice;

    .line 1932
    .restart local v9    # "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0, v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-set11(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Z)Z

    .line 1933
    const-string/jumbo v0, "HeadsetStateMachine"

    const-string/jumbo v2, "Timeout waiting for voicerecognition to start"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1935
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .line 1936
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v2, v9}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-wrap11(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v2

    .line 1935
    invoke-virtual {v0, v1, v1, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->atResponseCodeNative(II[B)Z

    goto/16 :goto_0

    .line 1941
    .end local v9    # "device":Landroid/bluetooth/BluetoothDevice;
    :sswitch_15
    :try_start_1
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const-string/jumbo v1, "Update call states after SLC is up"

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    .line 1942
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get19(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/IBluetoothHeadsetPhone;

    move-result-object v0

    invoke-interface {v0}, Landroid/bluetooth/IBluetoothHeadsetPhone;->queryPhoneState()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1943
    :catch_0
    move-exception v11

    .line 1944
    .local v11, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "HeadsetStateMachine"

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1948
    .end local v11    # "e":Landroid/os/RemoteException;
    :sswitch_16
    iget-object v12, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;

    .line 1949
    .local v12, "event":Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;
    invoke-static {}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-get0()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1950
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "event type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v12, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    .line 1952
    :cond_4
    iget v0, v12, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->type:I

    packed-switch v0, :pswitch_data_0

    .line 2016
    :pswitch_0
    const-string/jumbo v0, "HeadsetStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v12, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1954
    :pswitch_1
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0, v5}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-wrap0(Lcom/android/bluetooth/hfp/HeadsetStateMachine;I)Landroid/bluetooth/BluetoothDevice;

    move-result-object v10

    .line 1955
    .local v10, "device1":Landroid/bluetooth/BluetoothDevice;
    if-eqz v10, :cond_5

    iget-object v0, v12, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v10, v0}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1956
    const-string/jumbo v0, "HeadsetStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "remove connect timeout for device = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1957
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0, v5}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-wrap43(Lcom/android/bluetooth/hfp/HeadsetStateMachine;I)V

    .line 1959
    :cond_5
    iget v0, v12, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->valueInt:I

    iget-object v1, v12, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v0, v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->processConnectionEvent(ILandroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 1962
    .end local v10    # "device1":Landroid/bluetooth/BluetoothDevice;
    :pswitch_2
    iget v0, v12, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->valueInt:I

    iget-object v1, v12, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v0, v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->processAudioEvent(ILandroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 1965
    :pswitch_3
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget v1, v12, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->valueInt:I

    iget-object v2, v12, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-wrap41(Lcom/android/bluetooth/hfp/HeadsetStateMachine;ILandroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 1969
    :pswitch_4
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v1, v12, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0, v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-wrap18(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 1973
    :pswitch_5
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v1, v12, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0, v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-wrap28(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 1976
    :pswitch_6
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget v1, v12, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->valueInt:I

    iget v2, v12, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->valueInt2:I

    .line 1977
    iget-object v3, v12, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    .line 1976
    invoke-static {v0, v1, v2, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-wrap40(Lcom/android/bluetooth/hfp/HeadsetStateMachine;IILandroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 1980
    :pswitch_7
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v1, v12, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->valueString:Ljava/lang/String;

    iget-object v2, v12, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-wrap27(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 1983
    :pswitch_8
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget v1, v12, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->valueInt:I

    iget-object v2, v12, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-wrap36(Lcom/android/bluetooth/hfp/HeadsetStateMachine;ILandroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 1986
    :pswitch_9
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget v1, v12, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->valueInt:I

    iget-object v2, v12, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-wrap34(Lcom/android/bluetooth/hfp/HeadsetStateMachine;ILandroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 1989
    :pswitch_a
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v1, v12, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0, v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-wrap38(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 1992
    :pswitch_b
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v1, v12, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0, v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-wrap22(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 1995
    :pswitch_c
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget v1, v12, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->valueInt:I

    iget-object v2, v12, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-wrap21(Lcom/android/bluetooth/hfp/HeadsetStateMachine;ILandroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 1998
    :pswitch_d
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v1, v12, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0, v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-wrap24(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 2001
    :pswitch_e
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v1, v12, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0, v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-wrap23(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 2004
    :pswitch_f
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v1, v12, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->valueString:Ljava/lang/String;

    iget-object v2, v12, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-wrap39(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 2007
    :pswitch_10
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v1, v12, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0, v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-wrap32(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 2010
    :pswitch_11
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v1, v12, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->valueString:Ljava/lang/String;

    iget v2, v12, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->valueInt:I

    iget-object v3, v12, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0, v1, v2, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-wrap20(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Ljava/lang/String;ILandroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 2013
    :pswitch_12
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v1, v12, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->valueString:Ljava/lang/String;

    iget-object v2, v12, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->-wrap19(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 1812
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_4
        0x3 -> :sswitch_1
        0x4 -> :sswitch_3
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x9 -> :sswitch_9
        0xa -> :sswitch_8
        0xb -> :sswitch_a
        0xc -> :sswitch_b
        0xe -> :sswitch_10
        0xf -> :sswitch_11
        0x10 -> :sswitch_12
        0x11 -> :sswitch_13
        0x12 -> :sswitch_d
        0x13 -> :sswitch_e
        0x14 -> :sswitch_15
        0x65 -> :sswitch_16
        0x66 -> :sswitch_f
        0x67 -> :sswitch_14
        0x68 -> :sswitch_c
        0xc9 -> :sswitch_2
    .end sparse-switch

    .line 1952
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_c
        :pswitch_a
        :pswitch_b
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_0
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method
