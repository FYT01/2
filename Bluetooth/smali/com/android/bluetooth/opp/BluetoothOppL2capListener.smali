.class public Lcom/android/bluetooth/opp/BluetoothOppL2capListener;
.super Ljava/lang/Object;
.source "BluetoothOppL2capListener.java"


# static fields
.field private static final CREATE_RETRY_TIME:I = 0xa

.field public static final MSG_INCOMING_BTOPP_CONNECTION:I = 0x64

.field private static final TAG:Ljava/lang/String; = "BluetoothOppL2capListener"

.field private static final V:Z


# instance fields
.field private final mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBtServerSocket:Landroid/bluetooth/BluetoothServerSocket;

.field private mCallback:Landroid/os/Handler;

.field private volatile mInterrupted:Z

.field private mOppSdpHandle:I

.field private mSocketAcceptThread:Ljava/lang/Thread;

.field private mTcpServerSocket:Ljava/net/ServerSocket;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppL2capListener;->V:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/bluetooth/opp/BluetoothOppL2capListener;)Landroid/bluetooth/BluetoothServerSocket;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppL2capListener;->mBtServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/bluetooth/opp/BluetoothOppL2capListener;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppL2capListener;->mCallback:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/bluetooth/opp/BluetoothOppL2capListener;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppL2capListener;->mInterrupted:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/bluetooth/opp/BluetoothOppL2capListener;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/bluetooth/opp/BluetoothOppL2capListener;->mInterrupted:Z

    return p1
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    const-string/jumbo v0, "BluetoothOpp"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppL2capListener;->V:Z

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/bluetooth/BluetoothAdapter;

    .prologue
    const/4 v0, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppL2capListener;->mBtServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    .line 72
    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppL2capListener;->mTcpServerSocket:Ljava/net/ServerSocket;

    .line 74
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/bluetooth/opp/BluetoothOppL2capListener;->mOppSdpHandle:I

    .line 77
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppL2capListener;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 76
    return-void
.end method


