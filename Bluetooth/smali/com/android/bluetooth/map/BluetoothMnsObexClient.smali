.class public Lcom/android/bluetooth/map/BluetoothMnsObexClient;
.super Ljava/lang/Object;
.source "BluetoothMnsObexClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/map/BluetoothMnsObexClient$MnsSdpSearchInfo;,
        Lcom/android/bluetooth/map/BluetoothMnsObexClient$MnsObexClientHandler;
    }
.end annotation


# static fields
.field public static final BLUETOOTH_UUID_OBEX_MNS:Landroid/os/ParcelUuid;

.field private static final D:Z = true

.field public static final MSG_MNS_NOTIFICATION_REGISTRATION:I = 0x1

.field public static final MSG_MNS_SDP_SEARCH_REGISTRATION:I = 0x3

.field public static final MSG_MNS_SEND_EVENT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "BluetoothMnsObexClient"

.field private static final TYPE_EVENT:Ljava/lang/String; = "x-bt/MAP-event-report"

.field private static final V:Z


# instance fields
.field private final MNS_SDP_SEARCH_DELAY:I

.field private mCallback:Landroid/os/Handler;

.field private mClientSession:Ljavax/obex/ClientSession;

.field private mConnected:Z

.field public mHandler:Landroid/os/Handler;

.field private mHsConnect:Ljavax/obex/HeaderSet;

.field public mMnsLstRegRqst:Lcom/android/bluetooth/map/BluetoothMnsObexClient$MnsSdpSearchInfo;

.field private mMnsRecord:Landroid/bluetooth/SdpMnsRecord;

.field private mRegisteredMasIds:Landroid/util/SparseBooleanArray;

.field mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

.field private mTransport:Ljavax/obex/ObexTransport;

.field private volatile mWaitingForRemote:Z


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->V:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/bluetooth/map/BluetoothMnsObexClient;)Landroid/bluetooth/SdpMnsRecord;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mMnsRecord:Landroid/bluetooth/SdpMnsRecord;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/bluetooth/map/BluetoothMnsObexClient;[BI)I
    .locals 1
    .param p1, "eventBytes"    # [B
    .param p2, "masInstanceId"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->sendEventHandler([BI)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/bluetooth/map/BluetoothMnsObexClient;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->notifyMnsSdpSearch()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 50
    const-string/jumbo v0, "BluetoothMap"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->V:Z

    .line 74
    const-string/jumbo v0, "00001133-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    .line 73
    sput-object v0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->BLUETOOTH_UUID_OBEX_MNS:Landroid/os/ParcelUuid;

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/SdpMnsRecord;Landroid/os/Handler;)V
    .locals 5
    .param p1, "remoteDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "mnsRecord"    # Landroid/bluetooth/SdpMnsRecord;
    .param p3, "callback"    # Landroid/os/Handler;

    .prologue
    const/4 v4, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object v4, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mHandler:Landroid/os/Handler;

    .line 57
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mConnected:Z

    .line 59
    new-instance v2, Landroid/util/SparseBooleanArray;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mRegisteredMasIds:Landroid/util/SparseBooleanArray;

    .line 61
    iput-object v4, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mHsConnect:Ljavax/obex/HeaderSet;

    .line 62
    iput-object v4, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mCallback:Landroid/os/Handler;

    .line 70
    const/16 v2, 0x1770

    iput v2, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->MNS_SDP_SEARCH_DELAY:I

    .line 71
    iput-object v4, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mMnsLstRegRqst:Lcom/android/bluetooth/map/BluetoothMnsObexClient$MnsSdpSearchInfo;

    .line 79
    if-nez p1, :cond_0

    .line 80
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "Obex transport is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 82
    :cond_0
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    .line 83
    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "BluetoothMnsObexClient"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 84
    .local v1, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 87
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 88
    .local v0, "looper":Landroid/os/Looper;
    new-instance v2, Lcom/android/bluetooth/map/BluetoothMnsObexClient$MnsObexClientHandler;

    invoke-direct {v2, p0, v0, v4}, Lcom/android/bluetooth/map/BluetoothMnsObexClient$MnsObexClientHandler;-><init>(Lcom/android/bluetooth/map/BluetoothMnsObexClient;Landroid/os/Looper;Lcom/android/bluetooth/map/BluetoothMnsObexClient$MnsObexClientHandler;)V

    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mHandler:Landroid/os/Handler;

    .line 89
    iput-object p3, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mCallback:Landroid/os/Handler;

    .line 90
    iput-object p2, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mMnsRecord:Landroid/bluetooth/SdpMnsRecord;

    .line 78
    return-void
