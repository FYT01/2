.class public Lcom/android/bluetooth/sap/SapServer;
.super Ljava/lang/Thread;
.source "SapServer.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/sap/SapServer$SAP_STATE;,
        Lcom/android/bluetooth/sap/SapServer$1;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = true

.field private static final DISCONNECT_TIMEOUT_IMMEDIATE:I = 0x1388

.field private static final DISCONNECT_TIMEOUT_RFCOMM:I = 0x7d0

.field public static final NOTIFICATION_ID:I = 0x1080080

.field public static final SAP_DISCONNECT_ACTION:Ljava/lang/String; = "com.android.bluetooth.sap.action.DISCONNECT_ACTION"

.field public static final SAP_DISCONNECT_TYPE_EXTRA:Ljava/lang/String; = "com.android.bluetooth.sap.extra.DISCONNECT_TYPE"

.field public static final SAP_MSG_RFC_REPLY:I = 0x0

.field public static final SAP_MSG_RIL_CONNECT:I = 0x1

.field public static final SAP_MSG_RIL_IND:I = 0x3

.field public static final SAP_MSG_RIL_REQ:I = 0x2

.field public static final SAP_RIL_SOCK_CLOSED:I = 0x4

.field private static final TAG:Ljava/lang/String; = "SapServer"

.field private static final TAG_HANDLER:Ljava/lang/String; = "SapServerHandler"

.field public static final VERBOSE:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDeinitSignal:Ljava/util/concurrent/CountDownLatch;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsLocalInitDisconnect:Z

.field private mMaxMsgSize:I

.field private mRfcommIn:Ljava/io/BufferedInputStream;

.field private mRfcommOut:Ljava/io/BufferedOutputStream;

.field private mRilBtOutStream:Lcom/google/protobuf/micro/CodedOutputStreamMicro;

.field private mRilBtReceiver:Lcom/android/bluetooth/sap/SapRilReceiver;

.field private mRilBtReceiverThread:Ljava/lang/Thread;

.field private mSapHandler:Landroid/os/Handler;

.field private mSapServiceHandler:Landroid/os/Handler;

.field private mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

.field private mTestMode:I

.field private pDiscIntent:Landroid/app/PendingIntent;


