.class public Lcom/android/bluetooth/ObexServerSockets;
.super Ljava/lang/Object;
.source "ObexServerSockets.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;
    }
.end annotation


# static fields
.field private static final D:Z = true

.field private static final NUMBER_OF_SOCKET_TYPES:I = 0x2

.field private static final STAG:Ljava/lang/String; = "ObexServerSockets"

.field private static volatile sInstanceCounter:I


# instance fields
.field private final TAG:Ljava/lang/String;

.field private volatile mConAccepted:Z

.field private final mConHandler:Lcom/android/bluetooth/IObexConnectionHandler;

.field private final mL2capSocket:Landroid/bluetooth/BluetoothServerSocket;

.field private mL2capThread:Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;

.field private final mRfcommSocket:Landroid/bluetooth/BluetoothServerSocket;

.field private mRfcommThread:Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;


# direct methods
.method static synthetic -get0(Lcom/android/bluetooth/ObexServerSockets;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/ObexServerSockets;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/bluetooth/ObexServerSockets;Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothSocket;)Z
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "conSocket"    # Landroid/bluetooth/BluetoothSocket;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/ObexServerSockets;->onConnect(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothSocket;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/bluetooth/ObexServerSockets;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/ObexServerSockets;->onAcceptFailed()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    sput v0, Lcom/android/bluetooth/ObexServerSockets;->sInstanceCounter:I

    .line 49
    return-void
.end method

.method private constructor <init>(Lcom/android/bluetooth/IObexConnectionHandler;Landroid/bluetooth/BluetoothServerSocket;Landroid/bluetooth/BluetoothServerSocket;)V
    .locals 3
    .param p1, "conHandler"    # Lcom/android/bluetooth/IObexConnectionHandler;
    .param p2, "rfcommSocket"    # Landroid/bluetooth/BluetoothServerSocket;
    .param p3, "l2capSocket"    # Landroid/bluetooth/BluetoothServerSocket;

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object v0, p0, Lcom/android/bluetooth/ObexServerSockets;->mRfcommThread:Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;

    .line 61
    iput-object v0, p0, Lcom/android/bluetooth/ObexServerSockets;->mL2capThread:Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/ObexServerSockets;->mConAccepted:Z

    .line 70
    iput-object p1, p0, Lcom/android/bluetooth/ObexServerSockets;->mConHandler:Lcom/android/bluetooth/IObexConnectionHandler;

    .line 71
    iput-object p2, p0, Lcom/android/bluetooth/ObexServerSockets;->mRfcommSocket:Landroid/bluetooth/BluetoothServerSocket;

    .line 72
    iput-object p3, p0, Lcom/android/bluetooth/ObexServerSockets;->mL2capSocket:Landroid/bluetooth/BluetoothServerSocket;

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ObexServerSockets"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/bluetooth/ObexServerSockets;->sInstanceCounter:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/android/bluetooth/ObexServerSockets;->sInstanceCounter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/ObexServerSockets;->TAG:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public static create(Lcom/android/bluetooth/IObexConnectionHandler;)Lcom/android/bluetooth/ObexServerSockets;
    .locals 1
    .param p0, "validator"    # Lcom/android/bluetooth/IObexConnectionHandler;

    .prologue
    const/4 v0, -0x2

    .line 84
    invoke-static {p0, v0, v0}, Lcom/android/bluetooth/ObexServerSockets;->create(Lcom/android/bluetooth/IObexConnectionHandler;II)Lcom/android/bluetooth/ObexServerSockets;

    move-result-object v0

    return-object v0
.end method

