.class final Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;
.super Landroid/os/Handler;
.source "BluetoothMapService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMapService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MapServiceMessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/map/BluetoothMapService;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/map/BluetoothMapService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/bluetooth/map/BluetoothMapService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 335
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    .line 336
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 335
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/map/BluetoothMapService;Landroid/os/Looper;Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/bluetooth/map/BluetoothMapService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;-><init>(Lcom/android/bluetooth/map/BluetoothMapService;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v10, 0x138e

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 340
    const-string/jumbo v4, "BluetoothMapService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Handler(): got msg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 339
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 344
    :sswitch_1
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-static {v4}, Lcom/android/bluetooth/map/BluetoothMapService;->-wrap1(Lcom/android/bluetooth/map/BluetoothMapService;)Z

    goto :goto_0

    .line 347
    :sswitch_2
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-static {v4}, Lcom/android/bluetooth/map/BluetoothMapService;->-get0(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 348
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-static {v4, v5}, Lcom/android/bluetooth/map/BluetoothMapService;->-wrap10(Lcom/android/bluetooth/map/BluetoothMapService;I)V

    goto :goto_0

    .line 352
    :sswitch_3
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-static {v4, v5}, Lcom/android/bluetooth/map/BluetoothMapService;->-wrap4(Lcom/android/bluetooth/map/BluetoothMapService;I)V

    goto :goto_0

    .line 359
    :sswitch_4
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-static {v4, v7}, Lcom/android/bluetooth/map/BluetoothMapService;->-wrap11(Lcom/android/bluetooth/map/BluetoothMapService;I)V

    goto :goto_0

    .line 362
    :sswitch_5
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-static {v4}, Lcom/android/bluetooth/map/BluetoothMapService;->-get2(Lcom/android/bluetooth/map/BluetoothMapService;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 363
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "android.bluetooth.device.action.CONNECTION_ACCESS_CANCEL"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 364
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "com.android.settings"

    const-string/jumbo v5, "com.android.settings.bluetooth.BluetoothPermissionRequest"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 365
    const-string/jumbo v4, "android.bluetooth.device.extra.DEVICE"

    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapService;->-get4()Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 366
    const-string/jumbo v4, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    .line 367
    const/4 v5, 0x3

    .line 366
    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 368
    const/high16 v4, 0x10000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 369
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    const-string/jumbo v5, "android.permission.BLUETOOTH"

    invoke-virtual {v4, v1, v5}, Lcom/android/bluetooth/map/BluetoothMapService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 370
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-static {v4}, Lcom/android/bluetooth/map/BluetoothMapService;->-wrap2(Lcom/android/bluetooth/map/BluetoothMapService;)V

    .line 371
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-static {v4, v8}, Lcom/android/bluetooth/map/BluetoothMapService;->-set0(Lcom/android/bluetooth/map/BluetoothMapService;Z)Z

    .line 372
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-static {v4, v7}, Lcom/android/bluetooth/map/BluetoothMapService;->-wrap11(Lcom/android/bluetooth/map/BluetoothMapService;I)V

    goto :goto_0

    .line 376
    .end local v1    # "intent":Landroid/content/Intent;
    :sswitch_6
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-static {v4, v5}, Lcom/android/bluetooth/map/BluetoothMapService;->-wrap11(Lcom/android/bluetooth/map/BluetoothMapService;I)V

    goto :goto_0

    .line 384
    :sswitch_7
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5, v4}, Lcom/android/bluetooth/map/BluetoothMapService;->disconnectMap(Landroid/bluetooth/BluetoothDevice;)Z

    goto/16 :goto_0

    .line 389
    :sswitch_8
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-static {v4}, Lcom/android/bluetooth/map/BluetoothMapService;->-wrap3(Lcom/android/bluetooth/map/BluetoothMapService;)V

    goto/16 :goto_0

    .line 392
    :sswitch_9
    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    if-eqz v4, :cond_1

    const-string/jumbo v4, "BluetoothMapService"

    const-string/jumbo v5, "Acquire Wake Lock request message"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    :cond_1
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-static {v4}, Lcom/android/bluetooth/map/BluetoothMapService;->-get8(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    if-nez v4, :cond_2

    .line 394
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    .line 395
    const-string/jumbo v5, "power"

    .line 394
    invoke-virtual {v4, v5}, Lcom/android/bluetooth/map/BluetoothMapService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 396
    .local v3, "pm":Landroid/os/PowerManager;
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    .line 397
    const-string/jumbo v5, "StartingObexMapTransaction"

    .line 396
    invoke-virtual {v3, v9, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/bluetooth/map/BluetoothMapService;->-set3(Lcom/android/bluetooth/map/BluetoothMapService;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;

    .line 398
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-static {v4}, Lcom/android/bluetooth/map/BluetoothMapService;->-get8(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 400
    .end local v3    # "pm":Landroid/os/PowerManager;
    :cond_2
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-static {v4}, Lcom/android/bluetooth/map/BluetoothMapService;->-get8(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v4

    if-nez v4, :cond_3

    .line 401
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-static {v4}, Lcom/android/bluetooth/map/BluetoothMapService;->-get8(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 402
    const-string/jumbo v4, "BluetoothMapService"

    const-string/jumbo v5, "  Acquired Wake Lock by message"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :cond_3
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-static {v4}, Lcom/android/bluetooth/map/BluetoothMapService;->-get7(Lcom/android/bluetooth/map/BluetoothMapService;)Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    move-result-object v4

    invoke-virtual {v4, v10}, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->removeMessages(I)V

    .line 405
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-static {v4}, Lcom/android/bluetooth/map/BluetoothMapService;->-get7(Lcom/android/bluetooth/map/BluetoothMapService;)Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-static {v5}, Lcom/android/bluetooth/map/BluetoothMapService;->-get7(Lcom/android/bluetooth/map/BluetoothMapService;)Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    move-result-object v5

    invoke-virtual {v5, v10}, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 406
    const-wide/16 v6, 0x2710

    .line 405
    invoke-virtual {v4, v5, v6, v7}, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 409
    :sswitch_a
    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    if-eqz v4, :cond_4

    const-string/jumbo v4, "BluetoothMapService"

    const-string/jumbo v5, "Release Wake Lock request message"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :cond_4
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-static {v4}, Lcom/android/bluetooth/map/BluetoothMapService;->-get8(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 411
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-static {v4}, Lcom/android/bluetooth/map/BluetoothMapService;->-get8(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 412
    const-string/jumbo v4, "BluetoothMapService"

    const-string/jumbo v5, "  Released Wake Lock by message"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 416
    :sswitch_b
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapService;->-get4()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 417
    const-string/jumbo v4, "BluetoothMapService"

    const-string/jumbo v5, "MNS SDP Initiate Search .."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapService;->-get4()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    sget-object v5, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->BLUETOOTH_UUID_OBEX_MNS:Landroid/os/ParcelUuid;

    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothDevice;->sdpSearch(Landroid/os/ParcelUuid;)Z

    goto/16 :goto_0

    .line 420
    :cond_5
    const-string/jumbo v4, "BluetoothMapService"

    const-string/jumbo v5, "remoteDevice info not available"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 424
    :sswitch_c
    const-string/jumbo v4, "BluetoothMapService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ContentObserver Registration MASID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 425
    const-string/jumbo v6, " Enable: "

    .line 424
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 425
    iget v6, p1, Landroid/os/Message;->arg2:I

    .line 424
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-static {v4}, Lcom/android/bluetooth/map/BluetoothMapService;->-get3(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/util/SparseArray;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    .line 427
    .local v2, "masInst":Lcom/android/bluetooth/map/BluetoothMapMasInstance;
    if-eqz v2, :cond_0

    iget-object v4, v2, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    if-eqz v4, :cond_0

    .line 429
    :try_start_0
    iget v4, p1, Landroid/os/Message;->arg2:I

    if-ne v4, v9, :cond_6

    .line 430
    iget-object v4, v2, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-virtual {v4}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->registerObserver()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 434
    :catch_0
    move-exception v0

    .line 435
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "BluetoothMapService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ContentObserverRegistarion Failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 432
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_6
    :try_start_1
    iget-object v4, v2, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-virtual {v4}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->unregisterObserver()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 342
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_5
        0x3 -> :sswitch_7
        0x4 -> :sswitch_8
        0x5 -> :sswitch_1
        0x1388 -> :sswitch_6
        0x1389 -> :sswitch_0
        0x138a -> :sswitch_0
        0x138b -> :sswitch_3
        0x138c -> :sswitch_4
        0x138d -> :sswitch_9
        0x138e -> :sswitch_a
        0x138f -> :sswitch_b
        0x1390 -> :sswitch_c
    .end sparse-switch
.end method
