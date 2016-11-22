.class Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;
.super Ljava/lang/Thread;
.source "BluetoothPbapService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/pbap/BluetoothPbapService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SocketAcceptThread"
.end annotation


# instance fields
.field private stopped:Z

.field final synthetic this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/bluetooth/pbap/BluetoothPbapService;

    .prologue
    .line 575
    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 577
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->stopped:Z

    .line 575
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/pbap/BluetoothPbapService;Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/bluetooth/pbap/BluetoothPbapService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;-><init>(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 582
    iget-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-static {v4}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->-get4(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v4

    if-nez v4, :cond_4

    .line 583
    iget-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-static {v4}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->-wrap0(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 584
    return-void

    .line 610
    .local v3, "serverSocket":Landroid/bluetooth/BluetoothServerSocket;
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-static {v4}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->-get2(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->-set5(Ljava/lang/String;)Ljava/lang/String;

    .line 612
    invoke-static {}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->-get8()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 613
    iget-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    const v5, 0x7f06007f

    invoke-virtual {v4, v5}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->-set5(Ljava/lang/String;)Ljava/lang/String;

    .line 615
    :cond_1
    iget-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-static {v4}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->-get2(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getPhonebookAccessPermission()I

    move-result v2

    .line 616
    .local v2, "permission":I
    sget-boolean v4, Lcom/android/bluetooth/pbap/BluetoothPbapService;->VERBOSE:Z

    if-eqz v4, :cond_2

    const-string/jumbo v4, "BluetoothPbapService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getPhonebookAccessPermission() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 618
    :cond_2
    if-ne v2, v8, :cond_a

    .line 620
    :try_start_1
    sget-boolean v4, Lcom/android/bluetooth/pbap/BluetoothPbapService;->VERBOSE:Z

    if-eqz v4, :cond_3

    .line 621
    const-string/jumbo v4, "BluetoothPbapService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "incoming connection accepted from: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->-get8()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 622
    const-string/jumbo v6, " automatically as already allowed device"

    .line 621
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    :cond_3
    iget-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-static {v4}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->-wrap7(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 662
    :goto_0
    const/4 v4, 0x1

    :try_start_2
    iput-boolean v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->stopped:Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 588
    .end local v2    # "permission":I
    .end local v3    # "serverSocket":Landroid/bluetooth/BluetoothServerSocket;
    :cond_4
    :goto_1
    iget-boolean v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->stopped:Z

    if-nez v4, :cond_6

    .line 590
    :try_start_3
    sget-boolean v4, Lcom/android/bluetooth/pbap/BluetoothPbapService;->VERBOSE:Z

    if-eqz v4, :cond_5

    const-string/jumbo v4, "BluetoothPbapService"

    const-string/jumbo v5, "Accepting socket connection..."

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    :cond_5
    iget-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-static {v4}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->-get4(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v3

    .line 592
    .restart local v3    # "serverSocket":Landroid/bluetooth/BluetoothServerSocket;
    if-nez v3, :cond_7

    .line 593
    const-string/jumbo v4, "BluetoothPbapService"

    const-string/jumbo v5, "mServerSocket is null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    .end local v3    # "serverSocket":Landroid/bluetooth/BluetoothServerSocket;
    :cond_6
    :goto_2
    return-void

    .line 596
    .restart local v3    # "serverSocket":Landroid/bluetooth/BluetoothServerSocket;
    :cond_7
    iget-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothServerSocket;->accept()Landroid/bluetooth/BluetoothSocket;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->-set0(Lcom/android/bluetooth/pbap/BluetoothPbapService;Landroid/bluetooth/BluetoothSocket;)Landroid/bluetooth/BluetoothSocket;

    .line 597
    sget-boolean v4, Lcom/android/bluetooth/pbap/BluetoothPbapService;->VERBOSE:Z

    if-eqz v4, :cond_8

    const-string/jumbo v4, "BluetoothPbapService"

    const-string/jumbo v5, "Accepted socket connection..."

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    :cond_8
    iget-object v5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    monitor-enter v5
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 600
    :try_start_4
    iget-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-static {v4}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->-get1(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v4

    if-nez v4, :cond_9

    .line 601
    const-string/jumbo v4, "BluetoothPbapService"

    const-string/jumbo v6, "mConnSocket is null"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    monitor-exit v5
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    .line 663
    .end local v3    # "serverSocket":Landroid/bluetooth/BluetoothServerSocket;
    :catch_0
    move-exception v0

    .line 664
    .local v0, "ex":Ljava/io/IOException;
    iput-boolean v8, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->stopped:Z

    .line 670
    sget-boolean v4, Lcom/android/bluetooth/pbap/BluetoothPbapService;->VERBOSE:Z

    if-eqz v4, :cond_4

    const-string/jumbo v4, "BluetoothPbapService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Accept exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 604
    .end local v0    # "ex":Ljava/io/IOException;
    .restart local v3    # "serverSocket":Landroid/bluetooth/BluetoothServerSocket;
    :cond_9
    :try_start_6
    iget-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    iget-object v6, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-static {v6}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->-get1(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v6

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothSocket;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->-set2(Lcom/android/bluetooth/pbap/BluetoothPbapService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    monitor-exit v5

    .line 606
    iget-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-static {v4}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->-get2(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    if-nez v4, :cond_0

    .line 607
    const-string/jumbo v4, "BluetoothPbapService"

    const-string/jumbo v5, "getRemoteDevice() = null"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 599
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 625
    .restart local v2    # "permission":I
    :catch_1
    move-exception v0

    .line 626
    .restart local v0    # "ex":Ljava/io/IOException;
    const-string/jumbo v4, "BluetoothPbapService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Caught exception starting obex server session"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 627
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    .line 626
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 629
    .end local v0    # "ex":Ljava/io/IOException;
    :cond_a
    if-ne v2, v9, :cond_c

    .line 630
    sget-boolean v4, Lcom/android/bluetooth/pbap/BluetoothPbapService;->VERBOSE:Z

    if-eqz v4, :cond_b

    .line 631
    const-string/jumbo v4, "BluetoothPbapService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "incoming connection rejected from: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->-get8()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 632
    const-string/jumbo v6, " automatically as already rejected device"

    .line 631
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    :cond_b
    iget-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-static {v4}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->-wrap9(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V

    goto/16 :goto_0

    .line 638
    :cond_c
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "android.bluetooth.device.action.CONNECTION_ACCESS_REQUEST"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 639
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "com.android.settings"

    const-string/jumbo v5, "com.android.settings.bluetooth.BluetoothPermissionRequest"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 640
    const-string/jumbo v4, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    .line 641
    const/4 v5, 0x2

    .line 640
    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 642
    const-string/jumbo v4, "android.bluetooth.device.extra.DEVICE"

    iget-object v5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-static {v5}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->-get2(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 643
    const-string/jumbo v4, "android.bluetooth.device.extra.PACKAGE_NAME"

    iget-object v5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-virtual {v5}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 644
    const-string/jumbo v4, "android.bluetooth.device.extra.CLASS_NAME"

    .line 645
    const-class v5, Lcom/android/bluetooth/pbap/BluetoothPbapReceiver;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 644
    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 647
    iget-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->-set1(Lcom/android/bluetooth/pbap/BluetoothPbapService;Z)Z

    .line 648
    iget-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    const-string/jumbo v5, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v4, v1, v5}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 650
    sget-boolean v4, Lcom/android/bluetooth/pbap/BluetoothPbapService;->VERBOSE:Z

    if-eqz v4, :cond_d

    const-string/jumbo v4, "BluetoothPbapService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "waiting for authorization for connection from: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 651
    invoke-static {}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->-get8()Ljava/lang/String;

    move-result-object v6

    .line 650
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    :cond_d
    iget-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-static {v4}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->-get5(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-static {v5}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->-get5(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/os/Handler;

    move-result-object v5

    .line 658
    const/4 v6, 0x2

    .line 657
    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 658
    const-wide/16 v6, 0x7530

    .line 657
    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0
.end method

.method shutdown()V
    .locals 1

    .prologue
    .line 676
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->stopped:Z

    .line 677
    invoke-virtual {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->interrupt()V

    .line 675
    return-void
.end method
