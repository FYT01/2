.class public Lcom/android/bluetooth/sap/SapService;
.super Lcom/android/bluetooth/btservice/ProfileService;
.source "SapService.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x5
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;,
        Lcom/android/bluetooth/sap/SapService$SapServiceMessageHandler;,
        Lcom/android/bluetooth/sap/SapService$SapBroadcastReceiver;,
        Lcom/android/bluetooth/sap/SapService$SapBinder;
    }
.end annotation


# static fields
.field private static final ACCESS_AUTHORITY_CLASS:Ljava/lang/String; = "com.android.settings.bluetooth.BluetoothPermissionRequest"

.field private static final ACCESS_AUTHORITY_PACKAGE:Ljava/lang/String; = "com.android.settings"

.field public static DEBUG:Z = false

.field public static final LOG_TAG:Ljava/lang/String; = "BluetoothSap"

.field public static final MSG_ACQUIRE_WAKE_LOCK:I = 0x138d

.field public static final MSG_CHANGE_STATE:I = 0x138f

.field public static final MSG_RELEASE_WAKE_LOCK:I = 0x138e

.field public static final MSG_SERVERSESSION_CLOSE:I = 0x1388

.field public static final MSG_SESSION_DISCONNECTED:I = 0x138a

.field public static final MSG_SESSION_ESTABLISHED:I = 0x1389

.field private static final RELEASE_WAKE_LOCK_DELAY:I = 0x3e8

.field private static final SAP_UUIDS:[Landroid/os/ParcelUuid;

.field private static final SDP_SAP_SERVICE_NAME:Ljava/lang/String; = "SIM Access"

.field private static final SDP_SAP_VERSION:I = 0x102

.field private static final SHUTDOWN:I = 0x3

.field private static final START_LISTENER:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SapService"

.field public static final USER_CONFIRM_TIMEOUT_ACTION:Ljava/lang/String; = "com.android.bluetooth.sap.USER_CONFIRM_TIMEOUT"

.field private static final USER_CONFIRM_TIMEOUT_VALUE:I = 0x7530

.field private static final USER_TIMEOUT:I = 0x2

.field public static VERBOSE:Z

.field private static sRemoteDeviceName:Ljava/lang/String;


# instance fields
.field private mAcceptThread:Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;

.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mConnSocket:Landroid/bluetooth/BluetoothSocket;

.field private volatile mInterrupted:Z

.field private mIsRegistered:Z

.field private mIsWaitingAuthorization:Z

.field private mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

.field private mRemoveTimeoutMsg:Z

.field private mSapReceiver:Lcom/android/bluetooth/sap/SapService$SapBroadcastReceiver;

.field private mSapServer:Lcom/android/bluetooth/sap/SapServer;

.field private mSdpHandle:I

.field private mServerSocket:Landroid/bluetooth/BluetoothServerSocket;

.field private mSessionStatusHandler:Lcom/android/bluetooth/sap/SapService$SapServiceMessageHandler;

.field private mState:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static synthetic -get0(Lcom/android/bluetooth/sap/SapService;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/sap/SapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/bluetooth/sap/SapService;)Landroid/bluetooth/BluetoothSocket;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/sap/SapService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/bluetooth/sap/SapService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/sap/SapService;->mIsWaitingAuthorization:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/bluetooth/sap/SapService;)Landroid/bluetooth/BluetoothDevice;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/sap/SapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/bluetooth/sap/SapService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/sap/SapService;->mRemoveTimeoutMsg:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/bluetooth/sap/SapService;)Landroid/bluetooth/BluetoothServerSocket;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/sap/SapService;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/bluetooth/sap/SapService;)Lcom/android/bluetooth/sap/SapService$SapServiceMessageHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/sap/SapService;->mSessionStatusHandler:Lcom/android/bluetooth/sap/SapService$SapServiceMessageHandler;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/bluetooth/sap/SapService;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/sap/SapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic -get8()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/bluetooth/sap/SapService;->sRemoteDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/bluetooth/sap/SapService;Landroid/bluetooth/BluetoothSocket;)Landroid/bluetooth/BluetoothSocket;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/sap/SapService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/bluetooth/sap/SapService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/bluetooth/sap/SapService;->mIsWaitingAuthorization:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/bluetooth/sap/SapService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/sap/SapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/bluetooth/sap/SapService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/bluetooth/sap/SapService;->mRemoveTimeoutMsg:Z

    return p1
.end method

