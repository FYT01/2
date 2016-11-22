.class Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;
.super Ljava/lang/Thread;
.source "BluetoothOppTransfer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/BluetoothOppTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SocketConnectThread"
.end annotation


# instance fields
.field private btSocket:Landroid/bluetooth/BluetoothSocket;

.field private final channel:I

.field private final device:Landroid/bluetooth/BluetoothDevice;

.field private final host:Ljava/lang/String;

.field private isConnected:Z

.field private l2cChannel:I

.field private mRetry:Z

.field private mSdpInitiated:Z

.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

.field private timestamp:J


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Landroid/bluetooth/BluetoothDevice;IZ)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/bluetooth/opp/BluetoothOppTransfer;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "channel"    # I
    .param p4, "retry"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 616
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    .line 618
    const-string/jumbo v0, "Socket Connect Thread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 593
    iput v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->l2cChannel:I

    .line 599
    iput-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->btSocket:Landroid/bluetooth/BluetoothSocket;

    .line 601
    iput-boolean v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->mRetry:Z

    .line 603
    iput-boolean v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->mSdpInitiated:Z

    .line 619
    iput-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->device:Landroid/bluetooth/BluetoothDevice;

    .line 620
    iput-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->host:Ljava/lang/String;

    .line 621
    iput p3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->channel:I

    .line 622
    iput-boolean v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->isConnected:Z

    .line 623
    iput-boolean p4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->mRetry:Z

    .line 624
    iput-boolean v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->mSdpInitiated:Z

    .line 617
    return-void
.end method

.method public constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/bluetooth/opp/BluetoothOppTransfer;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "retry"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 628
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    .line 629
    const-string/jumbo v0, "Socket Connect Thread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 593
    iput v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->l2cChannel:I

    .line 599
    iput-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->btSocket:Landroid/bluetooth/BluetoothSocket;

    .line 601
    iput-boolean v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->mRetry:Z

    .line 603
    iput-boolean v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->mSdpInitiated:Z

    .line 630
    iput-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->device:Landroid/bluetooth/BluetoothDevice;

    .line 631
    iput-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->host:Ljava/lang/String;

    .line 632
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->channel:I

    .line 633
    iput-boolean v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->isConnected:Z

    .line 634
    iput-boolean p3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->mRetry:Z

    .line 635
    iput-boolean v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->mSdpInitiated:Z

    .line 628
    return-void
.end method

.method public constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Landroid/bluetooth/BluetoothDevice;ZZ)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/bluetooth/opp/BluetoothOppTransfer;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "retry"    # Z
    .param p4, "sdpInitiated"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 639
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    .line 641
    const-string/jumbo v0, "Socket Connect Thread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 593
    iput v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->l2cChannel:I

    .line 599
    iput-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->btSocket:Landroid/bluetooth/BluetoothSocket;

    .line 601
    iput-boolean v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->mRetry:Z

    .line 603
    iput-boolean v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->mSdpInitiated:Z

    .line 642
    iput-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->device:Landroid/bluetooth/BluetoothDevice;

    .line 643
    iput-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->host:Ljava/lang/String;

    .line 644
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->channel:I

    .line 645
    iput-boolean v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->isConnected:Z

    .line 646
    iput-boolean p3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->mRetry:Z

    .line 647
    iput-boolean p4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->mSdpInitiated:Z

    .line 640
    return-void
.end method

.method public constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Ljava/lang/String;II)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/bluetooth/opp/BluetoothOppTransfer;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "dummy"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 606
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    .line 607
    const-string/jumbo v0, "Socket Connect Thread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 593
    iput v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->l2cChannel:I

    .line 599
    iput-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->btSocket:Landroid/bluetooth/BluetoothSocket;

    .line 601
    iput-boolean v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->mRetry:Z

    .line 603
    iput-boolean v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->mSdpInitiated:Z

    .line 608
    iput-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->host:Ljava/lang/String;

    .line 609
    iput p3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->channel:I

    .line 610
    iput-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->device:Landroid/bluetooth/BluetoothDevice;

    .line 611
    iput-boolean v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->isConnected:Z

    .line 612
    iput-boolean v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->mSdpInitiated:Z

    .line 606
    return-void
.end method

