.class Lcom/android/bluetooth/opp/TestTcpListener;
.super Ljava/lang/Object;
.source "TestActivity.java"


# static fields
.field private static final ACCEPT_WAIT_TIMEOUT:I = 0x1388

.field private static final D:Z = true

.field public static final DEFAULT_OPP_CHANNEL:I = 0xc

.field public static final MSG_INCOMING_BTOPP_CONNECTION:I = 0x64

.field private static final TAG:Ljava/lang/String; = "BtOppRfcommListener"

.field private static final V:Z


# instance fields
.field private mBtOppRfcommChannel:I

.field private mCallback:Landroid/os/Handler;

.field private volatile mInterrupted:Z

.field private mSocketAcceptThread:Ljava/lang/Thread;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/bluetooth/opp/TestTcpListener;->V:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/bluetooth/opp/TestTcpListener;)I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/opp/TestTcpListener;->mBtOppRfcommChannel:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/bluetooth/opp/TestTcpListener;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/opp/TestTcpListener;->mCallback:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/bluetooth/opp/TestTcpListener;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/opp/TestTcpListener;->mInterrupted:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/bluetooth/opp/TestTcpListener;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/bluetooth/opp/TestTcpListener;->mInterrupted:Z

    return p1
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 358
    const-string/jumbo v0, "BluetoothOpp"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/opp/TestTcpListener;->V:Z

    .line 352
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 375
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/android/bluetooth/opp/TestTcpListener;-><init>(I)V

    .line 374
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "channel"    # I

    .prologue
    .line 378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 372
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/bluetooth/opp/TestTcpListener;->mBtOppRfcommChannel:I

    .line 379
    iput p1, p0, Lcom/android/bluetooth/opp/TestTcpListener;->mBtOppRfcommChannel:I

    .line 378
    return-void
.end method


# virtual methods
.method public declared-synchronized start(Landroid/os/Handler;)Z
    .locals 2
    .param p1, "callback"    # Landroid/os/Handler;

    .prologue
    monitor-enter p0

    .line 383
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/TestTcpListener;->mSocketAcceptThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 384
    iput-object p1, p0, Lcom/android/bluetooth/opp/TestTcpListener;->mCallback:Landroid/os/Handler;

    .line 385
    new-instance v0, Lcom/android/bluetooth/opp/TestTcpListener$1;

    const-string/jumbo v1, "BtOppRfcommListener"

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/opp/TestTcpListener$1;-><init>(Lcom/android/bluetooth/opp/TestTcpListener;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/bluetooth/opp/TestTcpListener;->mSocketAcceptThread:Ljava/lang/Thread;

    .line 429
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/opp/TestTcpListener;->mInterrupted:Z

    .line 430
    iget-object v0, p0, Lcom/android/bluetooth/opp/TestTcpListener;->mSocketAcceptThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 433
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
    .locals 3

    .prologue
    monitor-enter p0

    .line 438
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/opp/TestTcpListener;->mSocketAcceptThread:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    .line 439
    const-string/jumbo v1, "BtOppRfcommListener"

    const-string/jumbo v2, "stopping Connect Thread"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/bluetooth/opp/TestTcpListener;->mInterrupted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 442
    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/opp/TestTcpListener;->mSocketAcceptThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 443
    sget-boolean v1, Lcom/android/bluetooth/opp/TestTcpListener;->V:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "BtOppRfcommListener"

    const-string/jumbo v2, "waiting for thread to terminate"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/opp/TestTcpListener;->mSocketAcceptThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    .line 445
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/opp/TestTcpListener;->mSocketAcceptThread:Ljava/lang/Thread;

    .line 446
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/opp/TestTcpListener;->mCallback:Landroid/os/Handler;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    .line 437
    return-void

    .line 447
    :catch_0
    move-exception v0

    .line 448
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    sget-boolean v1, Lcom/android/bluetooth/opp/TestTcpListener;->V:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "BtOppRfcommListener"

    const-string/jumbo v2, "Interrupted waiting for Accept Thread to join"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
