.class Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;
.super Ljava/lang/Thread;
.source "ObexServerSockets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/ObexServerSockets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SocketAcceptThread"
.end annotation


# instance fields
.field private final mServerSocket:Landroid/bluetooth/BluetoothServerSocket;

.field private mStopped:Z

.field final synthetic this$0:Lcom/android/bluetooth/ObexServerSockets;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/ObexServerSockets;Landroid/bluetooth/BluetoothServerSocket;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/bluetooth/ObexServerSockets;
    .param p2, "serverSocket"    # Landroid/bluetooth/BluetoothServerSocket;

    .prologue
    .line 280
    iput-object p1, p0, Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;->this$0:Lcom/android/bluetooth/ObexServerSockets;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 271
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;->mStopped:Z

    .line 281
    if-nez p2, :cond_0

    .line 282
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "serverSocket cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 284
    :cond_0
    iput-object p2, p0, Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    .line 280
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 294
    :cond_0
    :goto_0
    :try_start_0
    iget-boolean v6, p0, Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;->mStopped:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_4

    .line 299
    :try_start_1
    iget-object v6, p0, Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;->this$0:Lcom/android/bluetooth/ObexServerSockets;

    invoke-static {v6}, Lcom/android/bluetooth/ObexServerSockets;->-get0(Lcom/android/bluetooth/ObexServerSockets;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "Accepting socket connection..."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget-object v6, p0, Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothServerSocket;->accept()Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    .line 302
    .local v0, "connSocket":Landroid/bluetooth/BluetoothSocket;
    iget-object v6, p0, Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;->this$0:Lcom/android/bluetooth/ObexServerSockets;

    invoke-static {v6}, Lcom/android/bluetooth/ObexServerSockets;->-get0(Lcom/android/bluetooth/ObexServerSockets;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Accepted socket connection from: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    if-nez v0, :cond_1

    .line 306
    iget-object v6, p0, Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;->this$0:Lcom/android/bluetooth/ObexServerSockets;

    invoke-static {v6}, Lcom/android/bluetooth/ObexServerSockets;->-get0(Lcom/android/bluetooth/ObexServerSockets;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "connSocket is null - reattempt accept"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 343
    .end local v0    # "connSocket":Landroid/bluetooth/BluetoothSocket;
    :catch_0
    move-exception v3

    .line 344
    .local v3, "ex":Ljava/io/IOException;
    :try_start_2
    iget-boolean v6, p0, Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;->mStopped:Z

    if-eqz v6, :cond_3

    .line 351
    :goto_1
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;->mStopped:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 354
    .end local v3    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 355
    iget-object v7, p0, Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;->this$0:Lcom/android/bluetooth/ObexServerSockets;

    invoke-static {v7}, Lcom/android/bluetooth/ObexServerSockets;->-get0(Lcom/android/bluetooth/ObexServerSockets;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "AcceptThread ended for: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    throw v6

    .line 309
    .restart local v0    # "connSocket":Landroid/bluetooth/BluetoothSocket;
    :cond_1
    :try_start_3
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 311
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    if-nez v1, :cond_2

    .line 312
    iget-object v6, p0, Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;->this$0:Lcom/android/bluetooth/ObexServerSockets;

    invoke-static {v6}, Lcom/android/bluetooth/ObexServerSockets;->-get0(Lcom/android/bluetooth/ObexServerSockets;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "getRemoteDevice() = null - reattempt accept"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 314
    :try_start_4
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 315
    :catch_1
    move-exception v2

    .line 316
    .local v2, "e":Ljava/io/IOException;
    :try_start_5
    iget-object v6, p0, Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;->this$0:Lcom/android/bluetooth/ObexServerSockets;

    invoke-static {v6}, Lcom/android/bluetooth/ObexServerSockets;->-get0(Lcom/android/bluetooth/ObexServerSockets;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "Error closing the socket. ignoring..."

    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 323
    .end local v2    # "e":Ljava/io/IOException;
    :cond_2
    iget-object v6, p0, Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;->this$0:Lcom/android/bluetooth/ObexServerSockets;

    invoke-static {v6, v1, v0}, Lcom/android/bluetooth/ObexServerSockets;->-wrap0(Lcom/android/bluetooth/ObexServerSockets;Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothSocket;)Z

    move-result v4

    .line 325
    .local v4, "isValid":Z
    if-nez v4, :cond_0

    .line 329
    iget-object v6, p0, Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;->this$0:Lcom/android/bluetooth/ObexServerSockets;

    invoke-static {v6}, Lcom/android/bluetooth/ObexServerSockets;->-get0(Lcom/android/bluetooth/ObexServerSockets;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "RemoteDevice is invalid - creating ObexRejectServer."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    new-instance v5, Lcom/android/bluetooth/BluetoothObexTransport;

    invoke-direct {v5, v0}, Lcom/android/bluetooth/BluetoothObexTransport;-><init>(Landroid/bluetooth/BluetoothSocket;)V

    .line 334
    .local v5, "obexTrans":Lcom/android/bluetooth/BluetoothObexTransport;
    new-instance v6, Ljavax/obex/ServerSession;

    .line 335
    new-instance v7, Lcom/android/bluetooth/ObexRejectServer;

    .line 336
    const/16 v8, 0xd3

    .line 335
    invoke-direct {v7, v8, v0}, Lcom/android/bluetooth/ObexRejectServer;-><init>(ILandroid/bluetooth/BluetoothSocket;)V

    .line 338
    const/4 v8, 0x0

    .line 334
    invoke-direct {v6, v5, v7, v8}, Ljavax/obex/ServerSession;-><init>(Ljavax/obex/ObexTransport;Ljavax/obex/ServerRequestHandler;Ljavax/obex/Authenticator;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 347
    .end local v0    # "connSocket":Landroid/bluetooth/BluetoothSocket;
    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "isValid":Z
    .end local v5    # "obexTrans":Lcom/android/bluetooth/BluetoothObexTransport;
    .restart local v3    # "ex":Ljava/io/IOException;
    :cond_3
    :try_start_6
    iget-object v6, p0, Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;->this$0:Lcom/android/bluetooth/ObexServerSockets;

    invoke-static {v6}, Lcom/android/bluetooth/ObexServerSockets;->-get0(Lcom/android/bluetooth/ObexServerSockets;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Accept exception for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 348
    iget-object v8, p0, Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    .line 347
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 349
    iget-object v6, p0, Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;->this$0:Lcom/android/bluetooth/ObexServerSockets;

    invoke-static {v6}, Lcom/android/bluetooth/ObexServerSockets;->-wrap1(Lcom/android/bluetooth/ObexServerSockets;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    .line 355
    .end local v3    # "ex":Ljava/io/IOException;
    :cond_4
    iget-object v6, p0, Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;->this$0:Lcom/android/bluetooth/ObexServerSockets;

    invoke-static {v6}, Lcom/android/bluetooth/ObexServerSockets;->-get0(Lcom/android/bluetooth/ObexServerSockets;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "AcceptThread ended for: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    return-void
.end method

.method public shutdown()V
    .locals 3

    .prologue
    .line 365
    iget-boolean v1, p0, Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;->mStopped:Z

    if-nez v1, :cond_0

    .line 366
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;->mStopped:Z

    .line 371
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 377
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/Thread;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 380
    iget-object v1, p0, Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;->this$0:Lcom/android/bluetooth/ObexServerSockets;

    invoke-static {v1}, Lcom/android/bluetooth/ObexServerSockets;->-get0(Lcom/android/bluetooth/ObexServerSockets;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "shutdown called from another thread - interrupt()."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    invoke-virtual {p0}, Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;->interrupt()V

    .line 364
    :cond_1
    return-void

    .line 372
    :catch_0
    move-exception v0

    .line 373
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;->this$0:Lcom/android/bluetooth/ObexServerSockets;

    invoke-static {v1}, Lcom/android/bluetooth/ObexServerSockets;->-get0(Lcom/android/bluetooth/ObexServerSockets;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Exception while thread shutdown:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