.method private static create(Lcom/android/bluetooth/IObexConnectionHandler;II)Lcom/android/bluetooth/ObexServerSockets;
    .locals 13
    .param p0, "validator"    # Lcom/android/bluetooth/IObexConnectionHandler;
    .param p1, "rfcommChannel"    # I
    .param p2, "l2capPsm"    # I

    .prologue
    .line 103
    const-string/jumbo v10, "ObexServerSockets"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "create(rfcomm = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", l2capPsm = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 105
    .local v1, "bt":Landroid/bluetooth/BluetoothAdapter;
    if-nez v1, :cond_0

    .line 106
    new-instance v10, Ljava/lang/RuntimeException;

    const-string/jumbo v11, "No bluetooth adapter..."

    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 108
    :cond_0
    const/4 v7, 0x0

    .line 109
    .local v7, "rfcommSocket":Landroid/bluetooth/BluetoothServerSocket;
    const/4 v6, 0x0

    .line 110
    .local v6, "l2capSocket":Landroid/bluetooth/BluetoothServerSocket;
    const/4 v5, 0x0

    .line 111
    .local v5, "initSocketOK":Z
    const/16 v0, 0xa

    .line 114
    .local v0, "CREATE_RETRY_TIME":I
    const/4 v4, 0x0

    .end local v6    # "l2capSocket":Landroid/bluetooth/BluetoothServerSocket;
    .end local v7    # "rfcommSocket":Landroid/bluetooth/BluetoothServerSocket;
    .local v4, "i":I
    :goto_0
    const/16 v10, 0xa

    if-ge v4, v10, :cond_3

    .line 115
    const/4 v5, 0x1

    .line 117
    if-nez v7, :cond_1

    .line 118
    :try_start_0
    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothAdapter;->listenUsingRfcommOn(I)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v7

    .line 120
    :cond_1
    if-nez v6, :cond_2

    .line 121
    invoke-virtual {v1, p2}, Landroid/bluetooth/BluetoothAdapter;->listenUsingL2capOn(I)Landroid/bluetooth/BluetoothServerSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 127
    :cond_2
    :goto_1
    if-nez v5, :cond_3

    .line 129
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v9

    .line 130
    .local v9, "state":I
    const/16 v10, 0xb

    if-eq v9, v10, :cond_4

    .line 131
    const/16 v10, 0xc

    if-eq v9, v10, :cond_4

    .line 132
    const-string/jumbo v10, "ObexServerSockets"

    const-string/jumbo v11, "initServerSockets failed as BT is (being) turned off"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    .end local v9    # "state":I
    :cond_3
    if-eqz v5, :cond_5

    .line 147
    const-string/jumbo v10, "ObexServerSockets"

    const-string/jumbo v11, "Succeed to create listening sockets "

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    new-instance v8, Lcom/android/bluetooth/ObexServerSockets;

    invoke-direct {v8, p0, v7, v6}, Lcom/android/bluetooth/ObexServerSockets;-><init>(Lcom/android/bluetooth/IObexConnectionHandler;Landroid/bluetooth/BluetoothServerSocket;Landroid/bluetooth/BluetoothServerSocket;)V

    .line 149
    .local v8, "sockets":Lcom/android/bluetooth/ObexServerSockets;
    invoke-direct {v8}, Lcom/android/bluetooth/ObexServerSockets;->startAccept()V

    .line 150
    return-object v8

    .line 123
    .end local v8    # "sockets":Lcom/android/bluetooth/ObexServerSockets;
    :catch_0
    move-exception v2

    .line 124
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v10, "ObexServerSockets"

    const-string/jumbo v11, "Error create ServerSockets "

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 125
    const/4 v5, 0x0

    goto :goto_1

    .line 136
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v9    # "state":I
    :cond_4
    :try_start_1
    const-string/jumbo v10, "ObexServerSockets"

    const-string/jumbo v11, "waiting 300 ms..."

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const-wide/16 v10, 0x12c

    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 114
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 138
    :catch_1
    move-exception v3

    .line 139
    .local v3, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v10, "ObexServerSockets"

    const-string/jumbo v11, "create() was interrupted"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 152
    .end local v3    # "e":Ljava/lang/InterruptedException;
    .end local v9    # "state":I
    :cond_5
    const-string/jumbo v10, "ObexServerSockets"

    const-string/jumbo v11, "Error to create listening socket after 10 try"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const/4 v10, 0x0

    return-object v10
.end method