.method static synthetic -set4(Lcom/android/bluetooth/sap/SapService;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/sap/SapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p1
.end method

.method static synthetic -set5(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/android/bluetooth/sap/SapService;->sRemoteDeviceName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic -wrap0(Lcom/android/bluetooth/sap/SapService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapService;->initSocket()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/bluetooth/sap/SapService;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/bluetooth/sap/SapService;->isAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/bluetooth/sap/SapService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapService;->startSapServerSession()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/bluetooth/sap/SapService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapService;->stopSapServerSession()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/bluetooth/sap/SapService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapService;->cancelUserTimeoutAlarm()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/bluetooth/sap/SapService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapService;->closeService()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/bluetooth/sap/SapService;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/sap/SapService;->sendCancelUserConfirmationIntent(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/bluetooth/sap/SapService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapService;->sendConnectTimeoutMessage()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/bluetooth/sap/SapService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapService;->sendShutdownMessage()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/bluetooth/sap/SapService;I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/sap/SapService;->setState(I)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/bluetooth/sap/SapService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapService;->setUserTimeoutAlarm()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/bluetooth/sap/SapService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapService;->startRfcommSocketListener()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 52
    sput-boolean v2, Lcom/android/bluetooth/sap/SapService;->DEBUG:Z

    .line 53
    const-string/jumbo v0, "BluetoothSap"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/sap/SapService;->VERBOSE:Z

    .line 90
    const/4 v0, 0x0

    sput-object v0, Lcom/android/bluetooth/sap/SapService;->sRemoteDeviceName:Ljava/lang/String;

    .line 107
    new-array v0, v2, [Landroid/os/ParcelUuid;

    .line 108
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->SAP:Landroid/os/ParcelUuid;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 107
    sput-object v0, Lcom/android/bluetooth/sap/SapService;->SAP_UUIDS:[Landroid/os/ParcelUuid;

    .line 46
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 112
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/ProfileService;-><init>()V

    .line 83
    iput-object v1, p0, Lcom/android/bluetooth/sap/SapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 85
    iput-object v1, p0, Lcom/android/bluetooth/sap/SapService;->mAcceptThread:Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;

    .line 86
    iput-object v1, p0, Lcom/android/bluetooth/sap/SapService;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    .line 87
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/bluetooth/sap/SapService;->mSdpHandle:I

    .line 88
    iput-object v1, p0, Lcom/android/bluetooth/sap/SapService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    .line 89
    iput-object v1, p0, Lcom/android/bluetooth/sap/SapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    .line 93
    iput-object v1, p0, Lcom/android/bluetooth/sap/SapService;->mSapServer:Lcom/android/bluetooth/sap/SapServer;

    .line 94
    iput-object v1, p0, Lcom/android/bluetooth/sap/SapService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 95
    iput-boolean v2, p0, Lcom/android/bluetooth/sap/SapService;->mRemoveTimeoutMsg:Z

    .line 97
    iput-boolean v2, p0, Lcom/android/bluetooth/sap/SapService;->mIsWaitingAuthorization:Z

    .line 98
    iput-boolean v2, p0, Lcom/android/bluetooth/sap/SapService;->mIsRegistered:Z

    .line 100
    iput-object v1, p0, Lcom/android/bluetooth/sap/SapService;->mSessionStatusHandler:Lcom/android/bluetooth/sap/SapService$SapServiceMessageHandler;

    .line 769
    new-instance v0, Lcom/android/bluetooth/sap/SapService$SapBroadcastReceiver;

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/sap/SapService$SapBroadcastReceiver;-><init>(Lcom/android/bluetooth/sap/SapService;Lcom/android/bluetooth/sap/SapService$SapBroadcastReceiver;)V

    iput-object v0, p0, Lcom/android/bluetooth/sap/SapService;->mSapReceiver:Lcom/android/bluetooth/sap/SapService$SapBroadcastReceiver;

    .line 113
    iput v2, p0, Lcom/android/bluetooth/sap/SapService;->mState:I

    .line 112
    return-void
.end method

.method private declared-synchronized awaitSapServerSessionStop()V
    .locals 4

    .prologue
    monitor-enter p0

    .line 278
    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/sap/SapService;->mSapServer:Lcom/android/bluetooth/sap/SapServer;

    if-eqz v2, :cond_2

    .line 279
    sget-boolean v2, Lcom/android/bluetooth/sap/SapService;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "SapService"

    const-string/jumbo v3, "Awaiting SapServerSessionStop"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    :cond_0
    const/4 v1, 0x1

    .line 281
    .local v1, "retry":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 282
    const/4 v1, 0x0

    .line 284
    :try_start_1
    iget-object v2, p0, Lcom/android/bluetooth/sap/SapService;->mSapServer:Lcom/android/bluetooth/sap/SapServer;

    invoke-virtual {v2}, Lcom/android/bluetooth/sap/SapServer;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 285
    :catch_0
    move-exception v0

    .line 286
    .local v0, "ex":Ljava/lang/InterruptedException;
    const/4 v1, 0x1

    goto :goto_0

    .line 289
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :cond_1
    const/4 v2, 0x0

    :try_start_2
    iput-object v2, p0, Lcom/android/bluetooth/sap/SapService;->mSapServer:Lcom/android/bluetooth/sap/SapServer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v1    # "retry":Z
    :cond_2
    monitor-exit p0

    .line 274
    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private cancelUserTimeoutAlarm()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 708
    sget-boolean v3, Lcom/android/bluetooth/sap/SapService;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "SapService"

    const-string/jumbo v4, "cancelUserTimeOutAlarm()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.android.bluetooth.sap.USER_CONFIRM_TIMEOUT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 710
    .local v2, "timeoutIntent":Landroid/content/Intent;
    invoke-static {p0, v5, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 711
    .local v1, "sender":Landroid/app/PendingIntent;
    const-string/jumbo v3, "alarm"

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/sap/SapService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 712
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 713
    iput-boolean v5, p0, Lcom/android/bluetooth/sap/SapService;->mRemoveTimeoutMsg:Z

    .line 707
    return-void
.end method

.method private final declared-synchronized closeConnectionSocket()V
    .locals 3

    .prologue
    monitor-enter p0

    .line 216
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 218
    :try_start_1
    sget-boolean v1, Lcom/android/bluetooth/sap/SapService;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SapService"

    const-string/jumbo v2, "Closing conenction socket"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->close()V

    .line 220
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/sap/SapService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    .line 215
    return-void

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    const-string/jumbo v1, "SapService"

    const-string/jumbo v2, "Close Connection Socket error: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
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
    .locals 3

    .prologue
    monitor-enter p0

    .line 203
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapService;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 206
    :try_start_1
    sget-boolean v1, Lcom/android/bluetooth/sap/SapService;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SapService"

    const-string/jumbo v2, "Closing server socket"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapService;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothServerSocket;->close()V

    .line 208
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/sap/SapService;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    .line 201
    return-void

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, "ex":Ljava/io/IOException;
    :try_start_2
    const-string/jumbo v1, "SapService"

    const-string/jumbo v2, "Close Server Socket error: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v0    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private final declared-synchronized closeService()V
    .locals 4

    .prologue
    monitor-enter p0

    .line 228
    :try_start_0
    sget-boolean v2, Lcom/android/bluetooth/sap/SapService;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "SapService"

    const-string/jumbo v3, "SAP Service closeService in"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/bluetooth/sap/SapService;->mInterrupted:Z

    .line 232
    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapService;->closeConnectionSocket()V

    .line 233
    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapService;->closeServerSocket()V

    .line 235
    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapService;->awaitSapServerSessionStop()V

    .line 237
    iget-object v2, p0, Lcom/android/bluetooth/sap/SapService;->mAcceptThread:Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 239
    :try_start_1
    iget-object v2, p0, Lcom/android/bluetooth/sap/SapService;->mAcceptThread:Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;

    invoke-virtual {v2}, Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;->shutdown()V

    .line 240
    iget-object v2, p0, Lcom/android/bluetooth/sap/SapService;->mAcceptThread:Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;

    invoke-virtual {v2}, Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 244
    :goto_0
    const/4 v2, 0x0

    :try_start_2
    iput-object v2, p0, Lcom/android/bluetooth/sap/SapService;->mAcceptThread:Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;

    .line 247
    :cond_1
    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapService;->releaseWakeLockResources()V

    .line 250
    iget-object v2, p0, Lcom/android/bluetooth/sap/SapService;->mSessionStatusHandler:Lcom/android/bluetooth/sap/SapService$SapServiceMessageHandler;

    if-eqz v2, :cond_3

    .line 252
    iget-object v2, p0, Lcom/android/bluetooth/sap/SapService;->mSessionStatusHandler:Lcom/android/bluetooth/sap/SapService$SapServiceMessageHandler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/sap/SapService$SapServiceMessageHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 253
    iget-object v2, p0, Lcom/android/bluetooth/sap/SapService;->mSessionStatusHandler:Lcom/android/bluetooth/sap/SapService$SapServiceMessageHandler;

    invoke-virtual {v2}, Lcom/android/bluetooth/sap/SapService$SapServiceMessageHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 254
    .local v1, "looper":Landroid/os/Looper;
    if-eqz v1, :cond_2

    .line 255
    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 256
    sget-boolean v2, Lcom/android/bluetooth/sap/SapService;->VERBOSE:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "SapService"

    const-string/jumbo v3, "Quit looper"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_2
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/bluetooth/sap/SapService;->mSessionStatusHandler:Lcom/android/bluetooth/sap/SapService$SapServiceMessageHandler;

    .line 259
    sget-boolean v2, Lcom/android/bluetooth/sap/SapService;->VERBOSE:Z

    if-eqz v2, :cond_3

    const-string/jumbo v2, "SapService"

    const-string/jumbo v3, "Remove Handler"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    .end local v1    # "looper":Landroid/os/Looper;
    :cond_3
    sget-boolean v2, Lcom/android/bluetooth/sap/SapService;->VERBOSE:Z

    if-eqz v2, :cond_4

    const-string/jumbo v2, "SapService"

    const-string/jumbo v3, "SAP Service closeService out"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    monitor-exit p0

    .line 227
    return-void

    .line 241
    :catch_0
    move-exception v0

    .line 242
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_3
    const-string/jumbo v2, "SapService"

    const-string/jumbo v3, "mAcceptThread close error"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public static getRemoteDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 547
    sget-object v0, Lcom/android/bluetooth/sap/SapService;->sRemoteDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method private final initSocket()Z
    .locals 11

    .prologue
    .line 144
    sget-boolean v7, Lcom/android/bluetooth/sap/SapService;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string/jumbo v7, "SapService"

    const-string/jumbo v8, "Sap Service initSocket"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_0
    const/4 v4, 0x0

    .line 147
    .local v4, "initSocketOK":Z
    const/16 v0, 0xa

    .line 150
    .local v0, "CREATE_RETRY_TIME":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/16 v7, 0xa

    if-ge v3, v7, :cond_1

    iget-boolean v7, p0, Lcom/android/bluetooth/sap/SapService;->mInterrupted:Z

    if-eqz v7, :cond_3

    .line 192
    :cond_1
    :goto_1
    if-eqz v4, :cond_8

    .line 193
    sget-boolean v7, Lcom/android/bluetooth/sap/SapService;->VERBOSE:Z

    if-eqz v7, :cond_2

    const-string/jumbo v7, "SapService"

    const-string/jumbo v8, "Succeed to create listening socket "

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_2
    :goto_2
    return v4

    .line 151
    :cond_3
    const/4 v4, 0x1

    .line 156
    :try_start_0
    iget-object v7, p0, Lcom/android/bluetooth/sap/SapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 157
    const/4 v8, -0x2

    const/4 v9, 0x1

    const/4 v10, 0x1

    .line 156
    invoke-virtual {v7, v8, v9, v10}, Landroid/bluetooth/BluetoothAdapter;->listenUsingRfcommOn(IZZ)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v7

    iput-object v7, p0, Lcom/android/bluetooth/sap/SapService;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    .line 158
    iget-object v7, p0, Lcom/android/bluetooth/sap/SapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v7, :cond_5

    iget v7, p0, Lcom/android/bluetooth/sap/SapService;->mSdpHandle:I

    if-ltz v7, :cond_5

    .line 159
    invoke-static {}, Lcom/android/bluetooth/sdp/SdpManager;->getDefaultManager()Lcom/android/bluetooth/sdp/SdpManager;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 160
    sget-boolean v7, Lcom/android/bluetooth/sap/SapService;->DEBUG:Z

    if-eqz v7, :cond_4

    const-string/jumbo v7, "SapService"

    const-string/jumbo v8, "Removing SDP record"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_4
    invoke-static {}, Lcom/android/bluetooth/sdp/SdpManager;->getDefaultManager()Lcom/android/bluetooth/sdp/SdpManager;

    move-result-object v7

    iget v8, p0, Lcom/android/bluetooth/sap/SapService;->mSdpHandle:I

    invoke-virtual {v7, v8}, Lcom/android/bluetooth/sdp/SdpManager;->removeSdpRecord(I)Z

    move-result v6

    .line 162
    .local v6, "status":Z
    const-string/jumbo v7, "SapService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "RemoveSDPrecord returns "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const/4 v7, -0x1

    iput v7, p0, Lcom/android/bluetooth/sap/SapService;->mSdpHandle:I

    .line 165
    .end local v6    # "status":Z
    :cond_5
    invoke-static {}, Lcom/android/bluetooth/sdp/SdpManager;->getDefaultManager()Lcom/android/bluetooth/sdp/SdpManager;

    move-result-object v7

    const-string/jumbo v8, "SIM Access"

    .line 166
    iget-object v9, p0, Lcom/android/bluetooth/sap/SapService;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    invoke-virtual {v9}, Landroid/bluetooth/BluetoothServerSocket;->getChannel()I

    move-result v9

    const/16 v10, 0x102

    .line 165
    invoke-virtual {v7, v8, v9, v10}, Lcom/android/bluetooth/sdp/SdpManager;->createSapsRecord(Ljava/lang/String;II)I

    move-result v7

    iput v7, p0, Lcom/android/bluetooth/sap/SapService;->mSdpHandle:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :goto_3
    if-nez v4, :cond_1

    .line 174
    iget-object v7, p0, Lcom/android/bluetooth/sap/SapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v7, :cond_1

    .line 175
    iget-object v7, p0, Lcom/android/bluetooth/sap/SapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v5

    .line 176
    .local v5, "state":I
    const/16 v7, 0xb

    if-eq v5, v7, :cond_6

    .line 177
    const/16 v7, 0xc

    if-eq v5, v7, :cond_6

    .line 178
    const-string/jumbo v7, "SapService"

    const-string/jumbo v8, "initServerSocket failed as BT is (being) turned off"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 167
    .end local v5    # "state":I
    :catch_0
    move-exception v1

    .line 168
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v7, "SapService"

    const-string/jumbo v8, "Error create RfcommServerSocket "

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 169
    const/4 v4, 0x0

    goto :goto_3

    .line 182
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v5    # "state":I
    :cond_6
    :try_start_1
    sget-boolean v7, Lcom/android/bluetooth/sap/SapService;->VERBOSE:Z

    if-eqz v7, :cond_7

    const-string/jumbo v7, "SapService"

    const-string/jumbo v8, "wait 300 ms"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_7
    const-wide/16 v8, 0x12c

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 150
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 184
    :catch_1
    move-exception v2

    .line 185
    .local v2, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v7, "SapService"

    const-string/jumbo v8, "socketAcceptThread thread was interrupted (3)"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 196
    .end local v2    # "e":Ljava/lang/InterruptedException;
    .end local v5    # "state":I
    :cond_8
    const-string/jumbo v7, "SapService"

    const-string/jumbo v8, "Error to create listening socket after 10 try"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method public static notifyUpdateWakeLock(Landroid/os/Handler;)V
    .locals 2
    .param p0, "messageHandler"    # Landroid/os/Handler;

    .prologue
    .line 123
    if-eqz p0, :cond_0

    .line 124
    invoke-static {p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 125
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x138d

    iput v1, v0, Landroid/os/Message;->what:I

    .line 126
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 122
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private declared-synchronized releaseWakeLockResources()V
    .locals 2

    .prologue
    monitor-enter p0

    .line 266
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/sap/SapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/sap/SapService;->mSessionStatusHandler:Lcom/android/bluetooth/sap/SapService$SapServiceMessageHandler;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/android/bluetooth/sap/SapService;->mSessionStatusHandler:Lcom/android/bluetooth/sap/SapService$SapServiceMessageHandler;

    const/16 v1, 0x138d

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/sap/SapService$SapServiceMessageHandler;->removeMessages(I)V

    .line 268
    iget-object v0, p0, Lcom/android/bluetooth/sap/SapService;->mSessionStatusHandler:Lcom/android/bluetooth/sap/SapService$SapServiceMessageHandler;

    const/16 v1, 0x138e

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/sap/SapService$SapServiceMessageHandler;->removeMessages(I)V

    .line 269
    iget-object v0, p0, Lcom/android/bluetooth/sap/SapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 270
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/sap/SapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 265
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private sendCancelUserConfirmationIntent(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 717
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.bluetooth.device.action.CONNECTION_ACCESS_CANCEL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 718
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.android.settings"

    const-string/jumbo v2, "com.android.settings.bluetooth.BluetoothPermissionRequest"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 719
    const-string/jumbo v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 720
    const-string/jumbo v1, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    .line 721
    const/4 v2, 0x4

    .line 720
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 722
    const-string/jumbo v1, "android.permission.BLUETOOTH"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/sap/SapService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 716
    return-void
.end method

.method private sendConnectTimeoutMessage()V
    .locals 3

    .prologue
    .line 762
    sget-boolean v1, Lcom/android/bluetooth/sap/SapService;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SapService"

    const-string/jumbo v2, "sendConnectTimeoutMessage()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapService;->mSessionStatusHandler:Lcom/android/bluetooth/sap/SapService$SapServiceMessageHandler;

    if-eqz v1, :cond_1

    .line 764
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapService;->mSessionStatusHandler:Lcom/android/bluetooth/sap/SapService$SapServiceMessageHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/sap/SapService$SapServiceMessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 765
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 761
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    return-void
.end method

.method private sendShutdownMessage()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 728
    iget-boolean v3, p0, Lcom/android/bluetooth/sap/SapService;->mRemoveTimeoutMsg:Z

    if-eqz v3, :cond_0

    .line 730
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.android.bluetooth.sap.USER_CONFIRM_TIMEOUT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 731
    .local v2, "timeoutIntent":Landroid/content/Intent;
    const-string/jumbo v3, "android.permission.BLUETOOTH"

    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/sap/SapService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 732
    iput-boolean v4, p0, Lcom/android/bluetooth/sap/SapService;->mIsWaitingAuthorization:Z

    .line 733
    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapService;->cancelUserTimeoutAlarm()V

    .line 735
    .end local v2    # "timeoutIntent":Landroid/content/Intent;
    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/sap/SapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/bluetooth/sap/SapService;->mSdpHandle:I

    if-ltz v3, :cond_2

    .line 736
    invoke-static {}, Lcom/android/bluetooth/sdp/SdpManager;->getDefaultManager()Lcom/android/bluetooth/sdp/SdpManager;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 737
    sget-boolean v3, Lcom/android/bluetooth/sap/SapService;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string/jumbo v3, "SapService"

    const-string/jumbo v4, "Removing SDP record"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    :cond_1
    invoke-static {}, Lcom/android/bluetooth/sdp/SdpManager;->getDefaultManager()Lcom/android/bluetooth/sdp/SdpManager;

    move-result-object v3

    iget v4, p0, Lcom/android/bluetooth/sap/SapService;->mSdpHandle:I

    invoke-virtual {v3, v4}, Lcom/android/bluetooth/sdp/SdpManager;->removeSdpRecord(I)Z

    move-result v1

    .line 739
    .local v1, "status":Z
    const-string/jumbo v3, "SapService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "RemoveSDPrecord returns "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/bluetooth/sap/SapService;->mSdpHandle:I

    .line 742
    .end local v1    # "status":Z
    :cond_2
    iget-object v3, p0, Lcom/android/bluetooth/sap/SapService;->mSessionStatusHandler:Lcom/android/bluetooth/sap/SapService$SapServiceMessageHandler;

    if-eqz v3, :cond_6

    .line 743
    iget-object v3, p0, Lcom/android/bluetooth/sap/SapService;->mSessionStatusHandler:Lcom/android/bluetooth/sap/SapService$SapServiceMessageHandler;

    invoke-virtual {v3, v6}, Lcom/android/bluetooth/sap/SapService$SapServiceMessageHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 745
    iget-object v3, p0, Lcom/android/bluetooth/sap/SapService;->mSessionStatusHandler:Lcom/android/bluetooth/sap/SapService$SapServiceMessageHandler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/android/bluetooth/sap/SapService$SapServiceMessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 746
    .local v0, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/bluetooth/sap/SapService;->mSessionStatusHandler:Lcom/android/bluetooth/sap/SapService$SapServiceMessageHandler;

    invoke-virtual {v3, v0}, Lcom/android/bluetooth/sap/SapService$SapServiceMessageHandler;->sendMessage(Landroid/os/Message;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 758
    .end local v0    # "msg":Landroid/os/Message;
    :cond_3
    :goto_0
    sget-boolean v3, Lcom/android/bluetooth/sap/SapService;->VERBOSE:Z

    if-eqz v3, :cond_4

    const-string/jumbo v3, "SapService"

    const-string/jumbo v4, "sendShutdownMessage() Out"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    :cond_4
    return-void

    .line 752
    .restart local v0    # "msg":Landroid/os/Message;
    :cond_5
    sget-boolean v3, Lcom/android/bluetooth/sap/SapService;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string/jumbo v3, "SapService"

    const-string/jumbo v4, "mSessionStatusHandler.sendMessage() dispatched shutdown msg"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 754
    .end local v0    # "msg":Landroid/os/Message;
    :cond_6
    iget-object v3, p0, Lcom/android/bluetooth/sap/SapService;->mSessionStatusHandler:Lcom/android/bluetooth/sap/SapService$SapServiceMessageHandler;

    if-eqz v3, :cond_3

    .line 755
    sget-boolean v3, Lcom/android/bluetooth/sap/SapService;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string/jumbo v3, "SapService"

    const-string/jumbo v4, "mSessionStatusHandler shutdown message already in Queue"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setState(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 506
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/bluetooth/sap/SapService;->setState(IIZ)V

    .line 505
    return-void
.end method

.method private setState(II)V
    .locals 6
    .param p1, "state"    # I
    .param p2, "result"    # I

    .prologue
    .line 520
    iget v3, p0, Lcom/android/bluetooth/sap/SapService;->mState:I

    if-eq p1, v3, :cond_1

    .line 521
    sget-boolean v3, Lcom/android/bluetooth/sap/SapService;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "SapService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Sap state "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/bluetooth/sap/SapService;->mState:I

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

    .line 523
    :cond_0
    iget v1, p0, Lcom/android/bluetooth/sap/SapService;->mState:I

    .line 524
    .local v1, "prevState":I
    iput p1, p0, Lcom/android/bluetooth/sap/SapService;->mState:I

    .line 525
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "android.bluetooth.sap.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 526
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 527
    const-string/jumbo v3, "android.bluetooth.profile.extra.STATE"

    iget v4, p0, Lcom/android/bluetooth/sap/SapService;->mState:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 528
    const-string/jumbo v3, "android.bluetooth.device.extra.DEVICE"

    iget-object v4, p0, Lcom/android/bluetooth/sap/SapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 529
    const-string/jumbo v3, "android.permission.BLUETOOTH"

    invoke-virtual {p0, v0, v3}, Lcom/android/bluetooth/sap/SapService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 530
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v2

    .line 531
    .local v2, "s":Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v2, :cond_1

    .line 532
    iget-object v3, p0, Lcom/android/bluetooth/sap/SapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    .line 533
    iget v4, p0, Lcom/android/bluetooth/sap/SapService;->mState:I

    .line 532
    const/16 v5, 0xa

    invoke-virtual {v2, v3, v5, v4, v1}, Lcom/android/bluetooth/btservice/AdapterService;->onProfileConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;III)V

    .line 519
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "prevState":I
    .end local v2    # "s":Lcom/android/bluetooth/btservice/AdapterService;
    :cond_1
    return-void
.end method

.method private setState(IIZ)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "result"    # I
    .param p3, "force"    # Z

    .prologue
    .line 510
    if-nez p3, :cond_0

    .line 511
    monitor-enter p0

    .line 512
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/sap/SapService;->setState(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 509
    :goto_0
    return-void

    .line 511
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 515
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/sap/SapService;->setState(II)V

    goto :goto_0
.end method

.method private setUserTimeoutAlarm()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 693
    sget-boolean v2, Lcom/android/bluetooth/sap/SapService;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "SapService"

    const-string/jumbo v3, "SetUserTimeOutAlarm()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/sap/SapService;->mAlarmManager:Landroid/app/AlarmManager;

    if-nez v2, :cond_1

    .line 695
    const-string/jumbo v2, "alarm"

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/sap/SapService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    iput-object v2, p0, Lcom/android/bluetooth/sap/SapService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 697
    :cond_1
    iget-boolean v2, p0, Lcom/android/bluetooth/sap/SapService;->mRemoveTimeoutMsg:Z

    if-eqz v2, :cond_2

    .line 698
    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapService;->cancelUserTimeoutAlarm()V

    .line 700
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/bluetooth/sap/SapService;->mRemoveTimeoutMsg:Z

    .line 701
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.android.bluetooth.sap.USER_CONFIRM_TIMEOUT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 702
    .local v1, "timeoutIntent":Landroid/content/Intent;
    invoke-static {p0, v8, v1, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 703
    .local v0, "pIntent":Landroid/app/PendingIntent;
    iget-object v2, p0, Lcom/android/bluetooth/sap/SapService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 704
    const-wide/16 v6, 0x7530

    .line 703
    add-long/2addr v4, v6

    invoke-virtual {v2, v8, v4, v5, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 692
    return-void
.end method

.method private startRfcommSocketListener()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 131
    sget-boolean v0, Lcom/android/bluetooth/sap/SapService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SapService"

    const-string/jumbo v1, "Sap Service startRfcommSocketListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/sap/SapService;->mAcceptThread:Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;

    if-nez v0, :cond_1

    .line 134
    const-string/jumbo v0, "SapService"

    const-string/jumbo v1, "Sap Service startRfcommSocketListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    new-instance v0, Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;

    invoke-direct {v0, p0, v2}, Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;-><init>(Lcom/android/bluetooth/sap/SapService;Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;)V

    iput-object v0, p0, Lcom/android/bluetooth/sap/SapService;->mAcceptThread:Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;

    .line 136
    iget-object v0, p0, Lcom/android/bluetooth/sap/SapService;->mAcceptThread:Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;

    const-string/jumbo v1, "SapAcceptThread"

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;->setName(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/android/bluetooth/sap/SapService;->mAcceptThread:Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;

    invoke-virtual {v0}, Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;->start()V

    .line 130
    :goto_0
    return-void

    .line 139
    :cond_1
    const-string/jumbo v0, "SapService"

    const-string/jumbo v1, "Sap Service Already ON: startRfcommSocketListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private declared-synchronized startSapServerSession()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 294
    :try_start_0
    sget-boolean v1, Lcom/android/bluetooth/sap/SapService;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SapService"

    const-string/jumbo v2, "Sap Service startSapServerSession"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_1

    .line 298
    const-string/jumbo v1, "power"

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/sap/SapService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 300
    .local v0, "pm":Landroid/os/PowerManager;
    const-string/jumbo v1, "StartingSapTransaction"

    .line 299
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/sap/SapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 301
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 302
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 306
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_1
    new-instance v1, Lcom/android/bluetooth/sap/SapServer;

    iget-object v2, p0, Lcom/android/bluetooth/sap/SapService;->mSessionStatusHandler:Lcom/android/bluetooth/sap/SapService$SapServiceMessageHandler;

    iget-object v3, p0, Lcom/android/bluetooth/sap/SapService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/sap/SapService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v1, v2, p0, v3, v4}, Lcom/android/bluetooth/sap/SapServer;-><init>(Landroid/os/Handler;Landroid/content/Context;Ljava/io/InputStream;Ljava/io/OutputStream;)V

    iput-object v1, p0, Lcom/android/bluetooth/sap/SapService;->mSapServer:Lcom/android/bluetooth/sap/SapServer;

    .line 307
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapService;->mSapServer:Lcom/android/bluetooth/sap/SapServer;

    invoke-virtual {v1}, Lcom/android/bluetooth/sap/SapServer;->start()V

    .line 312
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapService;->mSessionStatusHandler:Lcom/android/bluetooth/sap/SapService$SapServiceMessageHandler;

    const/16 v2, 0x138e

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/sap/SapService$SapServiceMessageHandler;->removeMessages(I)V

    .line 313
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapService;->mSessionStatusHandler:Lcom/android/bluetooth/sap/SapService$SapServiceMessageHandler;

    iget-object v2, p0, Lcom/android/bluetooth/sap/SapService;->mSessionStatusHandler:Lcom/android/bluetooth/sap/SapService$SapServiceMessageHandler;

    .line 314
    const/16 v3, 0x138e

    .line 313
    invoke-virtual {v2, v3}, Lcom/android/bluetooth/sap/SapService$SapServiceMessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 314
    const-wide/16 v4, 0x3e8

    .line 313
    invoke-virtual {v1, v2, v4, v5}, Lcom/android/bluetooth/sap/SapService$SapServiceMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 316
    sget-boolean v1, Lcom/android/bluetooth/sap/SapService;->VERBOSE:Z

    if-eqz v1, :cond_2

    .line 317
    const-string/jumbo v1, "SapService"

    const-string/jumbo v2, "startSapServerSession() success!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    .line 293
    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private stopSapServerSession()V
    .locals 2

    .prologue
    .line 325
    sget-boolean v0, Lcom/android/bluetooth/sap/SapService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SapService"

    const-string/jumbo v1, "SAP Service stopSapServerSession"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/sap/SapService;->mAcceptThread:Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;

    .line 328
    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapService;->closeConnectionSocket()V

    .line 329
    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapService;->closeServerSocket()V

    .line 331
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/bluetooth/sap/SapService;->setState(I)V

    .line 333
    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapService;->awaitSapServerSessionStop()V

    .line 338
    iget-object v0, p0, Lcom/android/bluetooth/sap/SapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 339
    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapService;->startRfcommSocketListener()V

    .line 342
    :cond_1
    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapService;->releaseWakeLockResources()V

    .line 321
    return-void
.end method


# virtual methods
.method public cleanup()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 685
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/bluetooth/sap/SapService;->setState(IIZ)V

    .line 688
    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapService;->sendShutdownMessage()V

    .line 689
    return v2
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 551
    const/4 v0, 0x0

    .line 552
    .local v0, "result":Z
    monitor-enter p0

    .line 553
    :try_start_0
    invoke-virtual {p0}, Lcom/android/bluetooth/sap/SapService;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 554
    iget v1, p0, Lcom/android/bluetooth/sap/SapService;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    monitor-exit p0

    .line 566
    return v0

    .line 556
    :pswitch_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapService;->closeConnectionSocket()V

    .line 557
    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 558
    const/4 v3, 0x0

    .line 557
    invoke-direct {p0, v1, v2, v3}, Lcom/android/bluetooth/sap/SapService;->setState(IIZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 559
    const/4 v0, 0x1

    .line 560
    goto :goto_0

    .line 552
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 554
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public getConnectedDevices()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 570
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 571
    .local v0, "devices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    monitor-enter p0

    .line 572
    :try_start_0
    iget v1, p0, Lcom/android/bluetooth/sap/SapService;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/sap/SapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_0

    .line 573
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 576
    return-object v0

    .line 571
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v1, 0x2

    .line 601
    monitor-enter p0

    .line 602
    :try_start_0
    invoke-virtual {p0}, Lcom/android/bluetooth/sap/SapService;->getState()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/bluetooth/sap/SapService;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit p0

    .line 603
    return v1

    .line 605
    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 601
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 8
    .param p1, "states"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 580
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 581
    .local v4, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    iget-object v7, p0, Lcom/android/bluetooth/sap/SapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    .line 583
    .local v0, "bondedDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    monitor-enter p0

    .line 584
    :try_start_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "device$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 585
    .local v2, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v5

    .line 586
    .local v5, "featureUuids":[Landroid/os/ParcelUuid;
    sget-object v7, Lcom/android/bluetooth/sap/SapService;->SAP_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {v5, v7}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 589
    invoke-virtual {p0, v2}, Lcom/android/bluetooth/sap/SapService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    .line 590
    .local v1, "connectionState":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v7, p1

    if-ge v6, v7, :cond_0

    .line 591
    aget v7, p1, v6

    if-ne v1, v7, :cond_1

    .line 592
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 590
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .end local v1    # "connectionState":I
    .end local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v5    # "featureUuids":[Landroid/os/ParcelUuid;
    .end local v6    # "i":I
    :cond_2
    monitor-exit p0

    .line 597
    return-object v4

    .line 583
    .end local v3    # "device$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method public getPriority(Landroid/bluetooth/BluetoothDevice;)I
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 619
    invoke-virtual {p0}, Lcom/android/bluetooth/sap/SapService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 620
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/Settings$Global;->getBluetoothSapPriorityKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 621
    const/4 v3, -0x1

    .line 619
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 622
    .local v0, "priority":I
    return v0
.end method

.method public getRemoteDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 543
    iget-object v0, p0, Lcom/android/bluetooth/sap/SapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 539
    iget v0, p0, Lcom/android/bluetooth/sap/SapService;->mState:I

    return v0
.end method

.method protected initBinder()Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;
    .locals 1

    .prologue
    .line 627
    new-instance v0, Lcom/android/bluetooth/sap/SapService$SapBinder;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/sap/SapService$SapBinder;-><init>(Lcom/android/bluetooth/sap/SapService;)V

    return-object v0
.end method

.method public setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "priority"    # I

    .prologue
    .line 611
    invoke-virtual {p0}, Lcom/android/bluetooth/sap/SapService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 612
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Settings$Global;->getBluetoothSapPriorityKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 611
    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 614
    sget-boolean v0, Lcom/android/bluetooth/sap/SapService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SapService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Saved priority "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected start()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 632
    sget-boolean v4, Lcom/android/bluetooth/sap/SapService;->DEBUG:Z

    if-nez v4, :cond_0

    .line 633
    const-string/jumbo v4, "BluetoothSap"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    sput-boolean v4, Lcom/android/bluetooth/sap/SapService;->DEBUG:Z

    .line 634
    :cond_0
    sget-boolean v4, Lcom/android/bluetooth/sap/SapService;->VERBOSE:Z

    if-nez v4, :cond_1

    .line 635
    const-string/jumbo v4, "BluetoothSap"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    sput-boolean v4, Lcom/android/bluetooth/sap/SapService;->VERBOSE:Z

    .line 636
    :cond_1
    sget-boolean v4, Lcom/android/bluetooth/sap/SapService;->VERBOSE:Z

    if-eqz v4, :cond_2

    const-string/jumbo v4, "SapService"

    const-string/jumbo v5, "start SAPService"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    :cond_2
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 638
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v4, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 639
    const-string/jumbo v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 640
    const-string/jumbo v4, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 641
    const-string/jumbo v4, "com.android.bluetooth.sap.USER_CONFIRM_TIMEOUT"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 644
    :try_start_0
    iget-object v4, p0, Lcom/android/bluetooth/sap/SapService;->mSapReceiver:Lcom/android/bluetooth/sap/SapService$SapBroadcastReceiver;

    invoke-virtual {p0, v4, v1}, Lcom/android/bluetooth/sap/SapService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 645
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/bluetooth/sap/SapService;->mIsRegistered:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 649
    :goto_0
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/bluetooth/sap/SapService;->mInterrupted:Z

    .line 650
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    iput-object v4, p0, Lcom/android/bluetooth/sap/SapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 652
    new-instance v3, Landroid/os/HandlerThread;

    const-string/jumbo v4, "BluetoothSapHandler"

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 653
    .local v3, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 654
    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    .line 655
    .local v2, "looper":Landroid/os/Looper;
    new-instance v4, Lcom/android/bluetooth/sap/SapService$SapServiceMessageHandler;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v2, v5}, Lcom/android/bluetooth/sap/SapService$SapServiceMessageHandler;-><init>(Lcom/android/bluetooth/sap/SapService;Landroid/os/Looper;Lcom/android/bluetooth/sap/SapService$SapServiceMessageHandler;)V

    iput-object v4, p0, Lcom/android/bluetooth/sap/SapService;->mSessionStatusHandler:Lcom/android/bluetooth/sap/SapService$SapServiceMessageHandler;

    .line 656
    iget-object v4, p0, Lcom/android/bluetooth/sap/SapService;->mSessionStatusHandler:Lcom/android/bluetooth/sap/SapService$SapServiceMessageHandler;

    iget-object v5, p0, Lcom/android/bluetooth/sap/SapService;->mSessionStatusHandler:Lcom/android/bluetooth/sap/SapService$SapServiceMessageHandler;

    invoke-virtual {v5, v6}, Lcom/android/bluetooth/sap/SapService$SapServiceMessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/bluetooth/sap/SapService$SapServiceMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 658
    return v6

    .line 646
    .end local v2    # "looper":Landroid/os/Looper;
    .end local v3    # "thread":Landroid/os/HandlerThread;
    :catch_0
    move-exception v0

    .line 647
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "SapService"

    const-string/jumbo v5, "Unable to register sap receiver"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected stop()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 663
    sget-boolean v1, Lcom/android/bluetooth/sap/SapService;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SapService"

    const-string/jumbo v2, "Stoping SAPService"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    :cond_0
    iget-boolean v1, p0, Lcom/android/bluetooth/sap/SapService;->mIsRegistered:Z

    if-nez v1, :cond_1

    .line 666
    const-string/jumbo v1, "SapService"

    const-string/jumbo v2, "Avoid unregister when receiver it is not registered"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    return v3

    .line 670
    :cond_1
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/bluetooth/sap/SapService;->mIsRegistered:Z

    .line 671
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapService;->mSapReceiver:Lcom/android/bluetooth/sap/SapService$SapBroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/sap/SapService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 675
    :goto_0
    const/4 v1, 0x2

    invoke-direct {p0, v4, v1, v3}, Lcom/android/bluetooth/sap/SapService;->setState(IIZ)V

    .line 677
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapService;->mSessionStatusHandler:Lcom/android/bluetooth/sap/SapService$SapServiceMessageHandler;

    if-eqz v1, :cond_2

    .line 678
    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapService;->sendShutdownMessage()V

    .line 680
    :cond_2
    sget-boolean v1, Lcom/android/bluetooth/sap/SapService;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string/jumbo v1, "SapService"

    const-string/jumbo v2, "stop() out"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    :cond_3
    return v3

    .line 672
    :catch_0
    move-exception v0

    .line 673
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "SapService"

    const-string/jumbo v2, "Unable to unregister sap receiver"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
