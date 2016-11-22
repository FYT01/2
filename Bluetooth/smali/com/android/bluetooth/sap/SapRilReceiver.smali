.class public Lcom/android/bluetooth/sap/SapRilReceiver;
.super Ljava/lang/Object;
.source "SapRilReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final DEBUG:Z = true

.field public static final RIL_MAX_COMMAND_BYTES:I = 0x2000

.field private static final SOCKET_NAME_RIL_BT:Ljava/lang/String; = "sap_uim_socket1"

.field private static final SOCKET_OPEN_RETRY_MILLIS:I = 0xfa0

.field private static final TAG:Ljava/lang/String; = "SapRilReceiver"

.field public static final VERBOSE:Z


# instance fields
.field buffer:[B

.field mRilBtInStream:Ljava/io/InputStream;

.field mRilBtOutStream:Lcom/google/protobuf/micro/CodedOutputStreamMicro;

.field private mSapServerMsgHandler:Landroid/os/Handler;

.field private mSapServiceHandler:Landroid/os/Handler;

.field mShutdown:Z

.field mSocket:Landroid/net/LocalSocket;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    const-string/jumbo v0, "BluetoothSap"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/sap/SapRilReceiver;->VERBOSE:Z

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 1
    .param p1, "SapServerMsgHandler"    # Landroid/os/Handler;
    .param p2, "sapServiceHandler"    # Landroid/os/Handler;

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSocket:Landroid/net/LocalSocket;

    .line 29
    iput-object v0, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mRilBtOutStream:Lcom/google/protobuf/micro/CodedOutputStreamMicro;

    .line 30
    iput-object v0, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mRilBtInStream:Ljava/io/InputStream;

    .line 31
    iput-object v0, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapServerMsgHandler:Landroid/os/Handler;

    .line 32
    iput-object v0, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapServiceHandler:Landroid/os/Handler;

    .line 35
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->buffer:[B

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mShutdown:Z

    .line 39
    iput-object p1, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapServerMsgHandler:Landroid/os/Handler;

    .line 40
    iput-object p2, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapServiceHandler:Landroid/os/Handler;

    .line 38
    return-void
.end method

.method private notifyShutdown()V
    .locals 2

    .prologue
    .line 108
    const-string/jumbo v0, "SapRilReceiver"

    const-string/jumbo v1, "notifyShutdown()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    monitor-enter p0

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSocket:Landroid/net/LocalSocket;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapRilReceiver;->sendShutdownMessage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 107
    return-void

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private openRilBtSocket()Landroid/net/LocalSocket;
    .locals 11

    .prologue
    const/16 v10, 0x8

    .line 49
    const/4 v4, 0x0

    .line 50
    .local v4, "retryCount":I
    const/4 v5, 0x0

    .line 52
    :goto_0
    iget-boolean v7, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mShutdown:Z

    if-nez v7, :cond_0

    .line 56
    :try_start_0
    new-instance v6, Landroid/net/LocalSocket;

    invoke-direct {v6}, Landroid/net/LocalSocket;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .local v6, "rilSocket":Landroid/net/LocalSocket;
    :try_start_1
    new-instance v0, Landroid/net/LocalSocketAddress;

    const-string/jumbo v7, "sap_uim_socket1"

    .line 58
    sget-object v8, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    .line 57
    invoke-direct {v0, v7, v8}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 59
    .local v0, "address":Landroid/net/LocalSocketAddress;
    invoke-virtual {v6, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v5, v6

    .line 93
    .end local v0    # "address":Landroid/net/LocalSocketAddress;
    .end local v6    # "rilSocket":Landroid/net/LocalSocket;
    :cond_0
    iget-boolean v7, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mShutdown:Z

    if-eqz v7, :cond_1

    .line 94
    const-string/jumbo v7, "SapRilReceiver"

    const-string/jumbo v8, "Shutdown received before RIL socket was opened."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_1
    return-object v5

    .line 61
    :catch_0
    move-exception v2

    .line 63
    .local v2, "ex":Ljava/io/IOException;
    :goto_1
    if-eqz v5, :cond_2

    .line 64
    :try_start_2
    invoke-virtual {v5}, Landroid/net/LocalSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 72
    :cond_2
    :goto_2
    if-ne v4, v10, :cond_4

    .line 73
    const-string/jumbo v7, "SapRilReceiver"

    .line 74
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Couldn\'t find \'sap_uim_socket1\' socket after "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 76
    const-string/jumbo v9, " times, continuing to retry silently"

    .line 74
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 73
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_3
    :goto_3
    const-wide/16 v8, 0xfa0

    :try_start_3
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2

    .line 89
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 66
    :catch_1
    move-exception v3

    .local v3, "ex2":Ljava/io/IOException;
    goto :goto_2

    .line 77
    .end local v3    # "ex2":Ljava/io/IOException;
    :cond_4
    if-lez v4, :cond_3

    if-ge v4, v10, :cond_3

    .line 78
    const-string/jumbo v7, "SapRilReceiver"

    .line 79
    const-string/jumbo v8, "Couldn\'t find \'sap_uim_socket1\' socket; retrying after timeout"

    .line 78
    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const-string/jumbo v7, "SapRilReceiver"

    invoke-static {v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 86
    :catch_2
    move-exception v1

    .local v1, "er":Ljava/lang/InterruptedException;
    goto :goto_4

    .line 61
    .end local v1    # "er":Ljava/lang/InterruptedException;
    .end local v2    # "ex":Ljava/io/IOException;
    .restart local v6    # "rilSocket":Landroid/net/LocalSocket;
    :catch_3
    move-exception v2

    .restart local v2    # "ex":Ljava/io/IOException;
    move-object v5, v6

    .end local v6    # "rilSocket":Landroid/net/LocalSocket;
    .local v5, "rilSocket":Landroid/net/LocalSocket;
    goto :goto_1
.end method

.method private static readMessage(Ljava/io/InputStream;[B)I
    .locals 8
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    const/4 v4, 0x0

    .line 161
    const/4 v2, 0x0

    .line 162
    .local v2, "offset":I
    const/4 v3, 0x4

    .line 164
    .local v3, "remaining":I
    :cond_0
    invoke-virtual {p0, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 166
    .local v0, "countRead":I
    if-gez v0, :cond_1

    .line 167
    const-string/jumbo v4, "SapRilReceiver"

    const-string/jumbo v5, "Hit EOS reading message length"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    return v7

    .line 171
    :cond_1
    add-int/2addr v2, v0

    .line 172
    sub-int/2addr v3, v0

    .line 173
    if-gtz v3, :cond_0

    .line 175
    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    .line 176
    const/4 v5, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    .line 175
    or-int/2addr v4, v5

    .line 177
    const/4 v5, 0x2

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    .line 175
    or-int/2addr v4, v5

    .line 178
    const/4 v5, 0x3

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    .line 175
    or-int v1, v4, v5

    .line 179
    .local v1, "messageLength":I
    const-string/jumbo v4, "SapRilReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Message length found to be: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const/4 v2, 0x0

    .line 182
    move v3, v1

    .line 184
    :cond_2
    invoke-virtual {p0, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 186
    if-gez v0, :cond_3

    .line 187
    const-string/jumbo v4, "SapRilReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Hit EOS reading message.  messageLength="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 188
    const-string/jumbo v6, " remaining="

    .line 187
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    return v7

    .line 192
    :cond_3
    add-int/2addr v2, v0

    .line 193
    sub-int/2addr v3, v0

    .line 194
    if-gtz v3, :cond_2

    .line 196
    return v1
.end method

.method private sendClientMessage(Lcom/android/bluetooth/sap/SapMessage;)V
    .locals 3
    .param p1, "sapMsg"    # Lcom/android/bluetooth/sap/SapMessage;

    .prologue
    .line 275
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapServerMsgHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 276
    .local v0, "newMsg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapServerMsgHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 274
    return-void
.end method

.method private sendRilConnectMessage()V
    .locals 2

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapServerMsgHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapServerMsgHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 264
    :cond_0
    return-void
.end method

.method private sendRilIndMessage(Lcom/android/bluetooth/sap/SapMessage;)V
    .locals 3
    .param p1, "sapMsg"    # Lcom/android/bluetooth/sap/SapMessage;

    .prologue
    .line 293
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapServerMsgHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 294
    .local v0, "newMsg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapServerMsgHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 292
    return-void
.end method

.method private sendShutdownMessage()V
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapServerMsgHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapServerMsgHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 282
    :cond_0
    return-void
.end method


# virtual methods
.method public getRilBtOutStream()Lcom/google/protobuf/micro/CodedOutputStreamMicro;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mRilBtOutStream:Lcom/google/protobuf/micro/CodedOutputStreamMicro;

    return-object v0
.end method

.method public run()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    .line 207
    const/4 v1, 0x0

    .line 208
    .local v1, "length":I
    const/4 v5, 0x0

    :try_start_0
    iput-boolean v5, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mShutdown:Z

    .line 209
    sget-boolean v5, Lcom/android/bluetooth/sap/SapRilReceiver;->VERBOSE:Z

    if-eqz v5, :cond_0

    const-string/jumbo v5, "SapRilReceiver"

    const-string/jumbo v6, "Starting RilBtReceiverThread..."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapRilReceiver;->openRilBtSocket()Landroid/net/LocalSocket;

    move-result-object v5

    iput-object v5, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSocket:Landroid/net/LocalSocket;

    .line 212
    iget-object v5, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v5}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    iput-object v5, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mRilBtInStream:Ljava/io/InputStream;

    .line 213
    iget-object v5, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v5}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-static {v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->newInstance(Ljava/io/OutputStream;)Lcom/google/protobuf/micro/CodedOutputStreamMicro;

    move-result-object v5

    iput-object v5, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mRilBtOutStream:Lcom/google/protobuf/micro/CodedOutputStreamMicro;

    .line 216
    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapRilReceiver;->sendRilConnectMessage()V

    .line 220
    :cond_1
    :goto_0
    const/4 v4, 0x0

    .line 223
    .local v4, "sapMsg":Lcom/android/bluetooth/sap/SapMessage;
    sget-boolean v5, Lcom/android/bluetooth/sap/SapRilReceiver;->VERBOSE:Z

    if-eqz v5, :cond_2

    const-string/jumbo v5, "SapRilReceiver"

    const-string/jumbo v6, "Waiting for incoming message..."

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_2
    iget-object v5, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mRilBtInStream:Ljava/io/InputStream;

    iget-object v6, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->buffer:[B

    invoke-static {v5, v6}, Lcom/android/bluetooth/sap/SapRilReceiver;->readMessage(Ljava/io/InputStream;[B)I

    move-result v1

    .line 226
    iget-object v5, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapServiceHandler:Landroid/os/Handler;

    invoke-static {v5}, Lcom/android/bluetooth/sap/SapService;->notifyUpdateWakeLock(Landroid/os/Handler;)V

    .line 228
    if-ne v1, v7, :cond_3

    .line 229
    const-string/jumbo v5, "SapRilReceiver"

    const-string/jumbo v6, "EOF reached - closing down."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    const-string/jumbo v5, "SapRilReceiver"

    const-string/jumbo v6, "Disconnected from \'sap_uim_socket1\' socket"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    .end local v4    # "sapMsg":Lcom/android/bluetooth/sap/SapMessage;
    :goto_1
    return-void

    .line 234
    .restart local v4    # "sapMsg":Lcom/android/bluetooth/sap/SapMessage;
    :cond_3
    :try_start_1
    iget-object v5, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->buffer:[B

    const/4 v6, 0x0

    invoke-static {v5, v6, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->newInstance([BII)Lcom/google/protobuf/micro/CodedInputStreamMicro;

    move-result-object v2

    .line 236
    .local v2, "msgStream":Lcom/google/protobuf/micro/CodedInputStreamMicro;
    invoke-static {v2}, Lorg/android/btsap/SapApi$MsgHeader;->parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/android/btsap/SapApi$MsgHeader;

    move-result-object v3

    .line 238
    .local v3, "rilMsg":Lorg/android/btsap/SapApi$MsgHeader;
    sget-boolean v5, Lcom/android/bluetooth/sap/SapRilReceiver;->VERBOSE:Z

    if-eqz v5, :cond_4

    const-string/jumbo v5, "SapRilReceiver"

    const-string/jumbo v6, "Message received."

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_4
    invoke-static {v3}, Lcom/android/bluetooth/sap/SapMessage;->newInstance(Lorg/android/btsap/SapApi$MsgHeader;)Lcom/android/bluetooth/sap/SapMessage;

    move-result-object v4

    .line 242
    .local v4, "sapMsg":Lcom/android/bluetooth/sap/SapMessage;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/android/bluetooth/sap/SapMessage;->getMsgType()I

    move-result v5

    if-eq v5, v7, :cond_1

    .line 244
    invoke-virtual {v4}, Lcom/android/bluetooth/sap/SapMessage;->getMsgType()I

    move-result v5

    const/16 v6, 0x100

    if-ge v5, v6, :cond_5

    .line 245
    invoke-direct {p0, v4}, Lcom/android/bluetooth/sap/SapRilReceiver;->sendClientMessage(Lcom/android/bluetooth/sap/SapMessage;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 252
    .end local v2    # "msgStream":Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .end local v3    # "rilMsg":Lorg/android/btsap/SapApi$MsgHeader;
    .end local v4    # "sapMsg":Lcom/android/bluetooth/sap/SapMessage;
    :catch_0
    move-exception v0

    .line 253
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapRilReceiver;->notifyShutdown()V

    .line 254
    const-string/jumbo v5, "SapRilReceiver"

    const-string/jumbo v6, "\'sap_uim_socket1\' socket inputStream closed"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 257
    const-string/jumbo v5, "SapRilReceiver"

    const-string/jumbo v6, "Disconnected from \'sap_uim_socket1\' socket"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 247
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "msgStream":Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .restart local v3    # "rilMsg":Lorg/android/btsap/SapApi$MsgHeader;
    .restart local v4    # "sapMsg":Lcom/android/bluetooth/sap/SapMessage;
    :cond_5
    :try_start_3
    invoke-direct {p0, v4}, Lcom/android/bluetooth/sap/SapRilReceiver;->sendRilIndMessage(Lcom/android/bluetooth/sap/SapMessage;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 256
    .end local v2    # "msgStream":Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .end local v3    # "rilMsg":Lorg/android/btsap/SapApi$MsgHeader;
    .end local v4    # "sapMsg":Lcom/android/bluetooth/sap/SapMessage;
    :catchall_0
    move-exception v5

    .line 257
    const-string/jumbo v6, "SapRilReceiver"

    const-string/jumbo v7, "Disconnected from \'sap_uim_socket1\' socket"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    throw v5
.end method

.method public shutdown()V
    .locals 4

    .prologue
    .line 120
    const-string/jumbo v2, "SapRilReceiver"

    const-string/jumbo v3, "shutdown()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    monitor-enter p0

    .line 128
    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSocket:Landroid/net/LocalSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 130
    :try_start_1
    iget-object v2, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->shutdownOutput()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->shutdownInput()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 136
    :goto_1
    :try_start_3
    iget-object v2, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 140
    const/4 v2, 0x0

    :try_start_4
    iput-object v2, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSocket:Landroid/net/LocalSocket;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_0
    :goto_2
    monitor-exit p0

    .line 144
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mShutdown:Z

    .line 119
    return-void

    .line 137
    :catch_0
    move-exception v1

    .line 138
    .local v1, "ex":Ljava/io/IOException;
    :try_start_5
    const-string/jumbo v2, "SapRilReceiver"

    const-string/jumbo v3, "Uncaught exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 140
    const/4 v2, 0x0

    :try_start_6
    iput-object v2, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSocket:Landroid/net/LocalSocket;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 127
    .end local v1    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 139
    :catchall_1
    move-exception v2

    .line 140
    const/4 v3, 0x0

    :try_start_7
    iput-object v3, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSocket:Landroid/net/LocalSocket;

    .line 139
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 134
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto :goto_1

    .line 131
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_0
.end method