# virtual methods
.method public getL2capPsm()I
    .locals 3

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppL2capListener;->mBtServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    if-eqz v0, :cond_0

    .line 194
    const-string/jumbo v0, "BluetoothOppL2capListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "L2CAP psm is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppL2capListener;->mBtServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothServerSocket;->getChannel()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppL2capListener;->mBtServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothServerSocket;->getChannel()I

    move-result v0

    return v0

    .line 197
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public openL2capSocket()Landroid/bluetooth/BluetoothServerSocket;
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 202
    const/4 v3, 0x1

    .line 208
    .local v3, "serverOK":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v5, 0xa

    if-ge v2, v5, :cond_0

    iget-boolean v5, p0, Lcom/android/bluetooth/opp/BluetoothOppL2capListener;->mInterrupted:Z

    if-eqz v5, :cond_3

    .line 240
    :cond_0
    :goto_1
    if-nez v3, :cond_1

    .line 241
    const-string/jumbo v5, "BluetoothOppL2capListener"

    const-string/jumbo v6, "Error start listening after 10 try"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iput-boolean v8, p0, Lcom/android/bluetooth/opp/BluetoothOppL2capListener;->mInterrupted:Z

    .line 244
    :cond_1
    iget-boolean v5, p0, Lcom/android/bluetooth/opp/BluetoothOppL2capListener;->mInterrupted:Z

    if-nez v5, :cond_2

    .line 245
    const-string/jumbo v5, "BluetoothOppL2capListener"

    const-string/jumbo v6, "Accept thread started."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_2
    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppL2capListener;->mBtServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    return-object v5

    .line 210
    :cond_3
    :try_start_0
    sget-boolean v5, Lcom/android/bluetooth/opp/BluetoothOppL2capListener;->V:Z

    if-eqz v5, :cond_4

    const-string/jumbo v5, "BluetoothOppL2capListener"

    const-string/jumbo v6, "Starting l2cap listener...."

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_4
    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppL2capListener;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v6, -0x2

    invoke-virtual {v5, v6}, Landroid/bluetooth/BluetoothAdapter;->listenUsingInsecureL2capOn(I)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v5

    iput-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppL2capListener;->mBtServerSocket:Landroid/bluetooth/BluetoothServerSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :goto_2
    if-nez v3, :cond_0

    .line 219
    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppL2capListener;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v5, :cond_0

    .line 220
    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppL2capListener;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v4

    .line 221
    .local v4, "state":I
    const/16 v5, 0xb

    if-eq v4, v5, :cond_5

    .line 222
    const/16 v5, 0xc

    if-eq v4, v5, :cond_5

    .line 223
    const-string/jumbo v5, "BluetoothOppL2capListener"

    const-string/jumbo v6, "L2cap listener failed as BT is (being) turned off"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 212
    .end local v4    # "state":I
    :catch_0
    move-exception v1

    .line 213
    .local v1, "e1":Ljava/io/IOException;
    const-string/jumbo v5, "BluetoothOppL2capListener"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Error create l2capServerSocket "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const/4 v3, 0x0

    goto :goto_2

    .line 227
    .end local v1    # "e1":Ljava/io/IOException;
    .restart local v4    # "state":I
    :cond_5
    monitor-enter p0

    .line 229
    :try_start_1
    sget-boolean v5, Lcom/android/bluetooth/opp/BluetoothOppL2capListener;->V:Z

    if-eqz v5, :cond_6

    const-string/jumbo v5, "BluetoothOppL2capListener"

    const-string/jumbo v6, "Wait 300 ms"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_6
    const-wide/16 v6, 0x12c

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    monitor-exit p0

    .line 208
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 231
    :catch_1
    move-exception v0

    .line 232
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string/jumbo v5, "BluetoothOppL2capListener"

    const-string/jumbo v6, "socketAcceptThread thread was interrupted (3)"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/bluetooth/opp/BluetoothOppL2capListener;->mInterrupted:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 227
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized start(Landroid/os/Handler;)Z
    .locals 2
    .param p1, "callback"    # Landroid/os/Handler;

    .prologue
    monitor-enter p0

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppL2capListener;->mSocketAcceptThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 83
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppL2capListener;->mCallback:Landroid/os/Handler;

    .line 85
    new-instance v0, Lcom/android/bluetooth/opp/BluetoothOppL2capListener$1;

    const-string/jumbo v1, "BluetoothOppL2capListener"

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppL2capListener$1;-><init>(Lcom/android/bluetooth/opp/BluetoothOppL2capListener;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppL2capListener;->mSocketAcceptThread:Ljava/lang/Thread;

    .line 148
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppL2capListener;->mInterrupted:Z

    .line 150
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppL2capListener;->mSocketAcceptThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    :cond_0
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 4

    .prologue
    monitor-enter p0

    .line 157
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppL2capListener;->mSocketAcceptThread:Ljava/lang/Thread;

    if-eqz v1, :cond_4

    .line 158
    const-string/jumbo v1, "BluetoothOppL2capListener"

    const-string/jumbo v2, "stopping Accept Thread"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/bluetooth/opp/BluetoothOppL2capListener;->mInterrupted:Z

    .line 172
    sget-boolean v1, Lcom/android/bluetooth/opp/BluetoothOppL2capListener;->V:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "BluetoothOppL2capListener"

    const-string/jumbo v2, "close mBtServerSocket"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppL2capListener;->mBtServerSocket:Landroid/bluetooth/BluetoothServerSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 176
    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppL2capListener;->mBtServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothServerSocket;->close()V

    .line 177
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppL2capListener;->mBtServerSocket:Landroid/bluetooth/BluetoothServerSocket;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    :cond_1
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppL2capListener;->mSocketAcceptThread:Ljava/lang/Thread;

    if-eqz v1, :cond_3

    .line 184
    sget-boolean v1, Lcom/android/bluetooth/opp/BluetoothOppL2capListener;->V:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "BluetoothOppL2capListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Interrupting mSocketAcceptThread :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppL2capListener;->mSocketAcceptThread:Ljava/lang/Thread;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_2
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppL2capListener;->mSocketAcceptThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 187
    :cond_3
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppL2capListener;->mSocketAcceptThread:Ljava/lang/Thread;

    .line 188
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppL2capListener;->mCallback:Landroid/os/Handler;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    monitor-exit p0

    .line 156
    return-void

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    const-string/jumbo v1, "BluetoothOppL2capListener"

    const-string/jumbo v2, "Error close mBtServerSocket"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
