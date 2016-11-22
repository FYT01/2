.class public Lcom/android/bluetooth/pbap/BluetoothPbapService;
.super Landroid/app/Service;
.source "BluetoothPbapService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;,
        Lcom/android/bluetooth/pbap/BluetoothPbapService$1;,
        Lcom/android/bluetooth/pbap/BluetoothPbapService$2;
    }
.end annotation


# static fields
.field private static final ACCESS_AUTHORITY_CLASS:Ljava/lang/String; = "com.android.settings.bluetooth.BluetoothPermissionRequest"

.field private static final ACCESS_AUTHORITY_PACKAGE:Ljava/lang/String; = "com.android.settings"

.field public static final AUTH_CANCELLED_ACTION:Ljava/lang/String; = "com.android.bluetooth.pbap.authcancelled"

.field public static final AUTH_CHALL_ACTION:Ljava/lang/String; = "com.android.bluetooth.pbap.authchall"

.field public static final AUTH_RESPONSE_ACTION:Ljava/lang/String; = "com.android.bluetooth.pbap.authresponse"

.field private static final AUTH_TIMEOUT:I = 0x3

.field private static final BLUETOOTH_ADMIN_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH_ADMIN"

.field private static final BLUETOOTH_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH"

.field public static final DEBUG:Z = true

.field public static final EXTRA_SESSION_KEY:Ljava/lang/String; = "com.android.bluetooth.pbap.sessionkey"

.field public static final LOG_TAG:Ljava/lang/String; = "BluetoothPbap"

.field public static final MSG_ACQUIRE_WAKE_LOCK:I = 0x138c

.field public static final MSG_OBEX_AUTH_CHALL:I = 0x138b

.field public static final MSG_RELEASE_WAKE_LOCK:I = 0x138d

.field public static final MSG_SERVERSESSION_CLOSE:I = 0x1388

.field public static final MSG_SESSION_DISCONNECTED:I = 0x138a

.field public static final MSG_SESSION_ESTABLISHED:I = 0x1389

.field private static final NOTIFICATION_ID_ACCESS:I = -0xf4241

.field private static final NOTIFICATION_ID_AUTH:I = -0xf4242

.field private static final RELEASE_WAKE_LOCK_DELAY:I = 0x2710

.field private static final START_LISTENER:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BluetoothPbapService"

.field public static final THIS_PACKAGE_NAME:Ljava/lang/String; = "com.android.bluetooth"

.field public static final USER_CONFIRM_TIMEOUT_ACTION:Ljava/lang/String; = "com.android.bluetooth.pbap.userconfirmtimeout"

.field private static final USER_CONFIRM_TIMEOUT_VALUE:I = 0x7530

.field private static final USER_TIMEOUT:I = 0x2

.field public static VERBOSE:Z

.field private static sLocalPhoneName:Ljava/lang/String;

.field private static sLocalPhoneNum:Ljava/lang/String;

.field private static sRemoteDeviceName:Ljava/lang/String;


# instance fields
.field private mAcceptThread:Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;

.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mAuth:Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;

.field private final mBinder:Landroid/bluetooth/IBluetoothPbap$Stub;

.field private mConnSocket:Landroid/bluetooth/BluetoothSocket;

.field private mHasStarted:Z

.field private volatile mInterrupted:Z

.field private mIsWaitingAuthorization:Z

.field private mPbapServer:Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;

.field private mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

.field private mServerSession:Ljavax/obex/ServerSession;

.field private mServerSocket:Landroid/bluetooth/BluetoothServerSocket;

.field private final mSessionStatusHandler:Landroid/os/Handler;

.field private mStartId:I

