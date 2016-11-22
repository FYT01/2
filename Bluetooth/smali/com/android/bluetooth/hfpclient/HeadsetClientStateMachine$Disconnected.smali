.class Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;
.super Lcom/android/internal/util/State;
.source "HeadsetClientStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Disconnected"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    .prologue
    .line 1279
    iput-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;-><init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)V

    return-void
.end method

.method private processConnectionEvent(ILandroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 1369
    packed-switch p1, :pswitch_data_0

    .line 1397
    const-string/jumbo v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ignoring state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1367
    :cond_0
    :goto_0
    return-void

    .line 1371
    :pswitch_0
    const-string/jumbo v1, "HeadsetClientStateMachine"

    const-string/jumbo v2, "HFPClient Connecting from Disconnected state"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1372
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v1, p2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->okToConnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1373
    const-string/jumbo v1, "HeadsetClientStateMachine"

    const-string/jumbo v2, "Incoming AG accepted"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v2, 0x1

    .line 1375
    const/4 v3, 0x0

    .line 1374
    invoke-static {v1, p2, v2, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap24(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 1376
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v1, p2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-set5(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 1377
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get8(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap36(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 1379
    :cond_1
    const-string/jumbo v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Incoming AG rejected. priority="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get17(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1381
    const-string/jumbo v3, " bondState="

    .line 1379
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1381
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v3

    .line 1379
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1384
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v2, p2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap17(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap7(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;[B)Z

    .line 1386
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1387
    .local v0, "adapterService":Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    .line 1389
    const/4 v1, 0x2

    .line 1388
    invoke-virtual {v0, p2, v1}, Lcom/android/bluetooth/btservice/AdapterService;->connectOtherProfile(Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_0

    .line 1369
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public enter()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 1282
    const-string/jumbo v0, "HeadsetClientStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Enter Disconnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap1(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/os/Message;

    move-result-object v2

    iget v2, v2, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-set12(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I

    .line 1286
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-set13(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I

    .line 1287
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-set11(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I

    .line 1288
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-set7(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I

    .line 1290
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-set1(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Z)Z

    .line 1293
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0, v4}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-set8(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I

    .line 1294
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0, v4}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-set10(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I

    .line 1295
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0, v4}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-set9(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I

    .line 1297
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0, v5}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-set14(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 1298
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0, v5}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-set19(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 1300
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-set18(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Ljava/util/Queue;)Ljava/util/Queue;

    .line 1301
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap25(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)V

    .line 1303
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-set22(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I

    .line 1304
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-set6(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I

    .line 1306
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-set2(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Ljava/util/Hashtable;)Ljava/util/Hashtable;

    .line 1307
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0, v5}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-set3(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Ljava/util/Hashtable;)Ljava/util/Hashtable;

    .line 1308
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-set17(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Z)Z

    .line 1310
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-set15(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I

    .line 1311
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-set4(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I

    .line 1313
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/16 v1, 0x32

    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap33(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V

    .line 1281
    return-void
.end method

.method public exit()V
    .locals 3

    .prologue
    .line 1404
    const-string/jumbo v0, "HeadsetClientStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exit Disconnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap1(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/os/Message;

    move-result-object v2

    iget v2, v2, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    return-void
.end method

.method public declared-synchronized processMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    monitor-enter p0

    .line 1318
    :try_start_0
    const-string/jumbo v2, "HeadsetClientStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Disconnected process message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get9(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1321
    const-string/jumbo v2, "HeadsetClientStateMachine"

    const-string/jumbo v3, "ERROR: current device not null in Disconnected"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1322
    return v5

    .line 1325
    :cond_0
    :try_start_1
    iget v2, p1, Landroid/os/Message;->what:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sparse-switch v2, :sswitch_data_0

    monitor-exit p0

    .line 1361
    return v5

    .line 1327
    :sswitch_0
    :try_start_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 1329
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v3, 0x1

    .line 1330
    const/4 v4, 0x0

    .line 1329
    invoke-static {v2, v0, v3, v4}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap24(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 1332
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v3, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap17(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap3(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;[B)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1333
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v3, 0x0

    .line 1334
    const/4 v4, 0x1

    .line 1333
    invoke-static {v2, v0, v3, v4}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap24(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    :goto_0
    :sswitch_1
    monitor-exit p0

    .line 1363
    return v6

    .line 1338
    .restart local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_1
    :try_start_3
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v2, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-set5(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 1339
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get8(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap36(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Lcom/android/internal/util/IState;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1345
    :sswitch_2
    :try_start_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;

    .line 1349
    .local v1, "event":Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;
    iget v2, v1, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->type:I

    packed-switch v2, :pswitch_data_0

    .line 1356
    const-string/jumbo v2, "HeadsetClientStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Disconnected: Unexpected stack event: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->type:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1351
    :pswitch_0
    const-string/jumbo v2, "HeadsetClientStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Disconnected: Connection "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1352
    const-string/jumbo v4, " state changed:"

    .line 1351
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1352
    iget v4, v1, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    .line 1351
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    iget v2, v1, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    iget-object v3, v1, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v2, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->processConnectionEvent(ILandroid/bluetooth/BluetoothDevice;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 1325
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x64 -> :sswitch_2
    .end sparse-switch

    .line 1349
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
