.class public Lcom/android/bluetooth/opp/BluetoothOppTransfer;
.super Ljava/lang/Object;
.source "BluetoothOppTransfer.java"

# interfaces
.implements Lcom/android/bluetooth/opp/BluetoothOppBatch$BluetoothOppBatchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;,
        Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;,
        Lcom/android/bluetooth/opp/BluetoothOppTransfer$1;
    }
.end annotation


# static fields
.field private static final CONNECT_RETRY_TIME:I = 0x64

.field private static final CONNECT_WAIT_TIMEOUT:I = 0xafc8

.field private static final D:Z = true

.field private static final OPUSH_UUID16:S = 0x1105s

.field private static final SOCKET_ERROR_RETRY:I = 0xd

.field private static final SOCKET_LINK_KEY_ERROR:Ljava/lang/String; = "Invalid exchange"

.field private static final TAG:Ljava/lang/String; = "BtOppTransfer"

.field private static final TRANSPORT_CONNECTED:I = 0xb

.field private static final TRANSPORT_ERROR:I = 0xa

.field private static final V:Z


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

.field private mBluetoothReceiver:Landroid/content/BroadcastReceiver;

.field private mConnectThread:Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;

.field private mContext:Landroid/content/Context;

.field private mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mSession:Lcom/android/bluetooth/opp/BluetoothOppObexSession;

.field private mSessionHandler:Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;

.field private mTimestamp:J