.method private connectRfcommSocket()V
    .locals 11

    .prologue
    const/4 v10, -0x1

    .line 665
    :try_start_0
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->device:Landroid/bluetooth/BluetoothDevice;

    sget-object v5, Landroid/bluetooth/BluetoothUuid;->ObexObjectPush:Landroid/os/ParcelUuid;

    invoke-virtual {v5}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothDevice;->createInsecureRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v4

    iput-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->btSocket:Landroid/bluetooth/BluetoothSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 672
    :try_start_1
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->btSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothSocket;->connect()V

    .line 674
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get0()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "BtOppTransfer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Rfcomm socket connection attempt took "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 675
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->timestamp:J

    sub-long/2addr v6, v8

    .line 674
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 675
    const-string/jumbo v6, " ms"

    .line 674
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    :cond_0
    new-instance v3, Lcom/android/bluetooth/BluetoothObexTransport;

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->btSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-direct {v3, v4}, Lcom/android/bluetooth/BluetoothObexTransport;-><init>(Landroid/bluetooth/BluetoothSocket;)V

    .line 679
    .local v3, "transport":Lcom/android/bluetooth/BluetoothObexTransport;
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v4}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get3(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/bluetooth/opp/BluetoothOppPreference;->getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppPreference;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->device:Landroid/bluetooth/BluetoothDevice;

    iget-object v6, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/bluetooth/opp/BluetoothOppPreference;->setName(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V

    .line 681
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get0()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "BtOppTransfer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Send transport message "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/bluetooth/BluetoothObexTransport;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    :cond_1
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v4}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get6(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;

    move-result-object v4

    const/16 v5, 0xb

    invoke-virtual {v4, v5, v3}, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 662
    .end local v3    # "transport":Lcom/android/bluetooth/BluetoothObexTransport;
    :goto_0
    return-void

    .line 666
    :catch_0
    move-exception v1

    .line 667
    .local v1, "e1":Ljava/io/IOException;
    const-string/jumbo v4, "BtOppTransfer"

    const-string/jumbo v5, "Rfcomm socket create error"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 668
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->btSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-direct {p0, v4}, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->markConnectionFailed(Landroid/bluetooth/BluetoothSocket;)V

    .line 669
    return-void

    .line 684
    .end local v1    # "e1":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 685
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v4, "BtOppTransfer"

    const-string/jumbo v5, "Rfcomm socket connect exception"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 692
    iget-boolean v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->mRetry:Z

    if-nez v4, :cond_2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "Invalid exchange"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 693
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v4}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get6(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->device:Landroid/bluetooth/BluetoothDevice;

    const/16 v6, 0xd

    invoke-virtual {v4, v6, v10, v10, v5}, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 694
    .local v2, "msg":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v4}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get6(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;

    move-result-object v4

    const-wide/16 v6, 0x5dc

    invoke-virtual {v4, v2, v6, v7}, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 696
    .end local v2    # "msg":Landroid/os/Message;
    :cond_2
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->btSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-direct {p0, v4}, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->markConnectionFailed(Landroid/bluetooth/BluetoothSocket;)V

    goto :goto_0
.end method

.method private markConnectionFailed(Landroid/bluetooth/BluetoothSocket;)V
    .locals 3
    .param p1, "s"    # Landroid/bluetooth/BluetoothSocket;

    .prologue
    .line 839
    :try_start_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 843
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v1}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get6(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 844
    return-void

    .line 840
    :catch_0
    move-exception v0

    .line 841
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get0()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "BtOppTransfer"

    const-string/jumbo v2, "Error when close socket"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private markConnectionFailed(Ljava/net/Socket;)V
    .locals 3
    .param p1, "s"    # Ljava/net/Socket;

    .prologue
    .line 830
    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 834
    :goto_0
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v1}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get6(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 828
    return-void

    .line 831
    :catch_0
    move-exception v0

    .line 832
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v1, "BtOppTransfer"

    const-string/jumbo v2, "TCP socket close error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public interrupt()V
    .locals 3

    .prologue
    .line 652
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->btSocket:Landroid/bluetooth/BluetoothSocket;

    if-eqz v1, :cond_0

    .line 654
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->btSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 650
    :cond_0
    :goto_0
    return-void

    .line 655
    :catch_0
    move-exception v0

    .line 656
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v1, "BtOppTransfer"

    const-string/jumbo v2, "Error when close socket"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public run()V
    .locals 12

    .prologue
    const/4 v8, 0x0

    .line 706
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->timestamp:J

    .line 764
    invoke-static {}, Lcom/android/bluetooth/a2dp/A2dpService;->getA2dpService()Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v0

    .line 765
    .local v0, "a2dpService":Lcom/android/bluetooth/a2dp/A2dpService;
    if-eqz v0, :cond_0

    .line 766
    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v5}, Lcom/android/bluetooth/a2dp/A2dpService;->isMulticastOngoing(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v5

    .line 765
    if-eqz v5, :cond_0

    .line 767
    const-string/jumbo v5, "BtOppTransfer"

    const-string/jumbo v6, "A2dp Multicast is Ongoing, ignore OPP send"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    return-void

    .line 771
    :cond_0
    const-string/jumbo v5, "BtOppTransfer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sdp initiated = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->mSdpInitiated:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    iget-boolean v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->mSdpInitiated:Z

    if-nez v5, :cond_1

    .line 777
    const-string/jumbo v5, "BtOppTransfer"

    const-string/jumbo v6, "sdp not initiated, connecting on rfcomm"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->connectRfcommSocket()V

    .line 779
    return-void

    .line 783
    :cond_1
    iput-boolean v8, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->mSdpInitiated:Z

    .line 786
    iput v8, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->l2cChannel:I

    .line 788
    :try_start_0
    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v5}, Lcom/android/bluetooth/OolConnManager;->getL2cPSM(Landroid/bluetooth/BluetoothDevice;)I

    move-result v5

    iput v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->l2cChannel:I

    .line 789
    iget v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->l2cChannel:I

    if-lez v5, :cond_4

    .line 790
    const-string/jumbo v5, "BtOppTransfer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Connecting to l2cap psm = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->l2cChannel:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->device:Landroid/bluetooth/BluetoothDevice;

    iget v6, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->l2cChannel:I

    invoke-virtual {v5, v6}, Landroid/bluetooth/BluetoothDevice;->createInsecureL2capSocket(I)Landroid/bluetooth/BluetoothSocket;

    move-result-object v5

    iput-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->btSocket:Landroid/bluetooth/BluetoothSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 803
    :try_start_1
    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->btSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothSocket;->connect()V

    .line 805
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get0()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo v5, "BtOppTransfer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "L2cap socket connection attempt took "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 806
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->timestamp:J

    sub-long/2addr v8, v10

    .line 805
    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 806
    const-string/jumbo v7, " ms"

    .line 805
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    :cond_2
    new-instance v4, Lcom/android/bluetooth/BluetoothObexTransport;

    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->btSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-direct {v4, v5}, Lcom/android/bluetooth/BluetoothObexTransport;-><init>(Landroid/bluetooth/BluetoothSocket;)V

    .line 810
    .local v4, "transport":Lcom/android/bluetooth/BluetoothObexTransport;
    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v5}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get3(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/bluetooth/opp/BluetoothOppPreference;->getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppPreference;

    move-result-object v5

    iget-object v6, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->device:Landroid/bluetooth/BluetoothDevice;

    iget-object v7, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/bluetooth/opp/BluetoothOppPreference;->setName(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V

    .line 812
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get0()Z

    move-result v5

    if-eqz v5, :cond_3

    const-string/jumbo v5, "BtOppTransfer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Send transport message "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/bluetooth/BluetoothObexTransport;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    :cond_3
    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v5}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get6(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;

    move-result-object v5

    const/16 v6, 0xb

    invoke-virtual {v5, v6, v4}, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 704
    return-void

    .line 793
    .end local v4    # "transport":Lcom/android/bluetooth/BluetoothObexTransport;
    :cond_4
    :try_start_2
    const-string/jumbo v5, "BtOppTransfer"

    const-string/jumbo v6, "L2cap psm not found, connecting on rfcomm"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->connectRfcommSocket()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 795
    return-void

    .line 797
    :catch_0
    move-exception v2

    .line 798
    .local v2, "e1":Ljava/io/IOException;
    const-string/jumbo v5, "BtOppTransfer"

    const-string/jumbo v6, "L2cap socket create error"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 799
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->connectRfcommSocket()V

    .line 800
    return-void

    .line 815
    .end local v2    # "e1":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 816
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v5, "BtOppTransfer"

    const-string/jumbo v6, "L2cap socket connect exception"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 818
    :try_start_3
    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->btSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 822
    :goto_0
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->connectRfcommSocket()V

    .line 823
    return-void

    .line 819
    :catch_2
    move-exception v3

    .line 820
    .local v3, "e3":Ljava/io/IOException;
    const-string/jumbo v5, "BtOppTransfer"

    const-string/jumbo v6, "Bluetooth socket close error "

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
