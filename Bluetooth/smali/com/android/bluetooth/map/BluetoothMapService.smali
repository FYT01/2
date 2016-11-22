.class public Lcom/android/bluetooth/map/BluetoothMapService;
.super Lcom/android/bluetooth/btservice/ProfileService;
.source "BluetoothMapService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;,
        Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;,
        Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapBinder;
    }
.end annotation


# static fields
.field private static final ACCESS_AUTHORITY_CLASS:Ljava/lang/String; = "com.android.settings.bluetooth.BluetoothPermissionRequest"

.field private static final ACCESS_AUTHORITY_PACKAGE:Ljava/lang/String; = "com.android.settings"

.field public static final ACTION_SHOW_MAPS_SETTINGS:Ljava/lang/String; = "android.btmap.intent.action.SHOW_MAPS_SETTINGS"

.field private static final BLUETOOTH_ADMIN_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH_ADMIN"

.field private static final BLUETOOTH_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH"

.field public static final DEBUG:Z = true

.field private static final DISCONNECT_MAP:I = 0x3

.field public static final LOG_TAG:Ljava/lang/String; = "BluetoothMap"

.field private static final MAP_UUIDS:[Landroid/os/ParcelUuid;

.field private static final MAS_ID_SMS_MMS:I = 0x0

.field public static final MSG_ACQUIRE_WAKE_LOCK:I = 0x138d

.field public static final MSG_MAS_CONNECT:I = 0x138b

.field public static final MSG_MAS_CONNECT_CANCEL:I = 0x138c

.field public static final MSG_MNS_SDP_SEARCH:I = 0x138f

.field public static final MSG_OBSERVER_REGISTRATION:I = 0x1390

.field public static final MSG_RELEASE_WAKE_LOCK:I = 0x138e

.field public static final MSG_SERVERSESSION_CLOSE:I = 0x1388

.field public static final MSG_SESSION_DISCONNECTED:I = 0x138a

.field public static final MSG_SESSION_ESTABLISHED:I = 0x1389

.field private static final RELEASE_WAKE_LOCK_DELAY:I = 0x2710

.field private static final SHUTDOWN:I = 0x4

.field private static final START_LISTENER:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BluetoothMapService"

.field private static final UPDATE_MAS_INSTANCES:I = 0x5

.field public static final UPDATE_MAS_INSTANCES_ACCOUNT_ADDED:I = 0x0

.field public static final UPDATE_MAS_INSTANCES_ACCOUNT_DISCONNECT:I = 0x3

.field public static final UPDATE_MAS_INSTANCES_ACCOUNT_REMOVED:I = 0x1

.field public static final UPDATE_MAS_INSTANCES_ACCOUNT_RENAMED:I = 0x2

.field public static final USER_CONFIRM_TIMEOUT_ACTION:Ljava/lang/String; = "com.android.bluetooth.map.USER_CONFIRM_TIMEOUT"

.field private static final USER_CONFIRM_TIMEOUT_VALUE:I = 0x61a8

.field private static final USER_TIMEOUT:I = 0x2

.field public static VERBOSE:Z

.field private static mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

.field private static sRemoteDeviceName:Ljava/lang/String;


# instance fields
.field private mAccountChanged:Z

.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAppObserver:Lcom/android/bluetooth/map/BluetoothMapAppObserver;

.field private mBluetoothMnsObexClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

.field private mEnabledAccounts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/bluetooth/map/BluetoothMapAccountItem;",
            ">;"
        }
    .end annotation
.end field

.field private mIsWaitingAuthorization:Z

.field private mMapReceiver:Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;

.field private mMasInstanceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/bluetooth/map/BluetoothMapAccountItem;",
            "Lcom/android/bluetooth/map/BluetoothMapMasInstance;",
            ">;"
        }
    .end annotation
.end field

.field private mMasInstances:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/bluetooth/map/BluetoothMapMasInstance;",
            ">;"
        }
    .end annotation
.end field

.field mMnsRecord:Landroid/bluetooth/SdpMnsRecord;

.field private mPermission:I

.field private mRegisteredMapReceiver:Z

.field private mRemoveTimeoutMsg:Z

.field private mSdpSearchInitiated:Z

.field private mSessionStatusHandler:Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

.field private mStartError:Z

