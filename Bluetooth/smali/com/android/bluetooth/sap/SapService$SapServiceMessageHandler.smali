.class final Lcom/android/bluetooth/sap/SapService$SapServiceMessageHandler;
.super Landroid/os/Handler;
.source "SapService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/sap/SapService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SapServiceMessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/sap/SapService;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/sap/SapService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/bluetooth/sap/SapService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 438
    iput-object p1, p0, Lcom/android/bluetooth/sap/SapService$SapServiceMessageHandler;->this$0:Lcom/android/bluetooth/sap/SapService;

    .line 439
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 438
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/sap/SapService;Landroid/os/Looper;Lcom/android/bluetooth/sap/SapService$SapServiceMessageHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/bluetooth/sap/SapService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/sap/SapService$SapServiceMessageHandler;-><init>(Lcom/android/bluetooth/sap/SapService;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v6, 0x138e

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 443
    sget-boolean v1, Lcom/android/bluetooth/sap/SapService;->VERBOSE:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SapService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Handler(): got msg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 442
    :cond_1
    :goto_0
    :sswitch_0
    return-void

    .line 447
    :sswitch_1
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapService$SapServiceMessageHandler;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {v1}, Lcom/android/bluetooth/sap/SapService;->-get0(Lcom/android/bluetooth/sap/SapService;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 448
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapService$SapServiceMessageHandler;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {v1}, Lcom/android/bluetooth/sap/SapService;->-wrap9(Lcom/android/bluetooth/sap/SapService;)V

    goto :goto_0

    .line 452
    :sswitch_2
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapService$SapServiceMessageHandler;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {v1}, Lcom/android/bluetooth/sap/SapService;->-get2(Lcom/android/bluetooth/sap/SapService;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 453
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapService$SapServiceMessageHandler;->this$0:Lcom/android/bluetooth/sap/SapService;

    iget-object v2, p0, Lcom/android/bluetooth/sap/SapService$SapServiceMessageHandler;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {v2}, Lcom/android/bluetooth/sap/SapService;->-get3(Lcom/android/bluetooth/sap/SapService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/sap/SapService;->-wrap4(Lcom/android/bluetooth/sap/SapService;Landroid/bluetooth/BluetoothDevice;)V

    .line 454
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapService$SapServiceMessageHandler;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {v1}, Lcom/android/bluetooth/sap/SapService;->-wrap2(Lcom/android/bluetooth/sap/SapService;)V

    .line 455
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapService$SapServiceMessageHandler;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {v1, v5}, Lcom/android/bluetooth/sap/SapService;->-set1(Lcom/android/bluetooth/sap/SapService;Z)Z

    .line 456
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapService$SapServiceMessageHandler;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {v1}, Lcom/android/bluetooth/sap/SapService;->-wrap11(Lcom/android/bluetooth/sap/SapService;)V

    goto :goto_0

    .line 460
    :sswitch_3
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapService$SapServiceMessageHandler;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {v1}, Lcom/android/bluetooth/sap/SapService;->-wrap11(Lcom/android/bluetooth/sap/SapService;)V

    goto :goto_0

    .line 468
    :sswitch_4
    sget-boolean v1, Lcom/android/bluetooth/sap/SapService;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "SapService"

    const-string/jumbo v2, "Acquire Wake Lock request message"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :cond_2
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapService$SapServiceMessageHandler;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {v1}, Lcom/android/bluetooth/sap/SapService;->-get7(Lcom/android/bluetooth/sap/SapService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    if-nez v1, :cond_3

    .line 470
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapService$SapServiceMessageHandler;->this$0:Lcom/android/bluetooth/sap/SapService;

    .line 471
    const-string/jumbo v2, "power"

    .line 470
    invoke-virtual {v1, v2}, Lcom/android/bluetooth/sap/SapService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 472
    .local v0, "pm":Landroid/os/PowerManager;
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapService$SapServiceMessageHandler;->this$0:Lcom/android/bluetooth/sap/SapService;

    .line 473
    const-string/jumbo v2, "StartingObexMapTransaction"

    .line 472
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/sap/SapService;->-set4(Lcom/android/bluetooth/sap/SapService;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;

    .line 474
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapService$SapServiceMessageHandler;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {v1}, Lcom/android/bluetooth/sap/SapService;->-get7(Lcom/android/bluetooth/sap/SapService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 476
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_3
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapService$SapServiceMessageHandler;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {v1}, Lcom/android/bluetooth/sap/SapService;->-get7(Lcom/android/bluetooth/sap/SapService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_4

    .line 477
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapService$SapServiceMessageHandler;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {v1}, Lcom/android/bluetooth/sap/SapService;->-get7(Lcom/android/bluetooth/sap/SapService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 478
    sget-boolean v1, Lcom/android/bluetooth/sap/SapService;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string/jumbo v1, "SapService"

    const-string/jumbo v2, "  Acquired Wake Lock by message"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    :cond_4
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapService$SapServiceMessageHandler;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {v1}, Lcom/android/bluetooth/sap/SapService;->-get6(Lcom/android/bluetooth/sap/SapService;)Lcom/android/bluetooth/sap/SapService$SapServiceMessageHandler;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/bluetooth/sap/SapService$SapServiceMessageHandler;->removeMessages(I)V

    .line 481
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapService$SapServiceMessageHandler;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {v1}, Lcom/android/bluetooth/sap/SapService;->-get6(Lcom/android/bluetooth/sap/SapService;)Lcom/android/bluetooth/sap/SapService$SapServiceMessageHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/sap/SapService$SapServiceMessageHandler;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {v2}, Lcom/android/bluetooth/sap/SapService;->-get6(Lcom/android/bluetooth/sap/SapService;)Lcom/android/bluetooth/sap/SapService$SapServiceMessageHandler;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/bluetooth/sap/SapService$SapServiceMessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 482
    const-wide/16 v4, 0x3e8

    .line 481
    invoke-virtual {v1, v2, v4, v5}, Lcom/android/bluetooth/sap/SapService$SapServiceMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 485
    :sswitch_5
    sget-boolean v1, Lcom/android/bluetooth/sap/SapService;->VERBOSE:Z

    if-eqz v1, :cond_5

    const-string/jumbo v1, "SapService"

    const-string/jumbo v2, "Release Wake Lock request message"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    :cond_5
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapService$SapServiceMessageHandler;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {v1}, Lcom/android/bluetooth/sap/SapService;->-get7(Lcom/android/bluetooth/sap/SapService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 487
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapService$SapServiceMessageHandler;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {v1}, Lcom/android/bluetooth/sap/SapService;->-get7(Lcom/android/bluetooth/sap/SapService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 488
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapService$SapServiceMessageHandler;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {v1, v4}, Lcom/android/bluetooth/sap/SapService;->-set4(Lcom/android/bluetooth/sap/SapService;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;

    .line 489
    const-string/jumbo v1, "SapService"

    const-string/jumbo v2, "Release Wake Lock"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 493
    :sswitch_6
    sget-boolean v1, Lcom/android/bluetooth/sap/SapService;->VERBOSE:Z

    if-eqz v1, :cond_6

    const-string/jumbo v1, "SapService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "change state message: newState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    :cond_6
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapService$SapServiceMessageHandler;->this$0:Lcom/android/bluetooth/sap/SapService;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1, v2}, Lcom/android/bluetooth/sap/SapService;->-wrap7(Lcom/android/bluetooth/sap/SapService;I)V

    goto/16 :goto_0

    .line 497
    :sswitch_7
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapService$SapServiceMessageHandler;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {v1}, Lcom/android/bluetooth/sap/SapService;->-wrap3(Lcom/android/bluetooth/sap/SapService;)V

    goto/16 :goto_0

    .line 445
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_7
        0x1388 -> :sswitch_3
        0x1389 -> :sswitch_0
        0x138a -> :sswitch_0
        0x138d -> :sswitch_4
        0x138e -> :sswitch_5
        0x138f -> :sswitch_6
    .end sparse-switch
.end method