.end method

.method private handleSendException(Ljava/lang/String;)V
    .locals 3
    .param p1, "exception"    # Ljava/lang/String;

    .prologue
    .line 498
    const-string/jumbo v0, "BluetoothMnsObexClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error when sending event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    return-void
.end method

.method private notifyMnsSdpSearch()V
    .locals 2

    .prologue
    .line 380
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mCallback:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 381
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mCallback:Landroid/os/Handler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 382
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x138f

    iput v1, v0, Landroid/os/Message;->what:I

    .line 383
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 379
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private notifyUpdateWakeLock()V
    .locals 2

    .prologue
    .line 502
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mCallback:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 503
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mCallback:Landroid/os/Handler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 504
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x138d

    iput v1, v0, Landroid/os/Message;->what:I

    .line 505
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 501
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private sendEventHandler([BI)I
    .locals 22
    .param p1, "eventBytes"    # [B
    .param p2, "masInstanceId"    # I

    .prologue
    .line 389
    const/4 v11, 0x0

    .line 390
    .local v11, "error":Z
    const/16 v16, -0x1

    .line 392
    .local v16, "responseCode":I
    const/4 v7, 0x0

    .line 393
    .local v7, "bytesWritten":I
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mClientSession:Ljavax/obex/ClientSession;

    .line 395
    .local v8, "clientSession":Ljavax/obex/ClientSession;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mConnected:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    if-nez v8, :cond_1

    .line 396
    :cond_0
    const-string/jumbo v17, "BluetoothMnsObexClient"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "sendEvent after disconnect:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mConnected:Z

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    return v16

    .line 400
    :cond_1
    new-instance v15, Ljavax/obex/HeaderSet;

    invoke-direct {v15}, Ljavax/obex/HeaderSet;-><init>()V

    .line 401
    .local v15, "request":Ljavax/obex/HeaderSet;
    new-instance v5, Lcom/android/bluetooth/map/BluetoothMapAppParams;

    invoke-direct {v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;-><init>()V

    .line 402
    .local v5, "appParams":Lcom/android/bluetooth/map/BluetoothMapAppParams;
    move/from16 v0, p2

    invoke-virtual {v5, v0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setMasInstanceId(I)V

    .line 404
    const/4 v14, 0x0

    .line 405
    .local v14, "putOperation":Ljavax/obex/ClientOperation;
    const/4 v13, 0x0

    .line 408
    .local v13, "outputStream":Ljava/io/OutputStream;
    :try_start_0
    const-string/jumbo v17, "x-bt/MAP-event-report"

    const/16 v18, 0x42

    move/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v15, v0, v1}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 409
    invoke-virtual {v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->EncodeParams()[B

    move-result-object v17

    const/16 v18, 0x4c

    move/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v15, v0, v1}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mHsConnect:Ljavax/obex/HeaderSet;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Ljavax/obex/HeaderSet;->mConnectionID:[B

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    .line 412
    const/16 v17, 0x4

    move/from16 v0, v17

    new-array v0, v0, [B

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v15, Ljavax/obex/HeaderSet;->mConnectionID:[B

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mHsConnect:Ljavax/obex/HeaderSet;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Ljavax/obex/HeaderSet;->mConnectionID:[B

    move-object/from16 v17, v0

    iget-object v0, v15, Ljavax/obex/HeaderSet;->mConnectionID:[B

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x4

    move-object/from16 v0, v17

    move/from16 v1, v19

    move-object/from16 v2, v18

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 418
    :goto_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 419
    const/16 v17, 0x1

    :try_start_1
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mWaitingForRemote:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 423
    :try_start_3
    sget-boolean v17, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->V:Z

    if-eqz v17, :cond_2

    const-string/jumbo v17, "BluetoothMnsObexClient"

    const-string/jumbo v18, "Send headerset Event "

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    :cond_2
    invoke-virtual {v8, v15}, Ljavax/obex/ClientSession;->put(Ljavax/obex/HeaderSet;)Ljavax/obex/Operation;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Ljavax/obex/ClientOperation;

    move-object v14, v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 431
    .end local v14    # "putOperation":Ljavax/obex/ClientOperation;
    :goto_1
    :try_start_4
    monitor-enter p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 432
    const/16 v17, 0x0

    :try_start_5
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mWaitingForRemote:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 434
    if-nez v11, :cond_4

    .line 436
    :try_start_7
    sget-boolean v17, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->V:Z

    if-eqz v17, :cond_3

    const-string/jumbo v17, "BluetoothMnsObexClient"

    const-string/jumbo v18, "Send headerset Event "

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :cond_3
    invoke-virtual {v14}, Ljavax/obex/ClientOperation;->openOutputStream()Ljava/io/OutputStream;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-result-object v13

    .line 444
    .end local v13    # "outputStream":Ljava/io/OutputStream;
    :cond_4
    :goto_2
    if-nez v11, :cond_12

    .line 446
    :try_start_8
    invoke-virtual {v14}, Ljavax/obex/ClientOperation;->getMaxPacketSize()I

    move-result v12

    .line 448
    .local v12, "maxChunkSize":I
    :goto_3
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v7, v0, :cond_11

    .line 449
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v17, v0

    sub-int v17, v17, v7

    move/from16 v0, v17

    invoke-static {v12, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 450
    .local v6, "bytesToWrite":I
    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v7, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 451
    add-int/2addr v7, v6

    goto :goto_3

    .line 415
    .end local v6    # "bytesToWrite":I
    .end local v12    # "maxChunkSize":I
    .restart local v13    # "outputStream":Ljava/io/OutputStream;
    .restart local v14    # "putOperation":Ljavax/obex/ClientOperation;
    :cond_5
    const-string/jumbo v17, "BluetoothMnsObexClient"

    const-string/jumbo v18, "sendEvent: no connection ID"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_0

    .line 462
    .end local v13    # "outputStream":Ljava/io/OutputStream;
    .end local v14    # "putOperation":Ljavax/obex/ClientOperation;
    :catch_0
    move-exception v9

    .line 463
    .local v9, "e":Ljava/io/IOException;
    :try_start_9
    invoke-virtual {v9}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->handleSendException(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 464
    const/4 v11, 0x1

    .line 470
    if-eqz v13, :cond_6

    .line 471
    :try_start_a
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    .line 477
    :cond_6
    :goto_4
    if-nez v11, :cond_8

    if-eqz v14, :cond_8

    .line 478
    :try_start_b
    invoke-virtual {v14}, Ljavax/obex/ClientOperation;->getResponseCode()I

    move-result v16

    .line 479
    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_8

    .line 480
    sget-boolean v17, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->V:Z

    if-eqz v17, :cond_7

    const-string/jumbo v17, "BluetoothMnsObexClient"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Put response code "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :cond_7
    const/16 v17, 0xa0

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_8

    .line 482
    const-string/jumbo v17, "BluetoothMnsObexClient"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Response error code is "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    :cond_8
    if-eqz v14, :cond_9

    .line 487
    invoke-virtual {v14}, Ljavax/obex/ClientOperation;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    .line 494
    .end local v9    # "e":Ljava/io/IOException;
    :cond_9
    :goto_5
    return v16

    .line 418
    .restart local v13    # "outputStream":Ljava/io/OutputStream;
    .restart local v14    # "putOperation":Ljavax/obex/ClientOperation;
    :catchall_0
    move-exception v17

    :try_start_c
    monitor-exit p0

    throw v17
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 465
    .end local v13    # "outputStream":Ljava/io/OutputStream;
    .end local v14    # "putOperation":Ljavax/obex/ClientOperation;
    :catch_1
    move-exception v10

    .line 466
    .local v10, "e":Ljava/lang/IndexOutOfBoundsException;
    :try_start_d
    invoke-virtual {v10}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->handleSendException(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 467
    const/4 v11, 0x1

    .line 470
    if-eqz v13, :cond_a

    .line 471
    :try_start_e
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7

    .line 477
    :cond_a
    :goto_6
    if-nez v11, :cond_c

    if-eqz v14, :cond_c

    .line 478
    :try_start_f
    invoke-virtual {v14}, Ljavax/obex/ClientOperation;->getResponseCode()I

    move-result v16

    .line 479
    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_c

    .line 480
    sget-boolean v17, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->V:Z

    if-eqz v17, :cond_b

    const-string/jumbo v17, "BluetoothMnsObexClient"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Put response code "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :cond_b
    const/16 v17, 0xa0

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_c

    .line 482
    const-string/jumbo v17, "BluetoothMnsObexClient"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Response error code is "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    :cond_c
    if-eqz v14, :cond_9

    .line 487
    invoke-virtual {v14}, Ljavax/obex/ClientOperation;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_2

    goto :goto_5

    .line 489
    :catch_2
    move-exception v9

    .line 490
    .restart local v9    # "e":Ljava/io/IOException;
    const-string/jumbo v17, "BluetoothMnsObexClient"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Error when closing stream after send "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 427
    .end local v9    # "e":Ljava/io/IOException;
    .end local v10    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v13    # "outputStream":Ljava/io/OutputStream;
    .restart local v14    # "putOperation":Ljavax/obex/ClientOperation;
    :catch_3
    move-exception v9

    .line 428
    .restart local v9    # "e":Ljava/io/IOException;
    :try_start_10
    const-string/jumbo v17, "BluetoothMnsObexClient"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Error when put HeaderSet "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    const/4 v11, 0x1

    goto/16 :goto_1

    .line 431
    .end local v9    # "e":Ljava/io/IOException;
    .end local v14    # "putOperation":Ljavax/obex/ClientOperation;
    :catchall_1
    move-exception v17

    monitor-exit p0

    throw v17
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 468
    .end local v13    # "outputStream":Ljava/io/OutputStream;
    :catchall_2
    move-exception v17

    .line 470
    if-eqz v13, :cond_d

    .line 471
    :try_start_11
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_a

    .line 477
    :cond_d
    :goto_7
    if-nez v11, :cond_f

    if-eqz v14, :cond_f

    .line 478
    :try_start_12
    invoke-virtual {v14}, Ljavax/obex/ClientOperation;->getResponseCode()I

    move-result v16

    .line 479
    const/16 v18, -0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_f

    .line 480
    sget-boolean v18, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->V:Z

    if-eqz v18, :cond_e

    const-string/jumbo v18, "BluetoothMnsObexClient"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Put response code "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :cond_e
    const/16 v18, 0xa0

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_f

    .line 482
    const-string/jumbo v18, "BluetoothMnsObexClient"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Response error code is "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    :cond_f
    if-eqz v14, :cond_10

    .line 487
    invoke-virtual {v14}, Ljavax/obex/ClientOperation;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_b

    .line 468
    :cond_10
    :goto_8
    throw v17

    .line 438
    .restart local v13    # "outputStream":Ljava/io/OutputStream;
    :catch_4
    move-exception v9

    .line 439
    .restart local v9    # "e":Ljava/io/IOException;
    :try_start_13
    const-string/jumbo v17, "BluetoothMnsObexClient"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Error when opening OutputStream "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    const/4 v11, 0x1

    goto/16 :goto_2

    .line 454
    .end local v9    # "e":Ljava/io/IOException;
    .end local v13    # "outputStream":Ljava/io/OutputStream;
    .restart local v12    # "maxChunkSize":I
    :cond_11
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v7, v0, :cond_16

    .line 455
    const-string/jumbo v17, "BluetoothMnsObexClient"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "SendEvent finished send length"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_13 .. :try_end_13} :catch_1
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    .line 470
    .end local v12    # "maxChunkSize":I
    :cond_12
    :goto_9
    if-eqz v13, :cond_13

    .line 471
    :try_start_14
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_6

    .line 477
    :cond_13
    :goto_a
    if-nez v11, :cond_15

    if-eqz v14, :cond_15

    .line 478
    :try_start_15
    invoke-virtual {v14}, Ljavax/obex/ClientOperation;->getResponseCode()I

    move-result v16

    .line 479
    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_15

    .line 480
    sget-boolean v17, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->V:Z

    if-eqz v17, :cond_14

    const-string/jumbo v17, "BluetoothMnsObexClient"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Put response code "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :cond_14
    const/16 v17, 0xa0

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_15

    .line 482
    const-string/jumbo v17, "BluetoothMnsObexClient"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Response error code is "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    :cond_15
    if-eqz v14, :cond_9

    .line 487
    invoke-virtual {v14}, Ljavax/obex/ClientOperation;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_5

    goto/16 :goto_5

    .line 489
    :catch_5
    move-exception v9

    .line 490
    .restart local v9    # "e":Ljava/io/IOException;
    const-string/jumbo v17, "BluetoothMnsObexClient"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Error when closing stream after send "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 457
    .end local v9    # "e":Ljava/io/IOException;
    .restart local v12    # "maxChunkSize":I
    :cond_16
    const/4 v11, 0x1

    .line 458
    :try_start_16
    invoke-virtual {v14}, Ljavax/obex/ClientOperation;->abort()V

    .line 459
    const-string/jumbo v17, "BluetoothMnsObexClient"

    const-string/jumbo v18, "SendEvent interrupted"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_16 .. :try_end_16} :catch_1
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    goto/16 :goto_9

    .line 473
    .end local v12    # "maxChunkSize":I
    :catch_6
    move-exception v9

    .line 474
    .restart local v9    # "e":Ljava/io/IOException;
    const-string/jumbo v17, "BluetoothMnsObexClient"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Error when closing stream after send "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 473
    .end local v9    # "e":Ljava/io/IOException;
    .restart local v10    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_7
    move-exception v9

    .line 474
    .restart local v9    # "e":Ljava/io/IOException;
    const-string/jumbo v17, "BluetoothMnsObexClient"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Error when closing stream after send "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 473
    .end local v10    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_8
    move-exception v9

    .line 474
    const-string/jumbo v17, "BluetoothMnsObexClient"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Error when closing stream after send "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 489
    :catch_9
    move-exception v9

    .line 490
    const-string/jumbo v17, "BluetoothMnsObexClient"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Error when closing stream after send "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 473
    .end local v9    # "e":Ljava/io/IOException;
    :catch_a
    move-exception v9

    .line 474
    .restart local v9    # "e":Ljava/io/IOException;
    const-string/jumbo v18, "BluetoothMnsObexClient"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Error when closing stream after send "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 489
    .end local v9    # "e":Ljava/io/IOException;
    :catch_b
    move-exception v9

    .line 490
    .restart local v9    # "e":Ljava/io/IOException;
    const-string/jumbo v18, "BluetoothMnsObexClient"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Error when closing stream after send "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8
.end method


# virtual methods
.method public connect()V
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v9, 0x0

    .line 302
    iput-boolean v6, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mConnected:Z

    .line 304
    const/4 v0, 0x0

    .line 307
    .local v0, "btSocket":Landroid/bluetooth/BluetoothSocket;
    :try_start_0
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mMnsRecord:Landroid/bluetooth/SdpMnsRecord;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mMnsRecord:Landroid/bluetooth/SdpMnsRecord;

    invoke-virtual {v6}, Landroid/bluetooth/SdpMnsRecord;->getL2capPsm()I

    move-result v6

    if-lez v6, :cond_1

    .line 309
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mMnsRecord:Landroid/bluetooth/SdpMnsRecord;

    invoke-virtual {v7}, Landroid/bluetooth/SdpMnsRecord;->getL2capPsm()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/bluetooth/BluetoothDevice;->createL2capSocket(I)Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    .line 321
    .local v0, "btSocket":Landroid/bluetooth/BluetoothSocket;
    :goto_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->connect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    new-instance v6, Lcom/android/bluetooth/BluetoothObexTransport;

    invoke-direct {v6, v0}, Lcom/android/bluetooth/BluetoothObexTransport;-><init>(Landroid/bluetooth/BluetoothSocket;)V

    iput-object v6, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mTransport:Ljavax/obex/ObexTransport;

    .line 332
    :try_start_1
    new-instance v6, Ljavax/obex/ClientSession;

    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mTransport:Ljavax/obex/ObexTransport;

    invoke-direct {v6, v7}, Ljavax/obex/ClientSession;-><init>(Ljavax/obex/ObexTransport;)V

    iput-object v6, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mClientSession:Ljavax/obex/ClientSession;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 337
    :goto_1
    iget-boolean v6, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mConnected:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mClientSession:Ljavax/obex/ClientSession;

    if-eqz v6, :cond_0

    .line 338
    const/4 v1, 0x0

    .line 339
    .local v1, "connected":Z
    new-instance v4, Ljavax/obex/HeaderSet;

    invoke-direct {v4}, Ljavax/obex/HeaderSet;-><init>()V

    .line 341
    .local v4, "hs":Ljavax/obex/HeaderSet;
    const/16 v6, 0x10

    new-array v5, v6, [B

    .local v5, "mnsTarget":[B
    fill-array-data v5, :array_0

    .line 345
    const/16 v6, 0x46

    invoke-virtual {v4, v6, v5}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 347
    monitor-enter p0

    .line 348
    const/4 v6, 0x1

    :try_start_2
    iput-boolean v6, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mWaitingForRemote:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 351
    :try_start_3
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mClientSession:Ljavax/obex/ClientSession;

    invoke-virtual {v6, v4}, Ljavax/obex/ClientSession;->connect(Ljavax/obex/HeaderSet;)Ljavax/obex/HeaderSet;

    move-result-object v6

    iput-object v6, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mHsConnect:Ljavax/obex/HeaderSet;

    .line 352
    const-string/jumbo v6, "BluetoothMnsObexClient"

    const-string/jumbo v7, "OBEX session created"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 353
    const/4 v1, 0x1

    .line 357
    :goto_2
    iput-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mConnected:Z

    .line 359
    .end local v1    # "connected":Z
    .end local v4    # "hs":Ljavax/obex/HeaderSet;
    .end local v5    # "mnsTarget":[B
    :cond_0
    monitor-enter p0

    .line 360
    const/4 v6, 0x0

    :try_start_4
    iput-boolean v6, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mWaitingForRemote:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    .line 300
    return-void

    .line 311
    .local v0, "btSocket":Landroid/bluetooth/BluetoothSocket;
    :cond_1
    :try_start_5
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mMnsRecord:Landroid/bluetooth/SdpMnsRecord;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mMnsRecord:Landroid/bluetooth/SdpMnsRecord;

    invoke-virtual {v6}, Landroid/bluetooth/SdpMnsRecord;->getRfcommChannelNumber()I

    move-result v6

    if-lez v6, :cond_2

    .line 313
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mMnsRecord:Landroid/bluetooth/SdpMnsRecord;

    invoke-virtual {v7}, Landroid/bluetooth/SdpMnsRecord;->getRfcommChannelNumber()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/bluetooth/BluetoothDevice;->createRfcommSocket(I)Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    .local v0, "btSocket":Landroid/bluetooth/BluetoothSocket;
    goto :goto_0

    .line 316
    .local v0, "btSocket":Landroid/bluetooth/BluetoothSocket;
    :cond_2
    const-string/jumbo v6, "BluetoothMnsObexClient"

    const-string/jumbo v7, "Invalid SDP content - attempt a connect to UUID..."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    .line 319
    sget-object v7, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->BLUETOOTH_UUID_OBEX_MNS:Landroid/os/ParcelUuid;

    invoke-virtual {v7}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v7

    .line 318
    invoke-virtual {v6, v7}, Landroid/bluetooth/BluetoothDevice;->createInsecureRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v0

    .local v0, "btSocket":Landroid/bluetooth/BluetoothSocket;
    goto :goto_0

    .line 322
    .end local v0    # "btSocket":Landroid/bluetooth/BluetoothSocket;
    :catch_0
    move-exception v2

    .line 323
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v6, "BluetoothMnsObexClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "BtSocket Connect error "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 325
    iput-boolean v9, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mConnected:Z

    .line 326
    return-void

    .line 333
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "btSocket":Landroid/bluetooth/BluetoothSocket;
    :catch_1
    move-exception v3

    .line 334
    .local v3, "e1":Ljava/io/IOException;
    const-string/jumbo v6, "BluetoothMnsObexClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "OBEX session create error "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iput-boolean v9, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mConnected:Z

    goto/16 :goto_1

    .line 347
    .end local v3    # "e1":Ljava/io/IOException;
    .restart local v1    # "connected":Z
    .restart local v4    # "hs":Ljavax/obex/HeaderSet;
    .restart local v5    # "mnsTarget":[B
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 354
    :catch_2
    move-exception v2

    .line 355
    .restart local v2    # "e":Ljava/io/IOException;
    const-string/jumbo v6, "BluetoothMnsObexClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "OBEX session connect error "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 359
    .end local v1    # "connected":Z
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "hs":Ljavax/obex/HeaderSet;
    .end local v5    # "mnsTarget":[B
    :catchall_1
    move-exception v6

    monitor-exit p0

    throw v6

    .line 341
    :array_0
    .array-data 1
        -0x45t
        0x58t
        0x2bt
        0x41t
        0x42t
        0xct
        0x11t
        -0x25t
        -0x50t
        -0x22t
        0x8t
        0x0t
        0x20t
        0xct
        -0x66t
        0x66t
    .end array-data
.end method

.method public declared-synchronized disconnect()V
    .locals 4

    .prologue
    monitor-enter p0

    .line 165
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mClientSession:Ljavax/obex/ClientSession;

    if-eqz v1, :cond_0

    .line 166
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mClientSession:Ljavax/obex/ClientSession;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljavax/obex/ClientSession;->disconnect(Ljavax/obex/HeaderSet;)Ljavax/obex/HeaderSet;

    .line 167
    const-string/jumbo v1, "BluetoothMnsObexClient"

    const-string/jumbo v2, "OBEX session disconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    :cond_0
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mClientSession:Ljavax/obex/ClientSession;

    if-eqz v1, :cond_1

    .line 174
    const-string/jumbo v1, "BluetoothMnsObexClient"

    const-string/jumbo v2, "OBEX session close mClientSession"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mClientSession:Ljavax/obex/ClientSession;

    invoke-virtual {v1}, Ljavax/obex/ClientSession;->close()V

    .line 176
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mClientSession:Ljavax/obex/ClientSession;

    .line 177
    const-string/jumbo v1, "BluetoothMnsObexClient"

    const-string/jumbo v2, "OBEX session closed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 182
    :cond_1
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mTransport:Ljavax/obex/ObexTransport;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_2

    .line 184
    :try_start_3
    const-string/jumbo v1, "BluetoothMnsObexClient"

    const-string/jumbo v2, "Close Obex Transport"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mTransport:Ljavax/obex/ObexTransport;

    invoke-interface {v1}, Ljavax/obex/ObexTransport;->close()V

    .line 186
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mTransport:Ljavax/obex/ObexTransport;

    .line 187
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mConnected:Z

    .line 188
    const-string/jumbo v1, "BluetoothMnsObexClient"

    const-string/jumbo v2, "Obex Transport Closed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    :goto_2
    monitor-exit p0

    .line 163
    return-void

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Ljava/io/IOException;
    :try_start_4
    const-string/jumbo v1, "BluetoothMnsObexClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "OBEX session disconnect error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 179
    :catch_1
    move-exception v0

    .line 180
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_5
    const-string/jumbo v1, "BluetoothMnsObexClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "OBEX session close error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 189
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 190
    .restart local v0    # "e":Ljava/io/IOException;
    const-string/jumbo v1, "BluetoothMnsObexClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mTransport.close error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2
.end method

.method public getMessageHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public declared-synchronized handleRegistration(II)V
    .locals 6
    .param p1, "masId"    # I
    .param p2, "notificationStatus"    # I

    .prologue
    const/4 v5, 0x1

    monitor-enter p0

    .line 224
    :try_start_0
    const-string/jumbo v2, "BluetoothMnsObexClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleRegistration( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const/4 v1, 0x1

    .line 226
    .local v1, "sendObserverRegistration":Z
    if-nez p2, :cond_4

    .line 227
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mRegisteredMasIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 228
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mMnsLstRegRqst:Lcom/android/bluetooth/map/BluetoothMnsObexClient$MnsSdpSearchInfo;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mMnsLstRegRqst:Lcom/android/bluetooth/map/BluetoothMnsObexClient$MnsSdpSearchInfo;

    iget v2, v2, Lcom/android/bluetooth/map/BluetoothMnsObexClient$MnsSdpSearchInfo;->lastMasId:I

    if-ne v2, p1, :cond_0

    .line 230
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mMnsLstRegRqst:Lcom/android/bluetooth/map/BluetoothMnsObexClient$MnsSdpSearchInfo;

    .line 246
    .end local v1    # "sendObserverRegistration":Z
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mRegisteredMasIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 248
    const-string/jumbo v2, "BluetoothMnsObexClient"

    const-string/jumbo v3, "handleRegistration: disconnect"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->disconnect()V

    .line 253
    :cond_1
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->V:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "BluetoothMnsObexClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Send  registerObserver: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_2
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mCallback:Landroid/os/Handler;

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    .line 255
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mCallback:Landroid/os/Handler;

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 256
    .local v0, "msg":Landroid/os/Message;
    const/16 v2, 0x1390

    iput v2, v0, Landroid/os/Message;->what:I

    .line 257
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 258
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 259
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "msg":Landroid/os/Message;
    :cond_3
    monitor-exit p0

    .line 223
    return-void

    .line 232
    .restart local v1    # "sendObserverRegistration":Z
    :cond_4
    if-ne p2, v5, :cond_0

    .line 236
    :try_start_1
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->isConnected()Z

    move-result v2

    if-nez v2, :cond_5

    .line 237
    const-string/jumbo v2, "BluetoothMnsObexClient"

    const-string/jumbo v3, "handleRegistration: connect"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->connect()V

    .line 240
    :cond_5
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->isConnected()Z

    move-result v1

    .line 241
    .local v1, "sendObserverRegistration":Z
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mRegisteredMasIds:Landroid/util/SparseBooleanArray;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 244
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mMnsLstRegRqst:Lcom/android/bluetooth/map/BluetoothMnsObexClient$MnsSdpSearchInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v1    # "sendObserverRegistration":Z
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mConnected:Z

    return v0
.end method

.method public isValidMnsRecord()Z
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mMnsRecord:Landroid/bluetooth/SdpMnsRecord;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sendEvent([BI)V
    .locals 4
    .param p1, "eventBytes"    # [B
    .param p2, "masInstanceId"    # I

    .prologue
    .line 371
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 372
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 373
    .local v0, "msg":Landroid/os/Message;
    if-eqz v0, :cond_0

    .line 374
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 377
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->notifyUpdateWakeLock()V

    .line 369
    return-void
.end method

.method public setMnsRecord(Landroid/bluetooth/SdpMnsRecord;)V
    .locals 5
    .param p1, "mnsRecord"    # Landroid/bluetooth/SdpMnsRecord;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 268
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->V:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "BluetoothMnsObexClient"

    const-string/jumbo v2, "setMNSRecord "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mMnsRecord:Landroid/bluetooth/SdpMnsRecord;

    if-eqz v1, :cond_1

    .line 270
    const-string/jumbo v1, "BluetoothMnsObexClient"

    const-string/jumbo v2, "MNS Record already available. Still update."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_1
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mMnsRecord:Landroid/bluetooth/SdpMnsRecord;

    .line 273
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mMnsLstRegRqst:Lcom/android/bluetooth/map/BluetoothMnsObexClient$MnsSdpSearchInfo;

    if-eqz v1, :cond_6

    .line 275
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mMnsLstRegRqst:Lcom/android/bluetooth/map/BluetoothMnsObexClient$MnsSdpSearchInfo;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/map/BluetoothMnsObexClient$MnsSdpSearchInfo;->setIsSearchProgress(Z)V

    .line 276
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 277
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 279
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mMnsRecord:Landroid/bluetooth/SdpMnsRecord;

    if-nez v1, :cond_3

    .line 282
    iput-object v3, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mMnsLstRegRqst:Lcom/android/bluetooth/map/BluetoothMnsObexClient$MnsSdpSearchInfo;

    .line 267
    :cond_2
    :goto_0
    return-void

    .line 284
    :cond_3
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->V:Z

    if-eqz v1, :cond_4

    const-string/jumbo v1, "BluetoothMnsObexClient"

    const-string/jumbo v2, "Handle registration for last saved request"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_4
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 287
    .local v0, "msgReg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mMnsLstRegRqst:Lcom/android/bluetooth/map/BluetoothMnsObexClient$MnsSdpSearchInfo;

    iget v1, v1, Lcom/android/bluetooth/map/BluetoothMnsObexClient$MnsSdpSearchInfo;->lastMasId:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 288
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mMnsLstRegRqst:Lcom/android/bluetooth/map/BluetoothMnsObexClient$MnsSdpSearchInfo;

    iget v1, v1, Lcom/android/bluetooth/map/BluetoothMnsObexClient$MnsSdpSearchInfo;->lastNotificationStatus:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 289
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->V:Z

    if-eqz v1, :cond_5

    const-string/jumbo v1, "BluetoothMnsObexClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SearchReg  masId:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 290
    const-string/jumbo v3, " notfStatus: "

    .line 289
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 290
    iget v3, v0, Landroid/os/Message;->arg2:I

    .line 289
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_5
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xa

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 296
    .end local v0    # "msgReg":Landroid/os/Message;
    :cond_6
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->V:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "BluetoothMnsObexClient"

    const-string/jumbo v2, "No last saved MNSSDPInfo to handle "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public declared-synchronized shutdown()V
    .locals 3

    .prologue
    monitor-enter p0

    .line 202
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 204
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 205
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 206
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 209
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mHandler:Landroid/os/Handler;

    .line 213
    .end local v0    # "looper":Landroid/os/Looper;
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->disconnect()V

    .line 215
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mRegisteredMasIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 198
    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
