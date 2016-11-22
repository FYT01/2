.class Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;
.super Lcom/android/internal/util/State;
.source "A2dpSinkStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Connected"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    .prologue
    .line 655
    iput-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;-><init>(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)V

    return-void
.end method

.method private processAudioFocusRequestEvent(ILandroid/bluetooth/BluetoothDevice;)V
    .locals 5
    .param p1, "enable"    # I
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v4, 0x1

    .line 821
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get7(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get7(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 822
    if-ne v4, p1, :cond_2

    .line 824
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get2(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 825
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    const-string/jumbo v2, " Transient Loss Still, Don\'t acquire focus, Send PAUSE"

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap9(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V

    .line 826
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-virtual {v1, p2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->SendPassThruPause(Landroid/bluetooth/BluetoothDevice;)Z

    .line 828
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap8(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;I)V

    .line 829
    return-void

    .line 831
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get2(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 832
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap14(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)V

    .line 833
    return-void

    .line 835
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get4(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/media/AudioManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get3(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v2

    .line 836
    const/4 v3, 0x3

    .line 835
    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    .line 837
    .local v0, "status":I
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " Audio Focus Request returned "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap9(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V

    .line 838
    if-ne v0, v4, :cond_3

    .line 839
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v1, v4}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-set0(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;I)I

    .line 840
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap14(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)V

    .line 820
    .end local v0    # "status":I
    :cond_2
    :goto_0
    return-void

    .line 843
    .restart local v0    # "status":I
    :cond_3
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    const-string/jumbo v2, "Can\'t acquire Focus, request with delay"

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap9(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V

    .line 844
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    const/16 v2, 0x1f4

    invoke-static {v1, v4, p2, v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap18(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;ZLandroid/bluetooth/BluetoothDevice;I)V

    goto :goto_0
.end method

.method private processAudioStateEvent(ILandroid/bluetooth/BluetoothDevice;)V
    .locals 6
    .param p1, "state"    # I
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 780
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get7(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 781
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Audio State Device:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "is different from ConnectedDevice:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 782
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get7(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    .line 781
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap10(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V

    .line 783
    return-void

    .line 785
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " processAudioStateEvent in state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap9(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V

    .line 786
    packed-switch p1, :pswitch_data_0

    .line 815
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Audio State Device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " bad state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap10(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V

    .line 779
    :cond_1
    :goto_0
    return-void

    .line 788
    :pswitch_0
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get13(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-nez v1, :cond_1

    .line 789
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v1, p2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-set5(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    goto :goto_0

    .line 796
    :pswitch_1
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v1, v5}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-set5(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 797
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap16(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)V

    .line 798
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    const/16 v2, 0xb

    .line 799
    const/16 v3, 0xa

    .line 798
    invoke-static {v1, p2, v2, v3}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap5(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 800
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get2(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)I

    move-result v1

    if-nez v1, :cond_2

    .line 802
    return-void

    .line 804
    :cond_2
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get2(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 805
    if-nez p1, :cond_3

    .line 806
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    const-string/jumbo v2, " Dont\'t Loose audiofocus in case of suspend "

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap9(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V

    goto :goto_0

    .line 809
    :cond_3
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get4(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/media/AudioManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get3(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result v0

    .line 810
    .local v0, "status":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 811
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v1, v4}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-set0(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;I)I

    goto :goto_0

    .line 786
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private processConnectionEvent(ILandroid/bluetooth/BluetoothDevice;)V
    .locals 5
    .param p1, "state"    # I
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 749
    packed-switch p1, :pswitch_data_0

    .line 775
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Connection State Device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " bad state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap10(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V

    .line 748
    :cond_0
    :goto_0
    return-void

    .line 751
    :pswitch_0
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get1(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 752
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get13(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get13(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 753
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-set5(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 755
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get7(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 756
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get7(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 757
    const/4 v3, 0x2

    .line 756
    invoke-static {v1, v2, v4, v3}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap6(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 758
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    monitor-enter v2

    .line 759
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-set1(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 760
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get8(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap19(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Lcom/android/internal/util/IState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 762
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap16(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)V

    .line 763
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get4(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/media/AudioManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get3(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result v0

    .line 764
    .local v0, "status":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 765
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v1, v4}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-set0(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;I)I

    goto :goto_0

    .line 758
    .end local v0    # "status":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 771
    :cond_2
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Disconnected from unknown device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap10(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 749
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public enter()V
    .locals 4

    .prologue
    .line 658
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Enter Connected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap0(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/os/Message;

    move-result-object v2

    iget v2, v2, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap9(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V

    .line 660
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get7(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    const/16 v2, 0xb

    .line 661
    const/16 v3, 0xa

    .line 660
    invoke-static {v0, v1, v2, v3}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap5(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 657
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 11
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 666
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Connected process message: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap9(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V

    .line 667
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v4}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get7(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    if-nez v4, :cond_0

    .line 668
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    const-string/jumbo v5, "ERROR: mCurrentDevice is null in Connected"

    invoke-static {v4, v5}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap10(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V

    .line 669
    return v7

    .line 672
    :cond_0
    const/4 v2, 0x1

    .line 673
    .local v2, "retValue":Z
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 742
    return v7

    .line 676
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 677
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v4}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get7(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 744
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_1
    :goto_0
    return v2

    .line 681
    .restart local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_2
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v4, v0, v8, v7}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap6(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 683
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    iget-object v5, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    iget-object v6, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v6}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get7(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap3(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap2(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;[B)Z

    move-result v4

    if-nez v4, :cond_3

    .line 684
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v4, v0, v7, v8}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap6(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_0

    .line 689
    :cond_3
    iget-object v5, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    monitor-enter v5

    .line 690
    :try_start_0
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v4, v0}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-set6(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 691
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    iget-object v6, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v6}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get12(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap19(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Lcom/android/internal/util/IState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    goto :goto_0

    .line 689
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 697
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 698
    .restart local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v4}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get7(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 701
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    const/4 v5, 0x3

    invoke-static {v4, v0, v5, v9}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap6(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 703
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    iget-object v5, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v5, v0}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap3(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap2(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;[B)Z

    move-result v4

    if-nez v4, :cond_4

    .line 704
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v4, v0, v9, v7}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap6(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_0

    .line 709
    :cond_4
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v4}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get2(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)I

    move-result v4

    if-eqz v4, :cond_5

    .line 710
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v4}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap16(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)V

    .line 711
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v4}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get4(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/media/AudioManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v5}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get3(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result v3

    .line 712
    .local v3, "status":I
    if-ne v3, v8, :cond_5

    .line 713
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v4, v7}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-set0(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;I)I

    .line 716
    .end local v3    # "status":I
    :cond_5
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v4, v10}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-set5(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 718
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    iget-object v5, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v5}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get12(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap19(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 722
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    :sswitch_2
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v8, v4}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->processAudioFocusRequestEvent(ILandroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 725
    :sswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$StackEvent;

    .line 726
    .local v1, "event":Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$StackEvent;
    iget v4, v1, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$StackEvent;->type:I

    packed-switch v4, :pswitch_data_0

    .line 737
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unexpected stack event: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$StackEvent;->type:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap10(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 728
    :pswitch_0
    iget v4, v1, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$StackEvent;->valueInt:I

    iget-object v5, v1, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v4, v5}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->processConnectionEvent(ILandroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 731
    :pswitch_1
    iget v4, v1, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$StackEvent;->valueInt:I

    iget-object v5, v1, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v4, v5}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->processAudioStateEvent(ILandroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 734
    :pswitch_2
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    iget-object v5, v1, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$StackEvent;->audioConfig:Landroid/bluetooth/BluetoothAudioConfig;

    iget-object v6, v1, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v4, v5, v6}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap15(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothAudioConfig;Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 673
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x65 -> :sswitch_3
    .end sparse-switch

    .line 726
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