.method private declared-synchronized onAcceptFailed()V
    .locals 2

    .prologue
    monitor-enter p0

    .line 224
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/ObexServerSockets;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onAcceptFailed() calling shutdown..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v0, p0, Lcom/android/bluetooth/ObexServerSockets;->mConHandler:Lcom/android/bluetooth/IObexConnectionHandler;

    invoke-interface {v0}, Lcom/android/bluetooth/IObexConnectionHandler;->onAcceptFailed()V

    .line 226
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/ObexServerSockets;->shutdown(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 223
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized onConnect(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothSocket;)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "conSocket"    # Landroid/bluetooth/BluetoothSocket;

    .prologue
    const/4 v3, 0x1

    monitor-enter p0

    .line 210
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/ObexServerSockets;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onConnect() socket: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mConAccepted = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/bluetooth/ObexServerSockets;->mConAccepted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-boolean v0, p0, Lcom/android/bluetooth/ObexServerSockets;->mConAccepted:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/ObexServerSockets;->mConHandler:Lcom/android/bluetooth/IObexConnectionHandler;

    invoke-interface {v0, p1, p2}, Lcom/android/bluetooth/IObexConnectionHandler;->onConnect(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothSocket;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/ObexServerSockets;->mConAccepted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 215
    return v3

    .line 217
    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private startAccept()V
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/bluetooth/ObexServerSockets;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startAccept()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-virtual {p0}, Lcom/android/bluetooth/ObexServerSockets;->prepareForNewConnect()V

    .line 184
    new-instance v0, Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;

    iget-object v1, p0, Lcom/android/bluetooth/ObexServerSockets;->mRfcommSocket:Landroid/bluetooth/BluetoothServerSocket;

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;-><init>(Lcom/android/bluetooth/ObexServerSockets;Landroid/bluetooth/BluetoothServerSocket;)V

    iput-object v0, p0, Lcom/android/bluetooth/ObexServerSockets;->mRfcommThread:Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;

    .line 185
    iget-object v0, p0, Lcom/android/bluetooth/ObexServerSockets;->mRfcommThread:Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;

    invoke-virtual {v0}, Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;->start()V

    .line 187
    new-instance v0, Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;

    iget-object v1, p0, Lcom/android/bluetooth/ObexServerSockets;->mL2capSocket:Landroid/bluetooth/BluetoothServerSocket;

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;-><init>(Lcom/android/bluetooth/ObexServerSockets;Landroid/bluetooth/BluetoothServerSocket;)V

    iput-object v0, p0, Lcom/android/bluetooth/ObexServerSockets;->mL2capThread:Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;

    .line 188
    iget-object v0, p0, Lcom/android/bluetooth/ObexServerSockets;->mL2capThread:Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;

    invoke-virtual {v0}, Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;->start()V

    .line 180
    return-void
.end method


# virtual methods
.method public getL2capPsm()I
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/bluetooth/ObexServerSockets;->mL2capSocket:Landroid/bluetooth/BluetoothServerSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothServerSocket;->getChannel()I

    move-result v0

    return v0
.end method

.method public getRfcommChannel()I
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/bluetooth/ObexServerSockets;->mRfcommSocket:Landroid/bluetooth/BluetoothServerSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothServerSocket;->getChannel()I

    move-result v0

    return v0
.end method

.method public prepareForNewConnect()V
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/bluetooth/ObexServerSockets;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "prepareForNewConnect()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/ObexServerSockets;->mConAccepted:Z

    .line 195
    return-void
.end method

.method public declared-synchronized shutdown(Z)V
    .locals 4
    .param p1, "block"    # Z

    .prologue
    monitor-enter p0

    .line 235
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/ObexServerSockets;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "shutdown(block = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v1, p0, Lcom/android/bluetooth/ObexServerSockets;->mRfcommThread:Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;

    if-eqz v1, :cond_0

    .line 237
    iget-object v1, p0, Lcom/android/bluetooth/ObexServerSockets;->mRfcommThread:Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;

    invoke-virtual {v1}, Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;->shutdown()V

    .line 239
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/ObexServerSockets;->mL2capThread:Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;

    if-eqz v1, :cond_1

    .line 240
    iget-object v1, p0, Lcom/android/bluetooth/ObexServerSockets;->mL2capThread:Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;

    invoke-virtual {v1}, Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;->shutdown()V

    .line 242
    :cond_1
    if-eqz p1, :cond_5

    .line 243
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/bluetooth/ObexServerSockets;->mRfcommThread:Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/bluetooth/ObexServerSockets;->mL2capThread:Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_6

    .line 245
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/ObexServerSockets;->mRfcommThread:Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;

    if-eqz v1, :cond_4

    .line 246
    iget-object v1, p0, Lcom/android/bluetooth/ObexServerSockets;->mRfcommThread:Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;

    invoke-virtual {v1}, Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;->join()V

    .line 247
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/ObexServerSockets;->mRfcommThread:Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;

    .line 249
    :cond_4
    iget-object v1, p0, Lcom/android/bluetooth/ObexServerSockets;->mL2capThread:Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;

    if-eqz v1, :cond_2

    .line 250
    iget-object v1, p0, Lcom/android/bluetooth/ObexServerSockets;->mL2capThread:Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;

    invoke-virtual {v1}, Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;->join()V

    .line 251
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/ObexServerSockets;->mL2capThread:Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 253
    :catch_0
    move-exception v0

    .line 254
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    iget-object v1, p0, Lcom/android/bluetooth/ObexServerSockets;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "shutdown() interrupted, continue waiting..."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 258
    :cond_5
    const/4 v1, 0x0

    :try_start_3
    iput-object v1, p0, Lcom/android/bluetooth/ObexServerSockets;->mRfcommThread:Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;

    .line 259
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/ObexServerSockets;->mL2capThread:Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_6
    monitor-exit p0

    .line 234
    return-void
.end method