.field private mTransport:Ljavax/obex/ObexTransport;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->V:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppBatch;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mConnectThread:Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppObexSession;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mSession:Lcom/android/bluetooth/opp/BluetoothOppObexSession;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mSessionHandler:Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Ljavax/obex/ObexTransport;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mTransport:Ljavax/obex/ObexTransport;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;)Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mConnectThread:Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Ljavax/obex/ObexTransport;)Ljavax/obex/ObexTransport;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mTransport:Ljavax/obex/ObexTransport;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->cleanUp()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->markBatchFailed()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/bluetooth/opp/BluetoothOppTransfer;I)V
    .locals 0
    .param p1, "failReason"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->markBatchFailed(I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V
    .locals 0
    .param p1, "share"    # Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->markShareTimeout(Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->processCurrentShare()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->startObexSession()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V
    .locals 0
    .param p1, "share"    # Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->tickShareStatus(Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 78
    const-string/jumbo v0, "BluetoothOpp"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->V:Z

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/PowerManager;Lcom/android/bluetooth/opp/BluetoothOppBatch;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "powerManager"    # Landroid/os/PowerManager;
    .param p3, "batch"    # Lcom/android/bluetooth/opp/BluetoothOppBatch;

    .prologue
    .line 125
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;-><init>(Landroid/content/Context;Landroid/os/PowerManager;Lcom/android/bluetooth/opp/BluetoothOppBatch;Lcom/android/bluetooth/opp/BluetoothOppObexSession;)V

    .line 124
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/PowerManager;Lcom/android/bluetooth/opp/BluetoothOppBatch;Lcom/android/bluetooth/opp/BluetoothOppObexSession;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "powerManager"    # Landroid/os/PowerManager;
    .param p3, "batch"    # Lcom/android/bluetooth/opp/BluetoothOppBatch;
    .param p4, "session"    # Lcom/android/bluetooth/opp/BluetoothOppObexSession;

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 492
    new-instance v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer$1;-><init>(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    .line 115
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mContext:Landroid/content/Context;

    .line 116
    iput-object p3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    .line 117
    iput-object p4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mSession:Lcom/android/bluetooth/opp/BluetoothOppObexSession;

    .line 119
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    invoke-virtual {v0, p0}, Lcom/android/bluetooth/opp/BluetoothOppBatch;->registerListern(Lcom/android/bluetooth/opp/BluetoothOppBatch$BluetoothOppBatchListener;)V

    .line 120
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 113
    return-void
.end method

.method private cleanUp()V
    .locals 3

    .prologue
    .line 533
    monitor-enter p0

    .line 535
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 536
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 537
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    .line 538
    sget-boolean v1, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->V:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "BtOppTransfer"

    const-string/jumbo v2, "Un Registered mBluetoothReceiver"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    .line 532
    return-void

    .line 540
    :catch_0
    move-exception v0

    .line 541
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v1, "BtOppTransfer"

    const-string/jumbo v2, "Exception:unregisterReceiver"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 533
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private markBatchFailed()V
    .locals 1

    .prologue
    .line 355
    const/16 v0, 0x1eb

    invoke-direct {p0, v0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->markBatchFailed(I)V

    .line 354
    return-void
.end method

.method private markBatchFailed(I)V
    .locals 10
    .param p1, "failReason"    # I

    .prologue
    const/16 v9, 0xc8

    const/4 v8, 0x0

    .line 299
    monitor-enter p0

    .line 301
    const-wide/16 v6, 0x3e8

    :try_start_0
    invoke-virtual {p0, v6, v7}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    .line 307
    const-string/jumbo v5, "BtOppTransfer"

    const-string/jumbo v6, "Mark all ShareInfo in the batch as failed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    if-eqz v5, :cond_3

    .line 309
    sget-boolean v5, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->V:Z

    if-eqz v5, :cond_1

    const-string/jumbo v5, "BtOppTransfer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Current share has status "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v7, v7, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_1
    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v5, v5, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    invoke-static {v5}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusError(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 311
    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget p1, v5, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    .line 313
    :cond_2
    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v5, v5, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDirection:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 314
    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget-object v5, v5, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 315
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget-object v6, v6, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 319
    :cond_3
    const/4 v3, 0x0

    .line 320
    .local v3, "info":Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    if-nez v5, :cond_4

    .line 321
    return-void

    .line 302
    .end local v3    # "info":Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    :catch_0
    move-exception v1

    .line 303
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_1
    sget-boolean v5, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->V:Z

    if-eqz v5, :cond_0

    const-string/jumbo v5, "BtOppTransfer"

    const-string/jumbo v6, "Interrupted waiting for markBatchFailed"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 299
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 323
    .restart local v3    # "info":Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    :cond_4
    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    invoke-virtual {v5}, Lcom/android/bluetooth/opp/BluetoothOppBatch;->getPendingShare()Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object v3

    .line 324
    .local v3, "info":Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    :goto_1
    if-eqz v3, :cond_8

    .line 325
    iget v5, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    if-ge v5, v9, :cond_6

    .line 326
    const-string/jumbo v5, "BtOppTransfer"

    const-string/jumbo v6, " Batch Failed updating Content Provider "

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iput p1, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    .line 328
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 329
    .local v0, "contentUri":Landroid/net/Uri;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 330
    .local v4, "updateValues":Landroid/content/ContentValues;
    const-string/jumbo v5, "status"

    iget v6, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 332
    iget v5, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDirection:I

    if-nez v5, :cond_7

    .line 334
    iget-object v5, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Landroid/net/Uri;

    invoke-static {v5}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->getSendFileInfo(Landroid/net/Uri;)Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    move-result-object v2

    .line 335
    .local v2, "fileInfo":Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;
    iget-object v5, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Landroid/net/Uri;

    invoke-static {v5}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->closeSendFileInfo(Landroid/net/Uri;)V

    .line 336
    iget-object v5, v2, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    if-eqz v5, :cond_5

    .line 337
    const-string/jumbo v5, "hint"

    iget-object v6, v2, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    const-string/jumbo v5, "total_bytes"

    iget-wide v6, v2, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 339
    const-string/jumbo v5, "mimetype"

    iget-object v6, v2, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mMimetype:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    .end local v2    # "fileInfo":Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;
    :cond_5
    :goto_2
    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v0, v4, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 347
    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mContext:Landroid/content/Context;

    iget v6, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    invoke-static {v5, v0, v6}, Lcom/android/bluetooth/opp/Constants;->sendIntentIfCompleted(Landroid/content/Context;Landroid/net/Uri;I)V

    .line 349
    .end local v0    # "contentUri":Landroid/net/Uri;
    .end local v4    # "updateValues":Landroid/content/ContentValues;
    :cond_6
    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    invoke-virtual {v5}, Lcom/android/bluetooth/opp/BluetoothOppBatch;->getPendingShare()Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object v3

    goto/16 :goto_1

    .line 342
    .restart local v0    # "contentUri":Landroid/net/Uri;
    .restart local v4    # "updateValues":Landroid/content/ContentValues;
    :cond_7
    iget v5, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    if-ge v5, v9, :cond_5

    iget-object v5, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    if-eqz v5, :cond_5

    .line 343
    new-instance v5, Ljava/io/File;

    iget-object v6, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 298
    .end local v0    # "contentUri":Landroid/net/Uri;
    .end local v4    # "updateValues":Landroid/content/ContentValues;
    :cond_8
    return-void
.end method

.method private markShareTimeout(Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V
    .locals 5
    .param p1, "share"    # Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .prologue
    const/4 v4, 0x0

    .line 291
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 292
    .local v0, "contentUri":Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 294
    .local v1, "updateValues":Landroid/content/ContentValues;
    const-string/jumbo v2, "confirm"

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 293
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 295
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 290
    return-void
.end method

.method private processCurrentShare()V
    .locals 3

    .prologue
    .line 525
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->V:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BtOppTransfer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processCurrentShare"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v2, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mSession:Lcom/android/bluetooth/opp/BluetoothOppObexSession;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    invoke-interface {v0, v1}, Lcom/android/bluetooth/opp/BluetoothOppObexSession;->addShare(Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V

    .line 527
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mConfirm:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 528
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->confirmStatusChanged()V

    .line 523
    :cond_1
    return-void
.end method

.method private startConnectSession()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 570
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDestination:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0}, Lcom/android/bluetooth/OolConnManager;->setSdpInitiatedAddress(Landroid/bluetooth/BluetoothDevice;)V

    .line 571
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDestination:Landroid/bluetooth/BluetoothDevice;

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->ObexObjectPush:Landroid/os/ParcelUuid;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->sdpSearch(Landroid/os/ParcelUuid;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 573
    new-instance v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    iget-object v1, v1, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDestination:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {v0, p0, v1, v3, v3}, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;-><init>(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Landroid/bluetooth/BluetoothDevice;ZZ)V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mConnectThread:Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;

    .line 575
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/bluetooth/OolConnManager;->setSdpInitiatedAddress(Landroid/bluetooth/BluetoothDevice;)V

    .line 580
    :goto_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mConnectThread:Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;

    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->start()V

    .line 564
    return-void

    .line 578
    :cond_0
    new-instance v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    iget-object v1, v1, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDestination:Landroid/bluetooth/BluetoothDevice;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v3, v2}, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;-><init>(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Landroid/bluetooth/BluetoothDevice;ZZ)V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mConnectThread:Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;

    goto :goto_0
.end method

.method private startObexSession()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 443
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    iput v5, v2, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mStatus:I

    .line 445
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    invoke-virtual {v2}, Lcom/android/bluetooth/opp/BluetoothOppBatch;->getPendingShare()Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .line 446
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    if-nez v2, :cond_0

    .line 450
    const-string/jumbo v2, "BtOppTransfer"

    const-string/jumbo v3, "Unexpected error happened !"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    return-void

    .line 453
    :cond_0
    sget-boolean v2, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->V:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "BtOppTransfer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Start session for info "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v4, v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " for batch "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 454
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    iget v4, v4, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mId:I

    .line 453
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    :cond_1
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    iget v2, v2, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDirection:I

    if-nez v2, :cond_5

    .line 457
    sget-boolean v2, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->V:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "BtOppTransfer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Create Client session with transport "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mTransport:Ljavax/obex/ObexTransport;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    :cond_2
    new-instance v2, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mTransport:Ljavax/obex/ObexTransport;

    invoke-direct {v2, v3, v4}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;-><init>(Landroid/content/Context;Ljavax/obex/ObexTransport;)V

    iput-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mSession:Lcom/android/bluetooth/opp/BluetoothOppObexSession;

    .line 475
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mSession:Lcom/android/bluetooth/opp/BluetoothOppObexSession;

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mSessionHandler:Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    invoke-virtual {v4}, Lcom/android/bluetooth/opp/BluetoothOppBatch;->getNumShares()I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/android/bluetooth/opp/BluetoothOppObexSession;->start(Landroid/os/Handler;I)V

    .line 476
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->processCurrentShare()V

    .line 481
    monitor-enter p0

    .line 483
    :try_start_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 484
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 485
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 486
    sget-boolean v2, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->V:Z

    if-eqz v2, :cond_4

    const-string/jumbo v2, "BtOppTransfer"

    const-string/jumbo v3, "Registered mBluetoothReceiver"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "filter":Landroid/content/IntentFilter;
    :cond_4
    :goto_1
    monitor-exit p0

    .line 441
    return-void

    .line 459
    :cond_5
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    iget v2, v2, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDirection:I

    if-ne v2, v5, :cond_3

    .line 465
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mSession:Lcom/android/bluetooth/opp/BluetoothOppObexSession;

    if-nez v2, :cond_6

    .line 467
    const-string/jumbo v2, "BtOppTransfer"

    const-string/jumbo v3, "Unexpected error happened !"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->markBatchFailed()V

    .line 469
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    const/4 v3, 0x3

    iput v3, v2, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mStatus:I

    .line 470
    return-void

    .line 472
    :cond_6
    sget-boolean v2, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->V:Z

    if-eqz v2, :cond_3

    const-string/jumbo v2, "BtOppTransfer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Transfer has Server session"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mSession:Lcom/android/bluetooth/opp/BluetoothOppObexSession;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 481
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 487
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_1
.end method

.method private tickShareStatus(Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V
    .locals 5
    .param p1, "share"    # Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .prologue
    const/4 v4, 0x0

    .line 850
    if-nez p1, :cond_0

    .line 851
    const-string/jumbo v2, "BtOppTransfer"

    const-string/jumbo v3, "Share is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    return-void

    .line 854
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 855
    .local v0, "contentUri":Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 856
    .local v1, "updateValues":Landroid/content/ContentValues;
    const-string/jumbo v2, "direction"

    iget v3, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDirection:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 857
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 849
    return-void
.end method


# virtual methods
.method public confirmStatusChanged()V
    .locals 4

    .prologue
    .line 552
    new-instance v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$2;

    const-string/jumbo v1, "Server Unblock thread"

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransfer$2;-><init>(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Ljava/lang/String;)V

    .line 560
    .local v0, "notifyThread":Ljava/lang/Thread;
    sget-boolean v1, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->V:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "BtOppTransfer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "confirmStatusChanged to unblock mSession"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mSession:Lcom/android/bluetooth/opp/BluetoothOppObexSession;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 550
    return-void
.end method

.method public getBatchId()I
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mId:I

    return v0
.end method

.method public onBatchCanceled()V
    .locals 2

    .prologue
    .line 908
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->V:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BtOppTransfer"

    const-string/jumbo v1, "Transfer on Batch canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->stop()V

    .line 911
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    const/4 v1, 0x2

    iput v1, v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mStatus:I

    .line 907
    return-void
.end method

.method public onShareAdded(I)V
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 871
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    invoke-virtual {v1}, Lcom/android/bluetooth/opp/BluetoothOppBatch;->getPendingShare()Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object v0

    .line 872
    .local v0, "info":Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    iget v1, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDirection:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 873
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    invoke-virtual {v1}, Lcom/android/bluetooth/opp/BluetoothOppBatch;->getPendingShare()Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .line 877
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    if-eqz v1, :cond_2

    .line 878
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v1, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mConfirm:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 879
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v1, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mConfirm:I

    .line 880
    const/4 v2, 0x5

    .line 879
    if-ne v1, v2, :cond_2

    .line 882
    :cond_0
    sget-boolean v1, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->V:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "BtOppTransfer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Transfer continue session for info "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v3, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 883
    const-string/jumbo v3, " from batch "

    .line 882
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 883
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    iget v3, v3, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mId:I

    .line 882
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    :cond_1
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->processCurrentShare()V

    .line 885
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->confirmStatusChanged()V

    .line 870
    :cond_2
    return-void
.end method

.method public onShareDeleted(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 900
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 385
    const-string/jumbo v0, "BtOppTransfer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Can\'t start transfer when Bluetooth is disabled for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    iget v2, v2, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->markBatchFailed()V

    .line 387
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    const/4 v1, 0x3

    iput v1, v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mStatus:I

    .line 388
    return-void

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_2

    .line 392
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->V:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "BtOppTransfer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Create handler thread for batch "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    iget v2, v2, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    :cond_1
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "BtOpp Transfer Handler"

    .line 394
    const/16 v2, 0xa

    .line 393
    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mHandlerThread:Landroid/os/HandlerThread;

    .line 395
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 396
    new-instance v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;-><init>(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mSessionHandler:Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;

    .line 398
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDirection:I

    if-nez v0, :cond_3

    .line 400
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->startConnectSession()V

    .line 378
    :cond_2
    :goto_0
    return-void

    .line 401
    :cond_3
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDirection:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 406
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->startObexSession()V

    goto :goto_0
.end method

.method public stop()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 415
    sget-boolean v1, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->V:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "BtOppTransfer"

    const-string/jumbo v2, "stop"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->cleanUp()V

    .line 417
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mConnectThread:Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;

    if-eqz v1, :cond_3

    .line 419
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mConnectThread:Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;

    invoke-virtual {v1}, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->interrupt()V

    .line 420
    sget-boolean v1, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->V:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "BtOppTransfer"

    const-string/jumbo v2, "waiting for connect thread to terminate"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mConnectThread:Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;

    invoke-virtual {v1}, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 425
    :cond_2
    :goto_0
    iput-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mConnectThread:Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;

    .line 427
    :cond_3
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mSession:Lcom/android/bluetooth/opp/BluetoothOppObexSession;

    if-eqz v1, :cond_5

    .line 428
    sget-boolean v1, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->V:Z

    if-eqz v1, :cond_4

    const-string/jumbo v1, "BtOppTransfer"

    const-string/jumbo v2, "Stop mSession"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :cond_4
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mSession:Lcom/android/bluetooth/opp/BluetoothOppObexSession;

    invoke-interface {v1}, Lcom/android/bluetooth/opp/BluetoothOppObexSession;->stop()V

    .line 432
    :cond_5
    monitor-enter p0

    .line 433
    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_6

    .line 434
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 435
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->interrupt()V

    .line 436
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mHandlerThread:Landroid/os/HandlerThread;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    monitor-exit p0

    .line 414
    return-void

    .line 422
    :catch_0
    move-exception v0

    .line 423
    .local v0, "e":Ljava/lang/InterruptedException;
    sget-boolean v1, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->V:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "BtOppTransfer"

    const-string/jumbo v2, "Interrupted waiting for connect thread to join"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 432
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
