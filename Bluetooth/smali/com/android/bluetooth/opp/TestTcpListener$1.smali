.class Lcom/android/bluetooth/opp/TestTcpListener$1;
.super Ljava/lang/Thread;
.source "TestActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/opp/TestTcpListener;->start(Landroid/os/Handler;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mServerSocket:Ljava/net/ServerSocket;

.field final synthetic this$0:Lcom/android/bluetooth/opp/TestTcpListener;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/opp/TestTcpListener;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/bluetooth/opp/TestTcpListener;
    .param p2, "$anonymous0"    # Ljava/lang/String;

    .prologue
    .line 385
    iput-object p1, p0, Lcom/android/bluetooth/opp/TestTcpListener$1;->this$0:Lcom/android/bluetooth/opp/TestTcpListener;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 389
    const-string/jumbo v5, "BtOppRfcommListener"

    const-string/jumbo v6, "RfcommSocket listen thread starting"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    :try_start_0
    invoke-static {}, Lcom/android/bluetooth/opp/TestTcpListener;->-get0()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 392
    const-string/jumbo v5, "BtOppRfcommListener"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Create server RfcommSocket on channel"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 393
    iget-object v7, p0, Lcom/android/bluetooth/opp/TestTcpListener$1;->this$0:Lcom/android/bluetooth/opp/TestTcpListener;

    invoke-static {v7}, Lcom/android/bluetooth/opp/TestTcpListener;->-get1(Lcom/android/bluetooth/opp/TestTcpListener;)I

    move-result v7

    .line 392
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    :cond_0
    new-instance v5, Ljava/net/ServerSocket;

    const/16 v6, 0x1964

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Ljava/net/ServerSocket;-><init>(II)V

    iput-object v5, p0, Lcom/android/bluetooth/opp/TestTcpListener$1;->mServerSocket:Ljava/net/ServerSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/android/bluetooth/opp/TestTcpListener$1;->this$0:Lcom/android/bluetooth/opp/TestTcpListener;

    invoke-static {v5}, Lcom/android/bluetooth/opp/TestTcpListener;->-get3(Lcom/android/bluetooth/opp/TestTcpListener;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 401
    :try_start_1
    iget-object v5, p0, Lcom/android/bluetooth/opp/TestTcpListener$1;->mServerSocket:Ljava/net/ServerSocket;

    const/16 v6, 0x1388

    invoke-virtual {v5, v6}, Ljava/net/ServerSocket;->setSoTimeout(I)V

    .line 402
    iget-object v5, p0, Lcom/android/bluetooth/opp/TestTcpListener$1;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v5}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    .line 403
    .local v0, "clientSocket":Ljava/net/Socket;
    if-nez v0, :cond_3

    .line 404
    invoke-static {}, Lcom/android/bluetooth/opp/TestTcpListener;->-get0()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo v5, "BtOppRfcommListener"

    const-string/jumbo v6, "incomming connection time out"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 422
    .end local v0    # "clientSocket":Ljava/net/Socket;
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/android/bluetooth/opp/TestTcpListener$1;->this$0:Lcom/android/bluetooth/opp/TestTcpListener;

    invoke-static {v5}, Lcom/android/bluetooth/opp/TestTcpListener;->-get3(Lcom/android/bluetooth/opp/TestTcpListener;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 423
    const-string/jumbo v5, "BtOppRfcommListener"

    const-string/jumbo v6, "socketAcceptThread thread was interrupted (2), exiting"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 395
    :catch_0
    move-exception v1

    .line 396
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v5, "BtOppRfcommListener"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Error listing on channel"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/bluetooth/opp/TestTcpListener$1;->this$0:Lcom/android/bluetooth/opp/TestTcpListener;

    invoke-static {v7}, Lcom/android/bluetooth/opp/TestTcpListener;->-get1(Lcom/android/bluetooth/opp/TestTcpListener;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object v5, p0, Lcom/android/bluetooth/opp/TestTcpListener$1;->this$0:Lcom/android/bluetooth/opp/TestTcpListener;

    invoke-static {v5, v8}, Lcom/android/bluetooth/opp/TestTcpListener;->-set0(Lcom/android/bluetooth/opp/TestTcpListener;Z)Z

    goto :goto_0

    .line 406
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "clientSocket":Ljava/net/Socket;
    :cond_3
    :try_start_2
    const-string/jumbo v5, "BtOppRfcommListener"

    const-string/jumbo v6, "RfcommSocket connected!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    const-string/jumbo v5, "BtOppRfcommListener"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "remote addr is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 408
    invoke-virtual {v0}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v7

    .line 407
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    new-instance v4, Lcom/android/bluetooth/opp/TestTcpTransport;

    invoke-direct {v4, v0}, Lcom/android/bluetooth/opp/TestTcpTransport;-><init>(Ljava/net/Socket;)V

    .line 410
    .local v4, "transport":Lcom/android/bluetooth/opp/TestTcpTransport;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 411
    .local v3, "msg":Landroid/os/Message;
    iget-object v5, p0, Lcom/android/bluetooth/opp/TestTcpListener$1;->this$0:Lcom/android/bluetooth/opp/TestTcpListener;

    invoke-static {v5}, Lcom/android/bluetooth/opp/TestTcpListener;->-get2(Lcom/android/bluetooth/opp/TestTcpListener;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 412
    const/16 v5, 0x64

    iput v5, v3, Landroid/os/Message;->what:I

    .line 413
    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 414
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 416
    .end local v0    # "clientSocket":Ljava/net/Socket;
    .end local v3    # "msg":Landroid/os/Message;
    .end local v4    # "transport":Lcom/android/bluetooth/opp/TestTcpTransport;
    :catch_1
    move-exception v2

    .line 417
    .local v2, "e":Ljava/net/SocketException;
    const-string/jumbo v5, "BtOppRfcommListener"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Error accept connection "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 418
    .end local v2    # "e":Ljava/net/SocketException;
    :catch_2
    move-exception v1

    .line 419
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v5, "BtOppRfcommListener"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Error accept connection "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 426
    .end local v1    # "e":Ljava/io/IOException;
    :cond_4
    const-string/jumbo v5, "BtOppRfcommListener"

    const-string/jumbo v6, "RfcommSocket listen thread finished"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    return-void
.end method
