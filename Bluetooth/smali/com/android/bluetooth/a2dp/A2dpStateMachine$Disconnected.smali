.class Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;
.super Lcom/android/internal/util/State;
.source "A2dpStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/a2dp/A2dpStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Disconnected"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;-><init>(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)V

    return-void
.end method

.method private processConnectionEvent(ILandroid/bluetooth/BluetoothDevice;)V
    .locals 7
    .param p1, "state"    # I
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 302
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "processConnectionEvent state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 303
    const-string/jumbo v3, ", device = "

    .line 302
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap8(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    .line 304
    packed-switch p1, :pswitch_data_0

    .line 360
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Incorrect state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap9(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 306
    :pswitch_0
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Ignore A2DP DISCONNECTED event, device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap11(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    goto :goto_0

    .line 309
    :pswitch_1
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-virtual {v1, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->okToConnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 310
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const-string/jumbo v2, "Incoming A2DP accepted"

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap10(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    .line 311
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const/4 v2, 0x1

    invoke-static {v1, p2, v2, v6}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap6(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 313
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    monitor-enter v2

    .line 314
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-set2(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 315
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get10(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap14(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/internal/util/IState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    goto :goto_0

    .line 313
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 319
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const-string/jumbo v2, "Incoming A2DP rejected"

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap10(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    .line 320
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v2, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap4(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap3(Lcom/android/bluetooth/a2dp/A2dpStateMachine;[B)Z

    .line 322
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 323
    .local v0, "adapterService":Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    .line 324
    invoke-virtual {v0, p2, v5}, Lcom/android/bluetooth/btservice/AdapterService;->connectOtherProfile(Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_0

    .line 330
    .end local v0    # "adapterService":Lcom/android/bluetooth/btservice/AdapterService;
    :pswitch_2
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const-string/jumbo v2, "A2DP Connected from Disconnected state"

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap11(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    .line 331
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-virtual {v1, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->okToConnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 332
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const-string/jumbo v2, "Incoming A2DP accepted"

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap10(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    .line 333
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    monitor-enter v2

    .line 334
    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get3(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 335
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get3(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "device "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 337
    const-string/jumbo v4, " is adding in Disconnected state"

    .line 336
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap8(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    .line 339
    :cond_2
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-set1(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 340
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get2(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap14(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/internal/util/IState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v2

    .line 342
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1, p2, v5, v6}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap6(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    goto/16 :goto_0

    .line 333
    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1

    .line 346
    :cond_3
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const-string/jumbo v2, "Incoming A2DP rejected"

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap10(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    .line 347
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v2, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap4(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap3(Lcom/android/bluetooth/a2dp/A2dpStateMachine;[B)Z

    .line 349
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 350
    .restart local v0    # "adapterService":Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    .line 351
    invoke-virtual {v0, p2, v5}, Lcom/android/bluetooth/btservice/AdapterService;->connectOtherProfile(Landroid/bluetooth/BluetoothDevice;I)V

    goto/16 :goto_0

    .line 357
    .end local v0    # "adapterService":Lcom/android/bluetooth/btservice/AdapterService;
    :pswitch_3
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Ignore A2dp DISCONNECTING event, device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap11(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 304
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Enter Disconnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap1(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/os/Message;

    move-result-object v2

    iget v2, v2, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap8(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mConnectedDevicesList size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get3(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap8(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const/16 v1, 0xc9

    invoke-static {v0, v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap13(Lcom/android/bluetooth/a2dp/A2dpStateMachine;I)V

    .line 234
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-set1(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 229
    return-void
.end method

.method public exit()V
    .locals 3

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exit Disconnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap1(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/os/Message;

    move-result-object v2

    iget v2, v2, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap8(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    .line 296
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 9
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 239
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Disconnected process message: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap8(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    .line 240
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mConnectedDevicesList size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v6}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get3(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap8(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    .line 241
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get5(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get13(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 243
    :cond_0
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const-string/jumbo v5, "ERROR: mConnectedDevicesList is not empty,current, target, or mIncomingDevice not null in Disconnected"

    invoke-static {v4, v5}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap9(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    .line 245
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mCurrentDevice is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v6}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get5(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap9(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    .line 246
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mTargetDevice is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v6}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get13(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap9(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    .line 247
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mIncomingDevice is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v6}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get7(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap9(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    .line 248
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mConnectedDevicesList.size() is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v6}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get3(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap9(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    .line 249
    return v7

    .line 241
    :cond_1
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get7(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    if-nez v4, :cond_0

    .line 242
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get3(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 252
    const/4 v3, 0x1

    .line 253
    .local v3, "retValue":Z
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 290
    return v7

    .line 255
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 256
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v4, v0, v8, v7}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap6(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 259
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v5, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v5, v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap4(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap2(Lcom/android/bluetooth/a2dp/A2dpStateMachine;[B)Z

    move-result v4

    if-nez v4, :cond_2

    .line 260
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v4, v0, v7, v8}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap6(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 292
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    :goto_0
    :sswitch_1
    return v3

    .line 265
    .restart local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_2
    iget-object v5, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    monitor-enter v5

    .line 266
    :try_start_0
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v4, v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-set4(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 267
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v6, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v6}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get10(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap14(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/internal/util/IState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    .line 271
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const/16 v5, 0xc9

    invoke-virtual {v4, v5}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 272
    .local v2, "m":Landroid/os/Message;
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 273
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const-wide/32 v6, 0x9470

    invoke-virtual {v4, v2, v6, v7}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto :goto_0

    .line 265
    .end local v2    # "m":Landroid/os/Message;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 279
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    :sswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;

    .line 280
    .local v1, "event":Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;
    iget v4, v1, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->type:I

    packed-switch v4, :pswitch_data_0

    .line 285
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unexpected stack event: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->type:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap9(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    goto :goto_0

    .line 282
    :pswitch_0
    iget v4, v1, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->valueInt:I

    iget-object v5, v1, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v4, v5}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->processConnectionEvent(ILandroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 253
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x65 -> :sswitch_2
    .end sparse-switch

    .line 280
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
