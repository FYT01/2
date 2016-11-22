.class Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;
.super Lcom/android/internal/util/State;
.source "HeadsetClientStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Connected"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    .prologue
    .line 1542
    iput-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;-><init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)V

    return-void
.end method

.method private processAudioEvent(ILandroid/bluetooth/BluetoothDevice;)V
    .locals 7
    .param p1, "state"    # I
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2023
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get9(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2024
    const-string/jumbo v3, "HeadsetClientStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Audio changed on disconnected device: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2025
    return-void

    .line 2028
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 2083
    const-string/jumbo v3, "HeadsetClientStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Audio State Device: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " bad state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2021
    :cond_1
    :goto_0
    return-void

    .line 2030
    :pswitch_0
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v3, v4}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-set1(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Z)Z

    .line 2033
    :pswitch_1
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get3(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2034
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 2038
    :cond_2
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v3, v6}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-set0(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I

    .line 2040
    const/4 v1, 0x2

    .line 2041
    .local v1, "newAudioMode":I
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get1(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/media/AudioManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    .line 2042
    .local v0, "currMode":I
    if-eq v0, v6, :cond_3

    .line 2044
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get1(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/media/AudioManager;

    move-result-object v3

    invoke-virtual {v3, v5, v6}, Landroid/media/AudioManager;->requestAudioFocusForCall(II)V

    .line 2046
    const-string/jumbo v3, "HeadsetClientStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setAudioMode Setting audio mode from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2047
    const-string/jumbo v5, " to "

    .line 2046
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2048
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get1(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/media/AudioManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/media/AudioManager;->setMode(I)V

    .line 2054
    :cond_3
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get1(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/media/AudioManager;

    move-result-object v3

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    .line 2055
    .local v2, "volume":I
    const-string/jumbo v3, "HeadsetClientStateMachine"

    const-string/jumbo v4, "hfp_enable=true"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2056
    const-string/jumbo v3, "HeadsetClientStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mAudioWbs is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v5}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get5(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2057
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get5(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2058
    const-string/jumbo v3, "HeadsetClientStateMachine"

    const-string/jumbo v4, "Setting sampling rate as 16000"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2059
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get1(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/media/AudioManager;

    move-result-object v3

    const-string/jumbo v4, "hfp_set_sampling_rate=16000"

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 2065
    :goto_1
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get1(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/media/AudioManager;

    move-result-object v3

    const-string/jumbo v4, "hfp_enable=true"

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 2066
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get1(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/media/AudioManager;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "hfp_volume="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 2067
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget-object v4, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v4}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get2(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$AudioOn;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap36(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 2062
    :cond_4
    const-string/jumbo v3, "HeadsetClientStateMachine"

    const-string/jumbo v4, "Setting sampling rate as 8000"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2063
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get1(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/media/AudioManager;

    move-result-object v3

    const-string/jumbo v4, "hfp_set_sampling_rate=8000"

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_1

    .line 2070
    .end local v0    # "currMode":I
    .end local v1    # "newAudioMode":I
    .end local v2    # "volume":I
    :pswitch_2
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v3, v4}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-set0(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I

    .line 2071
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v3, p2, v4, v5}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap23(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    goto/16 :goto_0

    .line 2075
    :pswitch_3
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get4(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)I

    move-result v3

    if-ne v3, v4, :cond_1

    .line 2076
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v3, v5}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-set0(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I

    .line 2077
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v3, p2, v5, v4}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap23(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    goto/16 :goto_0

    .line 2028
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private processConnectionEvent(ILandroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 2000
    packed-switch p1, :pswitch_data_0

    .line 2015
    const-string/jumbo v0, "HeadsetClientStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Connection State Device: "

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

    .line 1999
    :goto_0
    return-void

    .line 2002
    :pswitch_0
    const-string/jumbo v0, "HeadsetClientStateMachine"

    const-string/jumbo v1, "Connected disconnects."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2004
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get9(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2005
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get9(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 2006
    const/4 v2, 0x0

    .line 2007
    const/4 v3, 0x2

    .line 2005
    invoke-static {v0, v1, v2, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap24(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 2008
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-set5(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 2009
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get10(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap36(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 2011
    :cond_0
    const-string/jumbo v0, "HeadsetClientStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Disconnected from unknown device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2000
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private sendActionResultIntent(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;

    .prologue
    .line 1989
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.bluetooth.headsetclient.profile.action.RESULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1990
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.bluetooth.headsetclient.extra.RESULT_CODE"

    iget v2, p1, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1991
    iget v1, p1, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    .line 1992
    const-string/jumbo v1, "android.bluetooth.headsetclient.extra.CME_CODE"

    iget v2, p1, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt2:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1994
    :cond_0
    const-string/jumbo v1, "android.bluetooth.device.extra.DEVICE"

    iget-object v2, p1, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1995
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get17(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v1

    const-string/jumbo v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1988
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 1545
    const-string/jumbo v0, "HeadsetClientStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Enter Connected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap1(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/os/Message;

    move-result-object v2

    iget v2, v2, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1547
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-set1(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Z)Z

    .line 1544
    return-void
.end method

.method public exit()V
    .locals 3

    .prologue
    .line 2090
    const-string/jumbo v0, "HeadsetClientStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exit Connected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap1(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/os/Message;

    move-result-object v2

    iget v2, v2, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2089
    return-void
.end method

.method public declared-synchronized processMessage(Landroid/os/Message;)Z
    .locals 14
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x6

    const/4 v4, 0x2

    const/4 v12, 0x1

    const/4 v5, 0x0

    monitor-enter p0

    .line 1552
    :try_start_0
    const-string/jumbo v0, "HeadsetClientStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Connected process message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1560
    iget v0, p1, Landroid/os/Message;->what:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sparse-switch v0, :sswitch_data_0

    monitor-exit p0

    .line 1983
    return v5

    .line 1562
    :sswitch_0
    :try_start_1
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/bluetooth/BluetoothDevice;

    .line 1563
    .local v8, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get9(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .end local v8    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_0
    :goto_0
    :pswitch_0
    :sswitch_1
    monitor-exit p0

    .line 1985
    return v12

    .line 1568
    .restart local v8    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get9(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap17(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap7(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;[B)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1571
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v1, 0x1

    .line 1572
    const/4 v2, 0x0

    .line 1571
    invoke-static {v0, v8, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap24(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 1573
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v1, 0x0

    .line 1574
    const/4 v2, 0x1

    .line 1573
    invoke-static {v0, v8, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap24(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v8    # "device":Landroid/bluetooth/BluetoothDevice;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1579
    .restart local v8    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap26(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/os/Message;)V

    goto :goto_0

    .line 1582
    .end local v8    # "device":Landroid/bluetooth/BluetoothDevice;
    :sswitch_2
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/bluetooth/BluetoothDevice;

    .line 1583
    .local v7, "dev":Landroid/bluetooth/BluetoothDevice;
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get9(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1586
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v1, 0x3

    .line 1587
    const/4 v2, 0x2

    .line 1586
    invoke-static {v0, v7, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap24(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 1588
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v1, v7}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap17(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap7(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;[B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1590
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v1, 0x2

    .line 1591
    const/4 v2, 0x0

    .line 1590
    invoke-static {v0, v7, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap24(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_0

    .line 1597
    .end local v7    # "dev":Landroid/bluetooth/BluetoothDevice;
    :sswitch_3
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get9(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap17(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap2(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;[B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1598
    const-string/jumbo v0, "HeadsetClientStateMachine"

    const-string/jumbo v1, "ERROR: Couldn\'t connect Audio."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1603
    :sswitch_4
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get9(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap17(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap6(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;[B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1604
    const-string/jumbo v0, "HeadsetClientStateMachine"

    const-string/jumbo v1, "ERROR: Couldn\'t connect Audio."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1608
    :sswitch_5
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get21(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1609
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap15(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1610
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap21(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V

    goto/16 :goto_0

    .line 1612
    :cond_3
    const-string/jumbo v0, "HeadsetClientStateMachine"

    const-string/jumbo v1, "ERROR: Couldn\'t start voice recognition"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1617
    :sswitch_6
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get21(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)I

    move-result v0

    if-ne v0, v12, :cond_0

    .line 1618
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap16(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1619
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap21(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V

    goto/16 :goto_0

    .line 1621
    :cond_4
    const-string/jumbo v0, "HeadsetClientStateMachine"

    const-string/jumbo v1, "ERROR: Couldn\'t stop voice recognition"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1626
    :sswitch_7
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get19(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1627
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-set20(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Z)Z

    goto/16 :goto_0

    .line 1630
    :cond_5
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap14(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1631
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap21(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V

    goto/16 :goto_0

    .line 1635
    :sswitch_8
    const-string/jumbo v0, "HeadsetClientStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Volume is set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1636
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get1(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/media/AudioManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "hfp_volume="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1637
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get20(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1638
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-set21(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Z)Z

    goto/16 :goto_0

    .line 1641
    :cond_6
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap14(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1642
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap21(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V

    goto/16 :goto_0

    .line 1646
    :sswitch_9
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap5(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1647
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/16 v1, 0x9

    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap21(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V

    goto/16 :goto_0

    .line 1649
    :cond_7
    const-string/jumbo v0, "HeadsetClientStateMachine"

    const-string/jumbo v1, "ERROR: Cannot redial"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1653
    :sswitch_a
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap5(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1654
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v2, 0xa

    invoke-static {v0, v2, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap22(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1656
    :cond_8
    const-string/jumbo v1, "HeadsetClientStateMachine"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ERROR: Cannot dial with a given number:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1660
    :sswitch_b
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap4(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1661
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/16 v1, 0xb

    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap21(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V

    goto/16 :goto_0

    .line 1663
    :cond_9
    const-string/jumbo v0, "HeadsetClientStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ERROR: Cannot dial with a given location:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1667
    :sswitch_c
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap19(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;IZ)V

    goto/16 :goto_0

    .line 1670
    :sswitch_d
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap32(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)V

    goto/16 :goto_0

    .line 1673
    :sswitch_e
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap29(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)V

    goto/16 :goto_0

    .line 1676
    :sswitch_f
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap35(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V

    goto/16 :goto_0

    .line 1679
    :sswitch_10
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap27(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V

    goto/16 :goto_0

    .line 1682
    :sswitch_11
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap28(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)V

    goto/16 :goto_0

    .line 1685
    :sswitch_12
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget v1, p1, Landroid/os/Message;->arg1:I

    int-to-byte v1, v1

    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap13(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;B)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1686
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/16 v1, 0x11

    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap21(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V

    goto/16 :goto_0

    .line 1688
    :cond_a
    const-string/jumbo v0, "HeadsetClientStateMachine"

    const-string/jumbo v1, "ERROR: Couldn\'t send DTMF"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1692
    :sswitch_13
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap11(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1693
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/16 v1, 0x34

    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap21(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V

    goto/16 :goto_0

    .line 1695
    :cond_b
    const-string/jumbo v0, "HeadsetClientStateMachine"

    const-string/jumbo v1, "ERROR: Couldn\'t retrieve subscriber info"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1699
    :sswitch_14
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap10(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1700
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/16 v1, 0x13

    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap21(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V

    goto/16 :goto_0

    .line 1702
    :cond_c
    const-string/jumbo v0, "HeadsetClientStateMachine"

    const-string/jumbo v1, "ERROR: Couldn\'t get last VTAG number"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1706
    :sswitch_15
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap8(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Z

    goto/16 :goto_0

    .line 1709
    :sswitch_16
    const/4 v10, 0x0

    .line 1710
    .local v10, "intent":Landroid/content/Intent;
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;

    .line 1715
    .local v9, "event":Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;
    iget v0, v9, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->type:I

    packed-switch v0, :pswitch_data_0

    .line 1977
    const-string/jumbo v0, "HeadsetClientStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown stack event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v9, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1717
    :pswitch_1
    const-string/jumbo v0, "HeadsetClientStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Connected: Connection state changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v9, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1718
    const-string/jumbo v2, ": "

    .line 1717
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1718
    iget v2, v9, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    .line 1717
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1719
    iget v0, v9, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    iget-object v1, v9, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->processConnectionEvent(ILandroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 1722
    :pswitch_2
    const-string/jumbo v0, "HeadsetClientStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Connected: Audio state changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v9, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1723
    iget v2, v9, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    .line 1722
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1724
    iget v0, v9, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    iget-object v1, v9, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->processAudioEvent(ILandroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 1727
    :pswitch_3
    const-string/jumbo v0, "HeadsetClientStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Connected: Network state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v9, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1729
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget v1, v9, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-set12(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I

    .line 1731
    new-instance v10, Landroid/content/Intent;

    .end local v10    # "intent":Landroid/content/Intent;
    const-string/jumbo v0, "android.bluetooth.headsetclient.profile.action.AG_EVENT"

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1732
    .local v10, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "android.bluetooth.headsetclient.extra.NETWORK_STATUS"

    .line 1733
    iget v1, v9, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    .line 1732
    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1735
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get12(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)I

    move-result v0

    if-nez v0, :cond_d

    .line 1737
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-set14(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 1738
    const-string/jumbo v0, "android.bluetooth.headsetclient.extra.OPERATOR_NAME"

    .line 1739
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get13(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Ljava/lang/String;

    move-result-object v1

    .line 1738
    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1742
    :cond_d
    const-string/jumbo v0, "android.bluetooth.device.extra.DEVICE"

    iget-object v1, v9, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1743
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get17(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    const-string/jumbo v1, "android.permission.BLUETOOTH"

    invoke-virtual {v0, v10, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1745
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get12(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)I

    move-result v0

    if-ne v0, v12, :cond_0

    .line 1747
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap9(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1748
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/16 v1, 0x33

    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap21(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V

    goto/16 :goto_0

    .line 1750
    :cond_e
    const-string/jumbo v0, "HeadsetClientStateMachine"

    const-string/jumbo v1, "ERROR: Couldn\'t querry operator name"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1755
    .local v10, "intent":Landroid/content/Intent;
    :pswitch_4
    const-string/jumbo v0, "HeadsetClientStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Connected: Roaming state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v9, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1757
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget v1, v9, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-set13(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I

    .line 1759
    new-instance v10, Landroid/content/Intent;

    .end local v10    # "intent":Landroid/content/Intent;
    const-string/jumbo v0, "android.bluetooth.headsetclient.profile.action.AG_EVENT"

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1760
    .local v10, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "android.bluetooth.headsetclient.extra.NETWORK_ROAMING"

    .line 1761
    iget v1, v9, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    .line 1760
    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1762
    const-string/jumbo v0, "android.bluetooth.device.extra.DEVICE"

    iget-object v1, v9, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1763
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get17(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    const-string/jumbo v1, "android.permission.BLUETOOTH"

    invoke-virtual {v0, v10, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1766
    .local v10, "intent":Landroid/content/Intent;
    :pswitch_5
    const-string/jumbo v0, "HeadsetClientStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Connected: Signal level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v9, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1768
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget v1, v9, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-set11(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I

    .line 1770
    new-instance v10, Landroid/content/Intent;

    .end local v10    # "intent":Landroid/content/Intent;
    const-string/jumbo v0, "android.bluetooth.headsetclient.profile.action.AG_EVENT"

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1771
    .local v10, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "android.bluetooth.headsetclient.extra.NETWORK_SIGNAL_STRENGTH"

    .line 1772
    iget v1, v9, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    .line 1771
    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1773
    const-string/jumbo v0, "android.bluetooth.device.extra.DEVICE"

    iget-object v1, v9, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1774
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get17(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    const-string/jumbo v1, "android.permission.BLUETOOTH"

    invoke-virtual {v0, v10, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1777
    .local v10, "intent":Landroid/content/Intent;
    :pswitch_6
    const-string/jumbo v0, "HeadsetClientStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Connected: Battery level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v9, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1779
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget v1, v9, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-set7(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I

    .line 1781
    new-instance v10, Landroid/content/Intent;

    .end local v10    # "intent":Landroid/content/Intent;
    const-string/jumbo v0, "android.bluetooth.headsetclient.profile.action.AG_EVENT"

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1782
    .local v10, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "android.bluetooth.headsetclient.extra.BATTERY_LEVEL"

    .line 1783
    iget v1, v9, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    .line 1782
    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1784
    const-string/jumbo v0, "android.bluetooth.device.extra.DEVICE"

    iget-object v1, v9, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1785
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get17(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    const-string/jumbo v1, "android.permission.BLUETOOTH"

    invoke-virtual {v0, v10, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1788
    .local v10, "intent":Landroid/content/Intent;
    :pswitch_7
    const-string/jumbo v0, "HeadsetClientStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Connected: Operator name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v9, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1790
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget-object v1, v9, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueString:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-set14(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 1792
    new-instance v10, Landroid/content/Intent;

    .end local v10    # "intent":Landroid/content/Intent;
    const-string/jumbo v0, "android.bluetooth.headsetclient.profile.action.AG_EVENT"

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1793
    .local v10, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "android.bluetooth.headsetclient.extra.OPERATOR_NAME"

    .line 1794
    iget-object v1, v9, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueString:Ljava/lang/String;

    .line 1793
    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1795
    const-string/jumbo v0, "android.bluetooth.device.extra.DEVICE"

    iget-object v1, v9, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1796
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get17(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    const-string/jumbo v1, "android.permission.BLUETOOTH"

    invoke-virtual {v0, v10, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1799
    .local v10, "intent":Landroid/content/Intent;
    :pswitch_8
    const-string/jumbo v0, "HeadsetClientStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Connected: Voice recognition state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v9, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1801
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get21(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)I

    move-result v0

    iget v1, v9, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    if-eq v0, v1, :cond_0

    .line 1802
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget v1, v9, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-set22(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I

    .line 1804
    new-instance v10, Landroid/content/Intent;

    .end local v10    # "intent":Landroid/content/Intent;
    const-string/jumbo v0, "android.bluetooth.headsetclient.profile.action.AG_EVENT"

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1805
    .local v10, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "android.bluetooth.headsetclient.extra.VOICE_RECOGNITION"

    .line 1806
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get21(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)I

    move-result v1

    .line 1805
    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1807
    const-string/jumbo v0, "android.bluetooth.device.extra.DEVICE"

    iget-object v1, v9, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1808
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get17(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    const-string/jumbo v1, "android.permission.BLUETOOTH"

    invoke-virtual {v0, v10, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1812
    .local v10, "intent":Landroid/content/Intent;
    :pswitch_9
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget v1, v9, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap38(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V

    goto/16 :goto_0

    .line 1815
    :pswitch_a
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget v1, v9, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap39(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V

    goto/16 :goto_0

    .line 1818
    :pswitch_b
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget v1, v9, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap37(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V

    goto/16 :goto_0

    .line 1821
    :pswitch_c
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget v1, v9, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap41(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V

    goto/16 :goto_0

    .line 1824
    :pswitch_d
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget-object v1, v9, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueString:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap40(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1827
    :pswitch_e
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget-object v1, v9, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueString:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap20(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1830
    :pswitch_f
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get11(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)I

    move-result v0

    iget v1, v9, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    if-eq v0, v1, :cond_0

    .line 1831
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget v1, v9, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-set6(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I

    .line 1832
    new-instance v10, Landroid/content/Intent;

    .end local v10    # "intent":Landroid/content/Intent;
    const-string/jumbo v0, "android.bluetooth.headsetclient.profile.action.AG_EVENT"

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1833
    .local v10, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "android.bluetooth.headsetclient.extra.IN_BAND_RING"

    .line 1834
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get11(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)I

    move-result v1

    .line 1833
    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1835
    const-string/jumbo v0, "android.bluetooth.device.extra.DEVICE"

    iget-object v1, v9, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1836
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get17(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    const-string/jumbo v1, "android.permission.BLUETOOTH"

    invoke-virtual {v0, v10, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1840
    .local v10, "intent":Landroid/content/Intent;
    :pswitch_10
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    .line 1841
    iget v1, v9, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    .line 1842
    iget v2, v9, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt3:I

    .line 1843
    iget-object v3, v9, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueString:Ljava/lang/String;

    .line 1844
    iget v4, v9, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt4:I

    if-ne v4, v12, :cond_10

    move v4, v12

    .line 1846
    :goto_1
    iget v13, v9, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt2:I

    if-nez v13, :cond_f

    move v5, v12

    .line 1840
    :cond_f
    invoke-static/range {v0 .. v5}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap31(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;IILjava/lang/String;ZZ)V

    goto/16 :goto_0

    :cond_10
    move v4, v5

    .line 1844
    goto :goto_1

    .line 1850
    :pswitch_11
    iget v0, v9, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    if-nez v0, :cond_11

    .line 1851
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get1(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/media/AudioManager;

    move-result-object v0

    .line 1852
    iget v1, v9, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt2:I

    .line 1851
    const/4 v2, 0x6

    .line 1852
    const/4 v3, 0x1

    .line 1851
    invoke-virtual {v0, v2, v1, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1853
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-set21(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Z)Z

    goto/16 :goto_0

    .line 1854
    :cond_11
    iget v0, v9, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    if-ne v0, v12, :cond_0

    .line 1855
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get1(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/media/AudioManager;

    move-result-object v1

    iget v0, v9, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt2:I

    if-nez v0, :cond_12

    move v0, v12

    :goto_2
    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    .line 1856
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-set20(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Z)Z

    goto/16 :goto_0

    :cond_12
    move v0, v5

    .line 1855
    goto :goto_2

    .line 1860
    :pswitch_12
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get16(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/Pair;

    .line 1863
    .local v11, "queuedAction":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Object;>;"
    if-eqz v11, :cond_13

    iget-object v0, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_14

    .line 1864
    :cond_13
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap25(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)V

    goto/16 :goto_0

    .line 1868
    :cond_14
    const-string/jumbo v0, "HeadsetClientStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Connected: command result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v9, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1869
    const-string/jumbo v2, " queuedAction: "

    .line 1868
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1869
    iget-object v2, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 1868
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1871
    iget-object v0, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    .line 1953
    invoke-direct {p0, v9}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->sendActionResultIntent(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;)V

    goto/16 :goto_0

    .line 1874
    :sswitch_17
    iget v0, v9, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    if-nez v0, :cond_15

    .line 1875
    iget-object v0, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_16

    .line 1876
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    .line 1877
    const/4 v1, 0x0

    .line 1876
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-set22(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I

    .line 1883
    :cond_15
    :goto_3
    new-instance v10, Landroid/content/Intent;

    .end local v10    # "intent":Landroid/content/Intent;
    const-string/jumbo v0, "android.bluetooth.headsetclient.profile.action.AG_EVENT"

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1885
    .local v10, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "android.bluetooth.headsetclient.extra.VOICE_RECOGNITION"

    .line 1886
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get21(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)I

    move-result v1

    .line 1884
    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1887
    const-string/jumbo v0, "android.bluetooth.device.extra.DEVICE"

    iget-object v1, v9, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1888
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get17(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    const-string/jumbo v1, "android.permission.BLUETOOTH"

    invoke-virtual {v0, v10, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1879
    .local v10, "intent":Landroid/content/Intent;
    :cond_16
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    .line 1880
    const/4 v1, 0x1

    .line 1879
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-set22(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I

    goto :goto_3

    .line 1891
    :sswitch_18
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap30(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)V

    goto/16 :goto_0

    .line 1894
    :sswitch_19
    iget v0, v9, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    if-nez v0, :cond_17

    .line 1895
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0, v11}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-set16(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/util/Pair;)Landroid/util/Pair;

    goto/16 :goto_0

    .line 1897
    :cond_17
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap18(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I

    move-result v0

    if-nez v0, :cond_19

    .line 1898
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x4

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap0(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;[I)Landroid/bluetooth/BluetoothHeadsetClientCall;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 1899
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get15(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_18

    .line 1900
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap19(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;IZ)V

    goto/16 :goto_0

    .line 1902
    :cond_18
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x5

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap0(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;[I)Landroid/bluetooth/BluetoothHeadsetClientCall;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 1903
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get15(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v4, :cond_19

    .line 1904
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap19(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;IZ)V

    goto/16 :goto_0

    .line 1908
    :cond_19
    invoke-direct {p0, v9}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->sendActionResultIntent(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;)V

    goto/16 :goto_0

    .line 1918
    :sswitch_1a
    iget v0, v9, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    if-nez v0, :cond_1a

    .line 1919
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0, v11}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-set16(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/util/Pair;)Landroid/util/Pair;

    goto/16 :goto_0

    .line 1921
    :cond_1a
    invoke-direct {p0, v9}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->sendActionResultIntent(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;)V

    goto/16 :goto_0

    .line 1927
    :sswitch_1b
    iget v0, v9, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    if-nez v0, :cond_1b

    .line 1929
    iget-object v6, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Landroid/bluetooth/BluetoothHeadsetClientCall;

    .line 1930
    .local v6, "c":Landroid/bluetooth/BluetoothHeadsetClientCall;
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    .line 1931
    const/4 v1, 0x7

    .line 1930
    invoke-static {v0, v6, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap34(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothHeadsetClientCall;I)V

    .line 1932
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get6(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1934
    .end local v6    # "c":Landroid/bluetooth/BluetoothHeadsetClientCall;
    :cond_1b
    invoke-direct {p0, v9}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->sendActionResultIntent(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;)V

    goto/16 :goto_0

    .line 1938
    :sswitch_1c
    iget v0, v9, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    if-eqz v0, :cond_0

    .line 1939
    invoke-direct {p0, v9}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->sendActionResultIntent(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;)V

    goto/16 :goto_0

    .line 1943
    :sswitch_1d
    iget v0, v9, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    if-eqz v0, :cond_0

    .line 1944
    const-string/jumbo v0, "HeadsetClientStateMachine"

    const-string/jumbo v1, "Failed to disable AG\'s EC and NR"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1960
    .end local v11    # "queuedAction":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Object;>;"
    :pswitch_13
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget-object v1, v9, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueString:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-set19(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 1961
    new-instance v10, Landroid/content/Intent;

    .end local v10    # "intent":Landroid/content/Intent;
    const-string/jumbo v0, "android.bluetooth.headsetclient.profile.action.AG_EVENT"

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1962
    .local v10, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "android.bluetooth.headsetclient.extra.SUBSCRIBER_INFO"

    .line 1963
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get18(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Ljava/lang/String;

    move-result-object v1

    .line 1962
    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1964
    const-string/jumbo v0, "android.bluetooth.device.extra.DEVICE"

    iget-object v1, v9, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1965
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get17(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    const-string/jumbo v1, "android.permission.BLUETOOTH"

    invoke-virtual {v0, v10, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1968
    .local v10, "intent":Landroid/content/Intent;
    :pswitch_14
    new-instance v10, Landroid/content/Intent;

    .end local v10    # "intent":Landroid/content/Intent;
    const-string/jumbo v0, "android.bluetooth.headsetclient.profile.action.LAST_VTAG"

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1969
    .local v10, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "android.bluetooth.headsetclient.extra.NUMBER"

    .line 1970
    iget-object v1, v9, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueString:Ljava/lang/String;

    .line 1969
    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1971
    const-string/jumbo v0, "android.bluetooth.device.extra.DEVICE"

    iget-object v1, v9, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1972
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get17(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    const-string/jumbo v1, "android.permission.BLUETOOTH"

    invoke-virtual {v0, v10, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 1560
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_12
        0x12 -> :sswitch_11
        0x13 -> :sswitch_14
        0x32 -> :sswitch_15
        0x34 -> :sswitch_13
        0x64 -> :sswitch_16
    .end sparse-switch

    .line 1715
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_8
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_d
        :pswitch_e
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_c
        :pswitch_f
        :pswitch_14
        :pswitch_0
    .end packed-switch

    .line 1871
    :sswitch_data_1
    .sparse-switch
        0x5 -> :sswitch_17
        0x6 -> :sswitch_17
        0x7 -> :sswitch_1
        0x8 -> :sswitch_1
        0x9 -> :sswitch_1a
        0xa -> :sswitch_1a
        0xb -> :sswitch_1a
        0xc -> :sswitch_19
        0xd -> :sswitch_1a
        0xe -> :sswitch_1a
        0xf -> :sswitch_1a
        0x10 -> :sswitch_1a
        0x13 -> :sswitch_1c
        0x14 -> :sswitch_1d
        0x32 -> :sswitch_18
        0x33 -> :sswitch_1
        0x34 -> :sswitch_1
        0x35 -> :sswitch_1b
    .end sparse-switch
.end method
