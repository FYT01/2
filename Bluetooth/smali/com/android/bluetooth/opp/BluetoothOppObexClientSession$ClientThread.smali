.class Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;
.super Ljava/lang/Thread;
.source "BluetoothOppObexClientSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientThread"
.end annotation


# static fields
.field private static final sSleepTime:I = 0x1f4


# instance fields
.field private mConnected:Z

.field private mContext1:Landroid/content/Context;

.field private mCs:Ljavax/obex/ClientSession;

.field private mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

.field private mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

.field private mNumShares:I

.field private mTransport1:Ljavax/obex/ObexTransport;

.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

.field private volatile waitingForShare:Z

.field private wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Landroid/content/Context;Ljavax/obex/ObexTransport;I)V
    .locals 4
    .param p1, "this$0"    # Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "transport"    # Ljavax/obex/ObexTransport;
    .param p4, "initialNumShares"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 200
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    .line 201
    const-string/jumbo v1, "BtOpp ClientThread"

    invoke-direct {p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 194
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    .line 196
    iput-boolean v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mConnected:Z

    .line 202
    iput-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    .line 203
    iput-object p3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mTransport1:Ljavax/obex/ObexTransport;

    .line 204
    iput-boolean v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->waitingForShare:Z

    .line 205
    invoke-static {p1, v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-set1(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z

    .line 206
    iput p4, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mNumShares:I

    .line 207
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 208
    .local v0, "pm":Landroid/os/PowerManager;
    const-string/jumbo v1, "BtOppObexClient"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 200
    return-void
.end method

.method private connect(I)V
    .locals 7
    .param p1, "numShares"    # I

    .prologue
    const/4 v6, 0x0

    .line 290
    const-string/jumbo v3, "BtOppObexClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Create ClientSession with transport "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mTransport1:Ljavax/obex/ObexTransport;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :try_start_0
    new-instance v3, Ljavax/obex/ClientSession;

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mTransport1:Ljavax/obex/ObexTransport;

    invoke-direct {v3, v4}, Ljavax/obex/ClientSession;-><init>(Ljavax/obex/ObexTransport;)V

    iput-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mCs:Ljavax/obex/ClientSession;

    .line 293
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mConnected:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    :goto_0
    iget-boolean v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mConnected:Z

    if-eqz v3, :cond_0

    .line 298
    iput-boolean v6, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mConnected:Z

    .line 299
    new-instance v2, Ljavax/obex/HeaderSet;

    invoke-direct {v2}, Ljavax/obex/HeaderSet;-><init>()V

    .line 300
    .local v2, "hs":Ljavax/obex/HeaderSet;
    int-to-long v4, p1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/16 v4, 0xc0

    invoke-virtual {v2, v4, v3}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 301
    monitor-enter p0

    .line 302
    :try_start_1
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-set1(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 305
    :try_start_2
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mCs:Ljavax/obex/ClientSession;

    invoke-virtual {v3, v2}, Ljavax/obex/ClientSession;->connect(Ljavax/obex/HeaderSet;)Ljavax/obex/HeaderSet;

    .line 306
    const-string/jumbo v3, "BtOppObexClient"

    const-string/jumbo v4, "OBEX session created"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mConnected:Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 312
    .end local v2    # "hs":Ljavax/obex/HeaderSet;
    :cond_0
    :goto_1
    monitor-enter p0

    .line 313
    :try_start_3
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-set1(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    .line 289
    return-void

    .line 294
    :catch_0
    move-exception v1

    .line 295
    .local v1, "e1":Ljava/io/IOException;
    const-string/jumbo v3, "BtOppObexClient"

    const-string/jumbo v4, "OBEX session create error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 301
    .end local v1    # "e1":Ljava/io/IOException;
    .restart local v2    # "hs":Ljavax/obex/HeaderSet;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 308
    :catch_1
    move-exception v0

    .line 309
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v3, "BtOppObexClient"

    const-string/jumbo v4, "OBEX session connect error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 312
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "hs":Ljavax/obex/HeaderSet;
    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private disconnect()V
    .locals 4

    .prologue
    .line 262
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mCs:Ljavax/obex/ClientSession;

    if-eqz v1, :cond_0

    .line 263
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mCs:Ljavax/obex/ClientSession;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljavax/obex/ClientSession;->disconnect(Ljavax/obex/HeaderSet;)Ljavax/obex/HeaderSet;

    .line 265
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mCs:Ljavax/obex/ClientSession;

    .line 266
    const-string/jumbo v1, "BtOppObexClient"

    const-string/jumbo v2, "OBEX session disconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mCs:Ljavax/obex/ClientSession;

    if-eqz v1, :cond_1

    .line 272
    const-string/jumbo v1, "BtOppObexClient"

    const-string/jumbo v2, "OBEX session close mCs"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mCs:Ljavax/obex/ClientSession;

    invoke-virtual {v1}, Ljavax/obex/ClientSession;->close()V

    .line 274
    const-string/jumbo v1, "BtOppObexClient"

    const-string/jumbo v2, "OBEX session closed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 279
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mTransport1:Ljavax/obex/ObexTransport;

    if-eqz v1, :cond_2

    .line 281
    :try_start_2
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mTransport1:Ljavax/obex/ObexTransport;

    invoke-interface {v1}, Ljavax/obex/ObexTransport;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 260
    :cond_2
    :goto_2
    return-void

    .line 267
    :catch_0
    move-exception v0

    .line 268
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v1, "BtOppObexClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "OBEX session disconnect error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 276
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 277
    .restart local v0    # "e":Ljava/io/IOException;
    const-string/jumbo v1, "BtOppObexClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "OBEX session close error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 282
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 283
    .restart local v0    # "e":Ljava/io/IOException;
    const-string/jumbo v1, "BtOppObexClient"

    const-string/jumbo v2, "mTransport.close error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private doSend()V
    .locals 7

    .prologue
    const/16 v6, 0xc8

    .line 319
    const/16 v2, 0xc8

    .line 322
    .local v2, "status":I
    :goto_0
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    if-nez v3, :cond_0

    .line 324
    const-wide/16 v4, 0x32

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 325
    :catch_0
    move-exception v0

    .line 326
    .local v0, "e":Ljava/lang/InterruptedException;
    const/16 v2, 0x1ea

    goto :goto_0

    .line 329
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    iget-boolean v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mConnected:Z

    if-nez v3, :cond_1

    .line 331
    const/16 v2, 0x1f1

    .line 333
    :cond_1
    if-ne v2, v6, :cond_3

    .line 335
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    iget-object v3, v3, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 336
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    invoke-direct {p0, v3}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->sendFile(Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;)I

    move-result v2

    .line 341
    :goto_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->waitingForShare:Z

    .line 346
    :goto_2
    if-ne v2, v6, :cond_4

    .line 347
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    invoke-static {v3}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get1(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/os/Handler;

    move-result-object v3

    invoke-static {v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 348
    .local v1, "msg":Landroid/os/Message;
    const/4 v3, 0x0

    iput v3, v1, Landroid/os/Message;->what:I

    .line 349
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iput v2, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    .line 350
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 351
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 317
    :goto_3
    return-void

    .line 339
    .end local v1    # "msg":Landroid/os/Message;
    :cond_2
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    iget v2, v3, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mStatus:I

    goto :goto_1

    .line 343
    :cond_3
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v4, v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-static {v3, v4, v2}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    goto :goto_2

    .line 353
    :cond_4
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    invoke-static {v3}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get1(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/os/Handler;

    move-result-object v3

    invoke-static {v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 354
    .restart local v1    # "msg":Landroid/os/Message;
    const/4 v3, 0x2

    iput v3, v1, Landroid/os/Message;->what:I

    .line 355
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iput v2, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    .line 356
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 357
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3
.end method

.method private handleSendException(Ljava/lang/String;)V
    .locals 3
    .param p1, "exception"    # Ljava/lang/String;

    .prologue
    .line 678
    const-string/jumbo v0, "BtOppObexClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error when sending file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v1, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    .line 682
    const/16 v2, 0x1f0

    .line 681
    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 683
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get1(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 677
    return-void
.end method

.method private processShareInfo()Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 365
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get0()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "BtOppObexClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Client thread processShareInfo() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v5, v5, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget-object v3, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Landroid/net/Uri;

    invoke-static {v3}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->getSendFileInfo(Landroid/net/Uri;)Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    move-result-object v1

    .line 368
    .local v1, "fileInfo":Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;
    iget-object v3, v1, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-wide v4, v1, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    .line 369
    :cond_1
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get0()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "BtOppObexClient"

    const-string/jumbo v4, "BluetoothOppSendFileInfo get invalid file"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_2
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v4, v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    iget v5, v1, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mStatus:I

    invoke-static {v3, v4, v5}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 390
    :goto_0
    return-object v1

    .line 373
    :cond_3
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get0()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 374
    const-string/jumbo v3, "BtOppObexClient"

    const-string/jumbo v4, "Generate BluetoothOppSendFileInfo:"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    const-string/jumbo v3, "BtOppObexClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "filename  :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    const-string/jumbo v3, "BtOppObexClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "length    :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v1, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    const-string/jumbo v3, "BtOppObexClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mimetype  :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mMimetype:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :cond_4
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 381
    .local v2, "updateValues":Landroid/content/ContentValues;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v4, v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 383
    .local v0, "contentUri":Landroid/net/Uri;
    const-string/jumbo v3, "hint"

    iget-object v4, v1, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    const-string/jumbo v3, "total_bytes"

    iget-wide v4, v1, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 385
    const-string/jumbo v3, "mimetype"

    iget-object v4, v1, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mMimetype:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v0, v2, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private sendFile(Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;)I
    .locals 40
    .param p1, "fileInfo"    # Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    .prologue
    .line 394
    const/4 v14, 0x0

    .line 395
    .local v14, "error":Z
    const/16 v26, -0x1

    .line 396
    .local v26, "responseCode":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v33, v0

    const-wide/16 v34, 0x0

    invoke-static/range {v33 .. v35}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-set2(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;J)J

    .line 397
    const/16 v27, 0xc8

    .line 398
    .local v27, "status":I
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v34, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, "/"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 400
    .local v8, "contentUri":Landroid/net/Uri;
    const/16 v30, 0x0

    .line 401
    .local v30, "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    new-instance v24, Ljavax/obex/HeaderSet;

    invoke-direct/range {v24 .. v24}, Ljavax/obex/HeaderSet;-><init>()V

    .line 403
    .local v24, "reply":Ljavax/obex/HeaderSet;
    new-instance v25, Ljavax/obex/HeaderSet;

    invoke-direct/range {v25 .. v25}, Ljavax/obex/HeaderSet;-><init>()V

    .line 404
    .local v25, "request":Ljavax/obex/HeaderSet;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v33, v0

    const/16 v34, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v34

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 405
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mMimetype:Ljava/lang/String;

    move-object/from16 v33, v0

    const/16 v34, 0x42

    move-object/from16 v0, v25

    move/from16 v1, v34

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDestination:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->applyRemoteDeviceQuirks(Ljavax/obex/HeaderSet;Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v34, v0

    const/16 v35, 0xc0

    invoke-static/range {v33 .. v35}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 411
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    move-wide/from16 v34, v0

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v33

    const/16 v34, 0xc3

    move-object/from16 v0, v25

    move/from16 v1, v34

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 412
    const/16 v20, 0x0

    .line 413
    .local v20, "putOperation":Ljavax/obex/ClientOperation;
    const/16 v19, 0x0

    .line 414
    .local v19, "outputStream":Ljava/io/OutputStream;
    const/16 v16, 0x0

    .line 416
    .local v16, "inputStream":Ljava/io/InputStream;
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 417
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v33, v0

    const/16 v34, 0x1

    invoke-static/range {v33 .. v34}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-set1(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 420
    :try_start_3
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get0()Z

    move-result v33

    if-eqz v33, :cond_0

    const-string/jumbo v33, "BtOppObexClient"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "put headerset for "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mCs:Ljavax/obex/ClientSession;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljavax/obex/ClientSession;->put(Ljavax/obex/HeaderSet;)Ljavax/obex/Operation;

    move-result-object v33

    move-object/from16 v0, v33

    check-cast v0, Ljavax/obex/ClientOperation;

    move-object/from16 v20, v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 429
    .end local v20    # "putOperation":Ljavax/obex/ClientOperation;
    :goto_0
    :try_start_4
    monitor-enter p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 430
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    invoke-static/range {v33 .. v34}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-set1(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 433
    if-nez v14, :cond_2

    .line 435
    :try_start_7
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get0()Z

    move-result v33

    if-eqz v33, :cond_1

    const-string/jumbo v33, "BtOppObexClient"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "openOutputStream "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    :cond_1
    invoke-virtual/range {v20 .. v20}, Ljavax/obex/ClientOperation;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v19

    .line 437
    .local v19, "outputStream":Ljava/io/OutputStream;
    invoke-virtual/range {v20 .. v20}, Ljavax/obex/ClientOperation;->openInputStream()Ljava/io/InputStream;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    move-result-object v16

    .line 445
    .end local v16    # "inputStream":Ljava/io/InputStream;
    .end local v19    # "outputStream":Ljava/io/OutputStream;
    :cond_2
    :goto_1
    if-nez v14, :cond_3

    .line 446
    :try_start_8
    new-instance v32, Landroid/content/ContentValues;

    invoke-direct/range {v32 .. v32}, Landroid/content/ContentValues;-><init>()V

    .line 447
    .local v32, "updateValues":Landroid/content/ContentValues;
    const-string/jumbo v33, "current_bytes"

    const/16 v34, 0x0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    invoke-virtual/range {v32 .. v34}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 448
    const-string/jumbo v33, "status"

    const/16 v34, 0xc0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    invoke-virtual/range {v32 .. v34}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v33

    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    move-object/from16 v2, v34

    move-object/from16 v3, v35

    invoke-virtual {v0, v8, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 452
    .end local v32    # "updateValues":Landroid/content/ContentValues;
    :cond_3
    if-nez v14, :cond_2b

    .line 453
    const/16 v21, 0x0

    .line 454
    .local v21, "readLength":I
    const-wide/16 v22, 0x0

    .line 455
    .local v22, "readbytesleft":J
    const/16 v17, 0x0

    .line 456
    .local v17, "okToProceed":Z
    const-wide/16 v28, 0x0

    .line 457
    .local v28, "timestamp":J
    invoke-virtual/range {v20 .. v20}, Ljavax/obex/ClientOperation;->getMaxPacketSize()I

    move-result v18

    .line 458
    .local v18, "outputBufferSize":I
    move/from16 v0, v18

    new-array v5, v0, [B

    .line 459
    .local v5, "buffer":[B
    new-instance v4, Ljava/io/BufferedInputStream;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mInputStream:Ljava/io/FileInputStream;

    move-object/from16 v33, v0

    const/16 v34, 0x4000

    move-object/from16 v0, v33

    move/from16 v1, v34

    invoke-direct {v4, v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 461
    .local v4, "a":Ljava/io/BufferedInputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get2(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Z

    move-result v33

    if-nez v33, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get4(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)J

    move-result-wide v34

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    move-wide/from16 v36, v0

    cmp-long v33, v34, v36

    if-eqz v33, :cond_7

    .line 462
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    move-wide/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get4(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)J

    move-result-wide v36

    sub-long v22, v34, v36

    .line 463
    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v34, v0

    cmp-long v33, v22, v34

    if-gez v33, :cond_4

    .line 464
    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v18, v0

    .line 466
    :cond_4
    move/from16 v0, v18

    invoke-static {v4, v5, v0}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-wrap0(Ljava/io/InputStream;[BI)I

    move-result v21

    .line 468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get1(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/os/Handler;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get1(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/os/Handler;

    move-result-object v34

    .line 469
    const/16 v35, 0x4

    .line 468
    invoke-virtual/range {v34 .. v35}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v34

    .line 470
    const-wide/32 v36, 0xc350

    .line 468
    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move-wide/from16 v2, v36

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 471
    monitor-enter p0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 472
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v33, v0

    const/16 v34, 0x1

    invoke-static/range {v33 .. v34}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-set1(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    monitor-exit p0

    .line 476
    const/16 v33, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v33

    move/from16 v2, v21

    invoke-virtual {v0, v5, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get4(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)J

    move-result-wide v34

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v36, v0

    add-long v34, v34, v36

    invoke-static/range {v33 .. v35}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-set2(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;J)J

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get4(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)J

    move-result-wide v34

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    move-wide/from16 v36, v0

    cmp-long v33, v34, v36

    if-eqz v33, :cond_22

    .line 481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get1(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/os/Handler;

    move-result-object v33

    const/16 v34, 0x4

    invoke-virtual/range {v33 .. v34}, Landroid/os/Handler;->removeMessages(I)V

    .line 482
    monitor-enter p0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 483
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    invoke-static/range {v33 .. v34}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-set1(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    monitor-exit p0

    .line 495
    :goto_2
    invoke-virtual/range {v20 .. v20}, Ljavax/obex/ClientOperation;->getResponseCode()I

    move-result v26

    .line 497
    const/16 v33, 0x90

    move/from16 v0, v26

    move/from16 v1, v33

    if-eq v0, v1, :cond_5

    .line 498
    const/16 v33, 0xa0

    move/from16 v0, v26

    move/from16 v1, v33

    if-ne v0, v1, :cond_23

    .line 499
    :cond_5
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get0()Z

    move-result v33

    if-eqz v33, :cond_6

    const-string/jumbo v33, "BtOppObexClient"

    const-string/jumbo v34, "Remote accept"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    :cond_6
    const/16 v17, 0x1

    .line 501
    new-instance v32, Landroid/content/ContentValues;

    invoke-direct/range {v32 .. v32}, Landroid/content/ContentValues;-><init>()V

    .line 502
    .restart local v32    # "updateValues":Landroid/content/ContentValues;
    const-string/jumbo v33, "current_bytes"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get4(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)J

    move-result-wide v34

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v34

    invoke-virtual/range {v32 .. v34}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v33

    const/16 v34, 0x0

    .line 504
    const/16 v35, 0x0

    .line 503
    move-object/from16 v0, v33

    move-object/from16 v1, v32

    move-object/from16 v2, v34

    move-object/from16 v3, v35

    invoke-virtual {v0, v8, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 510
    .end local v32    # "updateValues":Landroid/content/ContentValues;
    :cond_7
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    move-result-wide v6

    .local v6, "beginTime":J
    move-object/from16 v31, v30

    .line 511
    .end local v30    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    .local v31, "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    :goto_4
    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get2(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Z

    move-result v33

    if-nez v33, :cond_27

    if-eqz v17, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get4(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)J

    move-result-wide v34

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    move-wide/from16 v36, v0

    cmp-long v33, v34, v36

    if-eqz v33, :cond_27

    .line 513
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get0()Z

    move-result v33

    if-eqz v33, :cond_8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    .line 515
    :cond_8
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    move-wide/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get4(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)J

    move-result-wide v36

    sub-long v22, v34, v36

    .line 516
    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v34, v0

    cmp-long v33, v22, v34

    if-gez v33, :cond_9

    .line 517
    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v18, v0

    .line 519
    :cond_9
    const/16 v33, 0x0

    move/from16 v0, v33

    move/from16 v1, v18

    invoke-virtual {v4, v5, v0, v1}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v21

    .line 520
    const/16 v33, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v33

    move/from16 v2, v21

    invoke-virtual {v0, v5, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 521
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get0()Z

    move-result v33

    if-eqz v33, :cond_a

    const-string/jumbo v33, "BtOppObexClient"

    const-string/jumbo v34, "waiting for response code"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    :cond_a
    invoke-virtual/range {v20 .. v20}, Ljavax/obex/ClientOperation;->getResponseCode()I

    move-result v26

    .line 524
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get0()Z

    move-result v33

    if-eqz v33, :cond_b

    const-string/jumbo v33, "BtOppObexClient"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "Response code is "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_d} :catch_c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_d .. :try_end_d} :catch_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 525
    :cond_b
    const/16 v33, 0x90

    move/from16 v0, v26

    move/from16 v1, v33

    if-eq v0, v1, :cond_24

    .line 526
    const/16 v33, 0xa0

    move/from16 v0, v26

    move/from16 v1, v33

    if-eq v0, v1, :cond_24

    .line 528
    const/16 v17, 0x0

    move-object/from16 v30, v31

    .end local v31    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    .local v30, "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    :goto_5
    move-object/from16 v31, v30

    .end local v30    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    .restart local v31    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    goto/16 :goto_4

    .line 416
    .end local v4    # "a":Ljava/io/BufferedInputStream;
    .end local v5    # "buffer":[B
    .end local v6    # "beginTime":J
    .end local v17    # "okToProceed":Z
    .end local v18    # "outputBufferSize":I
    .end local v21    # "readLength":I
    .end local v22    # "readbytesleft":J
    .end local v28    # "timestamp":J
    .end local v31    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    .restart local v16    # "inputStream":Ljava/io/InputStream;
    .local v19, "outputStream":Ljava/io/OutputStream;
    .restart local v20    # "putOperation":Ljavax/obex/ClientOperation;
    .local v30, "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    :catchall_0
    move-exception v33

    :try_start_e
    monitor-exit p0

    throw v33
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_e .. :try_end_e} :catch_5
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 597
    .end local v16    # "inputStream":Ljava/io/InputStream;
    .end local v19    # "outputStream":Ljava/io/OutputStream;
    .end local v20    # "putOperation":Ljavax/obex/ClientOperation;
    .end local v30    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    :catch_0
    move-exception v9

    .line 598
    .local v9, "e":Ljava/io/IOException;
    :goto_6
    :try_start_f
    const-string/jumbo v33, "BtOppObexClient"

    const-string/jumbo v34, "IOException"

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 599
    invoke-virtual {v9}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->handleSendException(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 609
    :try_start_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Landroid/net/Uri;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->closeSendFileInfo(Landroid/net/Uri;)V

    .line 611
    if-eqz v30, :cond_c

    .line 612
    invoke-virtual/range {v30 .. v30}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;->interrupt()V

    .line 613
    const/16 v30, 0x0

    .line 616
    :cond_c
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mInputStream:Ljava/io/FileInputStream;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/io/FileInputStream;->close()V

    .line 617
    if-nez v14, :cond_e

    .line 618
    invoke-virtual/range {v20 .. v20}, Ljavax/obex/ClientOperation;->getResponseCode()I

    move-result v26

    .line 619
    const/16 v33, -0x1

    move/from16 v0, v26

    move/from16 v1, v33

    if-eq v0, v1, :cond_44

    .line 620
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get0()Z

    move-result v33

    if-eqz v33, :cond_d

    const-string/jumbo v33, "BtOppObexClient"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "Get response code "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    :cond_d
    const/16 v33, 0xa0

    move/from16 v0, v26

    move/from16 v1, v33

    if-eq v0, v1, :cond_e

    .line 622
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    move-wide/from16 v34, v0

    const-wide/16 v36, 0x0

    cmp-long v33, v34, v36

    if-nez v33, :cond_41

    .line 623
    const/16 v33, 0xcb

    move/from16 v0, v26

    move/from16 v1, v33

    if-ne v0, v1, :cond_41

    .line 625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppManager;

    move-result-object v33

    const/16 v34, 0x1

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput-boolean v0, v1, Lcom/android/bluetooth/opp/BluetoothOppManager;->zero_length_file:Z

    .line 627
    const/16 v27, 0x193

    .line 646
    :cond_e
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v34, v0

    move-object/from16 v0, v33

    move/from16 v1, v34

    move/from16 v2, v27

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 648
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppManager;

    move-result-object v33

    move-object/from16 v0, v33

    iget-boolean v0, v0, Lcom/android/bluetooth/opp/BluetoothOppManager;->zero_length_file:Z

    move/from16 v33, v0

    if-eqz v33, :cond_f

    .line 653
    const/16 v27, 0xc8

    .line 656
    :cond_f
    if-eqz v16, :cond_10

    .line 657
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V

    .line 659
    :cond_10
    if-eqz v20, :cond_11

    .line 660
    invoke-virtual/range {v20 .. v20}, Ljavax/obex/ClientOperation;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_9

    .line 674
    .end local v9    # "e":Ljava/io/IOException;
    :cond_11
    :goto_8
    return v27

    .line 422
    .restart local v16    # "inputStream":Ljava/io/InputStream;
    .restart local v19    # "outputStream":Ljava/io/OutputStream;
    .restart local v20    # "putOperation":Ljavax/obex/ClientOperation;
    .restart local v30    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    :catch_1
    move-exception v9

    .line 423
    .restart local v9    # "e":Ljava/io/IOException;
    const/16 v27, 0x1f0

    .line 424
    :try_start_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v34, v0

    move-object/from16 v0, v33

    move/from16 v1, v34

    move/from16 v2, v27

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 426
    const-string/jumbo v33, "BtOppObexClient"

    const-string/jumbo v34, "Error when put HeaderSet "

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 429
    .end local v9    # "e":Ljava/io/IOException;
    .end local v20    # "putOperation":Ljavax/obex/ClientOperation;
    :catchall_1
    move-exception v33

    monitor-exit p0

    throw v33
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_11 .. :try_end_11} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_11 .. :try_end_11} :catch_5
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    .line 600
    .end local v16    # "inputStream":Ljava/io/InputStream;
    .end local v19    # "outputStream":Ljava/io/OutputStream;
    .end local v30    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    :catch_2
    move-exception v11

    .line 601
    .local v11, "e":Ljava/lang/NullPointerException;
    :goto_9
    :try_start_12
    const-string/jumbo v33, "BtOppObexClient"

    const-string/jumbo v34, "NullPointerException"

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 602
    invoke-virtual {v11}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->handleSendException(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    .line 609
    :try_start_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Landroid/net/Uri;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->closeSendFileInfo(Landroid/net/Uri;)V

    .line 611
    if-eqz v30, :cond_12

    .line 612
    invoke-virtual/range {v30 .. v30}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;->interrupt()V

    .line 613
    const/16 v30, 0x0

    .line 616
    :cond_12
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mInputStream:Ljava/io/FileInputStream;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/io/FileInputStream;->close()V

    .line 617
    if-nez v14, :cond_14

    .line 618
    invoke-virtual/range {v20 .. v20}, Ljavax/obex/ClientOperation;->getResponseCode()I

    move-result v26

    .line 619
    const/16 v33, -0x1

    move/from16 v0, v26

    move/from16 v1, v33

    if-eq v0, v1, :cond_40

    .line 620
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get0()Z

    move-result v33

    if-eqz v33, :cond_13

    const-string/jumbo v33, "BtOppObexClient"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "Get response code "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    :cond_13
    const/16 v33, 0xa0

    move/from16 v0, v26

    move/from16 v1, v33

    if-eq v0, v1, :cond_14

    .line 622
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    move-wide/from16 v34, v0

    const-wide/16 v36, 0x0

    cmp-long v33, v34, v36

    if-nez v33, :cond_3d

    .line 623
    const/16 v33, 0xcb

    move/from16 v0, v26

    move/from16 v1, v33

    if-ne v0, v1, :cond_3d

    .line 625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppManager;

    move-result-object v33

    const/16 v34, 0x1

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput-boolean v0, v1, Lcom/android/bluetooth/opp/BluetoothOppManager;->zero_length_file:Z

    .line 627
    const/16 v27, 0x193

    .line 646
    :cond_14
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v34, v0

    move-object/from16 v0, v33

    move/from16 v1, v34

    move/from16 v2, v27

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 648
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppManager;

    move-result-object v33

    move-object/from16 v0, v33

    iget-boolean v0, v0, Lcom/android/bluetooth/opp/BluetoothOppManager;->zero_length_file:Z

    move/from16 v33, v0

    if-eqz v33, :cond_15

    .line 653
    const/16 v27, 0xc8

    .line 656
    :cond_15
    if-eqz v16, :cond_16

    .line 657
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V

    .line 659
    :cond_16
    if-eqz v20, :cond_11

    .line 660
    invoke-virtual/range {v20 .. v20}, Ljavax/obex/ClientOperation;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_3

    goto/16 :goto_8

    .line 662
    :catch_3
    move-exception v9

    .line 663
    .restart local v9    # "e":Ljava/io/IOException;
    const-string/jumbo v33, "BtOppObexClient"

    const-string/jumbo v34, "IOException"

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 664
    const-string/jumbo v33, "BtOppObexClient"

    const-string/jumbo v34, "Error when closing stream after send"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get4(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)J

    move-result-wide v34

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    move-wide/from16 v36, v0

    cmp-long v33, v34, v36

    if-eqz v33, :cond_11

    .line 669
    const/16 v27, 0x193

    .line 670
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v34, v0

    move-object/from16 v0, v33

    move/from16 v1, v34

    move/from16 v2, v27

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    goto/16 :goto_8

    .line 438
    .end local v9    # "e":Ljava/io/IOException;
    .end local v11    # "e":Ljava/lang/NullPointerException;
    .restart local v16    # "inputStream":Ljava/io/InputStream;
    .restart local v30    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    :catch_4
    move-exception v9

    .line 439
    .restart local v9    # "e":Ljava/io/IOException;
    const/16 v27, 0x1f0

    .line 440
    :try_start_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v34, v0

    move-object/from16 v0, v33

    move/from16 v1, v34

    move/from16 v2, v27

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 441
    const-string/jumbo v33, "BtOppObexClient"

    const-string/jumbo v34, "Error when openOutputStream"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    const/4 v14, 0x1

    goto/16 :goto_1

    .line 471
    .end local v9    # "e":Ljava/io/IOException;
    .end local v16    # "inputStream":Ljava/io/InputStream;
    .restart local v4    # "a":Ljava/io/BufferedInputStream;
    .restart local v5    # "buffer":[B
    .restart local v17    # "okToProceed":Z
    .restart local v18    # "outputBufferSize":I
    .restart local v21    # "readLength":I
    .restart local v22    # "readbytesleft":J
    .restart local v28    # "timestamp":J
    :catchall_2
    move-exception v33

    monitor-exit p0

    throw v33
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_14 .. :try_end_14} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_14 .. :try_end_14} :catch_5
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    .line 603
    .end local v4    # "a":Ljava/io/BufferedInputStream;
    .end local v5    # "buffer":[B
    .end local v17    # "okToProceed":Z
    .end local v18    # "outputBufferSize":I
    .end local v21    # "readLength":I
    .end local v22    # "readbytesleft":J
    .end local v28    # "timestamp":J
    .end local v30    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    :catch_5
    move-exception v10

    .line 604
    .local v10, "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_b
    :try_start_15
    const-string/jumbo v33, "BtOppObexClient"

    const-string/jumbo v34, "IndexOutOfBoundsException"

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 605
    invoke-virtual {v10}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->handleSendException(Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    .line 609
    :try_start_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Landroid/net/Uri;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->closeSendFileInfo(Landroid/net/Uri;)V

    .line 611
    if-eqz v30, :cond_17

    .line 612
    invoke-virtual/range {v30 .. v30}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;->interrupt()V

    .line 613
    const/16 v30, 0x0

    .line 616
    :cond_17
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mInputStream:Ljava/io/FileInputStream;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/io/FileInputStream;->close()V

    .line 617
    if-nez v14, :cond_19

    .line 618
    invoke-virtual/range {v20 .. v20}, Ljavax/obex/ClientOperation;->getResponseCode()I

    move-result v26

    .line 619
    const/16 v33, -0x1

    move/from16 v0, v26

    move/from16 v1, v33

    if-eq v0, v1, :cond_3c

    .line 620
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get0()Z

    move-result v33

    if-eqz v33, :cond_18

    const-string/jumbo v33, "BtOppObexClient"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "Get response code "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    :cond_18
    const/16 v33, 0xa0

    move/from16 v0, v26

    move/from16 v1, v33

    if-eq v0, v1, :cond_19

    .line 622
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    move-wide/from16 v34, v0

    const-wide/16 v36, 0x0

    cmp-long v33, v34, v36

    if-nez v33, :cond_39

    .line 623
    const/16 v33, 0xcb

    move/from16 v0, v26

    move/from16 v1, v33

    if-ne v0, v1, :cond_39

    .line 625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppManager;

    move-result-object v33

    const/16 v34, 0x1

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput-boolean v0, v1, Lcom/android/bluetooth/opp/BluetoothOppManager;->zero_length_file:Z

    .line 627
    const/16 v27, 0x193

    .line 646
    :cond_19
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v34, v0

    move-object/from16 v0, v33

    move/from16 v1, v34

    move/from16 v2, v27

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 648
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppManager;

    move-result-object v33

    move-object/from16 v0, v33

    iget-boolean v0, v0, Lcom/android/bluetooth/opp/BluetoothOppManager;->zero_length_file:Z

    move/from16 v33, v0

    if-eqz v33, :cond_1a

    .line 653
    const/16 v27, 0xc8

    .line 656
    :cond_1a
    if-eqz v16, :cond_1b

    .line 657
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V

    .line 659
    :cond_1b
    if-eqz v20, :cond_11

    .line 660
    invoke-virtual/range {v20 .. v20}, Ljavax/obex/ClientOperation;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_6

    goto/16 :goto_8

    .line 662
    :catch_6
    move-exception v9

    .line 663
    .restart local v9    # "e":Ljava/io/IOException;
    const-string/jumbo v33, "BtOppObexClient"

    const-string/jumbo v34, "IOException"

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 664
    const-string/jumbo v33, "BtOppObexClient"

    const-string/jumbo v34, "Error when closing stream after send"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get4(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)J

    move-result-wide v34

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    move-wide/from16 v36, v0

    cmp-long v33, v34, v36

    if-eqz v33, :cond_11

    .line 669
    const/16 v27, 0x193

    .line 670
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v34, v0

    move-object/from16 v0, v33

    move/from16 v1, v34

    move/from16 v2, v27

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    goto/16 :goto_8

    .line 482
    .end local v9    # "e":Ljava/io/IOException;
    .end local v10    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v4    # "a":Ljava/io/BufferedInputStream;
    .restart local v5    # "buffer":[B
    .restart local v17    # "okToProceed":Z
    .restart local v18    # "outputBufferSize":I
    .restart local v21    # "readLength":I
    .restart local v22    # "readbytesleft":J
    .restart local v28    # "timestamp":J
    .restart local v30    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    :catchall_3
    move-exception v33

    :try_start_17
    monitor-exit p0

    throw v33
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_17 .. :try_end_17} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_17 .. :try_end_17} :catch_5
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    .line 606
    .end local v4    # "a":Ljava/io/BufferedInputStream;
    .end local v5    # "buffer":[B
    .end local v17    # "okToProceed":Z
    .end local v18    # "outputBufferSize":I
    .end local v21    # "readLength":I
    .end local v22    # "readbytesleft":J
    .end local v28    # "timestamp":J
    .end local v30    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    :catchall_4
    move-exception v33

    .line 609
    :goto_d
    :try_start_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Landroid/net/Uri;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->closeSendFileInfo(Landroid/net/Uri;)V

    .line 611
    if-eqz v30, :cond_1c

    .line 612
    invoke-virtual/range {v30 .. v30}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;->interrupt()V

    .line 613
    const/16 v30, 0x0

    .line 616
    :cond_1c
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mInputStream:Ljava/io/FileInputStream;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/io/FileInputStream;->close()V

    .line 617
    if-nez v14, :cond_1e

    .line 618
    invoke-virtual/range {v20 .. v20}, Ljavax/obex/ClientOperation;->getResponseCode()I

    move-result v26

    .line 619
    const/16 v34, -0x1

    move/from16 v0, v26

    move/from16 v1, v34

    if-eq v0, v1, :cond_48

    .line 620
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get0()Z

    move-result v34

    if-eqz v34, :cond_1d

    const-string/jumbo v34, "BtOppObexClient"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, "Get response code "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    :cond_1d
    const/16 v34, 0xa0

    move/from16 v0, v26

    move/from16 v1, v34

    if-eq v0, v1, :cond_1e

    .line 622
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    move-wide/from16 v34, v0

    const-wide/16 v36, 0x0

    cmp-long v34, v34, v36

    if-nez v34, :cond_45

    .line 623
    const/16 v34, 0xcb

    move/from16 v0, v26

    move/from16 v1, v34

    if-ne v0, v1, :cond_45

    .line 625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppManager;

    move-result-object v34

    const/16 v35, 0x1

    move/from16 v0, v35

    move-object/from16 v1, v34

    iput-boolean v0, v1, Lcom/android/bluetooth/opp/BluetoothOppManager;->zero_length_file:Z

    .line 627
    const/16 v27, 0x193

    .line 646
    :cond_1e
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v35, v0

    move-object/from16 v0, v34

    move/from16 v1, v35

    move/from16 v2, v27

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 648
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppManager;

    move-result-object v34

    move-object/from16 v0, v34

    iget-boolean v0, v0, Lcom/android/bluetooth/opp/BluetoothOppManager;->zero_length_file:Z

    move/from16 v34, v0

    if-eqz v34, :cond_1f

    .line 653
    const/16 v27, 0xc8

    .line 656
    :cond_1f
    if-eqz v16, :cond_20

    .line 657
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V

    .line 659
    :cond_20
    if-eqz v20, :cond_21

    .line 660
    invoke-virtual/range {v20 .. v20}, Ljavax/obex/ClientOperation;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_a

    .line 606
    :cond_21
    :goto_f
    throw v33

    .line 488
    .restart local v4    # "a":Ljava/io/BufferedInputStream;
    .restart local v5    # "buffer":[B
    .restart local v17    # "okToProceed":Z
    .restart local v18    # "outputBufferSize":I
    .restart local v21    # "readLength":I
    .restart local v22    # "readbytesleft":J
    .restart local v28    # "timestamp":J
    .restart local v30    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    :cond_22
    :try_start_19
    invoke-virtual/range {v19 .. v19}, Ljava/io/OutputStream;->close()V

    .line 489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get1(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/os/Handler;

    move-result-object v33

    const/16 v34, 0x4

    invoke-virtual/range {v33 .. v34}, Landroid/os/Handler;->removeMessages(I)V

    .line 490
    monitor-enter p0
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_19 .. :try_end_19} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_19 .. :try_end_19} :catch_5
    .catchall {:try_start_19 .. :try_end_19} :catchall_4

    .line 491
    :try_start_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    invoke-static/range {v33 .. v34}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-set1(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_5

    :try_start_1b
    monitor-exit p0

    goto/16 :goto_2

    .line 490
    :catchall_5
    move-exception v33

    monitor-exit p0

    throw v33

    .line 506
    :cond_23
    const-string/jumbo v33, "BtOppObexClient"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "Remote reject, Response code is "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1b .. :try_end_1b} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1b .. :try_end_1b} :catch_5
    .catchall {:try_start_1b .. :try_end_1b} :catchall_4

    goto/16 :goto_3

    .line 530
    .end local v30    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    .restart local v6    # "beginTime":J
    .restart local v31    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    :cond_24
    :try_start_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get4(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)J

    move-result-wide v34

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v36, v0

    add-long v34, v34, v36

    invoke-static/range {v33 .. v35}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-set2(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;J)J

    .line 531
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get0()Z

    move-result v33

    if-eqz v33, :cond_25

    .line 532
    const-string/jumbo v33, "BtOppObexClient"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "Sending file position = "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get4(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)J

    move-result-wide v36

    move-object/from16 v0, v34

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    .line 533
    const-string/jumbo v35, " readLength "

    .line 532
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    .line 533
    const-string/jumbo v35, " bytes took "

    .line 532
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    .line 534
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v36

    sub-long v36, v36, v28

    .line 532
    move-object/from16 v0, v34

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    .line 534
    const-string/jumbo v35, " ms"

    .line 532
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    :cond_25
    if-nez v31, :cond_4a

    .line 538
    new-instance v30, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v34, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-direct {v0, v1, v2, v8}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;-><init>(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_1c .. :try_end_1c} :catch_c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1c .. :try_end_1c} :catch_d
    .catchall {:try_start_1c .. :try_end_1c} :catchall_6

    .line 540
    .end local v31    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    .local v30, "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    :try_start_1d
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get0()Z

    move-result v33

    if-eqz v33, :cond_26

    const-string/jumbo v33, "BtOppObexClient"

    const-string/jumbo v34, "Worker for Updation : Created"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    :cond_26
    invoke-virtual/range {v30 .. v30}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;->start()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1d .. :try_end_1d} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1d .. :try_end_1d} :catch_5
    .catchall {:try_start_1d .. :try_end_1d} :catchall_4

    goto/16 :goto_5

    .line 547
    .end local v30    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    .restart local v31    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    :cond_27
    if-eqz v31, :cond_49

    .line 549
    :try_start_1e
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get0()Z

    move-result v33

    if-eqz v33, :cond_28

    const-string/jumbo v33, "BtOppObexClient"

    const-string/jumbo v34, "Worker for Updation : Destroying"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    :cond_28
    invoke-virtual/range {v31 .. v31}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;->interrupt()V

    .line 551
    invoke-virtual/range {v31 .. v31}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;->join()V
    :try_end_1e
    .catch Ljava/lang/InterruptedException; {:try_start_1e .. :try_end_1e} :catch_8
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_1e .. :try_end_1e} :catch_c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1e .. :try_end_1e} :catch_d
    .catchall {:try_start_1e .. :try_end_1e} :catchall_6

    .line 552
    const/16 v30, 0x0

    .line 554
    .end local v31    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    .local v30, "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    :try_start_1f
    new-instance v32, Landroid/content/ContentValues;

    invoke-direct/range {v32 .. v32}, Landroid/content/ContentValues;-><init>()V

    .line 555
    .restart local v32    # "updateValues":Landroid/content/ContentValues;
    const-string/jumbo v33, "current_bytes"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get4(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)J

    move-result-wide v34

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v34

    invoke-virtual/range {v32 .. v34}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v33

    .line 557
    const/16 v34, 0x0

    const/16 v35, 0x0

    .line 556
    move-object/from16 v0, v33

    move-object/from16 v1, v32

    move-object/from16 v2, v34

    move-object/from16 v3, v35

    invoke-virtual {v0, v8, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1f
    .catch Ljava/lang/InterruptedException; {:try_start_1f .. :try_end_1f} :catch_e
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1f .. :try_end_1f} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1f .. :try_end_1f} :catch_5
    .catchall {:try_start_1f .. :try_end_1f} :catchall_4

    .line 563
    .end local v30    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    .end local v32    # "updateValues":Landroid/content/ContentValues;
    :cond_29
    :goto_10
    const/16 v33, 0xc3

    move/from16 v0, v26

    move/from16 v1, v33

    if-eq v0, v1, :cond_2a

    .line 564
    const/16 v33, 0xc6

    move/from16 v0, v26

    move/from16 v1, v33

    if-ne v0, v1, :cond_31

    .line 565
    :cond_2a
    :try_start_20
    const-string/jumbo v33, "BtOppObexClient"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "Remote reject file "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string/jumbo v35, " length "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    .line 566
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    move-wide/from16 v36, v0

    .line 565
    move-object/from16 v0, v34

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_20 .. :try_end_20} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_20 .. :try_end_20} :catch_5
    .catchall {:try_start_20 .. :try_end_20} :catchall_4

    .line 567
    const/16 v27, 0x193

    .line 609
    .end local v4    # "a":Ljava/io/BufferedInputStream;
    .end local v5    # "buffer":[B
    .end local v6    # "beginTime":J
    .end local v17    # "okToProceed":Z
    .end local v18    # "outputBufferSize":I
    .end local v21    # "readLength":I
    .end local v22    # "readbytesleft":J
    .end local v28    # "timestamp":J
    :cond_2b
    :goto_11
    :try_start_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Landroid/net/Uri;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->closeSendFileInfo(Landroid/net/Uri;)V

    .line 611
    if-eqz v30, :cond_2c

    .line 612
    invoke-virtual/range {v30 .. v30}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;->interrupt()V

    .line 613
    const/16 v30, 0x0

    .line 616
    :cond_2c
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mInputStream:Ljava/io/FileInputStream;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/io/FileInputStream;->close()V

    .line 617
    if-nez v14, :cond_2e

    .line 618
    invoke-virtual/range {v20 .. v20}, Ljavax/obex/ClientOperation;->getResponseCode()I

    move-result v26

    .line 619
    const/16 v33, -0x1

    move/from16 v0, v26

    move/from16 v1, v33

    if-eq v0, v1, :cond_38

    .line 620
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get0()Z

    move-result v33

    if-eqz v33, :cond_2d

    const-string/jumbo v33, "BtOppObexClient"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "Get response code "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    :cond_2d
    const/16 v33, 0xa0

    move/from16 v0, v26

    move/from16 v1, v33

    if-eq v0, v1, :cond_2e

    .line 622
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    move-wide/from16 v34, v0

    const-wide/16 v36, 0x0

    cmp-long v33, v34, v36

    if-nez v33, :cond_35

    .line 623
    const/16 v33, 0xcb

    move/from16 v0, v26

    move/from16 v1, v33

    if-ne v0, v1, :cond_35

    .line 625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppManager;

    move-result-object v33

    const/16 v34, 0x1

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput-boolean v0, v1, Lcom/android/bluetooth/opp/BluetoothOppManager;->zero_length_file:Z

    .line 627
    const/16 v27, 0x193

    .line 646
    :cond_2e
    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v34, v0

    move-object/from16 v0, v33

    move/from16 v1, v34

    move/from16 v2, v27

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 648
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppManager;

    move-result-object v33

    move-object/from16 v0, v33

    iget-boolean v0, v0, Lcom/android/bluetooth/opp/BluetoothOppManager;->zero_length_file:Z

    move/from16 v33, v0

    if-eqz v33, :cond_2f

    .line 653
    const/16 v27, 0xc8

    .line 656
    :cond_2f
    if-eqz v16, :cond_30

    .line 657
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V

    .line 659
    :cond_30
    if-eqz v20, :cond_11

    .line 660
    invoke-virtual/range {v20 .. v20}, Ljavax/obex/ClientOperation;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_7

    goto/16 :goto_8

    .line 662
    :catch_7
    move-exception v9

    .line 663
    .restart local v9    # "e":Ljava/io/IOException;
    const-string/jumbo v33, "BtOppObexClient"

    const-string/jumbo v34, "IOException"

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 664
    const-string/jumbo v33, "BtOppObexClient"

    const-string/jumbo v34, "Error when closing stream after send"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get4(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)J

    move-result-wide v34

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    move-wide/from16 v36, v0

    cmp-long v33, v34, v36

    if-eqz v33, :cond_11

    .line 669
    const/16 v27, 0x193

    .line 670
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v34, v0

    move-object/from16 v0, v33

    move/from16 v1, v34

    move/from16 v2, v27

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    goto/16 :goto_8

    .line 558
    .end local v9    # "e":Ljava/io/IOException;
    .restart local v4    # "a":Ljava/io/BufferedInputStream;
    .restart local v5    # "buffer":[B
    .restart local v6    # "beginTime":J
    .restart local v17    # "okToProceed":Z
    .restart local v18    # "outputBufferSize":I
    .restart local v21    # "readLength":I
    .restart local v22    # "readbytesleft":J
    .restart local v28    # "timestamp":J
    .restart local v31    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    :catch_8
    move-exception v15

    .local v15, "ie":Ljava/lang/InterruptedException;
    move-object/from16 v30, v31

    .line 559
    .end local v31    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    :goto_13
    :try_start_22
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get0()Z

    move-result v33

    if-eqz v33, :cond_29

    const-string/jumbo v33, "BtOppObexClient"

    const-string/jumbo v34, "Interrupted waiting for uiUpdateThread to join"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    .line 568
    .end local v15    # "ie":Ljava/lang/InterruptedException;
    :cond_31
    const/16 v33, 0xcf

    move/from16 v0, v26

    move/from16 v1, v33

    if-ne v0, v1, :cond_32

    .line 569
    const-string/jumbo v33, "BtOppObexClient"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "Remote reject file type "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mMimetype:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    const/16 v27, 0x196

    goto/16 :goto_11

    .line 571
    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get2(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Z

    move-result v33

    if-nez v33, :cond_34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get4(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)J

    move-result-wide v34

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    move-wide/from16 v36, v0

    cmp-long v33, v34, v36

    if-nez v33, :cond_34

    .line 573
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    move-wide/from16 v34, v0

    const-wide/32 v36, 0x7a120

    cmp-long v33, v34, v36

    if-lez v33, :cond_33

    .line 574
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 575
    .local v12, "endTime":J
    const-string/jumbo v33, "BtOppObexClient"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "SendFile finished send out file "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    .line 576
    const-string/jumbo v35, " length "

    .line 575
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    .line 576
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    move-wide/from16 v36, v0

    .line 575
    move-object/from16 v0, v34

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    .line 576
    const-string/jumbo v35, " Bytes. Approx. throughput is "

    .line 575
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    .line 577
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    move-wide/from16 v36, v0

    .line 578
    sub-long v38, v12, v6

    .line 577
    invoke-static/range {v36 .. v39}, Lcom/android/bluetooth/opp/BluetoothShare;->throughputInKbps(JJ)F

    move-result v35

    .line 575
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v34

    .line 579
    const-string/jumbo v35, " Kbps"

    .line 575
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    .end local v12    # "endTime":J
    :goto_14
    const/16 v27, 0xc8

    .line 587
    invoke-virtual/range {v19 .. v19}, Ljava/io/OutputStream;->close()V

    goto/16 :goto_11

    .line 581
    :cond_33
    const-string/jumbo v33, "BtOppObexClient"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "SendFile finished sending file "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    .line 582
    const-string/jumbo v35, " length "

    .line 581
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    .line 582
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    move-wide/from16 v36, v0

    .line 581
    move-object/from16 v0, v34

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    .line 582
    const-string/jumbo v35, " Bytes. File size is too "

    .line 581
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    .line 583
    const-string/jumbo v35, " small to measure throughput"

    .line 581
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 589
    :cond_34
    const/4 v14, 0x1

    .line 590
    const/16 v27, 0x1ea

    .line 591
    invoke-virtual/range {v20 .. v20}, Ljavax/obex/ClientOperation;->abort()V

    .line 593
    const-string/jumbo v33, "BtOppObexClient"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "SendFile interrupted when send out file "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    .line 594
    const-string/jumbo v35, " at "

    .line 593
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    .line 594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get4(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)J

    move-result-wide v36

    .line 593
    move-object/from16 v0, v34

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    .line 594
    const-string/jumbo v35, " of "

    .line 593
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    .line 594
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    move-wide/from16 v36, v0

    .line 593
    move-object/from16 v0, v34

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_22 .. :try_end_22} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_22 .. :try_end_22} :catch_5
    .catchall {:try_start_22 .. :try_end_22} :catchall_4

    goto/16 :goto_11

    .line 629
    .end local v4    # "a":Ljava/io/BufferedInputStream;
    .end local v5    # "buffer":[B
    .end local v6    # "beginTime":J
    .end local v17    # "okToProceed":Z
    .end local v18    # "outputBufferSize":I
    .end local v21    # "readLength":I
    .end local v22    # "readbytesleft":J
    .end local v28    # "timestamp":J
    :cond_35
    :try_start_23
    const-string/jumbo v33, "BtOppObexClient"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "Response error code is "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_7

    .line 630
    const/16 v27, 0x1ef

    .line 631
    const/16 v33, 0xcf

    move/from16 v0, v26

    move/from16 v1, v33

    if-ne v0, v1, :cond_36

    .line 632
    const/16 v27, 0x196

    .line 634
    :cond_36
    const/16 v33, 0xc3

    move/from16 v0, v26

    move/from16 v1, v33

    if-ne v0, v1, :cond_37

    .line 636
    :goto_15
    const/16 v27, 0x193

    goto/16 :goto_12

    .line 635
    :cond_37
    const/16 v33, 0xc6

    move/from16 v0, v26

    move/from16 v1, v33

    if-ne v0, v1, :cond_2e

    goto :goto_15

    .line 642
    :cond_38
    const/16 v27, 0x1f1

    goto/16 :goto_12

    .line 629
    .restart local v10    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_39
    :try_start_24
    const-string/jumbo v33, "BtOppObexClient"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "Response error code is "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_24} :catch_6

    .line 630
    const/16 v27, 0x1ef

    .line 631
    const/16 v33, 0xcf

    move/from16 v0, v26

    move/from16 v1, v33

    if-ne v0, v1, :cond_3a

    .line 632
    const/16 v27, 0x196

    .line 634
    :cond_3a
    const/16 v33, 0xc3

    move/from16 v0, v26

    move/from16 v1, v33

    if-ne v0, v1, :cond_3b

    .line 636
    :goto_16
    const/16 v27, 0x193

    goto/16 :goto_c

    .line 635
    :cond_3b
    const/16 v33, 0xc6

    move/from16 v0, v26

    move/from16 v1, v33

    if-ne v0, v1, :cond_19

    goto :goto_16

    .line 642
    :cond_3c
    const/16 v27, 0x1f1

    goto/16 :goto_c

    .line 629
    .end local v10    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v11    # "e":Ljava/lang/NullPointerException;
    :cond_3d
    :try_start_25
    const-string/jumbo v33, "BtOppObexClient"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "Response error code is "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_25} :catch_3

    .line 630
    const/16 v27, 0x1ef

    .line 631
    const/16 v33, 0xcf

    move/from16 v0, v26

    move/from16 v1, v33

    if-ne v0, v1, :cond_3e

    .line 632
    const/16 v27, 0x196

    .line 634
    :cond_3e
    const/16 v33, 0xc3

    move/from16 v0, v26

    move/from16 v1, v33

    if-ne v0, v1, :cond_3f

    .line 636
    :goto_17
    const/16 v27, 0x193

    goto/16 :goto_a

    .line 635
    :cond_3f
    const/16 v33, 0xc6

    move/from16 v0, v26

    move/from16 v1, v33

    if-ne v0, v1, :cond_14

    goto :goto_17

    .line 642
    :cond_40
    const/16 v27, 0x1f1

    goto/16 :goto_a

    .line 629
    .end local v11    # "e":Ljava/lang/NullPointerException;
    .restart local v9    # "e":Ljava/io/IOException;
    :cond_41
    :try_start_26
    const-string/jumbo v33, "BtOppObexClient"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "Response error code is "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_26} :catch_9

    .line 630
    const/16 v27, 0x1ef

    .line 631
    const/16 v33, 0xcf

    move/from16 v0, v26

    move/from16 v1, v33

    if-ne v0, v1, :cond_42

    .line 632
    const/16 v27, 0x196

    .line 634
    :cond_42
    const/16 v33, 0xc3

    move/from16 v0, v26

    move/from16 v1, v33

    if-ne v0, v1, :cond_43

    .line 636
    :goto_18
    const/16 v27, 0x193

    goto/16 :goto_7

    .line 635
    :cond_43
    const/16 v33, 0xc6

    move/from16 v0, v26

    move/from16 v1, v33

    if-ne v0, v1, :cond_e

    goto :goto_18

    .line 642
    :cond_44
    const/16 v27, 0x1f1

    goto/16 :goto_7

    .line 662
    :catch_9
    move-exception v9

    .line 663
    const-string/jumbo v33, "BtOppObexClient"

    const-string/jumbo v34, "IOException"

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 664
    const-string/jumbo v33, "BtOppObexClient"

    const-string/jumbo v34, "Error when closing stream after send"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get4(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)J

    move-result-wide v34

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    move-wide/from16 v36, v0

    cmp-long v33, v34, v36

    if-eqz v33, :cond_11

    .line 669
    const/16 v27, 0x193

    .line 670
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v34, v0

    move-object/from16 v0, v33

    move/from16 v1, v34

    move/from16 v2, v27

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    goto/16 :goto_8

    .line 629
    .end local v9    # "e":Ljava/io/IOException;
    :cond_45
    :try_start_27
    const-string/jumbo v34, "BtOppObexClient"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, "Response error code is "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_27} :catch_a

    .line 630
    const/16 v27, 0x1ef

    .line 631
    const/16 v34, 0xcf

    move/from16 v0, v26

    move/from16 v1, v34

    if-ne v0, v1, :cond_46

    .line 632
    const/16 v27, 0x196

    .line 634
    :cond_46
    const/16 v34, 0xc3

    move/from16 v0, v26

    move/from16 v1, v34

    if-ne v0, v1, :cond_47

    .line 636
    :goto_19
    const/16 v27, 0x193

    goto/16 :goto_e

    .line 635
    :cond_47
    const/16 v34, 0xc6

    move/from16 v0, v26

    move/from16 v1, v34

    if-ne v0, v1, :cond_1e

    goto :goto_19

    .line 642
    :cond_48
    const/16 v27, 0x1f1

    goto/16 :goto_e

    .line 662
    :catch_a
    move-exception v9

    .line 663
    .restart local v9    # "e":Ljava/io/IOException;
    const-string/jumbo v34, "BtOppObexClient"

    const-string/jumbo v35, "IOException"

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 664
    const-string/jumbo v34, "BtOppObexClient"

    const-string/jumbo v35, "Error when closing stream after send"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get4(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)J

    move-result-wide v34

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    move-wide/from16 v36, v0

    cmp-long v34, v34, v36

    if-eqz v34, :cond_21

    .line 669
    const/16 v27, 0x193

    .line 670
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v35, v0

    move-object/from16 v0, v34

    move/from16 v1, v35

    move/from16 v2, v27

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    goto/16 :goto_f

    .line 606
    .end local v9    # "e":Ljava/io/IOException;
    .restart local v4    # "a":Ljava/io/BufferedInputStream;
    .restart local v5    # "buffer":[B
    .restart local v6    # "beginTime":J
    .restart local v17    # "okToProceed":Z
    .restart local v18    # "outputBufferSize":I
    .restart local v21    # "readLength":I
    .restart local v22    # "readbytesleft":J
    .restart local v28    # "timestamp":J
    .restart local v31    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    :catchall_6
    move-exception v33

    move-object/from16 v30, v31

    .end local v31    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    .local v30, "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    goto/16 :goto_d

    .line 597
    .end local v30    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    .restart local v31    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    :catch_b
    move-exception v9

    .restart local v9    # "e":Ljava/io/IOException;
    move-object/from16 v30, v31

    .end local v31    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    .restart local v30    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    goto/16 :goto_6

    .line 600
    .end local v9    # "e":Ljava/io/IOException;
    .end local v30    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    .restart local v31    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    :catch_c
    move-exception v11

    .restart local v11    # "e":Ljava/lang/NullPointerException;
    move-object/from16 v30, v31

    .end local v31    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    .restart local v30    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    goto/16 :goto_9

    .line 603
    .end local v11    # "e":Ljava/lang/NullPointerException;
    .end local v30    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    .restart local v31    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    :catch_d
    move-exception v10

    .restart local v10    # "e":Ljava/lang/IndexOutOfBoundsException;
    move-object/from16 v30, v31

    .end local v31    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    .restart local v30    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    goto/16 :goto_b

    .line 558
    .end local v10    # "e":Ljava/lang/IndexOutOfBoundsException;
    .local v30, "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    :catch_e
    move-exception v15

    .restart local v15    # "ie":Ljava/lang/InterruptedException;
    goto/16 :goto_13

    .end local v15    # "ie":Ljava/lang/InterruptedException;
    .end local v30    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    .restart local v31    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    :cond_49
    move-object/from16 v30, v31

    .end local v31    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    .local v30, "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    goto/16 :goto_10

    .end local v30    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    .restart local v31    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    :cond_4a
    move-object/from16 v30, v31

    .end local v31    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    .restart local v30    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    goto/16 :goto_5
.end method


# virtual methods
.method public addShare(Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .line 213
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->processShareInfo()Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    .line 214
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->waitingForShare:Z

    .line 211
    return-void
.end method

.method public interrupt()V
    .locals 4

    .prologue
    .line 688
    invoke-super {p0}, Ljava/lang/Thread;->interrupt()V

    .line 689
    monitor-enter p0

    .line 690
    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get3(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 691
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get0()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "BtOppObexClient"

    const-string/jumbo v3, "Interrupted when waitingForRemote"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 693
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mTransport1:Ljavax/obex/ObexTransport;

    invoke-interface {v2}, Ljavax/obex/ObexTransport;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 697
    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get1(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 698
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x3

    iput v2, v1, Landroid/os/Message;->what:I

    .line 699
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    if-eqz v2, :cond_1

    .line 700
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 702
    :cond_1
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v1    # "msg":Landroid/os/Message;
    :cond_2
    monitor-exit p0

    .line 687
    return-void

    .line 694
    :catch_0
    move-exception v0

    .line 695
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    const-string/jumbo v2, "BtOppObexClient"

    const-string/jumbo v3, "mTransport.close error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 689
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 219
    const/16 v3, 0xa

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 221
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get0()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "BtOppObexClient"

    const-string/jumbo v4, "acquire partial WakeLock"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 225
    const-wide/16 v4, 0x64

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    :goto_0
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    invoke-static {v3}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get2(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 231
    iget v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mNumShares:I

    invoke-direct {p0, v3}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->connect(I)V

    .line 234
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    invoke-static {v3}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get2(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 235
    iget-boolean v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->waitingForShare:Z

    if-nez v3, :cond_3

    .line 236
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->doSend()V

    goto :goto_1

    .line 226
    :catch_0
    move-exception v1

    .line 227
    .local v1, "e1":Ljava/lang/InterruptedException;
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get0()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "BtOppObexClient"

    const-string/jumbo v4, "Client thread was interrupted (1), exiting"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_2
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    invoke-static {v3, v6}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-set0(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z

    goto :goto_0

    .line 239
    .end local v1    # "e1":Ljava/lang/InterruptedException;
    :cond_3
    :try_start_1
    const-string/jumbo v3, "BtOppObexClient"

    const-string/jumbo v4, "Client thread waiting for next share, sleep for 500"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    const-wide/16 v4, 0x1f4

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 242
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 247
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_4
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->disconnect()V

    .line 249
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 250
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get0()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string/jumbo v3, "BtOppObexClient"

    const-string/jumbo v4, "release partial WakeLock"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_5
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 253
    :cond_6
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    invoke-static {v3}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get1(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/os/Handler;

    move-result-object v3

    invoke-static {v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v2

    .line 254
    .local v2, "msg":Landroid/os/Message;
    iput v6, v2, Landroid/os/Message;->what:I

    .line 255
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 256
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 218
    return-void
.end method