# direct methods
.method static synthetic -get0(Lcom/android/bluetooth/sap/SapServer;)I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/sap/SapServer;->mMaxMsgSize:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/bluetooth/sap/SapServer;)Lcom/android/bluetooth/sap/SapServer$SAP_STATE;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/sap/SapServer;->mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/bluetooth/sap/SapServer;Lcom/android/bluetooth/sap/SapMessage;)V
    .locals 0
    .param p1, "msg"    # Lcom/android/bluetooth/sap/SapMessage;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/sap/SapServer;->onConnectRequest(Lcom/android/bluetooth/sap/SapMessage;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/bluetooth/sap/SapServer;I)V
    .locals 0
    .param p1, "discType"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/sap/SapServer;->sendDisconnectInd(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/bluetooth/sap/SapServer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapServer;->shutdown()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    sget-boolean v0, Lcom/android/bluetooth/sap/SapService;->VERBOSE:Z

    sput-boolean v0, Lcom/android/bluetooth/sap/SapServer;->VERBOSE:Z

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 5
    .param p1, "serviceHandler"    # Landroid/os/Handler;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "inStream"    # Ljava/io/InputStream;
    .param p4, "outStream"    # Ljava/io/OutputStream;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 109
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 61
    sget-object v1, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->DISCONNECTED:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    iput-object v1, p0, Lcom/android/bluetooth/sap/SapServer;->mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    .line 63
    iput-object v3, p0, Lcom/android/bluetooth/sap/SapServer;->mContext:Landroid/content/Context;

    .line 65
    iput-object v3, p0, Lcom/android/bluetooth/sap/SapServer;->mRfcommOut:Ljava/io/BufferedOutputStream;

    .line 66
    iput-object v3, p0, Lcom/android/bluetooth/sap/SapServer;->mRfcommIn:Ljava/io/BufferedInputStream;

    .line 68
    iput-object v3, p0, Lcom/android/bluetooth/sap/SapServer;->mRilBtOutStream:Lcom/google/protobuf/micro/CodedOutputStreamMicro;

    .line 70
    iput-object v3, p0, Lcom/android/bluetooth/sap/SapServer;->mRilBtReceiver:Lcom/android/bluetooth/sap/SapRilReceiver;

    .line 71
    iput-object v3, p0, Lcom/android/bluetooth/sap/SapServer;->mRilBtReceiverThread:Ljava/lang/Thread;

    .line 73
    iput-object v3, p0, Lcom/android/bluetooth/sap/SapServer;->mSapHandler:Landroid/os/Handler;

    .line 74
    iput-object v3, p0, Lcom/android/bluetooth/sap/SapServer;->mHandlerThread:Landroid/os/HandlerThread;

    .line 76
    iput-object v3, p0, Lcom/android/bluetooth/sap/SapServer;->mSapServiceHandler:Landroid/os/Handler;

    .line 79
    iput-boolean v4, p0, Lcom/android/bluetooth/sap/SapServer;->mIsLocalInitDisconnect:Z

    .line 80
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lcom/android/bluetooth/sap/SapServer;->mDeinitSignal:Ljava/util/concurrent/CountDownLatch;

    .line 96
    iput-object v3, p0, Lcom/android/bluetooth/sap/SapServer;->pDiscIntent:Landroid/app/PendingIntent;

    .line 99
    iput v4, p0, Lcom/android/bluetooth/sap/SapServer;->mMaxMsgSize:I

    .line 101
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/bluetooth/sap/SapServer;->mTestMode:I

    .line 128
    new-instance v1, Lcom/android/bluetooth/sap/SapServer$1;

    invoke-direct {v1, p0}, Lcom/android/bluetooth/sap/SapServer$1;-><init>(Lcom/android/bluetooth/sap/SapServer;)V

    iput-object v1, p0, Lcom/android/bluetooth/sap/SapServer;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 111
    iput-object p2, p0, Lcom/android/bluetooth/sap/SapServer;->mContext:Landroid/content/Context;

    .line 112
    iput-object p1, p0, Lcom/android/bluetooth/sap/SapServer;->mSapServiceHandler:Landroid/os/Handler;

    .line 115
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lcom/android/bluetooth/sap/SapServer;->mRfcommIn:Ljava/io/BufferedInputStream;

    .line 116
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, p4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lcom/android/bluetooth/sap/SapServer;->mRfcommOut:Ljava/io/BufferedOutputStream;

    .line 119
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 120
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 121
    const-string/jumbo v1, "com.android.bluetooth.sap.action.DISCONNECT_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 122
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapServer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/bluetooth/sap/SapServer;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 110
    return-void
.end method

.method private changeState(Lcom/android/bluetooth/sap/SapServer$SAP_STATE;)V
    .locals 3
    .param p1, "newState"    # Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    .prologue
    .line 585
    const-string/jumbo v0, "SapServerHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Changing state from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/sap/SapServer;->mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    invoke-virtual {v2}, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 586
    const-string/jumbo v2, " to "

    .line 585
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 586
    invoke-virtual {p1}, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->name()Ljava/lang/String;

    move-result-object v2

    .line 585
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    monitor-enter p0

    .line 588
    :try_start_0
    iput-object p1, p0, Lcom/android/bluetooth/sap/SapServer;->mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 584
    return-void

    .line 587
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private clearPendingRilResponses(Lcom/android/bluetooth/sap/SapMessage;)V
    .locals 2
    .param p1, "msg"    # Lcom/android/bluetooth/sap/SapMessage;

    .prologue
    .line 544
    iget-object v0, p0, Lcom/android/bluetooth/sap/SapServer;->mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    sget-object v1, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->CONNECTED_BUSY:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    if-ne v0, v1, :cond_0

    .line 545
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/sap/SapMessage;->setClearRilQueue(Z)V

    .line 543
    :cond_0
    return-void
.end method

.method private static getMessageName(I)Ljava/lang/String;
    .locals 1
    .param p0, "messageId"    # I

    .prologue
    .line 897
    packed-switch p0, :pswitch_data_0

    .line 907
    const-string/jumbo v0, "Unknown message ID"

    return-object v0

    .line 899
    :pswitch_0
    const-string/jumbo v0, "SAP_MSG_REPLY"

    return-object v0

    .line 901
    :pswitch_1
    const-string/jumbo v0, "SAP_MSG_RIL_CONNECT"

    return-object v0

    .line 903
    :pswitch_2
    const-string/jumbo v0, "SAP_MSG_RIL_REQ"

    return-object v0

    .line 905
    :pswitch_3
    const-string/jumbo v0, "SAP_MSG_RIL_IND"

    return-object v0

    .line 897
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private handleRfcommReply(Lcom/android/bluetooth/sap/SapMessage;)V
    .locals 8
    .param p1, "sapMsg"    # Lcom/android/bluetooth/sap/SapMessage;

    .prologue
    const/16 v7, 0x101

    const/16 v6, 0x7d0

    const/4 v5, 0x0

    .line 719
    if-eqz p1, :cond_0

    .line 721
    const-string/jumbo v2, "SapServerHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleRfcommReply() handling "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 722
    invoke-virtual {p1}, Lcom/android/bluetooth/sap/SapMessage;->getMsgType()I

    move-result v4

    invoke-static {v4}, Lcom/android/bluetooth/sap/SapMessage;->getMsgTypeName(I)Ljava/lang/String;

    move-result-object v4

    .line 721
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    invoke-virtual {p1}, Lcom/android/bluetooth/sap/SapMessage;->getMsgType()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 814
    .end local p1    # "sapMsg":Lcom/android/bluetooth/sap/SapMessage;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/bluetooth/sap/SapServer;->mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    sget-object v3, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->CONNECTED_BUSY:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    if-ne v2, v3, :cond_1

    .line 815
    invoke-static {}, Lcom/android/bluetooth/sap/SapMessage;->getNumPendingRilMessages()I

    move-result v2

    if-nez v2, :cond_1

    .line 816
    sget-object v2, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->CONNECTED:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    invoke-direct {p0, v2}, Lcom/android/bluetooth/sap/SapServer;->changeState(Lcom/android/bluetooth/sap/SapServer$SAP_STATE;)V

    .line 821
    :cond_1
    if-eqz p1, :cond_2

    .line 822
    invoke-direct {p0, p1}, Lcom/android/bluetooth/sap/SapServer;->sendReply(Lcom/android/bluetooth/sap/SapMessage;)V

    .line 718
    :cond_2
    return-void

    .line 727
    .restart local p1    # "sapMsg":Lcom/android/bluetooth/sap/SapMessage;
    :sswitch_0
    iget-object v2, p0, Lcom/android/bluetooth/sap/SapServer;->mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    sget-object v3, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->CONNECTING_CALL_ONGOING:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    if-ne v2, v3, :cond_5

    .line 733
    invoke-virtual {p1}, Lcom/android/bluetooth/sap/SapMessage;->getConnectionStatus()I

    move-result v2

    if-nez v2, :cond_3

    .line 735
    sget-object v2, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->CONNECTED:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    invoke-direct {p0, v2}, Lcom/android/bluetooth/sap/SapServer;->changeState(Lcom/android/bluetooth/sap/SapServer$SAP_STATE;)V

    .line 737
    :cond_3
    sget-boolean v2, Lcom/android/bluetooth/sap/SapServer;->VERBOSE:Z

    if-eqz v2, :cond_4

    const-string/jumbo v2, "SapServer"

    const-string/jumbo v3, "Hold back the connect resp, as a call was ongoing when the initial response were sent."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    :cond_4
    const/4 p1, 0x0

    .local p1, "sapMsg":Lcom/android/bluetooth/sap/SapMessage;
    goto :goto_0

    .line 740
    .local p1, "sapMsg":Lcom/android/bluetooth/sap/SapMessage;
    :cond_5
    invoke-virtual {p1}, Lcom/android/bluetooth/sap/SapMessage;->getConnectionStatus()I

    move-result v2

    if-nez v2, :cond_6

    .line 742
    sget-object v2, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->CONNECTED:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    invoke-direct {p0, v2}, Lcom/android/bluetooth/sap/SapServer;->changeState(Lcom/android/bluetooth/sap/SapServer$SAP_STATE;)V

    goto :goto_0

    .line 743
    :cond_6
    invoke-virtual {p1}, Lcom/android/bluetooth/sap/SapMessage;->getConnectionStatus()I

    move-result v2

    .line 744
    const/4 v3, 0x4

    .line 743
    if-ne v2, v3, :cond_7

    .line 745
    sget-object v2, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->CONNECTING_CALL_ONGOING:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    invoke-direct {p0, v2}, Lcom/android/bluetooth/sap/SapServer;->changeState(Lcom/android/bluetooth/sap/SapServer$SAP_STATE;)V

    goto :goto_0

    .line 746
    :cond_7
    invoke-virtual {p1}, Lcom/android/bluetooth/sap/SapMessage;->getConnectionStatus()I

    move-result v2

    if-eqz v2, :cond_0

    .line 752
    const/16 v2, 0x100

    invoke-direct {p0, v2, v6}, Lcom/android/bluetooth/sap/SapServer;->startDisconnectTimer(II)V

    goto :goto_0

    .line 756
    :sswitch_1
    iget-object v2, p0, Lcom/android/bluetooth/sap/SapServer;->mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    sget-object v3, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->DISCONNECTING:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    if-ne v2, v3, :cond_8

    .line 759
    const-string/jumbo v2, "SapServer"

    const-string/jumbo v3, "ID_DISCONNECT_RESP received in SAP_STATE.DISCONNECTING."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    new-instance v0, Lcom/android/bluetooth/sap/SapMessage;

    const/4 v2, 0x3

    invoke-direct {v0, v2}, Lcom/android/bluetooth/sap/SapMessage;-><init>(I)V

    .line 766
    .local v0, "disconnectResp":Lcom/android/bluetooth/sap/SapMessage;
    sget-object v2, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->DISCONNECTED:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    invoke-direct {p0, v2}, Lcom/android/bluetooth/sap/SapServer;->changeState(Lcom/android/bluetooth/sap/SapServer$SAP_STATE;)V

    .line 767
    move-object p1, v0

    .line 768
    invoke-direct {p0, v7, v6}, Lcom/android/bluetooth/sap/SapServer;->startDisconnectTimer(II)V

    .line 769
    iget-object v2, p0, Lcom/android/bluetooth/sap/SapServer;->mDeinitSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    .line 771
    .end local v0    # "disconnectResp":Lcom/android/bluetooth/sap/SapMessage;
    :cond_8
    iget-object v2, p0, Lcom/android/bluetooth/sap/SapServer;->mDeinitSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 772
    iget-boolean v2, p0, Lcom/android/bluetooth/sap/SapServer;->mIsLocalInitDisconnect:Z

    if-eqz v2, :cond_9

    .line 773
    const-string/jumbo v2, "SapServerHandler"

    const-string/jumbo v3, "This is a FORCED disconnect."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapServer;->shutdown()V

    .line 777
    const/4 p1, 0x0

    .local p1, "sapMsg":Lcom/android/bluetooth/sap/SapMessage;
    goto/16 :goto_0

    .line 783
    .local p1, "sapMsg":Lcom/android/bluetooth/sap/SapMessage;
    :cond_9
    sget-boolean v2, Lcom/android/bluetooth/sap/SapServer;->VERBOSE:Z

    if-eqz v2, :cond_a

    const-string/jumbo v2, "SapServerHandler"

    const-string/jumbo v3, "This is a NORMAL disconnect."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    :cond_a
    invoke-direct {p0, v7, v6}, Lcom/android/bluetooth/sap/SapServer;->startDisconnectTimer(II)V

    goto/16 :goto_0

    .line 791
    :sswitch_2
    iget-object v2, p0, Lcom/android/bluetooth/sap/SapServer;->mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    sget-object v3, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->DISCONNECTED:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    if-eq v2, v3, :cond_b

    .line 792
    iget-object v2, p0, Lcom/android/bluetooth/sap/SapServer;->mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    sget-object v3, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->CONNECTING:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    if-ne v2, v3, :cond_d

    .line 794
    :cond_b
    :goto_1
    const/4 p1, 0x0

    .line 796
    .end local p1    # "sapMsg":Lcom/android/bluetooth/sap/SapMessage;
    :cond_c
    iget-object v2, p0, Lcom/android/bluetooth/sap/SapServer;->mSapServiceHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/bluetooth/sap/SapServer;->mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    sget-object v3, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->CONNECTED:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    if-ne v2, v3, :cond_0

    .line 797
    iget-object v2, p0, Lcom/android/bluetooth/sap/SapServer;->mSapServiceHandler:Landroid/os/Handler;

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 798
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x138f

    iput v2, v1, Landroid/os/Message;->what:I

    .line 799
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 800
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 801
    invoke-virtual {p0, v5, v5}, Lcom/android/bluetooth/sap/SapServer;->setNotification(II)V

    .line 802
    const-string/jumbo v2, "SapServer"

    const-string/jumbo v3, "MSG_CHANGE_STATE sent out."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 793
    .end local v1    # "msg":Landroid/os/Message;
    .restart local p1    # "sapMsg":Lcom/android/bluetooth/sap/SapMessage;
    :cond_d
    iget-object v2, p0, Lcom/android/bluetooth/sap/SapServer;->mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    sget-object v3, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->DISCONNECTING:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    if-ne v2, v3, :cond_c

    goto :goto_1

    .line 724
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_1
        0x11 -> :sswitch_2
    .end sparse-switch
.end method

.method private handleRilInd(Lcom/android/bluetooth/sap/SapMessage;)V
    .locals 4
    .param p1, "sapMsg"    # Lcom/android/bluetooth/sap/SapMessage;

    .prologue
    .line 826
    if-nez p1, :cond_0

    .line 827
    return-void

    .line 829
    :cond_0
    invoke-virtual {p1}, Lcom/android/bluetooth/sap/SapMessage;->getMsgType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 845
    const-string/jumbo v1, "SapServerHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unhandled message - type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 846
    invoke-virtual {p1}, Lcom/android/bluetooth/sap/SapMessage;->getMsgType()I

    move-result v3

    invoke-static {v3}, Lcom/android/bluetooth/sap/SapMessage;->getMsgTypeName(I)Ljava/lang/String;

    move-result-object v3

    .line 845
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    :goto_0
    return-void

    .line 832
    :pswitch_0
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapServer;->mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    sget-object v2, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->DISCONNECTED:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/bluetooth/sap/SapServer;->mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    sget-object v2, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->DISCONNECTING:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    if-eq v1, v2, :cond_1

    .line 834
    new-instance v0, Lcom/android/bluetooth/sap/SapMessage;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/bluetooth/sap/SapMessage;-><init>(I)V

    .line 835
    .local v0, "reply":Lcom/android/bluetooth/sap/SapMessage;
    invoke-virtual {p1}, Lcom/android/bluetooth/sap/SapMessage;->getDisconnectionType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/sap/SapMessage;->setDisconnectionType(I)V

    .line 836
    invoke-direct {p0, v0}, Lcom/android/bluetooth/sap/SapServer;->sendClientMessage(Lcom/android/bluetooth/sap/SapMessage;)V

    goto :goto_0

    .line 839
    .end local v0    # "reply":Lcom/android/bluetooth/sap/SapMessage;
    :cond_1
    invoke-virtual {p1}, Lcom/android/bluetooth/sap/SapMessage;->getDisconnectionType()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/bluetooth/sap/SapServer;->sendDisconnectInd(I)V

    goto :goto_0

    .line 829
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method private isCallOngoing()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 572
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapServer;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 573
    .local v0, "tManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    if-nez v1, :cond_0

    .line 574
    return v3

    .line 576
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private onConnectRequest(Lcom/android/bluetooth/sap/SapMessage;)V
    .locals 4
    .param p1, "msg"    # Lcom/android/bluetooth/sap/SapMessage;

    .prologue
    const/4 v3, 0x1

    .line 501
    new-instance v0, Lcom/android/bluetooth/sap/SapMessage;

    invoke-direct {v0, v3}, Lcom/android/bluetooth/sap/SapMessage;-><init>(I)V

    .line 503
    .local v0, "reply":Lcom/android/bluetooth/sap/SapMessage;
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapServer;->mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    sget-object v2, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->CONNECTING:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    if-ne v1, v2, :cond_1

    .line 507
    const/4 v0, 0x0

    .line 508
    .local v0, "reply":Lcom/android/bluetooth/sap/SapMessage;
    invoke-direct {p0, p1}, Lcom/android/bluetooth/sap/SapServer;->sendRilMessage(Lcom/android/bluetooth/sap/SapMessage;)V

    .line 509
    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapServer;->stopDisconnectTimer()V

    .line 539
    .end local v0    # "reply":Lcom/android/bluetooth/sap/SapMessage;
    :goto_0
    if-eqz v0, :cond_0

    .line 540
    invoke-direct {p0, v0}, Lcom/android/bluetooth/sap/SapServer;->sendClientMessage(Lcom/android/bluetooth/sap/SapMessage;)V

    .line 500
    :cond_0
    return-void

    .line 511
    .local v0, "reply":Lcom/android/bluetooth/sap/SapMessage;
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapServer;->mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    sget-object v2, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->DISCONNECTED:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/bluetooth/sap/SapServer;->mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    sget-object v2, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->CONNECTING_CALL_ONGOING:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    if-eq v1, v2, :cond_2

    .line 512
    invoke-virtual {v0, v3}, Lcom/android/bluetooth/sap/SapMessage;->setConnectionStatus(I)V

    goto :goto_0

    .line 515
    :cond_2
    invoke-virtual {p1}, Lcom/android/bluetooth/sap/SapMessage;->getMaxMsgSize()I

    move-result v1

    iput v1, p0, Lcom/android/bluetooth/sap/SapServer;->mMaxMsgSize:I

    .line 517
    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapServer;->isCallOngoing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 520
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/sap/SapMessage;->setConnectionStatus(I)V

    goto :goto_0

    .line 526
    :cond_3
    sget-object v1, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->CONNECTING:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    invoke-direct {p0, v1}, Lcom/android/bluetooth/sap/SapServer;->changeState(Lcom/android/bluetooth/sap/SapServer$SAP_STATE;)V

    .line 527
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapServer;->mRilBtReceiverThread:Ljava/lang/Thread;

    if-eqz v1, :cond_4

    .line 529
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapServer;->mRilBtReceiverThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 531
    const/4 v0, 0x0

    .local v0, "reply":Lcom/android/bluetooth/sap/SapMessage;
    goto :goto_0

    .line 533
    .local v0, "reply":Lcom/android/bluetooth/sap/SapMessage;
    :cond_4
    new-instance v0, Lcom/android/bluetooth/sap/SapMessage;

    .end local v0    # "reply":Lcom/android/bluetooth/sap/SapMessage;
    invoke-direct {v0, v3}, Lcom/android/bluetooth/sap/SapMessage;-><init>(I)V

    .line 534
    .restart local v0    # "reply":Lcom/android/bluetooth/sap/SapMessage;
    invoke-virtual {v0, v3}, Lcom/android/bluetooth/sap/SapMessage;->setConnectionStatus(I)V

    .line 535
    invoke-direct {p0, v0}, Lcom/android/bluetooth/sap/SapServer;->sendClientMessage(Lcom/android/bluetooth/sap/SapMessage;)V

    goto :goto_0
.end method

.method private sendClientMessage(Lcom/android/bluetooth/sap/SapMessage;)V
    .locals 3
    .param p1, "sapMsg"    # Lcom/android/bluetooth/sap/SapMessage;

    .prologue
    .line 553
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapServer;->mSapHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 554
    .local v0, "newMsg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapServer;->mSapHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 552
    return-void
.end method

.method private sendDisconnectInd(I)V
    .locals 7
    .param p1, "discType"    # I

    .prologue
    const/16 v6, 0x100

    const/4 v5, 0x1

    .line 177
    sget-boolean v2, Lcom/android/bluetooth/sap/SapServer;->VERBOSE:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "SapServer"

    const-string/jumbo v3, "in sendDisconnectInd()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_0
    if-eq p1, v6, :cond_3

    .line 180
    const-string/jumbo v2, "SapServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Sending  disconnect ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ") indication to client"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    new-instance v0, Lcom/android/bluetooth/sap/SapMessage;

    const/4 v2, 0x4

    invoke-direct {v0, v2}, Lcom/android/bluetooth/sap/SapMessage;-><init>(I)V

    .line 183
    .local v0, "discInd":Lcom/android/bluetooth/sap/SapMessage;
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/sap/SapMessage;->setDisconnectionType(I)V

    .line 184
    invoke-direct {p0, v0}, Lcom/android/bluetooth/sap/SapServer;->sendClientMessage(Lcom/android/bluetooth/sap/SapMessage;)V

    .line 187
    if-nez p1, :cond_2

    .line 190
    const/high16 v2, 0x10000000

    invoke-virtual {p0, v5, v2}, Lcom/android/bluetooth/sap/SapServer;->setNotification(II)V

    .line 176
    .end local v0    # "discInd":Lcom/android/bluetooth/sap/SapMessage;
    :cond_1
    :goto_0
    return-void

    .line 192
    .restart local v0    # "discInd":Lcom/android/bluetooth/sap/SapMessage;
    :cond_2
    if-ne p1, v5, :cond_1

    .line 195
    const/16 v2, 0x1388

    invoke-direct {p0, v6, v2}, Lcom/android/bluetooth/sap/SapServer;->startDisconnectTimer(II)V

    goto :goto_0

    .line 199
    .end local v0    # "discInd":Lcom/android/bluetooth/sap/SapMessage;
    :cond_3
    new-instance v1, Lcom/android/bluetooth/sap/SapMessage;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/android/bluetooth/sap/SapMessage;-><init>(I)V

    .line 201
    .local v1, "msg":Lcom/android/bluetooth/sap/SapMessage;
    const-string/jumbo v2, "SapServer"

    const-string/jumbo v3, "Cleaning up before force disconnecting rfcomm"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-direct {p0, v1}, Lcom/android/bluetooth/sap/SapServer;->clearPendingRilResponses(Lcom/android/bluetooth/sap/SapMessage;)V

    .line 206
    sget-object v2, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->DISCONNECTING:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    invoke-direct {p0, v2}, Lcom/android/bluetooth/sap/SapServer;->changeState(Lcom/android/bluetooth/sap/SapServer$SAP_STATE;)V

    .line 207
    invoke-direct {p0, v1}, Lcom/android/bluetooth/sap/SapServer;->sendRilThreadMessage(Lcom/android/bluetooth/sap/SapMessage;)V

    .line 208
    iput-boolean v5, p0, Lcom/android/bluetooth/sap/SapServer;->mIsLocalInitDisconnect:Z

    goto :goto_0