.field private mState:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static synthetic -get0(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/bluetooth/map/BluetoothMapService;)Lcom/android/bluetooth/map/BluetoothMnsObexClient;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mBluetoothMnsObexClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/bluetooth/map/BluetoothMapService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mIsWaitingAuthorization:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic -get4()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/bluetooth/map/BluetoothMapService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mRemoveTimeoutMsg:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/bluetooth/map/BluetoothMapService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSdpSearchInitiated:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/bluetooth/map/BluetoothMapService;)Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/bluetooth/map/BluetoothMapService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mIsWaitingAuthorization:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/bluetooth/map/BluetoothMapService;I)I
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mPermission:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/bluetooth/map/BluetoothMapService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSdpSearchInitiated:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/bluetooth/map/BluetoothMapService;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/bluetooth/map/BluetoothMapService;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->isAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/bluetooth/map/BluetoothMapService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->updateMasInstancesHandler()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/bluetooth/map/BluetoothMapService;I)V
    .locals 0
    .param p1, "masId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapService;->startRfcommSocketListeners(I)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/bluetooth/map/BluetoothMapService;I)V
    .locals 0
    .param p1, "masId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapService;->stopObexServerSessions(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/bluetooth/map/BluetoothMapService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->cancelUserTimeoutAlarm()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/bluetooth/map/BluetoothMapService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->closeService()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/bluetooth/map/BluetoothMapService;I)V
    .locals 0
    .param p1, "masId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapService;->onConnectHandler(I)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/bluetooth/map/BluetoothMapService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->sendConnectCancelMessage()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/bluetooth/map/BluetoothMapService;I)V
    .locals 0
    .param p1, "masId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapService;->sendConnectMessage(I)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/bluetooth/map/BluetoothMapService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->sendConnectTimeoutMessage()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/bluetooth/map/BluetoothMapService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->sendShutdownMessage()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/bluetooth/map/BluetoothMapService;I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapService;->setState(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 70
    const-string/jumbo v0, "BluetoothMap"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    .line 137
    sput-object v2, Lcom/android/bluetooth/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    .line 140
    sput-object v2, Lcom/android/bluetooth/map/BluetoothMapService;->sRemoteDeviceName:Ljava/lang/String;

    .line 161
    new-array v0, v1, [Landroid/os/ParcelUuid;

    .line 162
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->MAP:Landroid/os/ParcelUuid;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 163
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->MNS:Landroid/os/ParcelUuid;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 161
    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapService;->MAP_UUIDS:[Landroid/os/ParcelUuid;

    .line 58
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 166
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/ProfileService;-><init>()V

    .line 115
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 128
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mBluetoothMnsObexClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    .line 132
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v3}, Landroid/util/SparseArray;-><init>(I)V

    .line 131
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    .line 135
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 134
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstanceMap:Ljava/util/HashMap;

    .line 139
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mEnabledAccounts:Ljava/util/ArrayList;

    .line 143
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mAppObserver:Lcom/android/bluetooth/map/BluetoothMapAppObserver;

    .line 144
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 146
    iput-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mIsWaitingAuthorization:Z

    .line 147
    iput-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mRemoveTimeoutMsg:Z

    .line 148
    iput-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mRegisteredMapReceiver:Z

    .line 149
    iput v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mPermission:I

    .line 150
    iput-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mAccountChanged:Z

    .line 151
    iput-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSdpSearchInitiated:Z

    .line 152
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMnsRecord:Landroid/bluetooth/SdpMnsRecord;

    .line 154
    iput-boolean v3, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mStartError:Z

    .line 995
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;

    invoke-direct {v0, p0, v2}, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;-><init>(Lcom/android/bluetooth/map/BluetoothMapService;Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMapReceiver:Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;

    .line 167
    iput v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mState:I

    .line 166
    return-void
.end method

.method private cancelUserTimeoutAlarm()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 917
    const-string/jumbo v3, "BluetoothMapService"

    const-string/jumbo v4, "cancelUserTimeOutAlarm()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 919
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {p0, v5, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 920
    .local v2, "sender":Landroid/app/PendingIntent;
    const-string/jumbo v3, "alarm"

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/map/BluetoothMapService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 921
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 922
    iput-boolean v5, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mRemoveTimeoutMsg:Z

    .line 916
    return-void
.end method

.method private declared-synchronized closeService()V
    .locals 5

    .prologue
    monitor-enter p0

    .line 173
    :try_start_0
    const-string/jumbo v3, "BluetoothMapService"

    const-string/jumbo v4, "MAP Service closeService in"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mBluetoothMnsObexClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    if-eqz v3, :cond_0

    .line 176
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mBluetoothMnsObexClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->shutdown()V

    .line 177
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mBluetoothMnsObexClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    .line 179
    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 180
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .local v0, "c":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 181
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->shutdown()V

    .line 180
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 183
    :cond_1
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 185
    .end local v0    # "c":I
    .end local v1    # "i":I
    :cond_2
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mIsWaitingAuthorization:Z

    .line 186
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mPermission:I

    .line 187
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/bluetooth/map/BluetoothMapService;->setState(I)V

    .line 189
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v3, :cond_4

    .line 190
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 191
    sget-boolean v3, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    if-eqz v3, :cond_3

    const-string/jumbo v3, "BluetoothMapService"

    const-string/jumbo v4, "CloseService(): Release Wake Lock"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_3
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 196
    :cond_4
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    if-eqz v3, :cond_6

    .line 198
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 199
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    .line 200
    .local v2, "looper":Landroid/os/Looper;
    if-eqz v2, :cond_5

    .line 201
    invoke-virtual {v2}, Landroid/os/Looper;->quit()V

    .line 202
    sget-boolean v3, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    if-eqz v3, :cond_5

    const-string/jumbo v3, "BluetoothMapService"

    const-string/jumbo v4, "Quit looper"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_5
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    .line 205
    sget-boolean v3, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    if-eqz v3, :cond_6

    const-string/jumbo v3, "BluetoothMapService"

    const-string/jumbo v4, "Remove Handler"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    .end local v2    # "looper":Landroid/os/Looper;
    :cond_6
    const/4 v3, 0x0

    sput-object v3, Lcom/android/bluetooth/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    .line 208
    const-string/jumbo v3, "BluetoothMapService"

    const-string/jumbo v4, "MAP Service closeService out"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 172
    return-void

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private createMasInstances()V
    .locals 12

    .prologue
    const/4 v3, 0x0

    .line 776
    const/4 v4, 0x0

    .line 780
    .local v4, "masId":I
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    .line 784
    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p0

    .line 780
    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;-><init>(Lcom/android/bluetooth/map/BluetoothMapService;Landroid/content/Context;Lcom/android/bluetooth/map/BluetoothMapAccountItem;IZ)V

    .line 785
    .local v0, "smsMmsInst":Lcom/android/bluetooth/map/BluetoothMapMasInstance;
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    invoke-virtual {v1, v4, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 786
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstanceMap:Ljava/util/HashMap;

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 789
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mEnabledAccounts:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "account$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    .line 790
    .local v8, "account":Lcom/android/bluetooth/map/BluetoothMapAccountItem;
    add-int/lit8 v4, v4, 0x1

    .line 792
    new-instance v5, Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    .line 796
    const/4 v10, 0x0

    move-object v6, p0

    move-object v7, p0

    move v9, v4

    .line 792
    invoke-direct/range {v5 .. v10}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;-><init>(Lcom/android/bluetooth/map/BluetoothMapService;Landroid/content/Context;Lcom/android/bluetooth/map/BluetoothMapAccountItem;IZ)V

    .line 797
    .local v5, "newInst":Lcom/android/bluetooth/map/BluetoothMapMasInstance;
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    invoke-virtual {v1, v4, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 798
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstanceMap:Ljava/util/HashMap;

    invoke-virtual {v1, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 775
    .end local v5    # "newInst":Lcom/android/bluetooth/map/BluetoothMapMasInstance;
    .end local v8    # "account":Lcom/android/bluetooth/map/BluetoothMapAccountItem;
    :cond_0
    return-void
.end method

.method private getNextMasId()I
    .locals 6

    .prologue
    const/16 v5, 0xff

    .line 755
    const/4 v2, 0x0

    .line 756
    .local v2, "largestMasId":I
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v0

    .local v0, "c":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 757
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 758
    .local v3, "masId":I
    if-le v3, v2, :cond_0

    .line 759
    move v2, v3

    .line 756
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 762
    .end local v3    # "masId":I
    :cond_1
    if-ge v2, v5, :cond_2

    .line 763
    add-int/lit8 v4, v2, 0x1

    return v4

    .line 767
    :cond_2
    const/4 v1, 0x1

    :goto_1
    if-gt v1, v5, :cond_4

    .line 768
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_3

    .line 769
    return v1

    .line 767
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 772
    :cond_4
    return v5
.end method

.method public static getRemoteDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 479
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public static getRemoteDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 505
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapService;->sRemoteDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method private onConnectHandler(I)V
    .locals 6
    .param p1, "masId"    # I

    .prologue
    .line 446
    iget-boolean v3, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mIsWaitingAuthorization:Z

    if-nez v3, :cond_0

    sget-object v3, Lcom/android/bluetooth/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v3, :cond_1

    .line 448
    :cond_0
    return-void

    .line 447
    :cond_1
    iget-boolean v3, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSdpSearchInitiated:Z

    if-nez v3, :cond_0

    .line 450
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    .line 452
    .local v2, "masInst":Lcom/android/bluetooth/map/BluetoothMapMasInstance;
    const-string/jumbo v3, "BluetoothMapService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mPermission = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mPermission:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    iget v3, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mPermission:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 455
    :try_start_0
    sget-boolean v3, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    if-eqz v3, :cond_2

    const-string/jumbo v3, "BluetoothMapService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "incoming connection accepted from: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 456
    sget-object v5, Lcom/android/bluetooth/map/BluetoothMapService;->sRemoteDeviceName:Ljava/lang/String;

    .line 455
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 456
    const-string/jumbo v5, " automatically as trusted device"

    .line 455
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    :cond_2
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mBluetoothMnsObexClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    if-eqz v3, :cond_4

    if-eqz v2, :cond_4

    .line 458
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mBluetoothMnsObexClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->startObexServerSession(Lcom/android/bluetooth/map/BluetoothMnsObexClient;)Z

    .line 445
    :cond_3
    :goto_0
    return-void

    .line 460
    :cond_4
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->startObexServerSessions()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 462
    :catch_0
    move-exception v1

    .line 463
    .local v1, "ex":Ljava/io/IOException;
    const-string/jumbo v3, "BluetoothMapService"

    const-string/jumbo v4, "catch IOException starting obex server session"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 464
    .end local v1    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 465
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "BluetoothMapService"

    const-string/jumbo v4, "catch RemoteException starting obex server session"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private sendConnectCancelMessage()V
    .locals 3

    .prologue
    .line 959
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    if-eqz v1, :cond_0

    .line 960
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    const/16 v2, 0x138c

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 961
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 958
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private sendConnectMessage(I)V
    .locals 4
    .param p1, "masId"    # I

    .prologue
    .line 943
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    if-eqz v1, :cond_0

    .line 944
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    const/16 v2, 0x138b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 948
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    const-wide/16 v2, 0x14

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 942
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private sendConnectTimeoutMessage()V
    .locals 3

    .prologue
    .line 952
    const-string/jumbo v1, "BluetoothMapService"

    const-string/jumbo v2, "sendConnectTimeoutMessage()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    if-eqz v1, :cond_0

    .line 954
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 955
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 951
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private sendShutdownMessage()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 966
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "BluetoothMapService"

    const-string/jumbo v3, "sendShutdownMessage() In"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    :cond_0
    iget-boolean v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mRemoveTimeoutMsg:Z

    if-eqz v2, :cond_1

    .line 971
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.android.bluetooth.map.USER_CONFIRM_TIMEOUT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 972
    .local v1, "timeoutIntent":Landroid/content/Intent;
    const-string/jumbo v2, "android.permission.BLUETOOTH"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMapService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 973
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mIsWaitingAuthorization:Z

    .line 974
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->cancelUserTimeoutAlarm()V

    .line 976
    .end local v1    # "timeoutIntent":Landroid/content/Intent;
    :cond_1
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    invoke-virtual {v2, v5}, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 988
    :cond_2
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    if-eqz v2, :cond_3

    .line 990
    const-string/jumbo v2, "BluetoothMapService"

    const-string/jumbo v3, "mSessionStatusHandler shutdown message already in Queue"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    :cond_3
    :goto_0
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    if-eqz v2, :cond_4

    const-string/jumbo v2, "BluetoothMapService"

    const-string/jumbo v3, "sendShutdownMessage() Out"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    :cond_4
    return-void

    .line 977
    :cond_5
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    invoke-virtual {v2, v4}, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 979
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    invoke-virtual {v2, v5}, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 980
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    invoke-virtual {v2, v0}, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->sendMessage(Landroid/os/Message;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 986
    const-string/jumbo v2, "BluetoothMapService"

    const-string/jumbo v3, "mSessionStatusHandler.sendMessage() dispatched shutdown message"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 482
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/bluetooth/map/BluetoothMapService;->setState(II)V

    .line 481
    return-void
.end method

.method private declared-synchronized setState(II)V
    .locals 6
    .param p1, "state"    # I
    .param p2, "result"    # I

    .prologue
    monitor-enter p0

    .line 486
    :try_start_0
    iget v3, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mState:I

    if-eq p1, v3, :cond_0

    .line 487
    const-string/jumbo v3, "BluetoothMapService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Map state "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mState:I

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

    .line 489
    iget v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mState:I

    .line 490
    .local v1, "prevState":I
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mState:I

    .line 491
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "android.bluetooth.map.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 492
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 493
    const-string/jumbo v3, "android.bluetooth.profile.extra.STATE"

    iget v4, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mState:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 494
    const-string/jumbo v3, "android.bluetooth.device.extra.DEVICE"

    sget-object v4, Lcom/android/bluetooth/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 495
    const-string/jumbo v3, "android.permission.BLUETOOTH"

    invoke-virtual {p0, v0, v3}, Lcom/android/bluetooth/map/BluetoothMapService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 496
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v2

    .line 497
    .local v2, "s":Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v2, :cond_0

    .line 498
    sget-object v3, Lcom/android/bluetooth/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    .line 499
    iget v4, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mState:I

    .line 498
    const/16 v5, 0x9

    invoke-virtual {v2, v3, v5, v4, v1}, Lcom/android/bluetooth/btservice/AdapterService;->onProfileConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "prevState":I
    .end local v2    # "s":Lcom/android/bluetooth/btservice/AdapterService;
    :cond_0
    monitor-exit p0

    .line 485
    return-void

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private setUserTimeoutAlarm()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 904
    const-string/jumbo v2, "BluetoothMapService"

    const-string/jumbo v3, "SetUserTimeOutAlarm()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mAlarmManager:Landroid/app/AlarmManager;

    if-nez v2, :cond_0

    .line 906
    const-string/jumbo v2, "alarm"

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/map/BluetoothMapService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 908
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mRemoveTimeoutMsg:Z

    .line 910
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.android.bluetooth.map.USER_CONFIRM_TIMEOUT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 911
    .local v1, "timeoutIntent":Landroid/content/Intent;
    invoke-static {p0, v8, v1, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 912
    .local v0, "pIntent":Landroid/app/PendingIntent;
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 913
    const-wide/16 v6, 0x61a8

    .line 912
    add-long/2addr v4, v6

    invoke-virtual {v2, v8, v4, v5, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 903
    return-void
.end method

.method private final startObexServerSessions()V
    .locals 11

    .prologue
    const/16 v10, 0x138e

    .line 234
    const-string/jumbo v6, "BluetoothMapService"

    const-string/jumbo v7, "Map Service START ObexServerSessions()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v6, :cond_0

    .line 238
    const-string/jumbo v6, "power"

    invoke-virtual {p0, v6}, Lcom/android/bluetooth/map/BluetoothMapService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    .line 240
    .local v5, "pm":Landroid/os/PowerManager;
    const-string/jumbo v6, "StartingObexMapTransaction"

    .line 239
    const/4 v7, 0x1

    invoke-virtual {v5, v7, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    iput-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 241
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 242
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 243
    const-string/jumbo v6, "BluetoothMapService"

    const-string/jumbo v7, "startObexSessions(): Acquire Wake Lock"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    .end local v5    # "pm":Landroid/os/PowerManager;
    :cond_0
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mBluetoothMnsObexClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    if-nez v6, :cond_1

    .line 248
    new-instance v6, Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    sget-object v7, Lcom/android/bluetooth/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMnsRecord:Landroid/bluetooth/SdpMnsRecord;

    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    invoke-direct {v6, v7, v8, v9}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;-><init>(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/SdpMnsRecord;Landroid/os/Handler;)V

    .line 247
    iput-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mBluetoothMnsObexClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    .line 251
    :cond_1
    const/4 v1, 0x0

    .line 252
    .local v1, "connected":Z
    const/4 v4, 0x0

    .local v4, "i":I
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v0

    .local v0, "c":I
    :goto_0
    if-ge v4, v0, :cond_3

    .line 254
    :try_start_0
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    .line 255
    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mBluetoothMnsObexClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    .line 254
    invoke-virtual {v6, v7}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->startObexServerSession(Lcom/android/bluetooth/map/BluetoothMnsObexClient;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_2

    .line 256
    const/4 v1, 0x1

    .line 252
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 262
    :catch_0
    move-exception v2

    .line 263
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v6, "BluetoothMapService"

    const-string/jumbo v7, "RemoteException occured while starting an obexServerSession restarting the listener"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 265
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {v6}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->restartObexServerSession()V

    goto :goto_1

    .line 258
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    .line 259
    .local v3, "e":Ljava/io/IOException;
    const-string/jumbo v6, "BluetoothMapService"

    const-string/jumbo v7, "IOException occured while starting an obexServerSession restarting the listener"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 261
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {v6}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->restartObexServerSession()V

    goto :goto_1

    .line 268
    .end local v3    # "e":Ljava/io/IOException;
    :cond_3
    if-eqz v1, :cond_4

    .line 269
    const/4 v6, 0x2

    invoke-direct {p0, v6}, Lcom/android/bluetooth/map/BluetoothMapService;->setState(I)V

    .line 272
    :cond_4
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    invoke-virtual {v6, v10}, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->removeMessages(I)V

    .line 273
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    invoke-virtual {v7, v10}, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 274
    const-wide/16 v8, 0x2710

    .line 273
    invoke-virtual {v6, v7, v8, v9}, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 276
    const-string/jumbo v6, "BluetoothMapService"

    const-string/jumbo v7, "startObexServerSessions() success!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    return-void
.end method

.method private final startRfcommSocketListeners(I)V
    .locals 6
    .param p1, "masId"    # I

    .prologue
    .line 216
    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    .line 217
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .local v0, "c":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 218
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->startRfcommSocketListener()V

    .line 217
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 221
    .end local v0    # "c":I
    .end local v1    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    .line 222
    .local v2, "masInst":Lcom/android/bluetooth/map/BluetoothMapMasInstance;
    if-eqz v2, :cond_2

    .line 223
    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->startRfcommSocketListener()V

    .line 215
    .end local v2    # "masInst":Lcom/android/bluetooth/map/BluetoothMapMasInstance;
    :cond_1
    :goto_1
    return-void

    .line 225
    .restart local v2    # "masInst":Lcom/android/bluetooth/map/BluetoothMapMasInstance;
    :cond_2
    const-string/jumbo v3, "BluetoothMapService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startRfcommSocketListeners(): Invalid MasId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private stopObexServerSessions(I)V
    .locals 10
    .param p1, "masId"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 288
    const-string/jumbo v4, "BluetoothMapService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "MAP Service STOP ObexServerSessions() masId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    const/4 v2, 0x1

    .line 292
    .local v2, "lastMasInst":Z
    if-eq p1, v8, :cond_1

    .line 293
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v0

    .local v0, "c":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 294
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    .line 295
    .local v3, "masInst":Lcom/android/bluetooth/map/BluetoothMapMasInstance;
    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->getMasId()I

    move-result v4

    if-eq v4, p1, :cond_0

    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->isStarted()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 296
    const/4 v2, 0x0

    .line 293
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 302
    .end local v0    # "c":I
    .end local v1    # "i":I
    .end local v3    # "masInst":Lcom/android/bluetooth/map/BluetoothMapMasInstance;
    :cond_1
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mBluetoothMnsObexClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    if-eqz v4, :cond_2

    if-eqz v2, :cond_2

    .line 303
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mBluetoothMnsObexClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    invoke-virtual {v4}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->shutdown()V

    .line 304
    iput-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mBluetoothMnsObexClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    .line 307
    :cond_2
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    .line 308
    .restart local v3    # "masInst":Lcom/android/bluetooth/map/BluetoothMapMasInstance;
    if-eqz v3, :cond_6

    .line 309
    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->restartObexServerSession()V

    .line 316
    :cond_3
    if-eqz v2, :cond_4

    .line 317
    invoke-direct {p0, v9}, Lcom/android/bluetooth/map/BluetoothMapService;->setState(I)V

    .line 318
    iput v9, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mPermission:I

    .line 319
    sput-object v7, Lcom/android/bluetooth/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    .line 320
    iget-boolean v4, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mAccountChanged:Z

    if-eqz v4, :cond_4

    .line 321
    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Lcom/android/bluetooth/map/BluetoothMapService;->updateMasInstances(I)V

    .line 326
    :cond_4
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v4, :cond_5

    if-eqz v2, :cond_5

    .line 327
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    const/16 v5, 0x138d

    invoke-virtual {v4, v5}, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->removeMessages(I)V

    .line 328
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    const/16 v5, 0x138e

    invoke-virtual {v4, v5}, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->removeMessages(I)V

    .line 329
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 330
    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    if-eqz v4, :cond_5

    const-string/jumbo v4, "BluetoothMapService"

    const-string/jumbo v5, "stopObexServerSessions(): Release Wake Lock"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :cond_5
    return-void

    .line 310
    :cond_6
    if-ne p1, v8, :cond_3

    .line 311
    const/4 v1, 0x0

    .restart local v1    # "i":I
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v0

    .restart local v0    # "c":I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 312
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {v4}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->restartObexServerSession()V

    .line 311
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private updateMasInstancesHandler()Z
    .locals 15

    .prologue
    const/4 v5, 0x0

    .line 681
    const-string/jumbo v1, "BluetoothMapService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "updateMasInstancesHandler() state = "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->getState()I

    move-result v14

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    const/4 v8, 0x0

    .line 685
    .local v8, "changed":Z
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mAppObserver:Lcom/android/bluetooth/map/BluetoothMapAppObserver;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->getEnabledAccountItems()Ljava/util/ArrayList;

    move-result-object v11

    .line 686
    .local v11, "newAccountList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/bluetooth/map/BluetoothMapAccountItem;>;"
    const/4 v12, 0x0

    .line 687
    .local v12, "newAccounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/bluetooth/map/BluetoothMapAccountItem;>;"
    const/4 v13, 0x0

    .line 688
    .local v13, "removedAccounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/bluetooth/map/BluetoothMapAccountItem;>;"
    new-instance v12, Ljava/util/ArrayList;

    .end local v12    # "newAccounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/bluetooth/map/BluetoothMapAccountItem;>;"
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 689
    .local v12, "newAccounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/bluetooth/map/BluetoothMapAccountItem;>;"
    iget-object v13, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mEnabledAccounts:Ljava/util/ArrayList;

    .line 691
    .local v13, "removedAccounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/bluetooth/map/BluetoothMapAccountItem;>;"
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "account$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    .line 692
    .local v3, "account":Lcom/android/bluetooth/map/BluetoothMapAccountItem;
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 693
    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 697
    .end local v3    # "account":Lcom/android/bluetooth/map/BluetoothMapAccountItem;
    :cond_1
    if-eqz v13, :cond_4

    .line 699
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    .line 700
    .restart local v3    # "account":Lcom/android/bluetooth/map/BluetoothMapAccountItem;
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstanceMap:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    .line 701
    .local v10, "masInst":Lcom/android/bluetooth/map/BluetoothMapMasInstance;
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    if-eqz v1, :cond_3

    const-string/jumbo v1, "BluetoothMapService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "  Removing account: "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v14, " masInst = "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    :cond_3
    if-eqz v10, :cond_2

    .line 703
    invoke-virtual {v10}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->shutdown()V

    .line 704
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    invoke-virtual {v10}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->getMasId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 705
    const/4 v8, 0x1

    goto :goto_1

    .line 710
    .end local v3    # "account":Lcom/android/bluetooth/map/BluetoothMapAccountItem;
    .end local v10    # "masInst":Lcom/android/bluetooth/map/BluetoothMapMasInstance;
    :cond_4
    if-eqz v12, :cond_7

    .line 712
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    .line 713
    .restart local v3    # "account":Lcom/android/bluetooth/map/BluetoothMapAccountItem;
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    if-eqz v1, :cond_6

    const-string/jumbo v1, "BluetoothMapService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "  Adding account: "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    :cond_6
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->getNextMasId()I

    move-result v4

    .line 716
    .local v4, "masId":I
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;-><init>(Lcom/android/bluetooth/map/BluetoothMapService;Landroid/content/Context;Lcom/android/bluetooth/map/BluetoothMapAccountItem;IZ)V

    .line 721
    .local v0, "newInst":Lcom/android/bluetooth/map/BluetoothMapMasInstance;
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    invoke-virtual {v1, v4, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 722
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstanceMap:Ljava/util/HashMap;

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 723
    const/4 v8, 0x1

    .line 725
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 726
    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->startRfcommSocketListener()V

    goto :goto_2

    .line 730
    .end local v0    # "newInst":Lcom/android/bluetooth/map/BluetoothMapMasInstance;
    .end local v3    # "account":Lcom/android/bluetooth/map/BluetoothMapAccountItem;
    .end local v4    # "masId":I
    :cond_7
    iput-object v11, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mEnabledAccounts:Ljava/util/ArrayList;

    .line 731
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    if-eqz v1, :cond_9

    .line 732
    const-string/jumbo v1, "BluetoothMapService"

    const-string/jumbo v2, "  Enabled accounts:"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mEnabledAccounts:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    .line 734
    .restart local v3    # "account":Lcom/android/bluetooth/map/BluetoothMapAccountItem;
    const-string/jumbo v1, "BluetoothMapService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "   "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 736
    .end local v3    # "account":Lcom/android/bluetooth/map/BluetoothMapAccountItem;
    :cond_8
    const-string/jumbo v1, "BluetoothMapService"

    const-string/jumbo v2, "  Active MAS instances:"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    const/4 v9, 0x0

    .local v9, "i":I
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v7

    .local v7, "c":I
    :goto_4
    if-ge v9, v7, :cond_9

    .line 738
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    invoke-virtual {v1, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    .line 739
    .restart local v10    # "masInst":Lcom/android/bluetooth/map/BluetoothMapMasInstance;
    const-string/jumbo v1, "BluetoothMapService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "   "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 742
    .end local v7    # "c":I
    .end local v9    # "i":I
    .end local v10    # "masInst":Lcom/android/bluetooth/map/BluetoothMapMasInstance;
    :cond_9
    iput-boolean v5, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mAccountChanged:Z

    .line 743
    return v8
.end method


# virtual methods
.method public cleanup()Z
    .locals 2

    .prologue
    .line 832
    const-string/jumbo v0, "BluetoothMapService"

    const-string/jumbo v1, "cleanup()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/bluetooth/map/BluetoothMapService;->setState(II)V

    .line 836
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->sendShutdownMessage()V

    .line 837
    const/4 v0, 0x1

    return v0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v3, 0x0

    .line 509
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    .line 510
    const/4 v2, 0x3

    .line 509
    invoke-virtual {v1, v2, v3, v3, p1}, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 511
    const/4 v0, 0x1

    return v0
.end method

.method public disconnectMap(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 515
    const/4 v0, 0x0

    .line 516
    .local v0, "result":Z
    const-string/jumbo v1, "BluetoothMapService"

    const-string/jumbo v2, "disconnectMap"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapService;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapService;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 518
    iget v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mState:I

    packed-switch v1, :pswitch_data_0

    .line 528
    :cond_0
    :goto_0
    return v0

    .line 521
    :pswitch_0
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/android/bluetooth/map/BluetoothMapService;->stopObexServerSessions(I)V

    .line 522
    const/4 v0, 0x1

    .line 523
    goto :goto_0

    .line 518
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public dump(Ljava/lang/StringBuilder;)V
    .locals 6
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 1264
    invoke-super {p0, p1}, Lcom/android/bluetooth/btservice/ProfileService;->dump(Ljava/lang/StringBuilder;)V

    .line 1265
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mRemoteDevice: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/bluetooth/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/android/bluetooth/map/BluetoothMapService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1266
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sRemoteDeviceName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/bluetooth/map/BluetoothMapService;->sRemoteDeviceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/android/bluetooth/map/BluetoothMapService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1267
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/android/bluetooth/map/BluetoothMapService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1268
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mAppObserver: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mAppObserver:Lcom/android/bluetooth/map/BluetoothMapAppObserver;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/android/bluetooth/map/BluetoothMapService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1269
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mIsWaitingAuthorization: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mIsWaitingAuthorization:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/android/bluetooth/map/BluetoothMapService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1270
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mRemoveTimeoutMsg: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mRemoveTimeoutMsg:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/android/bluetooth/map/BluetoothMapService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1271
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mPermission: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mPermission:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/android/bluetooth/map/BluetoothMapService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1272
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mAccountChanged: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mAccountChanged:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/android/bluetooth/map/BluetoothMapService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1273
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mBluetoothMnsObexClient: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mBluetoothMnsObexClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/android/bluetooth/map/BluetoothMapService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1274
    const-string/jumbo v4, "mMasInstanceMap:"

    invoke-static {p1, v4}, Lcom/android/bluetooth/map/BluetoothMapService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1275
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstanceMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "key$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    .line 1276
    .local v2, "key":Lcom/android/bluetooth/map/BluetoothMapAccountItem;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstanceMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/android/bluetooth/map/BluetoothMapService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_0

    .line 1278
    .end local v2    # "key":Lcom/android/bluetooth/map/BluetoothMapAccountItem;
    :cond_0
    const-string/jumbo v4, "mEnabledAccounts:"

    invoke-static {p1, v4}, Lcom/android/bluetooth/map/BluetoothMapService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1279
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mEnabledAccounts:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "account$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    .line 1280
    .local v0, "account":Lcom/android/bluetooth/map/BluetoothMapAccountItem;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/android/bluetooth/map/BluetoothMapService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_1

    .line 1263
    .end local v0    # "account":Lcom/android/bluetooth/map/BluetoothMapAccountItem;
    :cond_1
    return-void
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
    .line 532
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 533
    .local v0, "devices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    monitor-enter p0

    .line 534
    :try_start_0
    iget v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_0

    .line 535
    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 538
    return-object v0

    .line 533
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

    .line 563
    monitor-enter p0

    .line 564
    :try_start_0
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->getState()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapService;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit p0

    .line 565
    return v1

    .line 567
    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 563
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
    .line 542
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 543
    .local v4, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    .line 545
    .local v0, "bondedDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    monitor-enter p0

    .line 546
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

    .line 547
    .local v2, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v5

    .line 548
    .local v5, "featureUuids":[Landroid/os/ParcelUuid;
    sget-object v7, Lcom/android/bluetooth/map/BluetoothMapService;->MAP_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {v5, v7}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 551
    invoke-virtual {p0, v2}, Lcom/android/bluetooth/map/BluetoothMapService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    .line 552
    .local v1, "connectionState":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v7, p1

    if-ge v6, v7, :cond_0

    .line 553
    aget v7, p1, v6

    if-ne v1, v7, :cond_1

    .line 554
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 552
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .end local v1    # "connectionState":I
    .end local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v5    # "featureUuids":[Landroid/os/ParcelUuid;
    .end local v6    # "i":I
    :cond_2
    monitor-exit p0

    .line 559
    return-object v4

    .line 545
    .end local v3    # "device$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    return-object v0
.end method

.method public getPriority(Landroid/bluetooth/BluetoothDevice;)I
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 581
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 582
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/Settings$Global;->getBluetoothMapPriorityKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 583
    const/4 v3, -0x1

    .line 581
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 584
    .local v0, "priority":I
    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 471
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mState:I

    return v0
.end method

.method protected initBinder()Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;
    .locals 1

    .prologue
    .line 589
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapBinder;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapBinder;-><init>(Lcom/android/bluetooth/map/BluetoothMapService;)V

    return-object v0
.end method

.method protected isMapStarted()Z
    .locals 1

    .prologue
    .line 475
    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mStartError:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onConnect(Landroid/bluetooth/BluetoothDevice;Lcom/android/bluetooth/map/BluetoothMapMasInstance;)Z
    .locals 8
    .param p1, "remoteDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "masInst"    # Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 847
    const/4 v2, 0x0

    .line 848
    .local v2, "sendIntent":Z
    const/4 v0, 0x0

    .line 851
    .local v0, "cancelConnection":Z
    monitor-enter p0

    .line 852
    :try_start_0
    sget-object v3, Lcom/android/bluetooth/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v3, :cond_5

    .line 853
    sput-object p1, Lcom/android/bluetooth/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    .line 854
    sget-object v3, Lcom/android/bluetooth/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/bluetooth/map/BluetoothMapService;->sRemoteDeviceName:Ljava/lang/String;

    .line 856
    sget-object v3, Lcom/android/bluetooth/map/BluetoothMapService;->sRemoteDeviceName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 857
    const v3, 0x7f06007f

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/map/BluetoothMapService;->getString(I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/bluetooth/map/BluetoothMapService;->sRemoteDeviceName:Ljava/lang/String;

    .line 860
    :cond_0
    sget-object v3, Lcom/android/bluetooth/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getMessageAccessPermission()I

    move-result v3

    iput v3, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mPermission:I

    .line 861
    iget v3, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mPermission:I

    if-nez v3, :cond_3

    .line 862
    const/4 v2, 0x1

    .line 863
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mIsWaitingAuthorization:Z

    .line 864
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->setUserTimeoutAlarm()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    .line 879
    if-eqz v2, :cond_7

    .line 881
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.bluetooth.device.action.CONNECTION_ACCESS_REQUEST"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 882
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "com.android.settings"

    const-string/jumbo v4, "com.android.settings.bluetooth.BluetoothPermissionRequest"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 883
    const-string/jumbo v3, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    .line 884
    const/4 v4, 0x3

    .line 883
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 885
    const-string/jumbo v3, "android.bluetooth.device.extra.DEVICE"

    sget-object v4, Lcom/android/bluetooth/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 886
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 887
    const-string/jumbo v3, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {p0, v1, v3}, Lcom/android/bluetooth/map/BluetoothMapService;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 889
    sget-boolean v3, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    if-eqz v3, :cond_2

    const-string/jumbo v3, "BluetoothMapService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "waiting for authorization for connection from: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 890
    sget-object v5, Lcom/android/bluetooth/map/BluetoothMapService;->sRemoteDeviceName:Ljava/lang/String;

    .line 889
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    :goto_1
    return v6

    .line 865
    :cond_3
    :try_start_1
    iget v3, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mPermission:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    .line 866
    const/4 v0, 0x1

    goto :goto_0

    .line 867
    :cond_4
    iget v3, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mPermission:I

    if-ne v3, v6, :cond_1

    .line 868
    sget-object v3, Lcom/android/bluetooth/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    sget-object v4, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->BLUETOOTH_UUID_OBEX_MNS:Landroid/os/ParcelUuid;

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothDevice;->sdpSearch(Landroid/os/ParcelUuid;)Z

    .line 869
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSdpSearchInitiated:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 851
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 871
    :cond_5
    :try_start_2
    sget-object v3, Lcom/android/bluetooth/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 872
    const-string/jumbo v4, "BluetoothMapService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unexpected connection from a second Remote Device received. name: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 873
    if-nez p1, :cond_6

    const-string/jumbo v3, "unknown"

    .line 872
    :goto_2
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 874
    return v7

    .line 873
    :cond_6
    :try_start_3
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v3

    goto :goto_2

    .line 893
    :cond_7
    if-eqz v0, :cond_8

    .line 894
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->sendConnectCancelMessage()V

    goto :goto_1

    .line 895
    :cond_8
    iget v3, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mPermission:I

    if-ne v3, v6, :cond_2

    .line 897
    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->getMasId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/bluetooth/map/BluetoothMapService;->sendConnectMessage(I)V

    goto :goto_1
.end method

.method public sendStartListenerMessage(I)V
    .locals 4
    .param p1, "masId"    # I

    .prologue
    const/4 v3, 0x1

    .line 930
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    invoke-virtual {v1, v3}, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 936
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    if-eqz v1, :cond_1

    .line 938
    const-string/jumbo v1, "BluetoothMapService"

    const-string/jumbo v2, "mSessionStatusHandler START_LISTENER message already in Queue"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    :cond_1
    :goto_0
    return-void

    .line 931
    :cond_2
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, p1, v2}, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 935
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    const-wide/16 v2, 0x14

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "priority"    # I

    .prologue
    .line 573
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 574
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Settings$Global;->getBluetoothMapPriorityKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 573
    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 576
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BluetoothMapService"

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

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected start()Z
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 594
    const-string/jumbo v8, "BluetoothMapService"

    const-string/jumbo v9, "start()"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    sget-boolean v8, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    if-nez v8, :cond_0

    .line 596
    const-string/jumbo v8, "BluetoothMap"

    const/4 v9, 0x2

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    sput-boolean v8, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    .line 599
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->isMapStarted()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 600
    const-string/jumbo v7, "BluetoothMapService"

    const-string/jumbo v8, "start received for already started, ignoring"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    return v6

    .line 604
    :cond_1
    sget-boolean v8, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    if-eqz v8, :cond_2

    const-string/jumbo v8, "BluetoothMapService"

    const-string/jumbo v9, "verbose logging is enabled"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    :cond_2
    new-instance v5, Landroid/os/HandlerThread;

    const-string/jumbo v8, "BluetoothMapHandler"

    invoke-direct {v5, v8}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 606
    .local v5, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v5}, Landroid/os/HandlerThread;->start()V

    .line 607
    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    .line 608
    .local v4, "looper":Landroid/os/Looper;
    new-instance v8, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    invoke-direct {v8, p0, v4, v10}, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;-><init>(Lcom/android/bluetooth/map/BluetoothMapService;Landroid/os/Looper;Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;)V

    iput-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    .line 610
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 611
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v8, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    invoke-virtual {v2, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 612
    const-string/jumbo v8, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v2, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 613
    const-string/jumbo v8, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v2, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 614
    const-string/jumbo v8, "android.bluetooth.device.action.SDP_RECORD"

    invoke-virtual {v2, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 615
    const-string/jumbo v8, "android.btmap.intent.action.SHOW_MAPS_SETTINGS"

    invoke-virtual {v2, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 616
    const-string/jumbo v8, "com.android.bluetooth.map.USER_CONFIRM_TIMEOUT"

    invoke-virtual {v2, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 619
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 620
    .local v3, "filterMessageSent":Landroid/content/IntentFilter;
    const-string/jumbo v8, "com.android.bluetooth.BluetoothMapContentObserver.action.MESSAGE_SENT"

    invoke-virtual {v3, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 622
    :try_start_0
    const-string/jumbo v8, "message/*"

    invoke-virtual {v3, v8}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 626
    :goto_0
    iget-boolean v8, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mRegisteredMapReceiver:Z

    if-nez v8, :cond_3

    .line 628
    :try_start_1
    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMapReceiver:Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;

    invoke-virtual {p0, v8, v2}, Lcom/android/bluetooth/map/BluetoothMapService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 631
    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMapReceiver:Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;

    .line 632
    const-string/jumbo v9, "android.permission.WRITE_SMS"

    const/4 v10, 0x0

    .line 631
    invoke-virtual {p0, v8, v3, v9, v10}, Lcom/android/bluetooth/map/BluetoothMapService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 633
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mRegisteredMapReceiver:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 638
    :cond_3
    :goto_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v8

    iput-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 639
    new-instance v8, Lcom/android/bluetooth/map/BluetoothMapAppObserver;

    invoke-direct {v8, p0, p0}, Lcom/android/bluetooth/map/BluetoothMapAppObserver;-><init>(Landroid/content/Context;Lcom/android/bluetooth/map/BluetoothMapService;)V

    iput-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mAppObserver:Lcom/android/bluetooth/map/BluetoothMapAppObserver;

    .line 641
    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mAppObserver:Lcom/android/bluetooth/map/BluetoothMapAppObserver;

    invoke-virtual {v8}, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->getEnabledAccountItems()Ljava/util/ArrayList;

    move-result-object v8

    iput-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mEnabledAccounts:Ljava/util/ArrayList;

    .line 643
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->createMasInstances()V

    .line 646
    const/4 v8, -0x1

    invoke-virtual {p0, v8}, Lcom/android/bluetooth/map/BluetoothMapService;->sendStartListenerMessage(I)V

    .line 647
    iput-boolean v6, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mStartError:Z

    .line 648
    iget-boolean v8, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mStartError:Z

    if-eqz v8, :cond_4

    :goto_2
    return v6

    .line 623
    :catch_0
    move-exception v0

    .line 624
    .local v0, "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    const-string/jumbo v8, "BluetoothMapService"

    const-string/jumbo v9, "Wrong mime type!!!"

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 634
    .end local v0    # "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    :catch_1
    move-exception v1

    .line 635
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "BluetoothMapService"

    const-string/jumbo v9, "Unable to register map receiver"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    move v6, v7

    .line 648
    goto :goto_2
.end method

.method protected stop()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 804
    const-string/jumbo v1, "BluetoothMapService"

    const-string/jumbo v2, "stop()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    iget-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mRegisteredMapReceiver:Z

    if-eqz v1, :cond_0

    .line 807
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mRegisteredMapReceiver:Z

    .line 808
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMapReceiver:Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/map/BluetoothMapService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 809
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mAppObserver:Lcom/android/bluetooth/map/BluetoothMapAppObserver;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->shutdown()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 816
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->isMapStarted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 817
    const-string/jumbo v1, "BluetoothMapService"

    const-string/jumbo v2, "Service Not Available to STOP, ignoring"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    return v3

    .line 810
    :catch_0
    move-exception v0

    .line 811
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "BluetoothMapService"

    const-string/jumbo v2, "Unable to unregister map receiver"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 820
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "BluetoothMapService"

    const-string/jumbo v2, "Service Stoping()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    :cond_2
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    if-eqz v1, :cond_3

    .line 823
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->sendShutdownMessage()V

    .line 825
    :cond_3
    iput-boolean v3, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mStartError:Z

    .line 826
    const/4 v1, 0x2

    invoke-direct {p0, v4, v1}, Lcom/android/bluetooth/map/BluetoothMapService;->setState(II)V

    .line 827
    const-string/jumbo v1, "BluetoothMapService"

    const-string/jumbo v2, "stop() out"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    return v3
.end method

.method public updateMasInstances(I)V
    .locals 3
    .param p1, "action"    # I

    .prologue
    .line 656
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    const/4 v1, 0x5

    .line 657
    const/4 v2, 0x0

    .line 656
    invoke-virtual {v0, v1, p1, v2}, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 655
    return-void
.end method