.field private mState:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static synthetic -get0(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/bluetooth/BluetoothSocket;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/bluetooth/BluetoothDevice;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Ljavax/obex/ServerSession;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mServerSession:Ljavax/obex/ServerSession;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/bluetooth/BluetoothServerSocket;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mSessionStatusHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/bluetooth/pbap/BluetoothPbapService;)I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mState:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic -get8()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->sRemoteDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/bluetooth/pbap/BluetoothPbapService;Landroid/bluetooth/BluetoothSocket;)Landroid/bluetooth/BluetoothSocket;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/bluetooth/pbap/BluetoothPbapService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mIsWaitingAuthorization:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/bluetooth/pbap/BluetoothPbapService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/bluetooth/pbap/BluetoothPbapService;Ljavax/obex/ServerSession;)Ljavax/obex/ServerSession;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mServerSession:Ljavax/obex/ServerSession;

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/bluetooth/pbap/BluetoothPbapService;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p1
.end method

.method static synthetic -set5(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->sRemoteDeviceName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic -wrap0(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->initSocket()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->closeConnectionSocket()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->closeService()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/bluetooth/pbap/BluetoothPbapService;Ljava/lang/String;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->createPbapNotification(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->notifyAuthCancelled()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/bluetooth/pbap/BluetoothPbapService;I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->removePbapNotification(I)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/bluetooth/pbap/BluetoothPbapService;II)V
    .locals 0
    .param p1, "state"    # I
    .param p2, "result"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->setState(II)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->startObexServerSession()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->startRfcommSocketListener()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->stopObexServerSession()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 84
    const-string/jumbo v0, "BluetoothPbap"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->VERBOSE:Z

    .line 169
    sput-object v2, Lcom/android/bluetooth/pbap/BluetoothPbapService;->sLocalPhoneNum:Ljava/lang/String;

    .line 171
    sput-object v2, Lcom/android/bluetooth/pbap/BluetoothPbapService;->sLocalPhoneName:Ljava/lang/String;

    .line 173
    sput-object v2, Lcom/android/bluetooth/pbap/BluetoothPbapService;->sRemoteDeviceName:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 192
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 151
    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 155
    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAcceptThread:Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;

    .line 157
    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAuth:Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;

    .line 161
    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mServerSession:Ljavax/obex/ServerSession;

    .line 163
    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    .line 165
    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    .line 167
    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    .line 175
    iput-boolean v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mHasStarted:Z

    .line 181
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mStartId:I

    .line 185
    iput-boolean v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mIsWaitingAuthorization:Z

    .line 681
    new-instance v0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;-><init>(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mSessionStatusHandler:Landroid/os/Handler;

    .line 830
    new-instance v0, Lcom/android/bluetooth/pbap/BluetoothPbapService$2;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService$2;-><init>(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mBinder:Landroid/bluetooth/IBluetoothPbap$Stub;

    .line 193
    iput v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mState:I

    .line 192
    return-void
.end method

.method private final declared-synchronized closeConnectionSocket()V
    .locals 4

    .prologue
    monitor-enter p0

    .line 438
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 440
    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->close()V

    .line 441
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    .line 437
    return-void

    .line 442
    :catch_0
    move-exception v0

    .line 443
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    const-string/jumbo v1, "BluetoothPbapService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Close Connection Socket error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private final declared-synchronized closeServerSocket()V
    .locals 4

    .prologue
    monitor-enter p0

    .line 426
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 429
    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothServerSocket;->close()V

    .line 430
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    .line 424
    return-void

    .line 431
    :catch_0
    move-exception v0

    .line 432
    .local v0, "ex":Ljava/io/IOException;
    :try_start_2
    const-string/jumbo v1, "BluetoothPbapService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Close Server Socket error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v0    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private final closeService()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 449
    sget-boolean v1, Lcom/android/bluetooth/pbap/BluetoothPbapService;->VERBOSE:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "BluetoothPbapService"

    const-string/jumbo v2, "Pbap Service closeService in"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mInterrupted:Z

    .line 453
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->closeServerSocket()V

    .line 455
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAcceptThread:Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;

    if-eqz v1, :cond_1

    .line 457
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAcceptThread:Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;

    invoke-virtual {v1}, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->shutdown()V

    .line 458
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAcceptThread:Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;

    invoke-virtual {v1}, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->join()V

    .line 459
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAcceptThread:Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 465
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_2

    .line 466
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 467
    iput-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 470
    :cond_2
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mServerSession:Ljavax/obex/ServerSession;

    if-eqz v1, :cond_3

    .line 471
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mServerSession:Ljavax/obex/ServerSession;

    invoke-virtual {v1}, Ljavax/obex/ServerSession;->close()V

    .line 472
    iput-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mServerSession:Ljavax/obex/ServerSession;

    .line 475
    :cond_3
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->closeConnectionSocket()V

    .line 477
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mHasStarted:Z

    .line 478
    iget v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mStartId:I

    if-eq v1, v5, :cond_5

    iget v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mStartId:I

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->stopSelfResult(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 479
    sget-boolean v1, Lcom/android/bluetooth/pbap/BluetoothPbapService;->VERBOSE:Z

    if-eqz v1, :cond_4

    const-string/jumbo v1, "BluetoothPbapService"

    const-string/jumbo v2, "successfully stopped pbap service"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    :cond_4
    iput v5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mStartId:I

    .line 482
    :cond_5
    sget-boolean v1, Lcom/android/bluetooth/pbap/BluetoothPbapService;->VERBOSE:Z

    if-eqz v1, :cond_6

    const-string/jumbo v1, "BluetoothPbapService"

    const-string/jumbo v2, "Pbap Service closeService out"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :cond_6
    return-void

    .line 460
    :catch_0
    move-exception v0

    .line 461
    .local v0, "ex":Ljava/lang/InterruptedException;
    const-string/jumbo v1, "BluetoothPbapService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mAcceptThread close error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private createPbapNotification(Ljava/lang/String;)V
    .locals 11
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 775
    const-string/jumbo v5, "notification"

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 774
    check-cast v3, Landroid/app/NotificationManager;

    .line 778
    .local v3, "nm":Landroid/app/NotificationManager;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 779
    .local v0, "clickIntent":Landroid/content/Intent;
    const-class v5, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;

    invoke-virtual {v0, p0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 780
    const/high16 v5, 0x10000000

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 781
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 785
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 786
    .local v1, "deleteIntent":Landroid/content/Intent;
    const-class v5, Lcom/android/bluetooth/pbap/BluetoothPbapReceiver;

    invoke-virtual {v1, p0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 788
    const/4 v4, 0x0

    .line 789
    .local v4, "notification":Landroid/app/Notification;
    invoke-static {}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getRemoteDeviceName()Ljava/lang/String;

    move-result-object v2

    .line 791
    .local v2, "name":Ljava/lang/String;
    const-string/jumbo v5, "com.android.bluetooth.pbap.authchall"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 792
    const-string/jumbo v5, "com.android.bluetooth.pbap.authcancelled"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 793
    new-instance v4, Landroid/app/Notification;

    .line 794
    .end local v4    # "notification":Landroid/app/Notification;
    const v5, 0x7f06007c

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 793
    const v8, 0x1080080

    invoke-direct {v4, v8, v5, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 795
    .local v4, "notification":Landroid/app/Notification;
    invoke-virtual {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 796
    const v6, 0x1060070

    .line 795
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    iput v5, v4, Landroid/app/Notification;->color:I

    .line 797
    const v5, 0x7f06007d

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 798
    new-array v6, v10, [Ljava/lang/Object;

    aput-object v2, v6, v9

    const v7, 0x7f06007e

    invoke-virtual {p0, v7, v6}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v9, v0, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 797
    invoke-virtual {v4, p0, v5, v6, v7}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 801
    iget v5, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v5, v5, 0x10

    iput v5, v4, Landroid/app/Notification;->flags:I

    .line 802
    iget v5, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v5, v5, 0x8

    iput v5, v4, Landroid/app/Notification;->flags:I

    .line 803
    iput v10, v4, Landroid/app/Notification;->defaults:I

    .line 804
    invoke-static {p0, v9, v1, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    iput-object v5, v4, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 805
    const v5, -0xf4242

    invoke-virtual {v3, v5, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 772
    .end local v4    # "notification":Landroid/app/Notification;
    :cond_0
    return-void
.end method

.method public static getLocalPhoneName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 820
    sget-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->sLocalPhoneName:Ljava/lang/String;

    return-object v0
.end method

.method public static getLocalPhoneNum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 816
    sget-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->sLocalPhoneNum:Ljava/lang/String;

    return-object v0
.end method

.method public static getRemoteDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 824
    sget-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->sRemoteDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method private final initSocket()Z
    .locals 9

    .prologue
    .line 370
    sget-boolean v6, Lcom/android/bluetooth/pbap/BluetoothPbapService;->VERBOSE:Z

    if-eqz v6, :cond_0

    const-string/jumbo v6, "BluetoothPbapService"

    const-string/jumbo v7, "Pbap Service initSocket"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :cond_0
    const/4 v4, 0x0

    .line 373
    .local v4, "initSocketOK":Z
    const/16 v0, 0xa

    .line 376
    .local v0, "CREATE_RETRY_TIME":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/16 v6, 0xa

    if-ge v3, v6, :cond_1

    iget-boolean v6, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mInterrupted:Z

    if-eqz v6, :cond_4

    .line 409
    :cond_1
    :goto_1
    iget-boolean v6, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mInterrupted:Z

    if-eqz v6, :cond_2

    .line 410
    const/4 v4, 0x0

    .line 412
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->closeServerSocket()V

    .line 415
    :cond_2
    if-eqz v4, :cond_7

    .line 416
    sget-boolean v6, Lcom/android/bluetooth/pbap/BluetoothPbapService;->VERBOSE:Z

    if-eqz v6, :cond_3

    const-string/jumbo v6, "BluetoothPbapService"

    const-string/jumbo v7, "Succeed to create listening socket "

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :cond_3
    :goto_2
    return v4

    .line 377
    :cond_4
    const/4 v4, 0x1

    .line 381
    :try_start_0
    iget-object v6, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 382
    const-string/jumbo v7, "OBEX Phonebook Access Server"

    sget-object v8, Landroid/bluetooth/BluetoothUuid;->PBAP_PSE:Landroid/os/ParcelUuid;

    invoke-virtual {v8}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v8

    .line 381
    invoke-virtual {v6, v7, v8}, Landroid/bluetooth/BluetoothAdapter;->listenUsingEncryptedRfcommWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v6

    iput-object v6, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    :goto_3
    if-nez v4, :cond_1

    .line 390
    iget-object v6, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v6, :cond_1

    .line 391
    iget-object v6, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v5

    .line 392
    .local v5, "state":I
    const/16 v6, 0xb

    if-eq v5, v6, :cond_5

    .line 393
    const/16 v6, 0xc

    if-eq v5, v6, :cond_5

    .line 394
    const-string/jumbo v6, "BluetoothPbapService"

    const-string/jumbo v7, "initServerSocket failed as BT is (being) turned off"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 384
    .end local v5    # "state":I
    :catch_0
    move-exception v1

    .line 385
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v6, "BluetoothPbapService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Error create RfcommServerSocket "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    const/4 v4, 0x0

    goto :goto_3

    .line 398
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v5    # "state":I
    :cond_5
    :try_start_1
    sget-boolean v6, Lcom/android/bluetooth/pbap/BluetoothPbapService;->VERBOSE:Z

    if-eqz v6, :cond_6

    const-string/jumbo v6, "BluetoothPbapService"

    const-string/jumbo v7, "wait 300 ms"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    :cond_6
    const-wide/16 v6, 0x12c

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 376
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 400
    :catch_1
    move-exception v2

    .line 401
    .local v2, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v6, "BluetoothPbapService"

    const-string/jumbo v7, "socketAcceptThread thread was interrupted (3)"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 419
    .end local v2    # "e":Ljava/lang/InterruptedException;
    .end local v5    # "state":I
    :cond_7
    const-string/jumbo v6, "BluetoothPbapService"

    const-string/jumbo v7, "Error to create listening socket after 10 try"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private notifyAuthCancelled()V
    .locals 3

    .prologue
    .line 563
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAuth:Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;

    monitor-enter v1

    .line 564
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAuth:Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;->setCancelled(Z)V

    .line 565
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAuth:Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;

    invoke-virtual {v0}, Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 562
    return-void

    .line 563
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private notifyAuthKeyInput(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 553
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAuth:Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;

    monitor-enter v1

    .line 554
    if-eqz p1, :cond_0

    .line 555
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAuth:Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;->setSessionKey(Ljava/lang/String;)V

    .line 557
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAuth:Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;->setChallenged(Z)V

    .line 558
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAuth:Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;

    invoke-virtual {v0}, Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 552
    return-void

    .line 553
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private parseIntent(Landroid/content/Intent;)V
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 239
    const-string/jumbo v10, "action"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_0

    return-void

    .line 241
    :cond_0
    const-string/jumbo v10, "BluetoothPbapService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "action: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const-string/jumbo v10, "android.bluetooth.adapter.extra.STATE"

    const/high16 v11, -0x80000000

    invoke-virtual {p1, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 244
    .local v8, "state":I
    sget-boolean v10, Lcom/android/bluetooth/pbap/BluetoothPbapService;->VERBOSE:Z

    if-eqz v10, :cond_1

    const-string/jumbo v10, "BluetoothPbapService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "state: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_1
    const/4 v4, 0x1

    .line 247
    .local v4, "removeTimeoutMsg":Z
    const-string/jumbo v10, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 248
    const/16 v10, 0xd

    if-ne v8, v10, :cond_5

    .line 250
    iget-object v10, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mSessionStatusHandler:Landroid/os/Handler;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 252
    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v10, "android.bluetooth.device.action.CONNECTION_ACCESS_CANCEL"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 253
    .local v9, "timeoutIntent":Landroid/content/Intent;
    const-string/jumbo v10, "com.android.settings"

    const-string/jumbo v11, "com.android.settings.bluetooth.BluetoothPermissionRequest"

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 254
    const-string/jumbo v10, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    .line 255
    const/4 v11, 0x2

    .line 254
    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 256
    const-string/jumbo v10, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {p0, v9, v10}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 259
    .end local v9    # "timeoutIntent":Landroid/content/Intent;
    :cond_2
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->closeService()V

    .line 334
    :cond_3
    :goto_0
    if-eqz v4, :cond_4

    .line 335
    iget-object v10, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mSessionStatusHandler:Landroid/os/Handler;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 238
    :cond_4
    return-void

    .line 261
    :cond_5
    const/4 v4, 0x0

    goto :goto_0

    .line 263
    :cond_6
    const-string/jumbo v10, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 264
    iget-boolean v10, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mIsWaitingAuthorization:Z

    .line 263
    if-eqz v10, :cond_9

    .line 265
    const-string/jumbo v10, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 267
    .local v2, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v10, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v10, :cond_7

    if-nez v2, :cond_8

    .line 268
    :cond_7
    const-string/jumbo v10, "BluetoothPbapService"

    const-string/jumbo v11, "Unexpected error!"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    return-void

    .line 272
    :cond_8
    const-string/jumbo v10, "BluetoothPbapService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "ACL disconnected for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v10, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v10, v2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 275
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v10, "android.bluetooth.device.action.CONNECTION_ACCESS_CANCEL"

    invoke-direct {v1, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 276
    .local v1, "cancelIntent":Landroid/content/Intent;
    const-string/jumbo v10, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v1, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 277
    const-string/jumbo v10, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    .line 278
    const/4 v11, 0x2

    .line 277
    invoke-virtual {v1, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 279
    invoke-virtual {p0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->sendBroadcast(Landroid/content/Intent;)V

    .line 280
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mIsWaitingAuthorization:Z

    .line 281
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->stopObexServerSession()V

    goto :goto_0

    .line 283
    .end local v1    # "cancelIntent":Landroid/content/Intent;
    .end local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_9
    const-string/jumbo v10, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 284
    const-string/jumbo v10, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    .line 285
    const/4 v11, 0x2

    .line 284
    invoke-virtual {p1, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 287
    .local v5, "requestType":I
    iget-boolean v10, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mIsWaitingAuthorization:Z

    if-eqz v10, :cond_a

    .line 288
    const/4 v10, 0x2

    if-eq v5, v10, :cond_b

    .line 290
    :cond_a
    return-void

    .line 293
    :cond_b
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mIsWaitingAuthorization:Z

    .line 295
    const-string/jumbo v10, "android.bluetooth.device.extra.CONNECTION_ACCESS_RESULT"

    .line 296
    const/4 v11, 0x2

    .line 295
    invoke-virtual {p1, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 297
    const/4 v11, 0x1

    .line 295
    if-ne v10, v11, :cond_e

    .line 298
    const-string/jumbo v10, "android.bluetooth.device.extra.ALWAYS_ALLOWED"

    const/4 v11, 0x0

    invoke-virtual {p1, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 299
    iget-object v10, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    .line 300
    const/4 v11, 0x1

    .line 299
    invoke-virtual {v10, v11}, Landroid/bluetooth/BluetoothDevice;->setPhonebookAccessPermission(I)Z

    move-result v6

    .line 301
    .local v6, "result":Z
    sget-boolean v10, Lcom/android/bluetooth/pbap/BluetoothPbapService;->VERBOSE:Z

    if-eqz v10, :cond_c

    .line 302
    const-string/jumbo v10, "BluetoothPbapService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "setPhonebookAccessPermission(ACCESS_ALLOWED) result="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    .end local v6    # "result":Z
    :cond_c
    :try_start_0
    iget-object v10, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    if-eqz v10, :cond_d

    .line 307
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->startObexServerSession()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 311
    :catch_0
    move-exception v3

    .line 312
    .local v3, "ex":Ljava/io/IOException;
    const-string/jumbo v10, "BluetoothPbapService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Caught the error: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 309
    .end local v3    # "ex":Ljava/io/IOException;
    :cond_d
    :try_start_1
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->stopObexServerSession()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 315
    :cond_e
    const-string/jumbo v10, "android.bluetooth.device.extra.ALWAYS_ALLOWED"

    const/4 v11, 0x0

    invoke-virtual {p1, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 316
    iget-object v10, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    .line 317
    const/4 v11, 0x2

    .line 316
    invoke-virtual {v10, v11}, Landroid/bluetooth/BluetoothDevice;->setPhonebookAccessPermission(I)Z

    move-result v6

    .line 318
    .restart local v6    # "result":Z
    sget-boolean v10, Lcom/android/bluetooth/pbap/BluetoothPbapService;->VERBOSE:Z

    if-eqz v10, :cond_f

    .line 319
    const-string/jumbo v10, "BluetoothPbapService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "setPhonebookAccessPermission(ACCESS_REJECTED) result="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    .end local v6    # "result":Z
    :cond_f
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->stopObexServerSession()V

    goto/16 :goto_0

    .line 325
    .end local v5    # "requestType":I
    :cond_10
    const-string/jumbo v10, "com.android.bluetooth.pbap.authresponse"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 326
    const-string/jumbo v10, "com.android.bluetooth.pbap.sessionkey"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 327
    .local v7, "sessionkey":Ljava/lang/String;
    invoke-direct {p0, v7}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->notifyAuthKeyInput(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 328
    .end local v7    # "sessionkey":Ljava/lang/String;
    :cond_11
    const-string/jumbo v10, "com.android.bluetooth.pbap.authcancelled"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 329
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->notifyAuthCancelled()V

    goto/16 :goto_0

    .line 331
    :cond_12
    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method private removePbapNotification(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 811
    const-string/jumbo v1, "notification"

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 810
    check-cast v0, Landroid/app/NotificationManager;

    .line 812
    .local v0, "nm":Landroid/app/NotificationManager;
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 809
    return-void
.end method

.method private setState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 750
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->setState(II)V

    .line 749
    return-void
.end method

.method private declared-synchronized setState(II)V
    .locals 6
    .param p1, "state"    # I
    .param p2, "result"    # I

    .prologue
    monitor-enter p0

    .line 754
    :try_start_0
    iget v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mState:I

    if-eq p1, v3, :cond_0

    .line 755
    const-string/jumbo v3, "BluetoothPbapService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Pbap state "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    iget v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mState:I

    .line 758
    .local v1, "prevState":I
    iput p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mState:I

    .line 759
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "android.bluetooth.pbap.intent.action.PBAP_STATE_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 760
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 761
    const-string/jumbo v3, "android.bluetooth.profile.extra.STATE"

    iget v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mState:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 762
    const-string/jumbo v3, "android.bluetooth.device.extra.DEVICE"

    iget-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 763
    const-string/jumbo v3, "android.permission.BLUETOOTH"

    invoke-virtual {p0, v0, v3}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 764
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v2

    .line 765
    .local v2, "s":Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v2, :cond_0

    .line 766
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    .line 767
    iget v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mState:I

    .line 766
    const/4 v5, 0x6

    invoke-virtual {v2, v3, v5, v4, v1}, Lcom/android/bluetooth/btservice/AdapterService;->onProfileConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "prevState":I
    .end local v2    # "s":Lcom/android/bluetooth/btservice/AdapterService;
    :cond_0
    monitor-exit p0

    .line 753
    return-void

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private final startObexServerSession()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x138d

    const/4 v5, 0x0

    .line 486
    sget-boolean v3, Lcom/android/bluetooth/pbap/BluetoothPbapService;->VERBOSE:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "BluetoothPbapService"

    const-string/jumbo v4, "Pbap Service startObexServerSession"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v3, :cond_1

    .line 490
    const-string/jumbo v3, "power"

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 492
    .local v0, "pm":Landroid/os/PowerManager;
    const-string/jumbo v3, "StartingObexPbapTransaction"

    .line 491
    const/4 v4, 0x1

    invoke-virtual {v0, v4, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 493
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 494
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 496
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_1
    const-string/jumbo v3, "phone"

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 497
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_2

    .line 498
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/bluetooth/pbap/BluetoothPbapService;->sLocalPhoneNum:Ljava/lang/String;

    .line 499
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getLine1AlphaTag()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/bluetooth/pbap/BluetoothPbapService;->sLocalPhoneName:Ljava/lang/String;

    .line 500
    sget-object v3, Lcom/android/bluetooth/pbap/BluetoothPbapService;->sLocalPhoneName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 501
    const v3, 0x7f060081

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getString(I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/bluetooth/pbap/BluetoothPbapService;->sLocalPhoneName:Ljava/lang/String;

    .line 505
    :cond_2
    new-instance v3, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;

    iget-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mSessionStatusHandler:Landroid/os/Handler;

    invoke-direct {v3, v4, p0}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mPbapServer:Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;

    .line 506
    monitor-enter p0

    .line 507
    :try_start_0
    new-instance v3, Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;

    iget-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mSessionStatusHandler:Landroid/os/Handler;

    invoke-direct {v3, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;-><init>(Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAuth:Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;

    .line 508
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAuth:Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;->setChallenged(Z)V

    .line 509
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAuth:Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;->setCancelled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 511
    new-instance v2, Lcom/android/bluetooth/BluetoothObexTransport;

    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-direct {v2, v3}, Lcom/android/bluetooth/BluetoothObexTransport;-><init>(Landroid/bluetooth/BluetoothSocket;)V

    .line 512
    .local v2, "transport":Lcom/android/bluetooth/BluetoothObexTransport;
    new-instance v3, Ljavax/obex/ServerSession;

    iget-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mPbapServer:Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;

    iget-object v5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAuth:Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;

    invoke-direct {v3, v2, v4, v5}, Ljavax/obex/ServerSession;-><init>(Ljavax/obex/ObexTransport;Ljavax/obex/ServerRequestHandler;Ljavax/obex/Authenticator;)V

    iput-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mServerSession:Ljavax/obex/ServerSession;

    .line 513
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->setState(I)V

    .line 515
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mSessionStatusHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 516
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mSessionStatusHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mSessionStatusHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 517
    const-wide/16 v6, 0x2710

    .line 516
    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 519
    sget-boolean v3, Lcom/android/bluetooth/pbap/BluetoothPbapService;->VERBOSE:Z

    if-eqz v3, :cond_3

    .line 520
    const-string/jumbo v3, "BluetoothPbapService"

    const-string/jumbo v4, "startObexServerSession() success!"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    :cond_3
    return-void

    .line 506
    .end local v2    # "transport":Lcom/android/bluetooth/BluetoothObexTransport;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private startRfcommSocketListener()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 358
    sget-boolean v0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->VERBOSE:Z

    if-nez v0, :cond_0

    .line 359
    const-string/jumbo v0, "BluetoothPbap"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->VERBOSE:Z

    .line 360
    :cond_0
    sget-boolean v0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->VERBOSE:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "BluetoothPbapService"

    const-string/jumbo v1, "Pbap Service startRfcommSocketListener"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAcceptThread:Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;

    if-nez v0, :cond_2

    .line 363
    new-instance v0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;

    invoke-direct {v0, p0, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;-><init>(Lcom/android/bluetooth/pbap/BluetoothPbapService;Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;)V

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAcceptThread:Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;

    .line 364
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAcceptThread:Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;

    const-string/jumbo v1, "BluetoothPbapAcceptThread"

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->setName(Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAcceptThread:Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;

    invoke-virtual {v0}, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->start()V

    .line 357
    :cond_2
    return-void
.end method

.method private stopObexServerSession()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 525
    sget-boolean v0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BluetoothPbapService"

    const-string/jumbo v1, "Pbap Service stopObexServerSession"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mSessionStatusHandler:Landroid/os/Handler;

    const/16 v1, 0x138c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 528
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mSessionStatusHandler:Landroid/os/Handler;

    const/16 v1, 0x138d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 530
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    .line 531
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 532
    iput-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 535
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mServerSession:Ljavax/obex/ServerSession;

    if-eqz v0, :cond_2

    .line 536
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mServerSession:Ljavax/obex/ServerSession;

    invoke-virtual {v0}, Ljavax/obex/ServerSession;->close()V

    .line 537
    iput-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mServerSession:Ljavax/obex/ServerSession;

    .line 540
    :cond_2
    iput-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAcceptThread:Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;

    .line 542
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->closeConnectionSocket()V

    .line 546
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 547
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->startRfcommSocketListener()V

    .line 549
    :cond_3
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->setState(I)V

    .line 524
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 353
    sget-boolean v0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BluetoothPbapService"

    const-string/jumbo v1, "Pbap Service onBind"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mBinder:Landroid/bluetooth/IBluetoothPbap$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 198
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 199
    sget-boolean v1, Lcom/android/bluetooth/pbap/BluetoothPbapService;->VERBOSE:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "BluetoothPbapService"

    const-string/jumbo v2, "Pbap Service onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mInterrupted:Z

    .line 201
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 204
    iget-boolean v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mHasStarted:Z

    if-nez v1, :cond_2

    .line 205
    iput-boolean v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mHasStarted:Z

    .line 206
    sget-boolean v1, Lcom/android/bluetooth/pbap/BluetoothPbapService;->VERBOSE:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "BluetoothPbapService"

    const-string/jumbo v2, "Starting PBAP service"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_1
    invoke-static {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapConfig;->init(Landroid/content/Context;)V

    .line 208
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    .line 209
    .local v0, "state":I
    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    .line 210
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mSessionStatusHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mSessionStatusHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 197
    .end local v0    # "state":I
    :cond_2
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 341
    sget-boolean v0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BluetoothPbapService"

    const-string/jumbo v1, "Pbap Service onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 344
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->setState(II)V

    .line 345
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->closeService()V

    .line 346
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mSessionStatusHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 347
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mSessionStatusHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 340
    :cond_1
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 220
    iput p3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mStartId:I

    .line 221
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_1

    .line 222
    const-string/jumbo v0, "BluetoothPbapService"

    const-string/jumbo v1, "Stopping BluetoothPbapService: device does not have BT or device is not ready"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->closeService()V

    .line 234
    :cond_0
    :goto_0
    const/4 v0, 0x2

    return v0

    .line 229
    :cond_1
    if-eqz p1, :cond_0

    .line 230
    invoke-direct {p0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->parseIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method