.end method

.method private sendReply(Lcom/android/bluetooth/sap/SapMessage;)V
    .locals 4
    .param p1, "msg"    # Lcom/android/bluetooth/sap/SapMessage;

    .prologue
    .line 882
    sget-boolean v1, Lcom/android/bluetooth/sap/SapServer;->VERBOSE:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SapServerHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendReply() RFCOMM - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 883
    invoke-virtual {p1}, Lcom/android/bluetooth/sap/SapMessage;->getMsgType()I

    move-result v3

    invoke-static {v3}, Lcom/android/bluetooth/sap/SapMessage;->getMsgTypeName(I)Ljava/lang/String;

    move-result-object v3

    .line 882
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapServer;->mRfcommOut:Ljava/io/BufferedOutputStream;

    if-eqz v1, :cond_1

    .line 886
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapServer;->mRfcommOut:Ljava/io/BufferedOutputStream;

    invoke-virtual {p1, v1}, Lcom/android/bluetooth/sap/SapMessage;->write(Ljava/io/OutputStream;)V

    .line 887
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapServer;->mRfcommOut:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 881
    :cond_1
    :goto_0
    return-void

    .line 888
    :catch_0
    move-exception v0

    .line 889
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v1, "SapServerHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private sendRilMessage(Lcom/android/bluetooth/sap/SapMessage;)V
    .locals 7
    .param p1, "sapMsg"    # Lcom/android/bluetooth/sap/SapMessage;

    .prologue
    const/16 v6, 0x12

    .line 855
    sget-boolean v3, Lcom/android/bluetooth/sap/SapServer;->VERBOSE:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "SapServerHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendRilMessage() - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 856
    invoke-virtual {p1}, Lcom/android/bluetooth/sap/SapMessage;->getMsgType()I

    move-result v5

    invoke-static {v5}, Lcom/android/bluetooth/sap/SapMessage;->getMsgTypeName(I)Ljava/lang/String;

    move-result-object v5

    .line 855
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/bluetooth/sap/SapServer;->mRilBtOutStream:Lcom/google/protobuf/micro/CodedOutputStreamMicro;

    if-eqz v3, :cond_1

    .line 859
    iget-object v3, p0, Lcom/android/bluetooth/sap/SapServer;->mRilBtOutStream:Lcom/google/protobuf/micro/CodedOutputStreamMicro;

    invoke-virtual {p1, v3}, Lcom/android/bluetooth/sap/SapMessage;->writeReqToStream(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V

    .line 854
    :goto_0
    return-void

    .line 865
    :cond_1
    iget-object v3, p0, Lcom/android/bluetooth/sap/SapServer;->mDeinitSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 867
    :catch_0
    move-exception v0

    .line 868
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v3, "SapServerHandler"

    const-string/jumbo v4, "Unable to send message to RIL"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 869
    new-instance v2, Lcom/android/bluetooth/sap/SapMessage;

    invoke-direct {v2, v6}, Lcom/android/bluetooth/sap/SapMessage;-><init>(I)V

    .line 870
    .local v2, "errorReply":Lcom/android/bluetooth/sap/SapMessage;
    invoke-direct {p0, v2}, Lcom/android/bluetooth/sap/SapServer;->sendClientMessage(Lcom/android/bluetooth/sap/SapMessage;)V

    goto :goto_0

    .line 871
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "errorReply":Lcom/android/bluetooth/sap/SapMessage;
    :catch_1
    move-exception v1

    .line 872
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v3, "SapServerHandler"

    const-string/jumbo v4, "Unable encode message"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 873
    new-instance v2, Lcom/android/bluetooth/sap/SapMessage;

    invoke-direct {v2, v6}, Lcom/android/bluetooth/sap/SapMessage;-><init>(I)V

    .line 874
    .restart local v2    # "errorReply":Lcom/android/bluetooth/sap/SapMessage;
    invoke-direct {p0, v2}, Lcom/android/bluetooth/sap/SapServer;->sendClientMessage(Lcom/android/bluetooth/sap/SapMessage;)V

    goto :goto_0
.end method

.method private sendRilThreadMessage(Lcom/android/bluetooth/sap/SapMessage;)V
    .locals 3
    .param p1, "sapMsg"    # Lcom/android/bluetooth/sap/SapMessage;

    .prologue
    .line 562
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapServer;->mSapHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 563
    .local v0, "newMsg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapServer;->mSapHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 561
    return-void
.end method

.method private shutdown()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 661
    const-string/jumbo v1, "SapServerHandler"

    const-string/jumbo v2, "in Shutdown()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapServer;->mRfcommOut:Ljava/io/BufferedOutputStream;

    if-eqz v1, :cond_0

    .line 664
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapServer;->mRfcommOut:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 667
    :cond_0
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapServer;->mRfcommIn:Ljava/io/BufferedInputStream;

    if-eqz v1, :cond_1

    .line 668
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapServer;->mRfcommIn:Ljava/io/BufferedInputStream;

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 670
    :cond_1
    :goto_1
    iput-object v3, p0, Lcom/android/bluetooth/sap/SapServer;->mRfcommIn:Ljava/io/BufferedInputStream;

    .line 671
    iput-object v3, p0, Lcom/android/bluetooth/sap/SapServer;->mRfcommOut:Ljava/io/BufferedOutputStream;

    .line 672
    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapServer;->stopDisconnectTimer()V

    .line 673
    invoke-virtual {p0}, Lcom/android/bluetooth/sap/SapServer;->clearNotification()V

    .line 659
    return-void

    .line 669
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto :goto_1

    .line 665
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method private startDisconnectTimer(II)V
    .locals 6
    .param p1, "discType"    # I
    .param p2, "timeMs"    # I

    .prologue
    .line 678
    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapServer;->stopDisconnectTimer()V

    .line 679
    monitor-enter p0

    .line 680
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.android.bluetooth.sap.action.DISCONNECT_ACTION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 681
    .local v1, "sapDisconnectIntent":Landroid/content/Intent;
    const-string/jumbo v2, "com.android.bluetooth.sap.extra.DISCONNECT_TYPE"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 683
    iget-object v2, p0, Lcom/android/bluetooth/sap/SapServer;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 684
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    iget-object v2, p0, Lcom/android/bluetooth/sap/SapServer;->mContext:Landroid/content/Context;

    .line 687
    const/high16 v3, 0x10000000

    .line 684
    invoke-static {v2, p1, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/bluetooth/sap/SapServer;->pDiscIntent:Landroid/app/PendingIntent;

    .line 689
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    int-to-long v4, p2

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/android/bluetooth/sap/SapServer;->pDiscIntent:Landroid/app/PendingIntent;

    .line 688
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 691
    sget-boolean v2, Lcom/android/bluetooth/sap/SapServer;->VERBOSE:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "SapServerHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Setting alarm for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 692
    const-string/jumbo v4, " ms to activate disconnect type "

    .line 691
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 676
    return-void

    .line 679
    .end local v0    # "alarmManager":Landroid/app/AlarmManager;
    .end local v1    # "sapDisconnectIntent":Landroid/content/Intent;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private stopDisconnectTimer()V
    .locals 3

    .prologue
    .line 697
    monitor-enter p0

    .line 698
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapServer;->pDiscIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_1

    .line 701
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapServer;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 702
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapServer;->pDiscIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 703
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapServer;->pDiscIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->cancel()V

    .line 704
    sget-boolean v1, Lcom/android/bluetooth/sap/SapServer;->VERBOSE:Z

    if-eqz v1, :cond_0

    .line 705
    const-string/jumbo v1, "SapServerHandler"

    const-string/jumbo v2, "Canceling disconnect alarm"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/sap/SapServer;->pDiscIntent:Landroid/app/PendingIntent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "alarmManager":Landroid/app/AlarmManager;
    :cond_1
    monitor-exit p0

    .line 696
    return-void

    .line 697
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method clearNotification()V
    .locals 3

    .prologue
    .line 290
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapServer;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 291
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    const v1, 0x1080080

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 288
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 606
    sget-boolean v3, Lcom/android/bluetooth/sap/SapServer;->VERBOSE:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "SapServerHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Handling message (ID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 607
    iget v5, p1, Landroid/os/Message;->what:I

    invoke-static {v5}, Lcom/android/bluetooth/sap/SapServer;->getMessageName(I)Ljava/lang/String;

    move-result-object v5

    .line 606
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    :cond_0
    const/4 v2, 0x0

    .line 611
    .local v2, "sapMsg":Lcom/android/bluetooth/sap/SapMessage;
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 650
    return v7

    .line 613
    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v2    # "sapMsg":Lcom/android/bluetooth/sap/SapMessage;
    check-cast v2, Lcom/android/bluetooth/sap/SapMessage;

    .line 614
    .local v2, "sapMsg":Lcom/android/bluetooth/sap/SapMessage;
    invoke-direct {p0, v2}, Lcom/android/bluetooth/sap/SapServer;->handleRfcommReply(Lcom/android/bluetooth/sap/SapMessage;)V

    .line 652
    .end local v2    # "sapMsg":Lcom/android/bluetooth/sap/SapMessage;
    :cond_1
    :goto_0
    return v8

    .line 619
    .local v2, "sapMsg":Lcom/android/bluetooth/sap/SapMessage;
    :pswitch_1
    iget-object v3, p0, Lcom/android/bluetooth/sap/SapServer;->mRilBtReceiver:Lcom/android/bluetooth/sap/SapRilReceiver;

    invoke-virtual {v3}, Lcom/android/bluetooth/sap/SapRilReceiver;->getRilBtOutStream()Lcom/google/protobuf/micro/CodedOutputStreamMicro;

    move-result-object v3

    iput-object v3, p0, Lcom/android/bluetooth/sap/SapServer;->mRilBtOutStream:Lcom/google/protobuf/micro/CodedOutputStreamMicro;

    .line 620
    iget v3, p0, Lcom/android/bluetooth/sap/SapServer;->mTestMode:I

    if-eq v3, v6, :cond_2

    .line 621
    new-instance v1, Lcom/android/bluetooth/sap/SapMessage;

    const/16 v3, 0x201

    invoke-direct {v1, v3}, Lcom/android/bluetooth/sap/SapMessage;-><init>(I)V

    .line 622
    .local v1, "rilTestModeReq":Lcom/android/bluetooth/sap/SapMessage;
    iget v3, p0, Lcom/android/bluetooth/sap/SapServer;->mTestMode:I

    invoke-virtual {v1, v3}, Lcom/android/bluetooth/sap/SapMessage;->setTestMode(I)V

    .line 623
    invoke-direct {p0, v1}, Lcom/android/bluetooth/sap/SapServer;->sendRilMessage(Lcom/android/bluetooth/sap/SapMessage;)V

    .line 624
    iput v6, p0, Lcom/android/bluetooth/sap/SapServer;->mTestMode:I

    .line 626
    .end local v1    # "rilTestModeReq":Lcom/android/bluetooth/sap/SapMessage;
    :cond_2
    new-instance v0, Lcom/android/bluetooth/sap/SapMessage;

    invoke-direct {v0, v7}, Lcom/android/bluetooth/sap/SapMessage;-><init>(I)V

    .line 627
    .local v0, "rilSapConnect":Lcom/android/bluetooth/sap/SapMessage;
    iget v3, p0, Lcom/android/bluetooth/sap/SapServer;->mMaxMsgSize:I

    invoke-virtual {v0, v3}, Lcom/android/bluetooth/sap/SapMessage;->setMaxMsgSize(I)V

    .line 628
    invoke-direct {p0, v0}, Lcom/android/bluetooth/sap/SapServer;->sendRilMessage(Lcom/android/bluetooth/sap/SapMessage;)V

    goto :goto_0

    .line 631
    .end local v0    # "rilSapConnect":Lcom/android/bluetooth/sap/SapMessage;
    :pswitch_2
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v2    # "sapMsg":Lcom/android/bluetooth/sap/SapMessage;
    check-cast v2, Lcom/android/bluetooth/sap/SapMessage;

    .line 632
    .local v2, "sapMsg":Lcom/android/bluetooth/sap/SapMessage;
    if-eqz v2, :cond_1

    .line 633
    invoke-direct {p0, v2}, Lcom/android/bluetooth/sap/SapServer;->sendRilMessage(Lcom/android/bluetooth/sap/SapMessage;)V

    goto :goto_0

    .line 637
    .local v2, "sapMsg":Lcom/android/bluetooth/sap/SapMessage;
    :pswitch_3
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v2    # "sapMsg":Lcom/android/bluetooth/sap/SapMessage;
    check-cast v2, Lcom/android/bluetooth/sap/SapMessage;

    .line 638
    .local v2, "sapMsg":Lcom/android/bluetooth/sap/SapMessage;
    invoke-direct {p0, v2}, Lcom/android/bluetooth/sap/SapServer;->handleRilInd(Lcom/android/bluetooth/sap/SapMessage;)V

    goto :goto_0

    .line 643
    .local v2, "sapMsg":Lcom/android/bluetooth/sap/SapMessage;
    :pswitch_4
    invoke-direct {p0, v8}, Lcom/android/bluetooth/sap/SapServer;->sendDisconnectInd(I)V

    .line 644
    const/16 v3, 0x101

    const/16 v4, 0x7d0

    invoke-direct {p0, v3, v4}, Lcom/android/bluetooth/sap/SapServer;->startDisconnectTimer(II)V

    .line 646
    iget-object v3, p0, Lcom/android/bluetooth/sap/SapServer;->mDeinitSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    .line 611
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public run()V
    .locals 15

    .prologue
    .line 303
    const/16 v12, 0xa

    :try_start_0
    invoke-static {v12}, Landroid/os/Process;->setThreadPriority(I)V

    .line 306
    new-instance v12, Landroid/os/HandlerThread;

    const-string/jumbo v13, "SapServerHandler"

    .line 307
    const/16 v14, 0xa

    .line 306
    invoke-direct {v12, v13, v14}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mHandlerThread:Landroid/os/HandlerThread;

    .line 308
    iget-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v12}, Landroid/os/HandlerThread;->start()V

    .line 311
    iget-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v12}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v11

    .line 312
    .local v11, "sapLooper":Landroid/os/Looper;
    new-instance v12, Landroid/os/Handler;

    invoke-direct {v12, v11, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mSapHandler:Landroid/os/Handler;

    .line 314
    new-instance v12, Lcom/android/bluetooth/sap/SapRilReceiver;

    iget-object v13, p0, Lcom/android/bluetooth/sap/SapServer;->mSapHandler:Landroid/os/Handler;

    iget-object v14, p0, Lcom/android/bluetooth/sap/SapServer;->mSapServiceHandler:Landroid/os/Handler;

    invoke-direct {v12, v13, v14}, Lcom/android/bluetooth/sap/SapRilReceiver;-><init>(Landroid/os/Handler;Landroid/os/Handler;)V

    iput-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mRilBtReceiver:Lcom/android/bluetooth/sap/SapRilReceiver;

    .line 315
    new-instance v12, Ljava/lang/Thread;

    iget-object v13, p0, Lcom/android/bluetooth/sap/SapServer;->mRilBtReceiver:Lcom/android/bluetooth/sap/SapRilReceiver;

    const-string/jumbo v14, "RilBtReceiver"

    invoke-direct {v12, v13, v14}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mRilBtReceiverThread:Ljava/lang/Thread;

    .line 316
    const/4 v1, 0x0

    .line 317
    .local v1, "done":Z
    :cond_0
    :goto_0
    if-nez v1, :cond_2f

    .line 318
    sget-boolean v12, Lcom/android/bluetooth/sap/SapServer;->VERBOSE:Z

    if-eqz v12, :cond_1

    const-string/jumbo v12, "SapServer"

    const-string/jumbo v13, "Waiting for incomming RFCOMM message..."

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_1
    iget-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mRfcommIn:Ljava/io/BufferedInputStream;

    invoke-virtual {v12}, Ljava/io/BufferedInputStream;->read()I

    move-result v10

    .line 320
    .local v10, "requestType":I
    const/4 v12, -0x1

    if-ne v10, v12, :cond_2

    .line 321
    const/4 v1, 0x1

    goto :goto_0

    .line 323
    :cond_2
    iget-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mRfcommIn:Ljava/io/BufferedInputStream;

    invoke-static {v10, v12}, Lcom/android/bluetooth/sap/SapMessage;->readMessage(ILjava/io/InputStream;)Lcom/android/bluetooth/sap/SapMessage;

    move-result-object v8

    .line 325
    .local v8, "msg":Lcom/android/bluetooth/sap/SapMessage;
    iget-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mSapServiceHandler:Landroid/os/Handler;

    invoke-static {v12}, Lcom/android/bluetooth/sap/SapService;->notifyUpdateWakeLock(Landroid/os/Handler;)V

    .line 326
    if-eqz v8, :cond_24

    iget-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    sget-object v13, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->DISCONNECTING:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    if-eq v12, v13, :cond_24

    .line 328
    sparse-switch v10, :sswitch_data_0

    .line 392
    .end local v8    # "msg":Lcom/android/bluetooth/sap/SapMessage;
    :cond_3
    :goto_1
    iget-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    sget-object v13, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->CONNECTED:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    if-eq v12, v13, :cond_4

    .line 393
    const-string/jumbo v12, "SapServer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Message received in STATE != CONNECTED - state = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 394
    iget-object v14, p0, Lcom/android/bluetooth/sap/SapServer;->mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    invoke-virtual {v14}, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->name()Ljava/lang/String;

    move-result-object v14

    .line 393
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    new-instance v6, Lcom/android/bluetooth/sap/SapMessage;

    const/16 v12, 0x12

    invoke-direct {v6, v12}, Lcom/android/bluetooth/sap/SapMessage;-><init>(I)V

    .line 397
    .local v6, "errorReply":Lcom/android/bluetooth/sap/SapMessage;
    invoke-direct {p0, v6}, Lcom/android/bluetooth/sap/SapServer;->sendClientMessage(Lcom/android/bluetooth/sap/SapMessage;)V

    .line 398
    const/4 v8, 0x0

    .line 402
    .end local v6    # "errorReply":Lcom/android/bluetooth/sap/SapMessage;
    :cond_4
    :goto_2
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lcom/android/bluetooth/sap/SapMessage;->getSendToRil()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 403
    sget-object v12, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->CONNECTED_BUSY:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    invoke-direct {p0, v12}, Lcom/android/bluetooth/sap/SapServer;->changeState(Lcom/android/bluetooth/sap/SapServer$SAP_STATE;)V

    .line 404
    invoke-direct {p0, v8}, Lcom/android/bluetooth/sap/SapServer;->sendRilThreadMessage(Lcom/android/bluetooth/sap/SapMessage;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 415
    .end local v1    # "done":Z
    .end local v10    # "requestType":I
    .end local v11    # "sapLooper":Landroid/os/Looper;
    :catch_0
    move-exception v5

    .line 416
    .local v5, "e":Ljava/lang/NullPointerException;
    :try_start_1
    const-string/jumbo v12, "SapServer"

    invoke-static {v12, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 425
    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapServer;->stopDisconnectTimer()V

    .line 430
    iget-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    sget-object v13, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->CONNECTING_CALL_ONGOING:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    if-ne v12, v13, :cond_40

    .line 432
    sget-object v12, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->DISCONNECTED:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    invoke-direct {p0, v12}, Lcom/android/bluetooth/sap/SapServer;->changeState(Lcom/android/bluetooth/sap/SapServer$SAP_STATE;)V

    .line 446
    :cond_5
    :goto_3
    iget-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v12, :cond_6

    .line 447
    iget-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mContext:Landroid/content/Context;

    iget-object v13, p0, Lcom/android/bluetooth/sap/SapServer;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v12, v13}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 448
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 450
    :cond_6
    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapServer;->stopDisconnectTimer()V

    .line 451
    invoke-virtual {p0}, Lcom/android/bluetooth/sap/SapServer;->clearNotification()V

    .line 453
    iget-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v12, :cond_7

    .line 454
    :try_start_2
    iget-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v12}, Landroid/os/HandlerThread;->quit()Z

    .line 455
    iget-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v12}, Landroid/os/HandlerThread;->join()V

    .line 456
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mHandlerThread:Landroid/os/HandlerThread;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_f

    .line 458
    :cond_7
    :goto_4
    iget-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mRilBtReceiverThread:Ljava/lang/Thread;

    if-eqz v12, :cond_9

    .line 459
    :try_start_3
    iget-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mRilBtReceiver:Lcom/android/bluetooth/sap/SapRilReceiver;

    if-eqz v12, :cond_8

    .line 460
    iget-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mRilBtReceiver:Lcom/android/bluetooth/sap/SapRilReceiver;

    invoke-virtual {v12}, Lcom/android/bluetooth/sap/SapRilReceiver;->shutdown()V

    .line 461
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mRilBtReceiver:Lcom/android/bluetooth/sap/SapRilReceiver;

    .line 463
    :cond_8
    iget-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mRilBtReceiverThread:Ljava/lang/Thread;

    invoke-virtual {v12}, Ljava/lang/Thread;->join()V

    .line 464
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mRilBtReceiverThread:Ljava/lang/Thread;
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_e

    .line 467
    :cond_9
    :goto_5
    iget-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mRfcommIn:Ljava/io/BufferedInputStream;

    if-eqz v12, :cond_b

    .line 468
    :try_start_4
    sget-boolean v12, Lcom/android/bluetooth/sap/SapServer;->VERBOSE:Z

    if-eqz v12, :cond_a

    const-string/jumbo v12, "SapServer"

    const-string/jumbo v13, "Closing mRfcommIn..."

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :cond_a
    iget-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mRfcommIn:Ljava/io/BufferedInputStream;

    invoke-virtual {v12}, Ljava/io/BufferedInputStream;->close()V

    .line 470
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mRfcommIn:Ljava/io/BufferedInputStream;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_d

    .line 473
    :cond_b
    :goto_6
    iget-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mRfcommOut:Ljava/io/BufferedOutputStream;

    if-eqz v12, :cond_d

    .line 474
    :try_start_5
    sget-boolean v12, Lcom/android/bluetooth/sap/SapServer;->VERBOSE:Z

    if-eqz v12, :cond_c

    const-string/jumbo v12, "SapServer"

    const-string/jumbo v13, "Closing mRfcommOut..."

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    :cond_c
    iget-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mRfcommOut:Ljava/io/BufferedOutputStream;

    invoke-virtual {v12}, Ljava/io/BufferedOutputStream;->close()V

    .line 476
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mRfcommOut:Ljava/io/BufferedOutputStream;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_c

    .line 479
    :cond_d
    :goto_7
    iget-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mSapServiceHandler:Landroid/os/Handler;

    if-eqz v12, :cond_e

    .line 480
    iget-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mSapServiceHandler:Landroid/os/Handler;

    invoke-static {v12}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v7

    .line 481
    .local v7, "msg":Landroid/os/Message;
    const/16 v12, 0x1388

    iput v12, v7, Landroid/os/Message;->what:I

    .line 482
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 483
    const-string/jumbo v12, "SapServer"

    const-string/jumbo v13, "MSG_SERVERSESSION_CLOSE sent out."

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    .end local v7    # "msg":Landroid/os/Message;
    :cond_e
    const-string/jumbo v12, "SapServer"

    const-string/jumbo v13, "All done exiting thread..."

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    .end local v5    # "e":Ljava/lang/NullPointerException;
    :goto_8
    return-void

    .line 330
    .restart local v1    # "done":Z
    .restart local v8    # "msg":Lcom/android/bluetooth/sap/SapMessage;
    .restart local v10    # "requestType":I
    .restart local v11    # "sapLooper":Landroid/os/Looper;
    :sswitch_0
    :try_start_6
    const-string/jumbo v12, "SapServer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "CONNECT_REQ - MaxMsgSize: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 331
    invoke-virtual {v8}, Lcom/android/bluetooth/sap/SapMessage;->getMaxMsgSize()I

    move-result v14

    .line 330
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    invoke-direct {p0, v8}, Lcom/android/bluetooth/sap/SapServer;->onConnectRequest(Lcom/android/bluetooth/sap/SapMessage;)V

    .line 333
    const/4 v8, 0x0

    .line 334
    .local v8, "msg":Lcom/android/bluetooth/sap/SapMessage;
    goto/16 :goto_2

    .line 349
    .local v8, "msg":Lcom/android/bluetooth/sap/SapMessage;
    :sswitch_1
    const-string/jumbo v12, "SapServer"

    const-string/jumbo v13, "DISCONNECT_REQ"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    sget-object v13, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->CONNECTING_CALL_ONGOING:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    if-ne v12, v13, :cond_f

    .line 352
    const-string/jumbo v12, "SapServer"

    const-string/jumbo v13, "disconnect received when call was ongoing, send disconnect response"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    sget-object v12, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->DISCONNECTING:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    invoke-direct {p0, v12}, Lcom/android/bluetooth/sap/SapServer;->changeState(Lcom/android/bluetooth/sap/SapServer$SAP_STATE;)V

    .line 355
    new-instance v9, Lcom/android/bluetooth/sap/SapMessage;

    const/4 v12, 0x3

    invoke-direct {v9, v12}, Lcom/android/bluetooth/sap/SapMessage;-><init>(I)V

    .line 356
    .local v9, "reply":Lcom/android/bluetooth/sap/SapMessage;
    invoke-direct {p0, v9}, Lcom/android/bluetooth/sap/SapServer;->sendClientMessage(Lcom/android/bluetooth/sap/SapMessage;)V

    .line 357
    const/4 v8, 0x0

    .local v8, "msg":Lcom/android/bluetooth/sap/SapMessage;
    goto/16 :goto_2

    .line 359
    .end local v9    # "reply":Lcom/android/bluetooth/sap/SapMessage;
    .local v8, "msg":Lcom/android/bluetooth/sap/SapMessage;
    :cond_f
    invoke-direct {p0, v8}, Lcom/android/bluetooth/sap/SapServer;->clearPendingRilResponses(Lcom/android/bluetooth/sap/SapMessage;)V

    .line 360
    sget-object v12, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->DISCONNECTING:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    invoke-direct {p0, v12}, Lcom/android/bluetooth/sap/SapServer;->changeState(Lcom/android/bluetooth/sap/SapServer$SAP_STATE;)V

    .line 361
    invoke-direct {p0, v8}, Lcom/android/bluetooth/sap/SapServer;->sendRilThreadMessage(Lcom/android/bluetooth/sap/SapMessage;)V

    .line 364
    const/4 v8, 0x0

    .line 366
    .local v8, "msg":Lcom/android/bluetooth/sap/SapMessage;
    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapServer;->stopDisconnectTimer()V
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_2

    .line 417
    .end local v1    # "done":Z
    .end local v8    # "msg":Lcom/android/bluetooth/sap/SapMessage;
    .end local v10    # "requestType":I
    .end local v11    # "sapLooper":Landroid/os/Looper;
    :catch_1
    move-exception v2

    .line 419
    .local v2, "e":Ljava/io/IOException;
    :try_start_7
    const-string/jumbo v12, "SapServer"

    const-string/jumbo v13, "IOException received, this is probably a shutdown signal, cleaning up..."

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 425
    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapServer;->stopDisconnectTimer()V

    .line 430
    iget-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    sget-object v13, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->CONNECTING_CALL_ONGOING:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    if-ne v12, v13, :cond_3e

    .line 432
    sget-object v12, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->DISCONNECTED:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    invoke-direct {p0, v12}, Lcom/android/bluetooth/sap/SapServer;->changeState(Lcom/android/bluetooth/sap/SapServer$SAP_STATE;)V

    .line 446
    :cond_10
    :goto_9
    iget-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v12, :cond_11

    .line 447
    iget-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mContext:Landroid/content/Context;

    iget-object v13, p0, Lcom/android/bluetooth/sap/SapServer;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v12, v13}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 448
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 450
    :cond_11
    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapServer;->stopDisconnectTimer()V

    .line 451
    invoke-virtual {p0}, Lcom/android/bluetooth/sap/SapServer;->clearNotification()V

    .line 453
    iget-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v12, :cond_12

    .line 454
    :try_start_8
    iget-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v12}, Landroid/os/HandlerThread;->quit()Z

    .line 455
    iget-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v12}, Landroid/os/HandlerThread;->join()V

    .line 456
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mHandlerThread:Landroid/os/HandlerThread;
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_13

    .line 458
    :cond_12
    :goto_a
    iget-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mRilBtReceiverThread:Ljava/lang/Thread;

    if-eqz v12, :cond_14

    .line 459
    :try_start_9
    iget-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mRilBtReceiver:Lcom/android/bluetooth/sap/SapRilReceiver;

    if-eqz v12, :cond_13

    .line 460
    iget-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mRilBtReceiver:Lcom/android/bluetooth/sap/SapRilReceiver;

    invoke-virtual {v12}, Lcom/android/bluetooth/sap/SapRilReceiver;->shutdown()V

    .line 461
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mRilBtReceiver:Lcom/android/bluetooth/sap/SapRilReceiver;

    .line 463
    :cond_13
    iget-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mRilBtReceiverThread:Ljava/lang/Thread;

    invoke-virtual {v12}, Ljava/lang/Thread;->join()V

    .line 464
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mRilBtReceiverThread:Ljava/lang/Thread;
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_12

    .line 467
    :cond_14
    :goto_b
    iget-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mRfcommIn:Ljava/io/BufferedInputStream;

    if-eqz v12, :cond_16

    .line 468
    :try_start_a
    sget-boolean v12, Lcom/android/bluetooth/sap/SapServer;->VERBOSE:Z

    if-eqz v12, :cond_15

    const-string/jumbo v12, "SapServer"

    const-string/jumbo v13, "Closing mRfcommIn..."

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :cond_15
    iget-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mRfcommIn:Ljava/io/BufferedInputStream;

    invoke-virtual {v12}, Ljava/io/BufferedInputStream;->close()V

    .line 470
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mRfcommIn:Ljava/io/BufferedInputStream;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_11

    .line 473
    :cond_16
    :goto_c
    iget-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mRfcommOut:Ljava/io/BufferedOutputStream;

    if-eqz v12, :cond_18

    .line 474
    :try_start_b
    sget-boolean v12, Lcom/android/bluetooth/sap/SapServer;->VERBOSE:Z

    if-eqz v12, :cond_17

    const-string/jumbo v12, "SapServer"

    const-string/jumbo v13, "Closing mRfcommOut..."

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    :cond_17
    iget-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mRfcommOut:Ljava/io/BufferedOutputStream;

    invoke-virtual {v12}, Ljava/io/BufferedOutputStream;->close()V

    .line 476
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mRfcommOut:Ljava/io/BufferedOutputStream;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_10

    .line 479
    :cond_18
    :goto_d
    iget-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mSapServiceHandler:Landroid/os/Handler;

    if-eqz v12, :cond_19

    .line 480
    iget-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mSapServiceHandler:Landroid/os/Handler;

    invoke-static {v12}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v7

    .line 481
    .restart local v7    # "msg":Landroid/os/Message;
    const/16 v12, 0x1388

    iput v12, v7, Landroid/os/Message;->what:I

    .line 482
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 483
    const-string/jumbo v12, "SapServer"

    const-string/jumbo v13, "MSG_SERVERSESSION_CLOSE sent out."

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    .end local v7    # "msg":Landroid/os/Message;
    :cond_19
    const-string/jumbo v12, "SapServer"

    const-string/jumbo v13, "All done exiting thread..."

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 373
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "done":Z
    .local v8, "msg":Lcom/android/bluetooth/sap/SapMessage;
    .restart local v10    # "requestType":I
    .restart local v11    # "sapLooper":Landroid/os/Looper;
    :sswitch_2
    :try_start_c
    invoke-direct {p0, v8}, Lcom/android/bluetooth/sap/SapServer;->clearPendingRilResponses(Lcom/android/bluetooth/sap/SapMessage;)V
    :try_end_c
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_2

    .line 420
    .end local v1    # "done":Z
    .end local v8    # "msg":Lcom/android/bluetooth/sap/SapMessage;
    .end local v10    # "requestType":I
    .end local v11    # "sapLooper":Landroid/os/Looper;
    :catch_2
    move-exception v3

    .line 422
    .local v3, "e":Ljava/lang/Exception;
    :try_start_d
    const-string/jumbo v12, "SapServer"

    invoke-static {v12, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 425
    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapServer;->stopDisconnectTimer()V

    .line 430
    iget-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    sget-object v13, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->CONNECTING_CALL_ONGOING:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    if-ne v12, v13, :cond_3c

    .line 432
    sget-object v12, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->DISCONNECTED:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    invoke-direct {p0, v12}, Lcom/android/bluetooth/sap/SapServer;->changeState(Lcom/android/bluetooth/sap/SapServer$SAP_STATE;)V

    .line 446
    :cond_1a
    :goto_e
    iget-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v12, :cond_1b

    .line 447
    iget-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mContext:Landroid/content/Context;

    iget-object v13, p0, Lcom/android/bluetooth/sap/SapServer;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v12, v13}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 448
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 450
    :cond_1b
    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapServer;->stopDisconnectTimer()V

    .line 451
    invoke-virtual {p0}, Lcom/android/bluetooth/sap/SapServer;->clearNotification()V

    .line 453
    iget-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v12, :cond_1c

    .line 454
    :try_start_e
    iget-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v12}, Landroid/os/HandlerThread;->quit()Z

    .line 455
    iget-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v12}, Landroid/os/HandlerThread;->join()V

    .line 456
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mHandlerThread:Landroid/os/HandlerThread;
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_17

    .line 458
    :cond_1c
    :goto_f
    iget-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mRilBtReceiverThread:Ljava/lang/Thread;

    if-eqz v12, :cond_1e

    .line 459
    :try_start_f
    iget-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mRilBtReceiver:Lcom/android/bluetooth/sap/SapRilReceiver;

    if-eqz v12, :cond_1d

    .line 460
    iget-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mRilBtReceiver:Lcom/android/bluetooth/sap/SapRilReceiver;

    invoke-virtual {v12}, Lcom/android/bluetooth/sap/SapRilReceiver;->shutdown()V

    .line 461
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mRilBtReceiver:Lcom/android/bluetooth/sap/SapRilReceiver;

    .line 463
    :cond_1d
    iget-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mRilBtReceiverThread:Ljava/lang/Thread;

    invoke-virtual {v12}, Ljava/lang/Thread;->join()V

    .line 464
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mRilBtReceiverThread:Ljava/lang/Thread;
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_f} :catch_16

    .line 467
    :cond_1e
    :goto_10
    iget-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mRfcommIn:Ljava/io/BufferedInputStream;

    if-eqz v12, :cond_20

    .line 468
    :try_start_10
    sget-boolean v12, Lcom/android/bluetooth/sap/SapServer;->VERBOSE:Z

    if-eqz v12, :cond_1f

    const-string/jumbo v12, "SapServer"

    const-string/jumbo v13, "Closing mRfcommIn..."

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :cond_1f
    iget-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mRfcommIn:Ljava/io/BufferedInputStream;

    invoke-virtual {v12}, Ljava/io/BufferedInputStream;->close()V

    .line 470
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mRfcommIn:Ljava/io/BufferedInputStream;
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_15

    .line 473
    :cond_20
    :goto_11
    iget-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mRfcommOut:Ljava/io/BufferedOutputStream;

    if-eqz v12, :cond_22

    .line 474
    :try_start_11
    sget-boolean v12, Lcom/android/bluetooth/sap/SapServer;->VERBOSE:Z

    if-eqz v12, :cond_21

    const-string/jumbo v12, "SapServer"

    const-string/jumbo v13, "Closing mRfcommOut..."

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    :cond_21
    iget-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mRfcommOut:Ljava/io/BufferedOutputStream;

    invoke-virtual {v12}, Ljava/io/BufferedOutputStream;->close()V

    .line 476
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mRfcommOut:Ljava/io/BufferedOutputStream;
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_14

    .line 479
    :cond_22
    :goto_12
    iget-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mSapServiceHandler:Landroid/os/Handler;

    if-eqz v12, :cond_23

    .line 480
    iget-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mSapServiceHandler:Landroid/os/Handler;

    invoke-static {v12}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v7

    .line 481
    .restart local v7    # "msg":Landroid/os/Message;
    const/16 v12, 0x1388

    iput v12, v7, Landroid/os/Message;->what:I

    .line 482
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 483
    const-string/jumbo v12, "SapServer"

    const-string/jumbo v13, "MSG_SERVERSESSION_CLOSE sent out."

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    .end local v7    # "msg":Landroid/os/Message;
    :cond_23
    const-string/jumbo v12, "SapServer"

    const-string/jumbo v13, "All done exiting thread..."

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 378
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v1    # "done":Z
    .restart local v8    # "msg":Lcom/android/bluetooth/sap/SapMessage;
    .restart local v10    # "requestType":I
    .restart local v11    # "sapLooper":Landroid/os/Looper;
    :sswitch_3
    :try_start_12
    iget-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    sget-object v13, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->CONNECTED:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    if-ne v12, v13, :cond_3

    .line 379
    invoke-virtual {v8}, Lcom/android/bluetooth/sap/SapMessage;->getTransportProtocol()I

    move-result v12

    if-eqz v12, :cond_3

    .line 380
    invoke-virtual {v8}, Lcom/android/bluetooth/sap/SapMessage;->getTransportProtocol()I

    move-result v12

    const/4 v13, 0x1

    if-eq v12, v13, :cond_3

    .line 381
    const-string/jumbo v12, "SapServer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Invalid TransportProtocol received:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 382
    invoke-virtual {v8}, Lcom/android/bluetooth/sap/SapMessage;->getTransportProtocol()I

    move-result v14

    .line 381
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    new-instance v6, Lcom/android/bluetooth/sap/SapMessage;

    const/16 v12, 0x12

    invoke-direct {v6, v12}, Lcom/android/bluetooth/sap/SapMessage;-><init>(I)V

    .line 385
    .restart local v6    # "errorReply":Lcom/android/bluetooth/sap/SapMessage;
    invoke-direct {p0, v6}, Lcom/android/bluetooth/sap/SapServer;->sendClientMessage(Lcom/android/bluetooth/sap/SapMessage;)V

    .line 386
    const/4 v8, 0x0

    .local v8, "msg":Lcom/android/bluetooth/sap/SapMessage;
    goto/16 :goto_1

    .line 409
    .end local v6    # "errorReply":Lcom/android/bluetooth/sap/SapMessage;
    .local v8, "msg":Lcom/android/bluetooth/sap/SapMessage;
    :cond_24
    const-string/jumbo v12, "SapServer"

    const-string/jumbo v13, "Unable to parse message."

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    new-instance v0, Lcom/android/bluetooth/sap/SapMessage;

    const/16 v12, 0x12

    invoke-direct {v0, v12}, Lcom/android/bluetooth/sap/SapMessage;-><init>(I)V

    .line 411
    .local v0, "atrReply":Lcom/android/bluetooth/sap/SapMessage;
    invoke-direct {p0, v0}, Lcom/android/bluetooth/sap/SapServer;->sendClientMessage(Lcom/android/bluetooth/sap/SapMessage;)V
    :try_end_12
    .catch Ljava/lang/NullPointerException; {:try_start_12 .. :try_end_12} :catch_0
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_1
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_2
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto/16 :goto_0

    .line 423
    .end local v0    # "atrReply":Lcom/android/bluetooth/sap/SapMessage;
    .end local v1    # "done":Z
    .end local v8    # "msg":Lcom/android/bluetooth/sap/SapMessage;
    .end local v10    # "requestType":I
    .end local v11    # "sapLooper":Landroid/os/Looper;
    :catchall_0
    move-exception v12

    .line 425
    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapServer;->stopDisconnectTimer()V

    .line 430
    iget-object v13, p0, Lcom/android/bluetooth/sap/SapServer;->mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    sget-object v14, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->CONNECTING_CALL_ONGOING:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    if-ne v13, v14, :cond_42

    .line 432
    sget-object v13, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->DISCONNECTED:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    invoke-direct {p0, v13}, Lcom/android/bluetooth/sap/SapServer;->changeState(Lcom/android/bluetooth/sap/SapServer$SAP_STATE;)V

    .line 446
    :cond_25
    :goto_13
    iget-object v13, p0, Lcom/android/bluetooth/sap/SapServer;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v13, :cond_26

    .line 447
    iget-object v13, p0, Lcom/android/bluetooth/sap/SapServer;->mContext:Landroid/content/Context;

    iget-object v14, p0, Lcom/android/bluetooth/sap/SapServer;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v13, v14}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 448
    const/4 v13, 0x0

    iput-object v13, p0, Lcom/android/bluetooth/sap/SapServer;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 450
    :cond_26
    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapServer;->stopDisconnectTimer()V

    .line 451
    invoke-virtual {p0}, Lcom/android/bluetooth/sap/SapServer;->clearNotification()V

    .line 453
    iget-object v13, p0, Lcom/android/bluetooth/sap/SapServer;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v13, :cond_27

    .line 454
    :try_start_13
    iget-object v13, p0, Lcom/android/bluetooth/sap/SapServer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v13}, Landroid/os/HandlerThread;->quit()Z

    .line 455
    iget-object v13, p0, Lcom/android/bluetooth/sap/SapServer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v13}, Landroid/os/HandlerThread;->join()V

    .line 456
    const/4 v13, 0x0

    iput-object v13, p0, Lcom/android/bluetooth/sap/SapServer;->mHandlerThread:Landroid/os/HandlerThread;
    :try_end_13
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_13} :catch_b

    .line 458
    :cond_27
    :goto_14
    iget-object v13, p0, Lcom/android/bluetooth/sap/SapServer;->mRilBtReceiverThread:Ljava/lang/Thread;

    if-eqz v13, :cond_29

    .line 459
    :try_start_14
    iget-object v13, p0, Lcom/android/bluetooth/sap/SapServer;->mRilBtReceiver:Lcom/android/bluetooth/sap/SapRilReceiver;

    if-eqz v13, :cond_28

    .line 460
    iget-object v13, p0, Lcom/android/bluetooth/sap/SapServer;->mRilBtReceiver:Lcom/android/bluetooth/sap/SapRilReceiver;

    invoke-virtual {v13}, Lcom/android/bluetooth/sap/SapRilReceiver;->shutdown()V

    .line 461
    const/4 v13, 0x0

    iput-object v13, p0, Lcom/android/bluetooth/sap/SapServer;->mRilBtReceiver:Lcom/android/bluetooth/sap/SapRilReceiver;

    .line 463
    :cond_28
    iget-object v13, p0, Lcom/android/bluetooth/sap/SapServer;->mRilBtReceiverThread:Ljava/lang/Thread;

    invoke-virtual {v13}, Ljava/lang/Thread;->join()V

    .line 464
    const/4 v13, 0x0

    iput-object v13, p0, Lcom/android/bluetooth/sap/SapServer;->mRilBtReceiverThread:Ljava/lang/Thread;
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_14} :catch_a

    .line 467
    :cond_29
    :goto_15
    iget-object v13, p0, Lcom/android/bluetooth/sap/SapServer;->mRfcommIn:Ljava/io/BufferedInputStream;

    if-eqz v13, :cond_2b

    .line 468
    :try_start_15
    sget-boolean v13, Lcom/android/bluetooth/sap/SapServer;->VERBOSE:Z

    if-eqz v13, :cond_2a

    const-string/jumbo v13, "SapServer"

    const-string/jumbo v14, "Closing mRfcommIn..."

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :cond_2a
    iget-object v13, p0, Lcom/android/bluetooth/sap/SapServer;->mRfcommIn:Ljava/io/BufferedInputStream;

    invoke-virtual {v13}, Ljava/io/BufferedInputStream;->close()V

    .line 470
    const/4 v13, 0x0

    iput-object v13, p0, Lcom/android/bluetooth/sap/SapServer;->mRfcommIn:Ljava/io/BufferedInputStream;
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_9

    .line 473
    :cond_2b
    :goto_16
    iget-object v13, p0, Lcom/android/bluetooth/sap/SapServer;->mRfcommOut:Ljava/io/BufferedOutputStream;

    if-eqz v13, :cond_2d

    .line 474
    :try_start_16
    sget-boolean v13, Lcom/android/bluetooth/sap/SapServer;->VERBOSE:Z

    if-eqz v13, :cond_2c

    const-string/jumbo v13, "SapServer"

    const-string/jumbo v14, "Closing mRfcommOut..."

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    :cond_2c
    iget-object v13, p0, Lcom/android/bluetooth/sap/SapServer;->mRfcommOut:Ljava/io/BufferedOutputStream;

    invoke-virtual {v13}, Ljava/io/BufferedOutputStream;->close()V

    .line 476
    const/4 v13, 0x0

    iput-object v13, p0, Lcom/android/bluetooth/sap/SapServer;->mRfcommOut:Ljava/io/BufferedOutputStream;
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_8

    .line 479
    :cond_2d
    :goto_17
    iget-object v13, p0, Lcom/android/bluetooth/sap/SapServer;->mSapServiceHandler:Landroid/os/Handler;

    if-eqz v13, :cond_2e

    .line 480
    iget-object v13, p0, Lcom/android/bluetooth/sap/SapServer;->mSapServiceHandler:Landroid/os/Handler;

    invoke-static {v13}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v7

    .line 481
    .restart local v7    # "msg":Landroid/os/Message;
    const/16 v13, 0x1388

    iput v13, v7, Landroid/os/Message;->what:I

    .line 482
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 483
    const-string/jumbo v13, "SapServer"

    const-string/jumbo v14, "MSG_SERVERSESSION_CLOSE sent out."

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    .end local v7    # "msg":Landroid/os/Message;
    :cond_2e
    const-string/jumbo v13, "SapServer"

    const-string/jumbo v14, "All done exiting thread..."

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    throw v12

    .line 425
    .restart local v1    # "done":Z
    .restart local v11    # "sapLooper":Landroid/os/Looper;
    :cond_2f
    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapServer;->stopDisconnectTimer()V

    .line 430
    iget-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    sget-object v13, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->CONNECTING_CALL_ONGOING:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    if-ne v12, v13, :cond_3a

    .line 432
    sget-object v12, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->DISCONNECTED:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    invoke-direct {p0, v12}, Lcom/android/bluetooth/sap/SapServer;->changeState(Lcom/android/bluetooth/sap/SapServer$SAP_STATE;)V

    .line 446
    :cond_30
    :goto_18
    iget-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v12, :cond_31

    .line 447
    iget-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mContext:Landroid/content/Context;

    iget-object v13, p0, Lcom/android/bluetooth/sap/SapServer;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v12, v13}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 448
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 450
    :cond_31
    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapServer;->stopDisconnectTimer()V

    .line 451
    invoke-virtual {p0}, Lcom/android/bluetooth/sap/SapServer;->clearNotification()V

    .line 453
    iget-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v12, :cond_32

    .line 454
    :try_start_17
    iget-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v12}, Landroid/os/HandlerThread;->quit()Z

    .line 455
    iget-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v12}, Landroid/os/HandlerThread;->join()V

    .line 456
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mHandlerThread:Landroid/os/HandlerThread;
    :try_end_17
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_17} :catch_1b

    .line 458
    :cond_32
    :goto_19
    iget-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mRilBtReceiverThread:Ljava/lang/Thread;

    if-eqz v12, :cond_34

    .line 459
    :try_start_18
    iget-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mRilBtReceiver:Lcom/android/bluetooth/sap/SapRilReceiver;

    if-eqz v12, :cond_33

    .line 460
    iget-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mRilBtReceiver:Lcom/android/bluetooth/sap/SapRilReceiver;

    invoke-virtual {v12}, Lcom/android/bluetooth/sap/SapRilReceiver;->shutdown()V

    .line 461
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mRilBtReceiver:Lcom/android/bluetooth/sap/SapRilReceiver;

    .line 463
    :cond_33
    iget-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mRilBtReceiverThread:Ljava/lang/Thread;

    invoke-virtual {v12}, Ljava/lang/Thread;->join()V

    .line 464
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mRilBtReceiverThread:Ljava/lang/Thread;
    :try_end_18
    .catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_18} :catch_1a

    .line 467
    :cond_34
    :goto_1a
    iget-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mRfcommIn:Ljava/io/BufferedInputStream;

    if-eqz v12, :cond_36

    .line 468
    :try_start_19
    sget-boolean v12, Lcom/android/bluetooth/sap/SapServer;->VERBOSE:Z

    if-eqz v12, :cond_35

    const-string/jumbo v12, "SapServer"

    const-string/jumbo v13, "Closing mRfcommIn..."

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :cond_35
    iget-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mRfcommIn:Ljava/io/BufferedInputStream;

    invoke-virtual {v12}, Ljava/io/BufferedInputStream;->close()V

    .line 470
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mRfcommIn:Ljava/io/BufferedInputStream;
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_19

    .line 473
    :cond_36
    :goto_1b
    iget-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mRfcommOut:Ljava/io/BufferedOutputStream;

    if-eqz v12, :cond_38

    .line 474
    :try_start_1a
    sget-boolean v12, Lcom/android/bluetooth/sap/SapServer;->VERBOSE:Z

    if-eqz v12, :cond_37

    const-string/jumbo v12, "SapServer"

    const-string/jumbo v13, "Closing mRfcommOut..."

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    :cond_37
    iget-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mRfcommOut:Ljava/io/BufferedOutputStream;

    invoke-virtual {v12}, Ljava/io/BufferedOutputStream;->close()V

    .line 476
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mRfcommOut:Ljava/io/BufferedOutputStream;
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_18

    .line 479
    :cond_38
    :goto_1c
    iget-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mSapServiceHandler:Landroid/os/Handler;

    if-eqz v12, :cond_39

    .line 480
    iget-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mSapServiceHandler:Landroid/os/Handler;

    invoke-static {v12}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v7

    .line 481
    .restart local v7    # "msg":Landroid/os/Message;
    const/16 v12, 0x1388

    iput v12, v7, Landroid/os/Message;->what:I

    .line 482
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 483
    const-string/jumbo v12, "SapServer"

    const-string/jumbo v13, "MSG_SERVERSESSION_CLOSE sent out."

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    .end local v7    # "msg":Landroid/os/Message;
    :cond_39
    const-string/jumbo v12, "SapServer"

    const-string/jumbo v13, "All done exiting thread..."

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 433
    :cond_3a
    iget-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    sget-object v13, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->DISCONNECTED:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    if-eq v12, v13, :cond_30

    .line 434
    iget-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    sget-object v13, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->DISCONNECTING:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    if-eq v12, v13, :cond_3b

    .line 435
    iget-boolean v12, p0, Lcom/android/bluetooth/sap/SapServer;->mIsLocalInitDisconnect:Z

    if-nez v12, :cond_3b

    .line 436
    const/16 v12, 0x100

    invoke-direct {p0, v12}, Lcom/android/bluetooth/sap/SapServer;->sendDisconnectInd(I)V

    .line 438
    :cond_3b
    const-string/jumbo v12, "SapServer"

    const-string/jumbo v13, "Waiting for deinit to complete"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :try_start_1b
    iget-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mDeinitSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v12}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1b
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_1b} :catch_3

    goto/16 :goto_18

    .line 441
    :catch_3
    move-exception v4

    .line 442
    .local v4, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v12, "SapServer"

    const-string/jumbo v13, "Interrupt received while waitinf for de-init to complete"

    invoke-static {v12, v13, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_18

    .line 433
    .end local v1    # "done":Z
    .end local v4    # "e":Ljava/lang/InterruptedException;
    .end local v11    # "sapLooper":Landroid/os/Looper;
    .restart local v3    # "e":Ljava/lang/Exception;
    :cond_3c
    iget-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    sget-object v13, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->DISCONNECTED:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    if-eq v12, v13, :cond_1a

    .line 434
    iget-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    sget-object v13, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->DISCONNECTING:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    if-eq v12, v13, :cond_3d

    .line 435
    iget-boolean v12, p0, Lcom/android/bluetooth/sap/SapServer;->mIsLocalInitDisconnect:Z

    if-nez v12, :cond_3d

    .line 436
    const/16 v12, 0x100

    invoke-direct {p0, v12}, Lcom/android/bluetooth/sap/SapServer;->sendDisconnectInd(I)V

    .line 438
    :cond_3d
    const-string/jumbo v12, "SapServer"

    const-string/jumbo v13, "Waiting for deinit to complete"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :try_start_1c
    iget-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mDeinitSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v12}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1c
    .catch Ljava/lang/InterruptedException; {:try_start_1c .. :try_end_1c} :catch_4

    goto/16 :goto_e

    .line 441
    :catch_4
    move-exception v4

    .line 442
    .restart local v4    # "e":Ljava/lang/InterruptedException;
    const-string/jumbo v12, "SapServer"

    const-string/jumbo v13, "Interrupt received while waitinf for de-init to complete"

    invoke-static {v12, v13, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_e

    .line 433
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "e":Ljava/lang/InterruptedException;
    .restart local v2    # "e":Ljava/io/IOException;
    :cond_3e
    iget-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    sget-object v13, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->DISCONNECTED:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    if-eq v12, v13, :cond_10

    .line 434
    iget-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    sget-object v13, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->DISCONNECTING:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    if-eq v12, v13, :cond_3f

    .line 435
    iget-boolean v12, p0, Lcom/android/bluetooth/sap/SapServer;->mIsLocalInitDisconnect:Z

    if-nez v12, :cond_3f

    .line 436
    const/16 v12, 0x100

    invoke-direct {p0, v12}, Lcom/android/bluetooth/sap/SapServer;->sendDisconnectInd(I)V

    .line 438
    :cond_3f
    const-string/jumbo v12, "SapServer"

    const-string/jumbo v13, "Waiting for deinit to complete"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :try_start_1d
    iget-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mDeinitSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v12}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1d
    .catch Ljava/lang/InterruptedException; {:try_start_1d .. :try_end_1d} :catch_5

    goto/16 :goto_9

    .line 441
    :catch_5
    move-exception v4

    .line 442
    .restart local v4    # "e":Ljava/lang/InterruptedException;
    const-string/jumbo v12, "SapServer"

    const-string/jumbo v13, "Interrupt received while waitinf for de-init to complete"

    invoke-static {v12, v13, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_9

    .line 433
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "e":Ljava/lang/InterruptedException;
    .restart local v5    # "e":Ljava/lang/NullPointerException;
    :cond_40
    iget-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    sget-object v13, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->DISCONNECTED:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    if-eq v12, v13, :cond_5

    .line 434
    iget-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    sget-object v13, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->DISCONNECTING:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    if-eq v12, v13, :cond_41

    .line 435
    iget-boolean v12, p0, Lcom/android/bluetooth/sap/SapServer;->mIsLocalInitDisconnect:Z

    if-nez v12, :cond_41

    .line 436
    const/16 v12, 0x100

    invoke-direct {p0, v12}, Lcom/android/bluetooth/sap/SapServer;->sendDisconnectInd(I)V

    .line 438
    :cond_41
    const-string/jumbo v12, "SapServer"

    const-string/jumbo v13, "Waiting for deinit to complete"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :try_start_1e
    iget-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mDeinitSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v12}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1e
    .catch Ljava/lang/InterruptedException; {:try_start_1e .. :try_end_1e} :catch_6

    goto/16 :goto_3

    .line 441
    :catch_6
    move-exception v4

    .line 442
    .restart local v4    # "e":Ljava/lang/InterruptedException;
    const-string/jumbo v12, "SapServer"

    const-string/jumbo v13, "Interrupt received while waitinf for de-init to complete"

    invoke-static {v12, v13, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 433
    .end local v4    # "e":Ljava/lang/InterruptedException;
    .end local v5    # "e":Ljava/lang/NullPointerException;
    :cond_42
    iget-object v13, p0, Lcom/android/bluetooth/sap/SapServer;->mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    sget-object v14, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->DISCONNECTED:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    if-eq v13, v14, :cond_25

    .line 434
    iget-object v13, p0, Lcom/android/bluetooth/sap/SapServer;->mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    sget-object v14, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->DISCONNECTING:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    if-eq v13, v14, :cond_43

    .line 435
    iget-boolean v13, p0, Lcom/android/bluetooth/sap/SapServer;->mIsLocalInitDisconnect:Z

    if-nez v13, :cond_43

    .line 436
    const/16 v13, 0x100

    invoke-direct {p0, v13}, Lcom/android/bluetooth/sap/SapServer;->sendDisconnectInd(I)V

    .line 438
    :cond_43
    const-string/jumbo v13, "SapServer"

    const-string/jumbo v14, "Waiting for deinit to complete"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :try_start_1f
    iget-object v13, p0, Lcom/android/bluetooth/sap/SapServer;->mDeinitSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v13}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1f
    .catch Ljava/lang/InterruptedException; {:try_start_1f .. :try_end_1f} :catch_7

    goto/16 :goto_13

    .line 441
    :catch_7
    move-exception v4

    .line 442
    .restart local v4    # "e":Ljava/lang/InterruptedException;
    const-string/jumbo v13, "SapServer"

    const-string/jumbo v14, "Interrupt received while waitinf for de-init to complete"

    invoke-static {v13, v14, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_13

    .line 477
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :catch_8
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto/16 :goto_17

    .line 471
    .end local v2    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto/16 :goto_16

    .line 465
    .end local v2    # "e":Ljava/io/IOException;
    :catch_a
    move-exception v4

    .restart local v4    # "e":Ljava/lang/InterruptedException;
    goto/16 :goto_15

    .line 457
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :catch_b
    move-exception v4

    .restart local v4    # "e":Ljava/lang/InterruptedException;
    goto/16 :goto_14

    .line 477
    .end local v4    # "e":Ljava/lang/InterruptedException;
    .restart local v5    # "e":Ljava/lang/NullPointerException;
    :catch_c
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto/16 :goto_7

    .line 471
    .end local v2    # "e":Ljava/io/IOException;
    :catch_d
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto/16 :goto_6

    .line 465
    .end local v2    # "e":Ljava/io/IOException;
    :catch_e
    move-exception v4

    .restart local v4    # "e":Ljava/lang/InterruptedException;
    goto/16 :goto_5

    .line 457
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :catch_f
    move-exception v4

    .restart local v4    # "e":Ljava/lang/InterruptedException;
    goto/16 :goto_4

    .line 477
    .end local v4    # "e":Ljava/lang/InterruptedException;
    .end local v5    # "e":Ljava/lang/NullPointerException;
    .restart local v2    # "e":Ljava/io/IOException;
    :catch_10
    move-exception v2

    goto/16 :goto_d

    .line 471
    :catch_11
    move-exception v2

    goto/16 :goto_c

    .line 465
    :catch_12
    move-exception v4

    .restart local v4    # "e":Ljava/lang/InterruptedException;
    goto/16 :goto_b

    .line 457
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :catch_13
    move-exception v4

    .restart local v4    # "e":Ljava/lang/InterruptedException;
    goto/16 :goto_a

    .line 477
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "e":Ljava/lang/InterruptedException;
    .restart local v3    # "e":Ljava/lang/Exception;
    :catch_14
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto/16 :goto_12

    .line 471
    .end local v2    # "e":Ljava/io/IOException;
    :catch_15
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto/16 :goto_11

    .line 465
    .end local v2    # "e":Ljava/io/IOException;
    :catch_16
    move-exception v4

    .restart local v4    # "e":Ljava/lang/InterruptedException;
    goto/16 :goto_10

    .line 457
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :catch_17
    move-exception v4

    .restart local v4    # "e":Ljava/lang/InterruptedException;
    goto/16 :goto_f

    .line 477
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "e":Ljava/lang/InterruptedException;
    .restart local v1    # "done":Z
    .restart local v11    # "sapLooper":Landroid/os/Looper;
    :catch_18
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto/16 :goto_1c

    .line 471
    .end local v2    # "e":Ljava/io/IOException;
    :catch_19
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto/16 :goto_1b

    .line 465
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1a
    move-exception v4

    .restart local v4    # "e":Ljava/lang/InterruptedException;
    goto/16 :goto_1a

    .line 457
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :catch_1b
    move-exception v4

    .restart local v4    # "e":Ljava/lang/InterruptedException;
    goto/16 :goto_19

    .line 328
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_1
        0x9 -> :sswitch_2
        0xd -> :sswitch_2
        0x13 -> :sswitch_3
    .end sparse-switch
.end method

.method setNotification(II)V
    .locals 16
    .param p1, "type"    # I
    .param p2, "flags"    # I

    .prologue
    .line 216
    sget-boolean v13, Lcom/android/bluetooth/sap/SapServer;->VERBOSE:Z

    if-eqz v13, :cond_0

    const-string/jumbo v13, "SapServer"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "setNotification type: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_0
    const-string/jumbo v13, "bt.pts.certification"

    const/4 v14, 0x0

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 224
    .local v7, "pts_test":Ljava/lang/Boolean;
    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v13, "com.android.bluetooth.sap.action.DISCONNECT_ACTION"

    invoke-direct {v8, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 225
    .local v8, "sapDisconnectIntent":Landroid/content/Intent;
    if-nez p1, :cond_1

    .line 226
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/sap/SapServer;->mContext:Landroid/content/Context;

    const v14, 0x7f060083

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 227
    .local v12, "title":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/sap/SapServer;->mContext:Landroid/content/Context;

    const v14, 0x7f060087

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 228
    .local v2, "button":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/sap/SapServer;->mContext:Landroid/content/Context;

    const v14, 0x7f060085

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 229
    .local v10, "text":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/sap/SapServer;->mContext:Landroid/content/Context;

    const v14, 0x7f060084

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 236
    .local v11, "ticker":Ljava/lang/String;
    :goto_0
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-nez v13, :cond_2

    .line 238
    const-string/jumbo v13, "com.android.bluetooth.sap.extra.DISCONNECT_TYPE"

    move/from16 v0, p1

    invoke-virtual {v8, v13, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 239
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/sap/SapServer;->mContext:Landroid/content/Context;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v13, v0, v8, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 241
    .local v5, "pIntentDisconnect":Landroid/app/PendingIntent;
    new-instance v13, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/sap/SapServer;->mContext:Landroid/content/Context;

    invoke-direct {v13, v14}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v13

    .line 242
    const v14, 0x1080080

    .line 241
    invoke-virtual {v13, v14, v2, v5}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v13

    invoke-virtual {v13, v12}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v13

    invoke-virtual {v13, v11}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v13

    invoke-virtual {v13, v10}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v13

    .line 246
    const v14, 0x1080080

    .line 241
    invoke-virtual {v13, v14}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v13

    .line 247
    const/4 v14, 0x0

    .line 241
    invoke-virtual {v13, v14}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v13

    .line 248
    const/4 v14, 0x2

    .line 241
    invoke-virtual {v13, v14}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v13

    .line 249
    const/4 v14, 0x1

    .line 241
    invoke-virtual {v13, v14}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    .line 280
    .local v3, "notification":Landroid/app/Notification;
    :goto_1
    iget v13, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v13, v13, 0x28

    iput v13, v3, Landroid/app/Notification;->flags:I

    .line 283
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/sap/SapServer;->mContext:Landroid/content/Context;

    const-string/jumbo v14, "notification"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 285
    .local v4, "notificationManager":Landroid/app/NotificationManager;
    const v13, 0x1080080

    invoke-virtual {v4, v13, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 212
    return-void

    .line 231
    .end local v2    # "button":Ljava/lang/String;
    .end local v3    # "notification":Landroid/app/Notification;
    .end local v4    # "notificationManager":Landroid/app/NotificationManager;
    .end local v5    # "pIntentDisconnect":Landroid/app/PendingIntent;
    .end local v10    # "text":Ljava/lang/String;
    .end local v11    # "ticker":Ljava/lang/String;
    .end local v12    # "title":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/sap/SapServer;->mContext:Landroid/content/Context;

    const v14, 0x7f060083

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 232
    .restart local v12    # "title":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/sap/SapServer;->mContext:Landroid/content/Context;

    const v14, 0x7f060088

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 233
    .restart local v2    # "button":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/sap/SapServer;->mContext:Landroid/content/Context;

    const v14, 0x7f060086

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 234
    .restart local v10    # "text":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/sap/SapServer;->mContext:Landroid/content/Context;

    const v14, 0x7f060084

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .restart local v11    # "ticker":Ljava/lang/String;
    goto/16 :goto_0

    .line 253
    :cond_2
    const-string/jumbo v13, "com.android.bluetooth.sap.extra.DISCONNECT_TYPE"

    .line 254
    const/4 v14, 0x0

    .line 253
    invoke-virtual {v8, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 255
    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v13, "com.android.bluetooth.sap.action.DISCONNECT_ACTION"

    invoke-direct {v9, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 256
    .local v9, "sapForceDisconnectIntent":Landroid/content/Intent;
    const-string/jumbo v13, "com.android.bluetooth.sap.extra.DISCONNECT_TYPE"

    .line 257
    const/4 v14, 0x1

    .line 256
    invoke-virtual {v9, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 258
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/sap/SapServer;->mContext:Landroid/content/Context;

    .line 259
    const/4 v14, 0x0

    .line 258
    move/from16 v0, p2

    invoke-static {v13, v14, v8, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 260
    .restart local v5    # "pIntentDisconnect":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/sap/SapServer;->mContext:Landroid/content/Context;

    .line 261
    const/4 v14, 0x1

    .line 260
    move/from16 v0, p2

    invoke-static {v13, v14, v9, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 262
    .local v6, "pIntentForceDisconnect":Landroid/app/PendingIntent;
    new-instance v13, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/sap/SapServer;->mContext:Landroid/content/Context;

    invoke-direct {v13, v14}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v13

    .line 264
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/sap/SapServer;->mContext:Landroid/content/Context;

    const v15, 0x7f060087

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 263
    const v15, 0x1080080

    .line 262
    invoke-virtual {v13, v15, v14, v5}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v13

    .line 267
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/sap/SapServer;->mContext:Landroid/content/Context;

    const v15, 0x7f060088

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 266
    const v15, 0x1080080

    .line 262
    invoke-virtual {v13, v15, v14, v6}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v13

    invoke-virtual {v13, v12}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v13

    invoke-virtual {v13, v11}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v13

    invoke-virtual {v13, v10}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v13

    .line 272
    const v14, 0x1080080

    .line 262
    invoke-virtual {v13, v14}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v13

    .line 273
    const/4 v14, 0x0

    .line 262
    invoke-virtual {v13, v14}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v13

    .line 274
    const/4 v14, 0x2

    .line 262
    invoke-virtual {v13, v14}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v13

    .line 275
    const/4 v14, 0x1

    .line 262
    invoke-virtual {v13, v14}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    .restart local v3    # "notification":Landroid/app/Notification;
    goto/16 :goto_1
.end method

.method public setTestMode(I)V
    .locals 0
    .param p1, "testMode"    # I

    .prologue
    .line 173
    iput p1, p0, Lcom/android/bluetooth/sap/SapServer;->mTestMode:I

    .line 172
    return-void
.end method
