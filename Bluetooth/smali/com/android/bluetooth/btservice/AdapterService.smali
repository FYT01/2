.class public Lcom/android/bluetooth/btservice/AdapterService;
.super Landroid/app/Service;
.source "AdapterService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;,
        Lcom/android/bluetooth/btservice/AdapterService$1;,
        Lcom/android/bluetooth/btservice/AdapterService$2;
    }
.end annotation


# static fields
.field static final A2DP_SOURCE_SINK_UUIDS:[Landroid/os/ParcelUuid;

.field private static final ACTION_ALARM_WAKEUP:Ljava/lang/String; = "com.android.bluetooth.btservice.action.ALARM_WAKEUP"

.field public static final ACTION_LOAD_ADAPTER_PROPERTIES:Ljava/lang/String; = "com.android.bluetooth.btservice.action.LOAD_ADAPTER_PROPERTIES"

.field public static final ACTION_SERVICE_STATE_CHANGED:Ljava/lang/String; = "com.android.bluetooth.btservice.action.STATE_CHANGED"

.field private static final ADAPTER_SERVICE_TYPE:I = 0x1

.field private static final AUTO_CONNECT_PROFILES_TIMEOUT:I = 0x1f4

.field public static final BLUETOOTH_ADMIN_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH_ADMIN"

.field static final BLUETOOTH_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH"

.field public static final BLUETOOTH_PRIVILEGED:Ljava/lang/String; = "android.permission.BLUETOOTH_PRIVILEGED"

.field private static final CONNECT_OTHER_PROFILES_TIMEOUT:I = 0x1770

.field private static final CONNECT_OTHER_PROFILES_TIMEOUT_AUTO:I = 0x7d0

.field private static final CONNECT_OTHER_PROFILES_TIMEOUT_DELAYED:I = 0x2710

.field private static final DBG:Z = false

.field public static final EXTRA_ACTION:Ljava/lang/String; = "action"

.field private static final MESSAGE_ACCESS_PERMISSION_PREFERENCE_FILE:Ljava/lang/String; = "message_access_permission"

.field private static final MESSAGE_AUTO_CONNECT_PROFILES:I = 0x32

.field private static final MESSAGE_CONNECT_OTHER_PROFILES:I = 0x1e

.field private static final MESSAGE_PROFILE_CONNECTION_STATE_CHANGED:I = 0x14

.field private static final MESSAGE_PROFILE_INIT_PRIORITIES:I = 0x28

.field private static final MESSAGE_PROFILE_SERVICE_STATE_CHANGED:I = 0x1

.field private static final MIN_ADVT_INSTANCES_FOR_MA:I = 0x5

.field private static final MIN_OFFLOADED_FILTERS:I = 0xa

.field private static final MIN_OFFLOADED_SCAN_STORAGE_BYTES:I = 0x400

.field private static final PHONEBOOK_ACCESS_PERMISSION_PREFERENCE_FILE:Ljava/lang/String; = "phonebook_access_permission"

.field public static final PROFILE_CONN_CONNECTED:I = 0x1

.field public static final PROFILE_CONN_REJECTED:I = 0x2

.field static final RECEIVE_MAP_PERM:Ljava/lang/String; = "android.permission.RECEIVE_BLUETOOTH_MAP"

.field private static final SIM_ACCESS_PERMISSION_PREFERENCE_FILE:Ljava/lang/String; = "sim_access_permission"

.field private static final TAG:Ljava/lang/String; = "BluetoothAdapterService"

.field private static final TRACE_REF:Z

.field private static final delayConnectTimeoutDevice:[Ljava/lang/String;

.field private static mScanmode:I

.field private static sAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

.field private static sRefCount:I


# instance fields
.field private mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

.field private mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

.field private final mAlarmBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mBinder:Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;

.field private mBondStateMachine:Lcom/android/bluetooth/btservice/BondStateMachine;

.field private mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/bluetooth/IBluetoothCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mCleaningUp:Z

.field private mCurrentRequestId:I

.field private mEnergyUsedTotalVoltAmpSecMicro:I

.field private final mHandler:Landroid/os/Handler;

.field private mIdleTimeTotalMs:I

.field private mJniCallbacks:Lcom/android/bluetooth/btservice/JniCallbacks;

.field private mNativeAvailable:Z

.field private mPendingAlarm:Landroid/app/PendingIntent;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mProfileObserver:Lcom/android/bluetooth/btservice/ProfileObserver;

.field private mProfileServicesState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mProfiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/bluetooth/btservice/ProfileService;",
            ">;"
        }
    .end annotation
.end field

.field private mProfilesStarted:Z

.field private mQuietmode:Z

.field private mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

.field private mRxTimeTotalMs:I

.field private mSdpManager:Lcom/android/bluetooth/sdp/SdpManager;

.field private mStackReportedState:I

.field private mTxTimeTotalMs:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWakeLockName:Ljava/lang/String;


# direct methods
.method static synthetic -get0()I
    .locals 1

    sget v0, Lcom/android/bluetooth/btservice/AdapterService;->mScanmode:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/bluetooth/btservice/AdapterService;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mPendingAlarm:Landroid/app/PendingIntent;

    return-object p1
.end method

.method static synthetic -set1(I)I
    .locals 0

    sput p0, Lcom/android/bluetooth/btservice/AdapterService;->mScanmode:I

    return p0
.end method

.method static synthetic -wrap0(Lcom/android/bluetooth/btservice/AdapterService;)Landroid/bluetooth/BluetoothActivityEnergyInfo;
    .locals 1

    invoke-direct {p0}, Lcom/android/bluetooth/btservice/AdapterService;->reportActivityInfo()Landroid/bluetooth/BluetoothActivityEnergyInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/bluetooth/btservice/AdapterService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/bluetooth/btservice/AdapterService;->isActivityAndEnergyReportingSupported()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/bluetooth/btservice/AdapterService;Ljava/lang/String;I)V
    .locals 0
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "state"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/btservice/AdapterService;->processProfileServiceStateChanged(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/bluetooth/btservice/AdapterService;Landroid/bluetooth/BluetoothDevice;III)V
    .locals 0
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "profileId"    # I
    .param p3, "newState"    # I
    .param p4, "prevState"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/bluetooth/btservice/AdapterService;->processProfileStateChanged(Landroid/bluetooth/BluetoothDevice;III)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/bluetooth/btservice/AdapterService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/bluetooth/btservice/AdapterService;->isAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/bluetooth/btservice/AdapterService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/btservice/AdapterService;->alarmFiredNative()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/bluetooth/btservice/AdapterService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/btservice/AdapterService;->autoConnectProfilesDelayed()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/bluetooth/btservice/AdapterService;Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/bluetooth/btservice/AdapterService;Ljava/io/FileDescriptor;)V
    .locals 0
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->dump(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/bluetooth/btservice/AdapterService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/btservice/AdapterService;->getActivityEnergyInfoFromController()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/bluetooth/btservice/AdapterService;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "firstProfileStatus"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/btservice/AdapterService;->processConnectOtherProfiles(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/bluetooth/btservice/AdapterService;Landroid/bluetooth/BluetoothDevice;[Landroid/os/ParcelUuid;)V
    .locals 0
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "uuids"    # [Landroid/os/ParcelUuid;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/btservice/AdapterService;->processInitProfilePriorities(Landroid/bluetooth/BluetoothDevice;[Landroid/os/ParcelUuid;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 97
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "00:23:3D"

    aput-object v1, v0, v3

    .line 98
    const-string/jumbo v1, "00:23:01"

    aput-object v1, v0, v4

    .line 99
    const-string/jumbo v1, "00:0C:8A"

    aput-object v1, v0, v5

    .line 100
    const-string/jumbo v1, "E0:75:0A"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 101
    const-string/jumbo v1, "00:0C:36"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 96
    sput-object v0, Lcom/android/bluetooth/btservice/AdapterService;->delayConnectTimeoutDevice:[Ljava/lang/String;

    .line 103
    sput v3, Lcom/android/bluetooth/btservice/AdapterService;->sRefCount:I

    .line 128
    new-array v0, v5, [Landroid/os/ParcelUuid;

    .line 129
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->AudioSource:Landroid/os/ParcelUuid;

    aput-object v1, v0, v3

    .line 130
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->AudioSink:Landroid/os/ParcelUuid;

    aput-object v1, v0, v4

    .line 128
    sput-object v0, Lcom/android/bluetooth/btservice/AdapterService;->A2DP_SOURCE_SINK_UUIDS:[Landroid/os/ParcelUuid;

    .line 148
    const-string/jumbo v0, "/system/lib/libbluetooth_jni.so"

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 149
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->classInitNative()V

    .line 89
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 214
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mProfiles:Ljava/util/ArrayList;

    .line 194
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mSdpManager:Lcom/android/bluetooth/sdp/SdpManager;

    .line 199
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mProfileServicesState:Ljava/util/HashMap;

    .line 203
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mQuietmode:Z

    .line 688
    new-instance v0, Lcom/android/bluetooth/btservice/AdapterService$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/btservice/AdapterService$1;-><init>(Lcom/android/bluetooth/btservice/AdapterService;)V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHandler:Landroid/os/Handler;

    .line 2526
    new-instance v0, Lcom/android/bluetooth/btservice/AdapterService$2;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/btservice/AdapterService$2;-><init>(Lcom/android/bluetooth/btservice/AdapterService;)V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAlarmBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 213
    return-void
.end method

.method private acquireWakeLock(Ljava/lang/String;)Z
    .locals 2
    .param p1, "lockName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 2404
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    .line 2405
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mWakeLockName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Multiple wake lock acquisition attempted; aborting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/AdapterService;->errorLog(Ljava/lang/String;)V

    .line 2407
    const/4 v0, 0x0

    return v0

    .line 2411
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2412
    return v1

    .line 2416
    :cond_1
    iput-object p1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mWakeLockName:Ljava/lang/String;

    .line 2417
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0, v1, p1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 2418
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2419
    return v1
.end method

.method private adjustOtherHandsfreePriorities(Lcom/android/bluetooth/hfpclient/HeadsetClientService;Landroid/bluetooth/BluetoothDevice;)V
    .locals 6
    .param p1, "headsetClientService"    # Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    .param p2, "connectedDevice"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 1926
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->getBondedDevices()[Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    .line 1927
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    .line 1928
    const/16 v5, 0x3e8

    .line 1927
    if-lt v4, v5, :cond_0

    .line 1929
    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1926
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1930
    :cond_1
    const/16 v4, 0x64

    invoke-virtual {p1, v0, v4}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_1

    .line 1925
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_2
    return-void
.end method

.method private adjustOtherHeadsetPriorities(Lcom/android/bluetooth/hfp/HeadsetService;Ljava/util/List;)V
    .locals 6
    .param p1, "hsService"    # Lcom/android/bluetooth/hfp/HeadsetService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/bluetooth/hfp/HeadsetService;",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1916
    .local p2, "connectedDeviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->getBondedDevices()[Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    .line 1917
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p1, v0}, Lcom/android/bluetooth/hfp/HeadsetService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    const/16 v5, 0x3e8

    if-lt v4, v5, :cond_0

    .line 1918
    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1916
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1919
    :cond_1
    const/16 v4, 0x64

    invoke-virtual {p1, v0, v4}, Lcom/android/bluetooth/hfp/HeadsetService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_1

    .line 1915
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_2
    return-void
.end method

.method private adjustOtherSinkPriorities(Lcom/android/bluetooth/a2dp/A2dpService;Ljava/util/List;)V
    .locals 6
    .param p1, "a2dpService"    # Lcom/android/bluetooth/a2dp/A2dpService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/bluetooth/a2dp/A2dpService;",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1937
    .local p2, "connectedDeviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->getBondedDevices()[Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    .line 1938
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p1, v0}, Lcom/android/bluetooth/a2dp/A2dpService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    const/16 v5, 0x3e8

    if-lt v4, v5, :cond_0

    .line 1939
    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1937
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1940
    :cond_1
    const/16 v4, 0x64

    invoke-virtual {p1, v0, v4}, Lcom/android/bluetooth/a2dp/A2dpService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_1

    .line 1936
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_2
    return-void
.end method

.method private adjustOtherSrcPriorities(Lcom/android/bluetooth/a2dp/A2dpSinkService;Landroid/bluetooth/BluetoothDevice;)V
    .locals 6
    .param p1, "a2dpSinkService"    # Lcom/android/bluetooth/a2dp/A2dpSinkService;
    .param p2, "connectedDevice"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 1947
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->getBondedDevices()[Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    .line 1948
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p1, v0}, Lcom/android/bluetooth/a2dp/A2dpSinkService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    const/16 v5, 0x3e8

    if-lt v4, v5, :cond_0

    .line 1949
    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1947
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1950
    :cond_1
    const/16 v4, 0x64

    invoke-virtual {p1, v0, v4}, Lcom/android/bluetooth/a2dp/A2dpSinkService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_1

    .line 1946
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_2
    return-void
.end method

.method private native alarmFiredNative()V
.end method

.method private autoConnectA2dp()V
    .locals 7

    .prologue
    .line 1690
    invoke-static {}, Lcom/android/bluetooth/a2dp/A2dpService;->getA2dpService()Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v0

    .line 1691
    .local v0, "a2dpSservice":Lcom/android/bluetooth/a2dp/A2dpService;
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->getBondedDevices()[Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 1692
    .local v1, "bondedDevices":[Landroid/bluetooth/BluetoothDevice;
    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 1693
    :cond_0
    return-void

    .line 1695
    :cond_1
    const/4 v3, 0x0

    array-length v4, v1

    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v2, v1, v3

    .line 1696
    .local v2, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v0, v2}, Lcom/android/bluetooth/a2dp/A2dpService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v5

    const/16 v6, 0x3e8

    if-ne v5, v6, :cond_2

    .line 1697
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "autoConnectA2dp() - Connecting A2DP with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    .line 1698
    invoke-virtual {v0, v2}, Lcom/android/bluetooth/a2dp/A2dpService;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 1695
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1689
    .end local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_3
    return-void
.end method

.method private autoConnectA2dpSink()V
    .locals 7

    .prologue
    .line 1703
    invoke-static {}, Lcom/android/bluetooth/a2dp/A2dpSinkService;->getA2dpSinkService()Lcom/android/bluetooth/a2dp/A2dpSinkService;

    move-result-object v0

    .line 1704
    .local v0, "a2dpSinkService":Lcom/android/bluetooth/a2dp/A2dpSinkService;
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->getBondedDevices()[Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 1705
    .local v1, "bondedDevices":[Landroid/bluetooth/BluetoothDevice;
    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 1706
    :cond_0
    return-void

    .line 1708
    :cond_1
    const/4 v3, 0x0

    array-length v4, v1

    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v2, v1, v3

    .line 1709
    .local v2, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v0, v2}, Lcom/android/bluetooth/a2dp/A2dpSinkService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v5

    const/16 v6, 0x3e8

    if-ne v5, v6, :cond_2

    .line 1710
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "autoConnectA2dp() - Connecting A2DP Sink with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    .line 1711
    invoke-virtual {v0, v2}, Lcom/android/bluetooth/a2dp/A2dpSinkService;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 1708
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1702
    .end local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_3
    return-void
.end method

.method private autoConnectHandsfree()V
    .locals 8

    .prologue
    .line 1718
    invoke-static {}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getHeadsetClientService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v2

    .line 1719
    .local v2, "headsetClientService":Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->getBondedDevices()[Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 1720
    .local v0, "bondedDevices":[Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_0

    if-nez v2, :cond_1

    .line 1721
    :cond_0
    return-void

    .line 1723
    :cond_1
    const/4 v3, 0x0

    array-length v4, v0

    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v1, v0, v3

    .line 1724
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v2, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v5

    .line 1725
    const/16 v6, 0x3e8

    .line 1724
    if-ne v5, v6, :cond_2

    .line 1726
    const-string/jumbo v5, "BluetoothAdapterService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Auto Connecting Headset Profile with device "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1727
    invoke-virtual {v2, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 1723
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1716
    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_3
    return-void
.end method

.method private autoConnectHeadset()V
    .locals 7

    .prologue
    .line 1675
    invoke-static {}, Lcom/android/bluetooth/hfp/HeadsetService;->getHeadsetService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v2

    .line 1677
    .local v2, "hsService":Lcom/android/bluetooth/hfp/HeadsetService;
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->getBondedDevices()[Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 1678
    .local v0, "bondedDevices":[Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_0

    if-nez v2, :cond_1

    .line 1679
    :cond_0
    return-void

    .line 1681
    :cond_1
    const/4 v3, 0x0

    array-length v4, v0

    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v1, v0, v3

    .line 1682
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v2, v1}, Lcom/android/bluetooth/hfp/HeadsetService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v5

    const/16 v6, 0x3e8

    if-ne v5, v6, :cond_2

    .line 1683
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "autoConnectHeadset() - Connecting HFP with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    .line 1684
    invoke-virtual {v2, v1}, Lcom/android/bluetooth/hfp/HeadsetService;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 1681
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1674
    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_3
    return-void
.end method

.method private autoConnectProfilesDelayed()V
    .locals 2

    .prologue
    .line 1658
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    .line 1659
    const-string/jumbo v0, "BT is not ON. Exiting autoConnect"

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/AdapterService;->errorLog(Ljava/lang/String;)V

    .line 1660
    return-void

    .line 1662
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->isQuietModeEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1663
    const-string/jumbo v0, "Initiate auto connection on BT on..."

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    .line 1664
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/AdapterService;->autoConnectHeadset()V

    .line 1665
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/AdapterService;->autoConnectA2dp()V

    .line 1666
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/AdapterService;->autoConnectHandsfree()V

    .line 1667
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/AdapterService;->autoConnectA2dpSink()V

    .line 1657
    :goto_0
    return-void

    .line 1670
    :cond_1
    const-string/jumbo v0, "BT is in Quiet mode. No auto connections"

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private native cancelDiscoveryNative()Z
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupNative()V
.end method

.method private static declared-synchronized clearAdapterService()V
    .locals 2

    .prologue
    const-class v0, Lcom/android/bluetooth/btservice/AdapterService;

    monitor-enter v0

    .line 184
    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/android/bluetooth/btservice/AdapterService;->sAdapterService:Lcom/android/bluetooth/btservice/AdapterService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 183
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private native connectSocketNative([BI[BII)I
.end method

.method static convertScanModeFromHal(I)I
    .locals 1
    .param p0, "mode"    # I

    .prologue
    .line 2365
    packed-switch p0, :pswitch_data_0

    .line 2374
    const/4 v0, -0x1

    return v0

    .line 2367
    :pswitch_0
    const/16 v0, 0x14

    return v0

    .line 2369
    :pswitch_1
    const/16 v0, 0x15

    return v0

    .line 2371
    :pswitch_2
    const/16 v0, 0x17

    return v0

    .line 2365
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static convertScanModeToHal(I)I
    .locals 1
    .param p0, "mode"    # I

    .prologue
    .line 2352
    packed-switch p0, :pswitch_data_0

    .line 2361
    :pswitch_0
    const/4 v0, -0x1

    return v0

    .line 2354
    :pswitch_1
    const/4 v0, 0x0

    return v0

    .line 2356
    :pswitch_2
    const/4 v0, 0x1

    return v0

    .line 2358
    :pswitch_3
    const/4 v0, 0x2

    return v0

    .line 2352
    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private native createSocketChannelNative(ILjava/lang/String;[BII)I
.end method

.method private debugLog(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 2518
    return-void
.end method

.method private dump(Ljava/io/FileDescriptor;)V
    .locals 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .prologue
    .line 2483
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2484
    .local v5, "sb":Ljava/lang/StringBuilder;
    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterService;->mProfiles:Ljava/util/ArrayList;

    monitor-enter v7

    .line 2485
    :try_start_0
    iget-object v6, p0, Lcom/android/bluetooth/btservice/AdapterService;->mProfiles:Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "profile$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/btservice/ProfileService;

    .line 2486
    .local v3, "profile":Lcom/android/bluetooth/btservice/ProfileService;
    invoke-virtual {v3, v5}, Lcom/android/bluetooth/btservice/ProfileService;->dump(Ljava/lang/StringBuilder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2484
    .end local v3    # "profile":Lcom/android/bluetooth/btservice/ProfileService;
    .end local v4    # "profile$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .restart local v4    # "profile$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit v7

    .line 2491
    const/4 v1, 0x0

    .line 2493
    .local v1, "fw":Ljava/io/FileWriter;
    :try_start_1
    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, p1}, Ljava/io/FileWriter;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2494
    .end local v1    # "fw":Ljava/io/FileWriter;
    .local v2, "fw":Ljava/io/FileWriter;
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2498
    if-eqz v2, :cond_1

    .line 2500
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    :goto_1
    move-object v1, v2

    .line 2508
    .end local v2    # "fw":Ljava/io/FileWriter;
    :cond_2
    :goto_2
    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->dumpNative(Ljava/io/FileDescriptor;)V

    .line 2481
    return-void

    .line 2501
    .restart local v2    # "fw":Ljava/io/FileWriter;
    :catch_0
    move-exception v0

    .line 2502
    .local v0, "ex":Ljava/io/IOException;
    const-string/jumbo v6, "IOException closing a file after writing the profile status"

    invoke-direct {p0, v6}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    goto :goto_1

    .line 2495
    .end local v0    # "ex":Ljava/io/IOException;
    .end local v2    # "fw":Ljava/io/FileWriter;
    .restart local v1    # "fw":Ljava/io/FileWriter;
    :catch_1
    move-exception v0

    .line 2496
    .end local v1    # "fw":Ljava/io/FileWriter;
    .restart local v0    # "ex":Ljava/io/IOException;
    :goto_3
    :try_start_4
    const-string/jumbo v6, "IOException writing profile status!"

    invoke-direct {p0, v6}, Lcom/android/bluetooth/btservice/AdapterService;->errorLog(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2498
    if-eqz v1, :cond_2

    .line 2500
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 2501
    :catch_2
    move-exception v0

    .line 2502
    const-string/jumbo v6, "IOException closing a file after writing the profile status"

    invoke-direct {p0, v6}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    goto :goto_2

    .line 2497
    .end local v0    # "ex":Ljava/io/IOException;
    :catchall_1
    move-exception v6

    .line 2498
    :goto_4
    if-eqz v1, :cond_3

    .line 2500
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 2497
    :cond_3
    :goto_5
    throw v6

    .line 2501
    :catch_3
    move-exception v0

    .line 2502
    .restart local v0    # "ex":Ljava/io/IOException;
    const-string/jumbo v7, "IOException closing a file after writing the profile status"

    invoke-direct {p0, v7}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    goto :goto_5

    .line 2497
    .end local v0    # "ex":Ljava/io/IOException;
    .restart local v2    # "fw":Ljava/io/FileWriter;
    :catchall_2
    move-exception v6

    move-object v1, v2

    .end local v2    # "fw":Ljava/io/FileWriter;
    .local v1, "fw":Ljava/io/FileWriter;
    goto :goto_4

    .line 2495
    .end local v1    # "fw":Ljava/io/FileWriter;
    .restart local v2    # "fw":Ljava/io/FileWriter;
    :catch_4
    move-exception v0

    .restart local v0    # "ex":Ljava/io/IOException;
    move-object v1, v2

    .end local v2    # "fw":Ljava/io/FileWriter;
    .restart local v1    # "fw":Ljava/io/FileWriter;
    goto :goto_3
.end method

.method private native dumpNative(Ljava/io/FileDescriptor;)V
.end method

.method private energyInfoCallback(IIJJJJ)V
    .locals 5
    .param p1, "status"    # I
    .param p2, "ctrl_state"    # I
    .param p3, "tx_time"    # J
    .param p5, "rx_time"    # J
    .param p7, "idle_time"    # J
    .param p9, "energy_used"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2443
    if-ltz p2, :cond_1

    .line 2444
    const/4 v0, 0x3

    if-gt p2, v0, :cond_1

    .line 2445
    iput p2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mStackReportedState:I

    .line 2446
    iget v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mTxTimeTotalMs:I

    int-to-long v0, v0

    add-long/2addr v0, p3

    long-to-int v0, v0

    iput v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mTxTimeTotalMs:I

    .line 2447
    iget v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRxTimeTotalMs:I

    int-to-long v0, v0

    add-long/2addr v0, p5

    long-to-int v0, v0

    iput v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRxTimeTotalMs:I

    .line 2448
    iget v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mIdleTimeTotalMs:I

    int-to-long v0, v0

    add-long/2addr v0, p7

    long-to-int v0, v0

    iput v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mIdleTimeTotalMs:I

    .line 2451
    const-wide/16 v0, 0x0

    cmp-long v0, p9, v0

    if-nez v0, :cond_0

    .line 2452
    iget v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mTxTimeTotalMs:I

    invoke-direct {p0}, Lcom/android/bluetooth/btservice/AdapterService;->getTxCurrentMa()I

    move-result v1

    mul-int/2addr v0, v1

    .line 2453
    iget v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRxTimeTotalMs:I

    invoke-direct {p0}, Lcom/android/bluetooth/btservice/AdapterService;->getRxCurrentMa()I

    move-result v2

    mul-int/2addr v1, v2

    .line 2452
    add-int/2addr v0, v1

    .line 2454
    iget v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mIdleTimeTotalMs:I

    invoke-direct {p0}, Lcom/android/bluetooth/btservice/AdapterService;->getIdleCurrentMa()I

    move-result v2

    mul-int/2addr v1, v2

    .line 2452
    add-int/2addr v0, v1

    int-to-double v0, v0

    .line 2454
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/AdapterService;->getOperatingVolt()D

    move-result-wide v2

    .line 2452
    mul-double/2addr v0, v2

    double-to-long p9, v0

    .line 2456
    :cond_0
    iget v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mEnergyUsedTotalVoltAmpSecMicro:I

    int-to-long v0, v0

    add-long/2addr v0, p9

    long-to-int v0, v0

    iput v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mEnergyUsedTotalVoltAmpSecMicro:I

    .line 2459
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "energyInfoCallback() status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2460
    const-string/jumbo v1, "tx_time = "

    .line 2459
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2460
    const-string/jumbo v1, "rx_time = "

    .line 2459
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2461
    const-string/jumbo v1, "idle_time = "

    .line 2459
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p7, p8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2461
    const-string/jumbo v1, "energy_used = "

    .line 2459
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p9, p10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2462
    const-string/jumbo v1, "ctrl_state = "

    .line 2459
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    .line 2442
    return-void
.end method

.method private errorLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 2523
    const-string/jumbo v0, "BluetoothAdapterService"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2522
    return-void
.end method

.method private getActivityEnergyInfoFromController()V
    .locals 2

    .prologue
    .line 2298
    const-string/jumbo v0, "android.permission.BLUETOOTH_PRIVILEGED"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2299
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/AdapterService;->isActivityAndEnergyReportingSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2300
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/AdapterService;->readEnergyInfo()I

    .line 2297
    :cond_0
    return-void
.end method

.method public static declared-synchronized getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;
    .locals 4

    .prologue
    const/4 v2, 0x0

    const-class v1, Lcom/android/bluetooth/btservice/AdapterService;

    monitor-enter v1

    .line 154
    :try_start_0
    sget-object v0, Lcom/android/bluetooth/btservice/AdapterService;->sAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/bluetooth/btservice/AdapterService;->sAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    iget-boolean v0, v0, Lcom/android/bluetooth/btservice/AdapterService;->mCleaningUp:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    monitor-exit v1

    .line 165
    return-object v2

    .line 155
    :cond_1
    :try_start_1
    const-string/jumbo v0, "BluetoothAdapterService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getAdapterService() - returning "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/bluetooth/btservice/AdapterService;->sAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    sget-object v0, Lcom/android/bluetooth/btservice/AdapterService;->sAdapterService:Lcom/android/bluetooth/btservice/AdapterService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getIdleCurrentMa()I
    .locals 2

    .prologue
    .line 2466
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0073

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method private getOperatingVolt()D
    .locals 4

    .prologue
    .line 2478
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0076

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private getRxCurrentMa()I
    .locals 2

    .prologue
    .line 2474
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0074

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method private native getSocketOptNative(III[B)I
.end method

.method private getTxCurrentMa()I
    .locals 2

    .prologue
    .line 2470
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0075

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method private native initNative()Z
.end method

.method private native interopDatabaseAddNative(I[BI)V
.end method

.method private native interopDatabaseClearNative()V
.end method

.method private isActivityAndEnergyReportingSupported()Z
    .locals 2

    .prologue
    .line 2293
    const-string/jumbo v0, "android.permission.BLUETOOTH_PRIVILEGED"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2294
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->isActivityAndEnergyReportingSupported()Z

    move-result v0

    return v0
.end method

.method private isAvailable()Z
    .locals 1

    .prologue
    .line 815
    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mCleaningUp:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isConnectTimeoutDelayApplicable(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 1733
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 1734
    .local v0, "deviceAddress":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1735
    .local v2, "isConnectionTimeoutDelayed":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v3, Lcom/android/bluetooth/btservice/AdapterService;->delayConnectTimeoutDevice:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 1736
    sget-object v3, Lcom/android/bluetooth/btservice/AdapterService;->delayConnectTimeoutDevice:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 1737
    const/4 v2, 0x1

    .line 1735
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1740
    :cond_1
    return v2
.end method

.method private native pinReplyNative([BZI[B)Z
.end method

.method private processConnectOtherProfiles(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 21
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "firstProfileStatus"    # I

    .prologue
    .line 1775
    const-string/jumbo v18, "BluetoothAdapterService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "device is "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1776
    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/btservice/AdapterService;->getState()I

    move-result v18

    const/16 v19, 0xc

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    .line 1777
    return-void

    .line 1779
    :cond_0
    const-string/jumbo v18, "persist.service.bt.a2dp.sink"

    .line 1780
    const/16 v19, 0x0

    .line 1779
    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    .line 1781
    .local v14, "isA2dpSink":Z
    const-string/jumbo v18, "persist.service.bt.hfp.client"

    .line 1782
    const/16 v19, 0x0

    .line 1781
    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    .line 1784
    .local v15, "isHfpClient":Z
    const/4 v6, 0x0

    .line 1785
    .local v6, "a2dpService":Lcom/android/bluetooth/a2dp/A2dpService;
    const/4 v13, 0x0

    .line 1786
    .local v13, "hsService":Lcom/android/bluetooth/hfp/HeadsetService;
    const/4 v7, 0x0

    .line 1787
    .local v7, "a2dpSinkService":Lcom/android/bluetooth/a2dp/A2dpSinkService;
    const/4 v9, 0x0

    .line 1789
    .local v9, "hsClientService":Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    if-eqz v14, :cond_4

    .line 1790
    invoke-static {}, Lcom/android/bluetooth/a2dp/A2dpSinkService;->getA2dpSinkService()Lcom/android/bluetooth/a2dp/A2dpSinkService;

    move-result-object v7

    .line 1794
    .end local v6    # "a2dpService":Lcom/android/bluetooth/a2dp/A2dpService;
    .end local v7    # "a2dpSinkService":Lcom/android/bluetooth/a2dp/A2dpSinkService;
    :goto_0
    if-eqz v15, :cond_5

    .line 1795
    invoke-static {}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getHeadsetClientService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v9

    .line 1801
    .end local v9    # "hsClientService":Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    .end local v13    # "hsService":Lcom/android/bluetooth/hfp/HeadsetService;
    :goto_1
    if-eqz v13, :cond_1

    if-nez v6, :cond_2

    .line 1802
    :cond_1
    if-nez v14, :cond_2

    if-eqz v15, :cond_6

    .line 1805
    :cond_2
    if-eqz v7, :cond_3

    if-nez v9, :cond_7

    .line 1806
    :cond_3
    if-eqz v14, :cond_7

    .line 1805
    if-eqz v15, :cond_7

    .line 1807
    return-void

    .line 1792
    .restart local v6    # "a2dpService":Lcom/android/bluetooth/a2dp/A2dpService;
    .restart local v7    # "a2dpSinkService":Lcom/android/bluetooth/a2dp/A2dpSinkService;
    .restart local v9    # "hsClientService":Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    .restart local v13    # "hsService":Lcom/android/bluetooth/hfp/HeadsetService;
    :cond_4
    invoke-static {}, Lcom/android/bluetooth/a2dp/A2dpService;->getA2dpService()Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v6

    .local v6, "a2dpService":Lcom/android/bluetooth/a2dp/A2dpService;
    goto :goto_0

    .line 1797
    .end local v6    # "a2dpService":Lcom/android/bluetooth/a2dp/A2dpService;
    .end local v7    # "a2dpSinkService":Lcom/android/bluetooth/a2dp/A2dpSinkService;
    :cond_5
    invoke-static {}, Lcom/android/bluetooth/hfp/HeadsetService;->getHeadsetService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v13

    .local v13, "hsService":Lcom/android/bluetooth/hfp/HeadsetService;
    goto :goto_1

    .line 1803
    .end local v9    # "hsClientService":Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    .end local v13    # "hsService":Lcom/android/bluetooth/hfp/HeadsetService;
    :cond_6
    return-void

    .line 1809
    :cond_7
    const/4 v3, 0x0

    .line 1810
    .local v3, "a2dpConnected":Z
    const/4 v10, 0x0

    .line 1814
    .local v10, "hsConnected":Z
    if-eqz v14, :cond_8

    .line 1815
    invoke-virtual {v7}, Lcom/android/bluetooth/a2dp/A2dpSinkService;->getConnectedDevices()Ljava/util/List;

    move-result-object v2

    .line 1819
    .local v2, "a2dpConnDevList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :goto_2
    if-eqz v15, :cond_9

    .line 1820
    invoke-virtual {v9}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getConnectedDevices()Ljava/util/List;

    move-result-object v8

    .line 1830
    .local v8, "hfConnDevList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :goto_3
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_a

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_a

    .line 1831
    const/16 v18, 0x1

    move/from16 v0, v18

    move/from16 v1, p2

    if-ne v0, v1, :cond_a

    .line 1832
    return-void

    .line 1817
    .end local v2    # "a2dpConnDevList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v8    # "hfConnDevList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_8
    invoke-virtual {v6}, Lcom/android/bluetooth/a2dp/A2dpService;->getConnectedDevices()Ljava/util/List;

    move-result-object v2

    .restart local v2    # "a2dpConnDevList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    goto :goto_2

    .line 1822
    :cond_9
    invoke-virtual {v13}, Lcom/android/bluetooth/hfp/HeadsetService;->getConnectedDevices()Ljava/util/List;

    move-result-object v8

    .restart local v8    # "hfConnDevList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    goto :goto_3

    .line 1834
    :cond_a
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_c

    .line 1835
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "a2dpDevice$iterator":Ljava/util/Iterator;
    :cond_b
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 1837
    .local v4, "a2dpDevice":Landroid/bluetooth/BluetoothDevice;
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 1839
    const/4 v3, 0x1

    goto :goto_4

    .line 1843
    .end local v4    # "a2dpDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v5    # "a2dpDevice$iterator":Ljava/util/Iterator;
    :cond_c
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_e

    .line 1844
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "hsDevice$iterator":Ljava/util/Iterator;
    :cond_d
    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_e

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/bluetooth/BluetoothDevice;

    .line 1846
    .local v11, "hsDevice":Landroid/bluetooth/BluetoothDevice;
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 1848
    const/4 v10, 0x1

    goto :goto_5

    .line 1855
    .end local v11    # "hsDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v12    # "hsDevice$iterator":Ljava/util/Iterator;
    :cond_e
    const-string/jumbo v18, "BluetoothAdapterService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "HF connected for device : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    invoke-interface {v8, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1856
    const-string/jumbo v18, "BluetoothAdapterService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "A2DP connected for device : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1858
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_f

    if-eqz v9, :cond_f

    .line 1859
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v18

    const/16 v19, 0x64

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_f

    .line 1860
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 1861
    return-void

    .line 1863
    :cond_f
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_10

    if-eqz v7, :cond_10

    .line 1864
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Lcom/android/bluetooth/a2dp/A2dpSinkService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v18

    const/16 v19, 0x64

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_10

    .line 1865
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Lcom/android/bluetooth/a2dp/A2dpSinkService;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 1866
    return-void

    .line 1870
    :cond_10
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_13

    move-object/from16 v0, p1

    invoke-interface {v8, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_13

    .line 1891
    :cond_11
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_18

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_18

    .line 1773
    :cond_12
    :goto_6
    return-void

    .line 1871
    :cond_13
    if-eqz v13, :cond_11

    .line 1872
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/android/bluetooth/hfp/HeadsetService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v18

    const/16 v19, 0x64

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_11

    .line 1873
    if-nez v3, :cond_14

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/android/bluetooth/a2dp/A2dpService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v18

    if-nez v18, :cond_11

    .line 1875
    :cond_14
    const-string/jumbo v18, "persist.bt.max.hs.connections"

    const/16 v19, 0x1

    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v17

    .line 1877
    .local v17, "maxHfpConnectionSysProp":I
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_15

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_15

    .line 1878
    const-string/jumbo v18, "BluetoothAdapterService"

    const-string/jumbo v19, "HFP is already connected, ignore"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1879
    return-void

    .line 1884
    :cond_15
    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_16

    .line 1885
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/android/bluetooth/hfp/HeadsetService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v18

    const/16 v19, 0x64

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_17

    .line 1886
    :cond_16
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/android/bluetooth/hfp/HeadsetService;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_6

    .line 1888
    :cond_17
    const-string/jumbo v18, "BluetoothAdapterService"

    const-string/jumbo v19, "do not initiate connect as A2dp is not connected"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1892
    .end local v17    # "maxHfpConnectionSysProp":I
    :cond_18
    if-eqz v6, :cond_12

    .line 1893
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/android/bluetooth/a2dp/A2dpService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v18

    const/16 v19, 0x64

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_12

    .line 1894
    if-nez v10, :cond_19

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/android/bluetooth/hfp/HeadsetService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v18

    if-nez v18, :cond_12

    .line 1896
    :cond_19
    const-string/jumbo v18, "persist.bt.max.a2dp.connections"

    const/16 v19, 0x1

    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v16

    .line 1898
    .local v16, "maxA2dpConnectionSysProp":I
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_1a

    const/16 v18, 0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_1a

    .line 1899
    const-string/jumbo v18, "BluetoothAdapterService"

    const-string/jumbo v19, "A2DP is already connected, ignore"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1900
    return-void

    .line 1905
    :cond_1a
    move-object/from16 v0, p1

    invoke-interface {v8, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_1b

    .line 1906
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/android/bluetooth/a2dp/A2dpService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v18

    const/16 v19, 0x64

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_1c

    .line 1907
    :cond_1b
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/android/bluetooth/a2dp/A2dpService;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    goto/16 :goto_6

    .line 1909
    :cond_1c
    const-string/jumbo v18, "BluetoothAdapterService"

    const-string/jumbo v19, "do not initiate connect as HFP is not connected"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6
.end method

.method private processInitProfilePriorities(Landroid/bluetooth/BluetoothDevice;[Landroid/os/ParcelUuid;)V
    .locals 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "uuids"    # [Landroid/os/ParcelUuid;

    .prologue
    const/16 v6, 0x64

    const/4 v5, -0x1

    .line 249
    invoke-static {}, Lcom/android/bluetooth/hid/HidService;->getHidService()Lcom/android/bluetooth/hid/HidService;

    move-result-object v3

    .line 250
    .local v3, "hidService":Lcom/android/bluetooth/hid/HidService;
    invoke-static {}, Lcom/android/bluetooth/a2dp/A2dpService;->getA2dpService()Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v0

    .line 251
    .local v0, "a2dpService":Lcom/android/bluetooth/a2dp/A2dpService;
    invoke-static {}, Lcom/android/bluetooth/a2dp/A2dpSinkService;->getA2dpSinkService()Lcom/android/bluetooth/a2dp/A2dpSinkService;

    move-result-object v1

    .line 252
    .local v1, "a2dpSinkService":Lcom/android/bluetooth/a2dp/A2dpSinkService;
    invoke-static {}, Lcom/android/bluetooth/hfp/HeadsetService;->getHeadsetService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v2

    .line 256
    .local v2, "headsetService":Lcom/android/bluetooth/hfp/HeadsetService;
    if-eqz v3, :cond_1

    .line 257
    sget-object v4, Landroid/bluetooth/BluetoothUuid;->Hid:Landroid/os/ParcelUuid;

    invoke-static {p2, v4}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 258
    sget-object v4, Landroid/bluetooth/BluetoothUuid;->Hogp:Landroid/os/ParcelUuid;

    invoke-static {p2, v4}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v4

    .line 256
    if-eqz v4, :cond_1

    .line 259
    :cond_0
    invoke-virtual {v3, p1}, Lcom/android/bluetooth/hid/HidService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    if-ne v4, v5, :cond_1

    .line 260
    invoke-virtual {v3, p1, v6}, Lcom/android/bluetooth/hid/HidService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 264
    :cond_1
    if-eqz v0, :cond_3

    .line 265
    sget-object v4, Landroid/bluetooth/BluetoothUuid;->AudioSink:Landroid/os/ParcelUuid;

    invoke-static {p2, v4}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 266
    sget-object v4, Landroid/bluetooth/BluetoothUuid;->AdvAudioDist:Landroid/os/ParcelUuid;

    invoke-static {p2, v4}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v4

    .line 265
    if-eqz v4, :cond_3

    .line 267
    :cond_2
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dp/A2dpService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    if-ne v4, v5, :cond_3

    .line 268
    invoke-virtual {v0, p1, v6}, Lcom/android/bluetooth/a2dp/A2dpService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 271
    :cond_3
    if-eqz v1, :cond_5

    .line 272
    sget-object v4, Landroid/bluetooth/BluetoothUuid;->AudioSource:Landroid/os/ParcelUuid;

    invoke-static {p2, v4}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 273
    sget-object v4, Landroid/bluetooth/BluetoothUuid;->AdvAudioDist:Landroid/os/ParcelUuid;

    invoke-static {p2, v4}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v4

    .line 272
    if-eqz v4, :cond_5

    .line 274
    :cond_4
    invoke-virtual {v1, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    if-ne v4, v5, :cond_5

    .line 275
    invoke-virtual {v1, p1, v6}, Lcom/android/bluetooth/a2dp/A2dpSinkService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 278
    :cond_5
    if-eqz v2, :cond_7

    .line 279
    sget-object v4, Landroid/bluetooth/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    invoke-static {p2, v4}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 280
    sget-object v4, Landroid/bluetooth/BluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    invoke-static {p2, v4}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v4

    .line 279
    if-eqz v4, :cond_7

    .line 281
    :cond_6
    invoke-virtual {v2, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    if-ne v4, v5, :cond_7

    .line 282
    invoke-virtual {v2, p1, v6}, Lcom/android/bluetooth/hfp/HeadsetService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 248
    :cond_7
    return-void
.end method

.method private processProfileServiceStateChanged(Ljava/lang/String;I)V
    .locals 12
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "state"    # I

    .prologue
    .line 327
    const/4 v0, 0x0

    .line 333
    .local v0, "doUpdate":Z
    iget-object v9, p0, Lcom/android/bluetooth/btservice/AdapterService;->mProfileServicesState:Ljava/util/HashMap;

    monitor-enter v9

    .line 334
    :try_start_0
    iget-object v8, p0, Lcom/android/bluetooth/btservice/AdapterService;->mProfileServicesState:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 335
    .local v7, "prevState":Ljava/lang/Integer;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-eq v8, p2, :cond_0

    .line 336
    iget-object v8, p0, Lcom/android/bluetooth/btservice/AdapterService;->mProfileServicesState:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, p1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    const/4 v0, 0x1

    :cond_0
    monitor-exit v9

    .line 340
    const-string/jumbo v8, "BluetoothAdapterService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onProfileServiceStateChange() serviceName="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 341
    const-string/jumbo v10, ", state="

    .line 340
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 341
    const-string/jumbo v10, ", doUpdate="

    .line 340
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    if-nez v0, :cond_1

    .line 344
    return-void

    .line 333
    .end local v7    # "prevState":Ljava/lang/Integer;
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8

    .line 347
    .restart local v7    # "prevState":Ljava/lang/Integer;
    :cond_1
    iget-object v9, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    monitor-enter v9

    .line 348
    :try_start_1
    iget-object v8, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-virtual {v8}, Lcom/android/bluetooth/btservice/AdapterState;->isTurningOff()Z

    move-result v5

    .line 349
    .local v5, "isTurningOff":Z
    iget-object v8, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-virtual {v8}, Lcom/android/bluetooth/btservice/AdapterState;->isTurningOn()Z

    move-result v6

    .line 350
    .local v6, "isTurningOn":Z
    iget-object v8, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-virtual {v8}, Lcom/android/bluetooth/btservice/AdapterState;->isBleTurningOn()Z

    move-result v4

    .line 351
    .local v4, "isBleTurningOn":Z
    iget-object v8, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-virtual {v8}, Lcom/android/bluetooth/btservice/AdapterState;->isBleTurningOff()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    .local v3, "isBleTurningOff":Z
    monitor-exit v9

    .line 354
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "processProfileServiceStateChanged() - serviceName="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 355
    const-string/jumbo v9, " isTurningOn="

    .line 354
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 355
    const-string/jumbo v9, " isTurningOff="

    .line 354
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 356
    const-string/jumbo v9, " isBleTurningOn="

    .line 354
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 356
    const-string/jumbo v9, " isBleTurningOff="

    .line 354
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    .line 358
    if-eqz v4, :cond_2

    .line 359
    const-string/jumbo v8, "com.android.bluetooth.gatt.GattService"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 360
    const-string/jumbo v8, "GattService is started"

    invoke-direct {p0, v8}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    .line 361
    iget-object v8, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    iget-object v9, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Lcom/android/bluetooth/btservice/AdapterState;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/bluetooth/btservice/AdapterState;->sendMessage(Landroid/os/Message;)V

    .line 362
    return-void

    .line 347
    .end local v3    # "isBleTurningOff":Z
    .end local v4    # "isBleTurningOn":Z
    .end local v5    # "isTurningOff":Z
    .end local v6    # "isTurningOn":Z
    :catchall_1
    move-exception v8

    monitor-exit v9

    throw v8

    .line 365
    .restart local v3    # "isBleTurningOff":Z
    .restart local v4    # "isBleTurningOn":Z
    .restart local v5    # "isTurningOff":Z
    .restart local v6    # "isTurningOn":Z
    :cond_2
    if-eqz v3, :cond_3

    .line 366
    const-string/jumbo v8, "com.android.bluetooth.gatt.GattService"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 367
    const-string/jumbo v8, "GattService stopped"

    invoke-direct {p0, v8}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    .line 368
    iget-object v8, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    iget-object v9, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    const/16 v10, 0x19

    invoke-virtual {v9, v10}, Lcom/android/bluetooth/btservice/AdapterState;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/bluetooth/btservice/AdapterState;->sendMessage(Landroid/os/Message;)V

    .line 369
    return-void

    .line 372
    :cond_3
    if-eqz v5, :cond_8

    .line 376
    iget-object v9, p0, Lcom/android/bluetooth/btservice/AdapterService;->mProfileServicesState:Ljava/util/HashMap;

    monitor-enter v9

    .line 377
    :try_start_2
    iget-object v8, p0, Lcom/android/bluetooth/btservice/AdapterService;->mProfileServicesState:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 378
    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :cond_4
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 379
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 380
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Service: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    .line 381
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string/jumbo v10, "com.android.bluetooth.gatt.GattService"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 382
    const-string/jumbo v8, "Skip GATT service - already started before"

    invoke-direct {p0, v8}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 376
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :catchall_2
    move-exception v8

    monitor-exit v9

    throw v8

    .line 385
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :cond_5
    :try_start_3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/16 v10, 0xa

    if-eq v10, v8, :cond_4

    .line 386
    const-string/jumbo v10, "BluetoothAdapterService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "onProfileServiceStateChange() - Profile still running: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 387
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 386
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    monitor-exit v9

    .line 388
    return-void

    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_6
    monitor-exit v9

    .line 392
    const-string/jumbo v8, "BluetoothAdapterService"

    const-string/jumbo v9, "onProfileServiceStateChange() - All profile services stopped..."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/bluetooth/btservice/AdapterService;->mProfilesStarted:Z

    .line 395
    iget-object v8, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    iget-object v9, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    const/16 v10, 0x1a

    invoke-virtual {v9, v10}, Lcom/android/bluetooth/btservice/AdapterState;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/bluetooth/btservice/AdapterState;->sendMessage(Landroid/os/Message;)V

    .line 326
    .end local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :cond_7
    :goto_1
    return-void

    .line 397
    :cond_8
    if-eqz v6, :cond_7

    .line 398
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/AdapterService;->updateInteropDatabase()V

    .line 402
    iget-object v9, p0, Lcom/android/bluetooth/btservice/AdapterService;->mProfileServicesState:Ljava/util/HashMap;

    monitor-enter v9

    .line 403
    :try_start_4
    iget-object v8, p0, Lcom/android/bluetooth/btservice/AdapterService;->mProfileServicesState:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 404
    .restart local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :cond_9
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 405
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 406
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Service: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    .line 407
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string/jumbo v10, "com.android.bluetooth.gatt.GattService"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 408
    const-string/jumbo v8, "BluetoothAdapterService"

    const-string/jumbo v10, "Skip GATT service - already started before"

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_2

    .line 402
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :catchall_3
    move-exception v8

    monitor-exit v9

    throw v8

    .line 412
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :cond_a
    :try_start_5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/16 v10, 0xc

    if-eq v10, v8, :cond_9

    .line 413
    const-string/jumbo v10, "BluetoothAdapterService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "onProfileServiceStateChange() - Profile still not running:"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 414
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 413
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    monitor-exit v9

    .line 415
    return-void

    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_b
    monitor-exit v9

    .line 419
    const-string/jumbo v8, "BluetoothAdapterService"

    const-string/jumbo v9, "onProfileServiceStateChange() - All profile services started."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/bluetooth/btservice/AdapterService;->mProfilesStarted:Z

    .line 422
    iget-object v8, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    iget-object v9, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/android/bluetooth/btservice/AdapterState;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/bluetooth/btservice/AdapterState;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_1
.end method

.method private processProfileStateChanged(Landroid/bluetooth/BluetoothDevice;III)V
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "profileId"    # I
    .param p3, "newState"    # I
    .param p4, "prevState"    # I

    .prologue
    const/16 v5, 0xb

    const/4 v4, 0x1

    const/4 v3, 0x2

    .line 287
    if-eq p2, v3, :cond_0

    if-ne p2, v4, :cond_4

    .line 289
    :cond_0
    :goto_0
    if-ne p3, v3, :cond_1

    .line 291
    invoke-virtual {p0, p1, v4}, Lcom/android/bluetooth/btservice/AdapterService;->connectOtherProfile(Landroid/bluetooth/BluetoothDevice;I)V

    .line 292
    invoke-virtual {p0, p1, p2}, Lcom/android/bluetooth/btservice/AdapterService;->setProfileAutoConnectionPriority(Landroid/bluetooth/BluetoothDevice;I)V

    .line 294
    :cond_1
    if-ne p2, v5, :cond_2

    if-ne p3, v3, :cond_2

    .line 295
    invoke-virtual {p0, p1, p2}, Lcom/android/bluetooth/btservice/AdapterService;->setProfileAutoConnectionPriority(Landroid/bluetooth/BluetoothDevice;I)V

    .line 297
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mBinder:Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;

    .line 298
    .local v0, "binder":Landroid/bluetooth/IBluetooth$Stub;
    if-eqz v0, :cond_3

    .line 300
    :try_start_0
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/bluetooth/IBluetooth$Stub;->sendConnectionStateChange(Landroid/bluetooth/BluetoothDevice;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    :cond_3
    :goto_1
    return-void

    .line 288
    .end local v0    # "binder":Landroid/bluetooth/IBluetooth$Stub;
    :cond_4
    const/16 v2, 0x10

    if-eq p2, v2, :cond_0

    if-ne p2, v5, :cond_1

    goto :goto_0

    .line 301
    .restart local v0    # "binder":Landroid/bluetooth/IBluetooth$Stub;
    :catch_0
    move-exception v1

    .line 302
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/bluetooth/btservice/AdapterService;->errorLog(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private native readEnergyInfo()I
.end method

.method private releaseWakeLock(Ljava/lang/String;)Z
    .locals 2
    .param p1, "lockName"    # Ljava/lang/String;

    .prologue
    .line 2427
    monitor-enter p0

    .line 2428
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    .line 2429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Repeated wake lock release; aborting release: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/AdapterService;->errorLog(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2430
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 2433
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2434
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 2435
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mWakeLockName:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 2437
    const/4 v0, 0x1

    return v0

    .line 2427
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private reportActivityInfo()Landroid/bluetooth/BluetoothActivityEnergyInfo;
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 2305
    const-string/jumbo v1, "android.permission.BLUETOOTH_PRIVILEGED"

    const-string/jumbo v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2307
    new-instance v0, Landroid/bluetooth/BluetoothActivityEnergyInfo;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget v3, p0, Lcom/android/bluetooth/btservice/AdapterService;->mStackReportedState:I

    .line 2308
    iget v4, p0, Lcom/android/bluetooth/btservice/AdapterService;->mTxTimeTotalMs:I

    int-to-long v4, v4

    iget v6, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRxTimeTotalMs:I

    int-to-long v6, v6

    iget v8, p0, Lcom/android/bluetooth/btservice/AdapterService;->mIdleTimeTotalMs:I

    int-to-long v8, v8

    iget v10, p0, Lcom/android/bluetooth/btservice/AdapterService;->mEnergyUsedTotalVoltAmpSecMicro:I

    int-to-long v10, v10

    .line 2307
    invoke-direct/range {v0 .. v11}, Landroid/bluetooth/BluetoothActivityEnergyInfo;-><init>(JIJJJJ)V

    .line 2311
    .local v0, "info":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    iput v12, p0, Lcom/android/bluetooth/btservice/AdapterService;->mStackReportedState:I

    .line 2312
    iput v12, p0, Lcom/android/bluetooth/btservice/AdapterService;->mTxTimeTotalMs:I

    .line 2313
    iput v12, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRxTimeTotalMs:I

    .line 2314
    iput v12, p0, Lcom/android/bluetooth/btservice/AdapterService;->mIdleTimeTotalMs:I

    .line 2315
    iput v12, p0, Lcom/android/bluetooth/btservice/AdapterService;->mEnergyUsedTotalVoltAmpSecMicro:I

    .line 2316
    return-object v0
.end method

.method private static declared-synchronized setAdapterService(Lcom/android/bluetooth/btservice/AdapterService;)V
    .locals 2
    .param p0, "instance"    # Lcom/android/bluetooth/btservice/AdapterService;

    .prologue
    const-class v1, Lcom/android/bluetooth/btservice/AdapterService;

    monitor-enter v1

    .line 169
    if-eqz p0, :cond_0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mCleaningUp:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit v1

    .line 168
    return-void

    .line 171
    :cond_1
    :try_start_1
    sput-object p0, Lcom/android/bluetooth/btservice/AdapterService;->sAdapterService:Lcom/android/bluetooth/btservice/AdapterService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private setGattProfileServiceState([Ljava/lang/Class;I)V
    .locals 10
    .param p1, "services"    # [Ljava/lang/Class;
    .param p2, "state"    # I

    .prologue
    const/16 v9, 0xa

    .line 730
    const/16 v7, 0xc

    if-eq p2, v7, :cond_0

    if-eq p2, v9, :cond_0

    .line 731
    const-string/jumbo v7, "BluetoothAdapterService"

    const-string/jumbo v8, "setGattProfileServiceState(): invalid state...Leaving..."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    return-void

    .line 735
    :cond_0
    const/16 v0, 0xa

    .line 736
    .local v0, "expectedCurrentState":I
    const/16 v3, 0xb

    .line 738
    .local v3, "pendingState":I
    if-ne p2, v9, :cond_1

    .line 739
    const/16 v0, 0xc

    .line 740
    const/16 v3, 0xd

    .line 743
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v7, p1

    if-ge v1, v7, :cond_6

    .line 744
    aget-object v7, p1, v1

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 745
    .local v4, "serviceName":Ljava/lang/String;
    aget-object v7, p1, v1

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    .line 747
    .local v6, "simpleName":Ljava/lang/String;
    const-string/jumbo v7, "GattService"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 748
    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterService;->mProfileServicesState:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 750
    .local v5, "serviceState":Ljava/lang/Integer;
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eq v7, v0, :cond_4

    .line 751
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setProfileServiceState() - Unable to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 752
    if-ne p2, v9, :cond_3

    const-string/jumbo v7, "start"

    .line 751
    :goto_1
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 753
    const-string/jumbo v8, " service "

    .line 751
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 754
    const-string/jumbo v8, ". Invalid state: "

    .line 751
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    .line 743
    .end local v5    # "serviceState":Ljava/lang/Integer;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 752
    .restart local v5    # "serviceState":Ljava/lang/Integer;
    :cond_3
    const-string/jumbo v7, "stop"

    goto :goto_1

    .line 757
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setProfileServiceState() - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 758
    if-ne p2, v9, :cond_5

    const-string/jumbo v7, "Stopping"

    .line 757
    :goto_2
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 759
    const-string/jumbo v8, " service "

    .line 757
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    .line 760
    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterService;->mProfileServicesState:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 761
    new-instance v2, Landroid/content/Intent;

    aget-object v7, p1, v1

    invoke-direct {v2, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 762
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v7, "action"

    const-string/jumbo v8, "com.android.bluetooth.btservice.action.STATE_CHANGED"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 763
    const-string/jumbo v7, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {v2, v7, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 764
    invoke-virtual {p0, v2}, Lcom/android/bluetooth/btservice/AdapterService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 765
    return-void

    .line 758
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_5
    const-string/jumbo v7, "Starting"

    goto :goto_2

    .line 729
    .end local v4    # "serviceName":Ljava/lang/String;
    .end local v5    # "serviceState":Ljava/lang/Integer;
    .end local v6    # "simpleName":Ljava/lang/String;
    :cond_6
    return-void
.end method

.method private setProfileServiceState([Ljava/lang/Class;I)V
    .locals 11
    .param p1, "services"    # [Ljava/lang/Class;
    .param p2, "state"    # I

    .prologue
    const/16 v10, 0xa

    .line 773
    const/16 v7, 0xc

    if-eq p2, v7, :cond_0

    if-eq p2, v10, :cond_0

    .line 774
    const-string/jumbo v7, "setProfileServiceState() - Invalid state, leaving..."

    invoke-direct {p0, v7}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    .line 775
    return-void

    .line 778
    :cond_0
    const/16 v0, 0xa

    .line 779
    .local v0, "expectedCurrentState":I
    const/16 v3, 0xb

    .line 780
    .local v3, "pendingState":I
    if-ne p2, v10, :cond_1

    .line 781
    const/16 v0, 0xc

    .line 782
    const/16 v3, 0xd

    .line 784
    :cond_1
    const-string/jumbo v7, "BluetoothAdapterService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Total profiles ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, p1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v7, p1

    if-ge v1, v7, :cond_6

    .line 787
    aget-object v7, p1, v1

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 788
    .local v4, "serviceName":Ljava/lang/String;
    aget-object v7, p1, v1

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    .line 790
    .local v6, "simpleName":Ljava/lang/String;
    const-string/jumbo v7, "GattService"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 786
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 792
    :cond_2
    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterService;->mProfileServicesState:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 793
    .local v5, "serviceState":Ljava/lang/Integer;
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eq v7, v0, :cond_4

    .line 794
    const-string/jumbo v8, "BluetoothAdapterService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setProfileServiceState() - Unable to "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 795
    if-ne p2, v10, :cond_3

    const-string/jumbo v7, "start"

    .line 794
    :goto_2
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 796
    const-string/jumbo v9, " service "

    .line 794
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 797
    const-string/jumbo v9, ". Invalid state: "

    .line 794
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 795
    :cond_3
    const-string/jumbo v7, "stop"

    goto :goto_2

    .line 801
    :cond_4
    const-string/jumbo v8, "BluetoothAdapterService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setProfileServiceState() - "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 802
    if-ne p2, v10, :cond_5

    const-string/jumbo v7, "Stopping"

    .line 801
    :goto_3
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 803
    const-string/jumbo v9, " service "

    .line 801
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterService;->mProfileServicesState:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 806
    new-instance v2, Landroid/content/Intent;

    aget-object v7, p1, v1

    invoke-direct {v2, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 807
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v7, "action"

    const-string/jumbo v8, "com.android.bluetooth.btservice.action.STATE_CHANGED"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 808
    const-string/jumbo v7, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {v2, v7, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 809
    const/high16 v7, 0x10000000

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 810
    invoke-virtual {p0, v2}, Lcom/android/bluetooth/btservice/AdapterService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_1

    .line 802
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_5
    const-string/jumbo v7, "Starting"

    goto :goto_3

    .line 772
    .end local v4    # "serviceName":Ljava/lang/String;
    .end local v5    # "serviceState":Ljava/lang/Integer;
    .end local v6    # "simpleName":Ljava/lang/String;
    :cond_6
    return-void
.end method

.method private native setSocketOptNative(III[BI)I
.end method

.method private setWakeAlarm(JZ)Z
    .locals 7
    .param p1, "delayMillis"    # J
    .param p3, "shouldWake"    # Z

    .prologue
    .line 2381
    monitor-enter p0

    .line 2382
    :try_start_0
    iget-object v4, p0, Lcom/android/bluetooth/btservice/AdapterService;->mPendingAlarm:Landroid/app/PendingIntent;

    if-eqz v4, :cond_0

    .line 2383
    iget-object v4, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v5, p0, Lcom/android/bluetooth/btservice/AdapterService;->mPendingAlarm:Landroid/app/PendingIntent;

    invoke-virtual {v4, v5}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 2386
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long v2, v4, p1

    .line 2387
    .local v2, "wakeupTime":J
    if-eqz p3, :cond_1

    .line 2388
    const/4 v1, 0x2

    .line 2391
    .local v1, "type":I
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v4, "com.android.bluetooth.btservice.action.ALARM_WAKEUP"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2392
    .local v0, "intent":Landroid/content/Intent;
    const/4 v4, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {p0, v4, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iput-object v4, p0, Lcom/android/bluetooth/btservice/AdapterService;->mPendingAlarm:Landroid/app/PendingIntent;

    .line 2393
    iget-object v4, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v5, p0, Lcom/android/bluetooth/btservice/AdapterService;->mPendingAlarm:Landroid/app/PendingIntent;

    invoke-virtual {v4, v1, v2, v3, v5}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2394
    const/4 v4, 0x1

    monitor-exit p0

    return v4

    .line 2389
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "type":I
    :cond_1
    const/4 v1, 0x3

    .restart local v1    # "type":I
    goto :goto_0

    .line 2381
    .end local v1    # "type":I
    .end local v2    # "wakeupTime":J
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private native sspReplyNative([BIZI)Z
.end method

.method private native startDiscoveryNative()Z
.end method

.method private updateInteropDatabase()V
    .locals 17

    .prologue
    .line 427
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/btservice/AdapterService;->interopDatabaseClearNative()V

    .line 429
    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/btservice/AdapterService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    .line 430
    const-string/jumbo v13, "bluetooth_interoperability_list"

    .line 429
    invoke-static {v12, v13}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 431
    .local v7, "interop_string":Ljava/lang/String;
    if-nez v7, :cond_0

    return-void

    .line 432
    :cond_0
    const-string/jumbo v12, "BluetoothAdapterService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "updateInteropDatabase: ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    const-string/jumbo v12, ";"

    invoke-virtual {v7, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 435
    .local v3, "entries":[Ljava/lang/String;
    const/4 v12, 0x0

    array-length v13, v3

    :goto_0
    if-ge v12, v13, :cond_7

    aget-object v4, v3, v12

    .line 436
    .local v4, "entry":Ljava/lang/String;
    const-string/jumbo v14, ","

    invoke-virtual {v4, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 437
    .local v11, "tokens":[Ljava/lang/String;
    array-length v14, v11

    const/4 v15, 0x2

    if-eq v14, v15, :cond_2

    .line 435
    :cond_1
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 440
    :cond_2
    const/4 v5, 0x0

    .line 442
    .local v5, "feature":I
    const/4 v14, 0x1

    :try_start_0
    aget-object v14, v11, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 449
    const/4 v14, 0x0

    aget-object v14, v11, v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    div-int/lit8 v8, v14, 0x3

    .line 450
    .local v8, "length":I
    const/4 v14, 0x1

    if-lt v8, v14, :cond_3

    const/4 v14, 0x6

    if-le v8, v14, :cond_4

    .line 451
    :cond_3
    const-string/jumbo v14, "BluetoothAdapterService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "updateInteropDatabase: Malformed address string \'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x0

    aget-object v16, v11, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "\'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 443
    .end local v8    # "length":I
    :catch_0
    move-exception v2

    .line 444
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v14, "BluetoothAdapterService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "updateInteropDatabase: Invalid feature \'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x1

    aget-object v16, v11, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "\'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 455
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .restart local v8    # "length":I
    :cond_4
    const/4 v14, 0x6

    new-array v1, v14, [B

    .line 456
    .local v1, "addr":[B
    const/4 v9, 0x0

    .line 457
    .local v9, "offset":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    const/4 v14, 0x0

    aget-object v14, v11, v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v6, v14, :cond_6

    .line 458
    const/4 v14, 0x0

    aget-object v14, v11, v14

    invoke-virtual {v14, v6}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x3a

    if-ne v14, v15, :cond_5

    .line 459
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 462
    :cond_5
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "offset":I
    .local v10, "offset":I
    const/4 v14, 0x0

    :try_start_1
    aget-object v14, v11, v14

    add-int/lit8 v15, v6, 0x2

    invoke-virtual {v14, v6, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x10

    invoke-static {v14, v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v14

    int-to-byte v14, v14

    aput-byte v14, v1, v9
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 467
    add-int/lit8 v6, v6, 0x2

    move v9, v10

    .end local v10    # "offset":I
    .restart local v9    # "offset":I
    goto :goto_2

    .line 463
    .end local v9    # "offset":I
    .restart local v10    # "offset":I
    :catch_1
    move-exception v2

    .line 464
    .restart local v2    # "e":Ljava/lang/NumberFormatException;
    const/4 v9, 0x0

    .line 472
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .end local v10    # "offset":I
    .restart local v9    # "offset":I
    :cond_6
    if-eqz v9, :cond_1

    .line 475
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v1, v8}, Lcom/android/bluetooth/btservice/AdapterService;->interopDatabaseAddNative(I[BI)V

    goto/16 :goto_1

    .line 426
    .end local v1    # "addr":[B
    .end local v4    # "entry":Ljava/lang/String;
    .end local v5    # "feature":I
    .end local v6    # "i":I
    .end local v8    # "length":I
    .end local v9    # "offset":I
    .end local v11    # "tokens":[Ljava/lang/String;
    :cond_7
    return-void
.end method


# virtual methods
.method BleOnProcessStart()V
    .locals 5

    .prologue
    .line 524
    const-string/jumbo v2, "BleOnProcessStart()"

    invoke-direct {p0, v2}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    .line 526
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 527
    const v3, 0x1120064

    .line 526
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 528
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/bluetooth/btservice/Config;->init(Landroid/content/Context;)V

    .line 531
    :cond_0
    invoke-static {}, Lcom/android/bluetooth/btservice/Config;->getSupportedProfiles()[Ljava/lang/Class;

    move-result-object v1

    .line 533
    .local v1, "supportedProfileServices":[Ljava/lang/Class;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 534
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mProfileServicesState:Ljava/util/HashMap;

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 536
    :cond_1
    new-instance v2, Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-direct {v2, p0}, Lcom/android/bluetooth/btservice/RemoteDevices;-><init>(Lcom/android/bluetooth/btservice/AdapterService;)V

    iput-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    .line 537
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/btservice/AdapterProperties;->init(Lcom/android/bluetooth/btservice/RemoteDevices;)V

    .line 539
    const-string/jumbo v2, "BleOnProcessStart() - Make Bond State Machine"

    invoke-direct {p0, v2}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    .line 540
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mPowerManager:Landroid/os/PowerManager;

    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    iget-object v4, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-static {v2, p0, v3, v4}, Lcom/android/bluetooth/btservice/BondStateMachine;->make(Landroid/os/PowerManager;Lcom/android/bluetooth/btservice/AdapterService;Lcom/android/bluetooth/btservice/AdapterProperties;Lcom/android/bluetooth/btservice/RemoteDevices;)Lcom/android/bluetooth/btservice/BondStateMachine;

    move-result-object v2

    iput-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mBondStateMachine:Lcom/android/bluetooth/btservice/BondStateMachine;

    .line 542
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mJniCallbacks:Lcom/android/bluetooth/btservice/JniCallbacks;

    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterService;->mBondStateMachine:Lcom/android/bluetooth/btservice/BondStateMachine;

    iget-object v4, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v2, v3, v4}, Lcom/android/bluetooth/btservice/JniCallbacks;->init(Lcom/android/bluetooth/btservice/BondStateMachine;Lcom/android/bluetooth/btservice/RemoteDevices;)V

    .line 545
    const/16 v2, 0xc

    invoke-direct {p0, v1, v2}, Lcom/android/bluetooth/btservice/AdapterService;->setGattProfileServiceState([Ljava/lang/Class;I)V

    .line 523
    return-void
.end method

.method public addProfile(Lcom/android/bluetooth/btservice/ProfileService;)V
    .locals 2
    .param p1, "profile"    # Lcom/android/bluetooth/btservice/ProfileService;

    .prologue
    .line 308
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mProfiles:Ljava/util/ArrayList;

    monitor-enter v1

    .line 309
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mProfiles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 307
    return-void

    .line 308
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public autoConnect()V
    .locals 4

    .prologue
    const/16 v2, 0x32

    .line 1649
    const-string/jumbo v1, "delay auto connect by 500 ms"

    invoke-direct {p0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    .line 1650
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1651
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->isQuietModeEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1652
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1653
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1648
    .end local v0    # "m":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method native cancelBondNative([B)Z
.end method

.method cancelBondProcess(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 1995
    const-string/jumbo v1, "android.permission.BLUETOOTH_ADMIN"

    const-string/jumbo v2, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1996
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/bluetooth/Utils;->getBytesFromAddress(Ljava/lang/String;)[B

    move-result-object v0

    .line 1997
    .local v0, "addr":[B
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/AdapterService;->cancelBondNative([B)Z

    move-result v1

    return v1
.end method

.method cancelDiscovery()Z
    .locals 2

    .prologue
    .line 1577
    const-string/jumbo v0, "android.permission.BLUETOOTH_ADMIN"

    .line 1578
    const-string/jumbo v1, "Need BLUETOOTH ADMIN permission"

    .line 1577
    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1580
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/AdapterService;->cancelDiscoveryNative()Z

    move-result v0

    return v0
.end method

.method cleanup()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 603
    const-string/jumbo v0, "cleanup()"

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    .line 604
    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mCleaningUp:Z

    if-eqz v0, :cond_0

    .line 605
    const-string/jumbo v0, "cleanup() - Service already starting to cleanup, ignoring request..."

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/AdapterService;->errorLog(Ljava/lang/String;)V

    .line 606
    return-void

    .line 609
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mCleaningUp:Z

    .line 611
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAlarmBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/AdapterService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 613
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mPendingAlarm:Landroid/app/PendingIntent;

    if-eqz v0, :cond_1

    .line 614
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mPendingAlarm:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 615
    iput-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mPendingAlarm:Landroid/app/PendingIntent;

    .line 620
    :cond_1
    monitor-enter p0

    .line 621
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_2

    .line 622
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 623
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    .line 627
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    if-eqz v0, :cond_3

    .line 628
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterState;->doQuit()V

    .line 629
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterState;->cleanup()V

    .line 632
    :cond_3
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mBondStateMachine:Lcom/android/bluetooth/btservice/BondStateMachine;

    if-eqz v0, :cond_4

    .line 633
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mBondStateMachine:Lcom/android/bluetooth/btservice/BondStateMachine;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/BondStateMachine;->doQuit()V

    .line 634
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mBondStateMachine:Lcom/android/bluetooth/btservice/BondStateMachine;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/BondStateMachine;->cleanup()V

    .line 637
    :cond_4
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    if-eqz v0, :cond_5

    .line 638
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/RemoteDevices;->cleanup()V

    .line 641
    :cond_5
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mSdpManager:Lcom/android/bluetooth/sdp/SdpManager;

    if-eqz v0, :cond_6

    .line 642
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mSdpManager:Lcom/android/bluetooth/sdp/SdpManager;

    invoke-virtual {v0}, Lcom/android/bluetooth/sdp/SdpManager;->cleanup()V

    .line 643
    iput-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mSdpManager:Lcom/android/bluetooth/sdp/SdpManager;

    .line 646
    :cond_6
    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mNativeAvailable:Z

    if-eqz v0, :cond_7

    .line 647
    const-string/jumbo v0, "cleanup() - Cleaning up adapter native"

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    .line 648
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/AdapterService;->cleanupNative()V

    .line 649
    iput-boolean v3, p0, Lcom/android/bluetooth/btservice/AdapterService;->mNativeAvailable:Z

    .line 652
    :cond_7
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    if-eqz v0, :cond_8

    .line 653
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->cleanup()V

    .line 656
    :cond_8
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mJniCallbacks:Lcom/android/bluetooth/btservice/JniCallbacks;

    if-eqz v0, :cond_9

    .line 657
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mJniCallbacks:Lcom/android/bluetooth/btservice/JniCallbacks;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/JniCallbacks;->cleanup()V

    .line 660
    :cond_9
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mProfileServicesState:Ljava/util/HashMap;

    if-eqz v0, :cond_a

    .line 661
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mProfileServicesState:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 664
    :cond_a
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->clearAdapterService()V

    .line 666
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mBinder:Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;

    if-eqz v0, :cond_b

    .line 667
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mBinder:Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->cleanup()Z

    .line 668
    iput-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mBinder:Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;

    .line 671
    :cond_b
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mCallbacks:Landroid/os/RemoteCallbackList;

    if-eqz v0, :cond_c

    .line 672
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->kill()V

    .line 675
    :cond_c
    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    .line 602
    return-void

    .line 620
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method configHciSnoopLog(Z)Z
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 2241
    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2242
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->configHciSnoopLogNative(Z)Z

    move-result v0

    return v0
.end method

.method native configHciSnoopLogNative(Z)Z
.end method

.method public connectOtherProfile(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 8
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "firstProfileStatus"    # I

    .prologue
    const/16 v7, 0x1e

    const/4 v6, 0x0

    .line 1744
    iget-object v4, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1745
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->isQuietModeEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1746
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    .line 1748
    .local v0, "featureUuids":[Landroid/os/ParcelUuid;
    sget-object v4, Lcom/android/bluetooth/btservice/AdapterService;->A2DP_SOURCE_SINK_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {v0, v4}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1749
    sget-object v4, Landroid/bluetooth/BluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    invoke-static {v0, v4}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1753
    :goto_0
    iget-object v4, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 1754
    .local v3, "m":Landroid/os/Message;
    iput-object p1, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1755
    iput p2, v3, Landroid/os/Message;->arg1:I

    .line 1757
    const-string/jumbo v4, "persist.service.bt.a2dp.sink"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1759
    .local v1, "isA2dpSink":Z
    const-string/jumbo v4, "persist.service.bt.hfp.client"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 1761
    .local v2, "isHfpClient":Z
    if-nez v1, :cond_0

    if-eqz v2, :cond_3

    .line 1762
    :cond_0
    iget-object v4, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x7d0

    invoke-virtual {v4, v3, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1743
    .end local v0    # "featureUuids":[Landroid/os/ParcelUuid;
    .end local v1    # "isA2dpSink":Z
    .end local v2    # "isHfpClient":Z
    .end local v3    # "m":Landroid/os/Message;
    :cond_1
    :goto_1
    return-void

    .line 1750
    .restart local v0    # "featureUuids":[Landroid/os/ParcelUuid;
    :cond_2
    const-string/jumbo v4, "BluetoothAdapterService"

    const-string/jumbo v5, "Initiate SDP for Missing UUID\'s support in remote"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1751
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->fetchUuidsWithSdp()Z

    goto :goto_0

    .line 1764
    .restart local v1    # "isA2dpSink":Z
    .restart local v2    # "isHfpClient":Z
    .restart local v3    # "m":Landroid/os/Message;
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->isConnectTimeoutDelayApplicable(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1765
    iget-object v4, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x2710

    invoke-virtual {v4, v3, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 1768
    :cond_4
    iget-object v4, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x1770

    invoke-virtual {v4, v3, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1
.end method

.method connectSocket(Landroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;II)Landroid/os/ParcelFileDescriptor;
    .locals 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "type"    # I
    .param p3, "uuid"    # Landroid/os/ParcelUuid;
    .param p4, "port"    # I
    .param p5, "flag"    # I

    .prologue
    .line 2205
    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2206
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/Utils;->getBytesFromAddress(Ljava/lang/String;)[B

    move-result-object v1

    .line 2207
    invoke-static {p3}, Lcom/android/bluetooth/Utils;->uuidToByteArray(Landroid/os/ParcelUuid;)[B

    move-result-object v3

    move-object v0, p0

    move v2, p2

    move v4, p4

    move v5, p5

    .line 2206
    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/btservice/AdapterService;->connectSocketNative([BI[BII)I

    move-result v6

    .line 2208
    .local v6, "fd":I
    if-gez v6, :cond_0

    .line 2209
    const-string/jumbo v0, "Failed to connect socket"

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/AdapterService;->errorLog(Ljava/lang/String;)V

    .line 2210
    const/4 v0, 0x0

    return-object v0

    .line 2212
    :cond_0
    invoke-static {v6}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method createBond(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 8
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "transport"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1616
    const-string/jumbo v3, "android.permission.BLUETOOTH_ADMIN"

    .line 1617
    const-string/jumbo v4, "Need BLUETOOTH ADMIN permission"

    .line 1616
    invoke-virtual {p0, v3, v4}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1618
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v3, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object v1

    .line 1619
    .local v1, "deviceProp":Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->getBondState()I

    move-result v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_0

    .line 1620
    return v6

    .line 1623
    :cond_0
    invoke-static {}, Lcom/android/bluetooth/a2dp/A2dpService;->getA2dpService()Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v0

    .line 1624
    .local v0, "a2dpService":Lcom/android/bluetooth/a2dp/A2dpService;
    if-eqz v0, :cond_1

    .line 1625
    invoke-virtual {v0, v5}, Lcom/android/bluetooth/a2dp/A2dpService;->isMulticastOngoing(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    .line 1624
    if-eqz v3, :cond_1

    .line 1626
    const-string/jumbo v3, "BluetoothAdapterService"

    const-string/jumbo v4, "A2dp Multicast is ongoing, ignore bonding"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1627
    return v6

    .line 1632
    :cond_1
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/AdapterService;->cancelDiscoveryNative()Z

    .line 1634
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterService;->mBondStateMachine:Lcom/android/bluetooth/btservice/BondStateMachine;

    invoke-virtual {v3, v7}, Lcom/android/bluetooth/btservice/BondStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1635
    .local v2, "msg":Landroid/os/Message;
    iput-object p1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1636
    iput p2, v2, Landroid/os/Message;->arg1:I

    .line 1637
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterService;->mBondStateMachine:Lcom/android/bluetooth/btservice/BondStateMachine;

    invoke-virtual {v3, v2}, Lcom/android/bluetooth/btservice/BondStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1638
    return v7
.end method

.method native createBondNative([BI)Z
.end method

.method public createMapMnsSdpRecord(Ljava/lang/String;IIII)I
    .locals 6
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "rfcommChannel"    # I
    .param p3, "l2capPsm"    # I
    .param p4, "version"    # I
    .param p5, "features"    # I

    .prologue
    .line 2336
    invoke-static {}, Lcom/android/bluetooth/sdp/SdpManager;->getDefaultManager()Lcom/android/bluetooth/sdp/SdpManager;

    move-result-object v0

    .local v0, "manager":Lcom/android/bluetooth/sdp/SdpManager;
    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 2337
    invoke-virtual/range {v0 .. v5}, Lcom/android/bluetooth/sdp/SdpManager;->createMapMnsRecord(Ljava/lang/String;IIII)I

    move-result v1

    return v1
.end method

.method public createPbapPceSdpRecord(Ljava/lang/String;I)I
    .locals 2
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "version"    # I

    .prologue
    .line 2342
    invoke-static {}, Lcom/android/bluetooth/sdp/SdpManager;->getDefaultManager()Lcom/android/bluetooth/sdp/SdpManager;

    move-result-object v0

    .line 2343
    .local v0, "manager":Lcom/android/bluetooth/sdp/SdpManager;
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/sdp/SdpManager;->createPbapPceRecord(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method createSocketChannel(ILjava/lang/String;Landroid/os/ParcelUuid;II)Landroid/os/ParcelFileDescriptor;
    .locals 7
    .param p1, "type"    # I
    .param p2, "serviceName"    # Ljava/lang/String;
    .param p3, "uuid"    # Landroid/os/ParcelUuid;
    .param p4, "port"    # I
    .param p5, "flag"    # I

    .prologue
    .line 2217
    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2219
    invoke-static {p3}, Lcom/android/bluetooth/Utils;->uuidToByteArray(Landroid/os/ParcelUuid;)[B

    move-result-object v3

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, p4

    move v5, p5

    .line 2218
    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/btservice/AdapterService;->createSocketChannelNative(ILjava/lang/String;[BII)I

    move-result v6

    .line 2220
    .local v6, "fd":I
    if-gez v6, :cond_0

    .line 2221
    const-string/jumbo v0, "Failed to create socket channel"

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/AdapterService;->errorLog(Ljava/lang/String;)V

    .line 2222
    const/4 v0, 0x0

    return-object v0

    .line 2224
    :cond_0
    invoke-static {v6}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method disable()Z
    .locals 3

    .prologue
    .line 1495
    const-string/jumbo v1, "android.permission.BLUETOOTH_ADMIN"

    const-string/jumbo v2, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1497
    const-string/jumbo v1, "disable() called..."

    invoke-direct {p0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    .line 1498
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    const/16 v2, 0x17

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/btservice/AdapterState;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1499
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/btservice/AdapterState;->sendMessage(Landroid/os/Message;)V

    .line 1500
    const/4 v1, 0x1

    return v1
.end method

.method native disableNative()Z
.end method

.method enable()Z
    .locals 1

    .prologue
    .line 1477
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/AdapterService;->enable(Z)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized enable(Z)Z
    .locals 3
    .param p1, "quietMode"    # Z

    .prologue
    monitor-enter p0

    .line 1485
    :try_start_0
    const-string/jumbo v1, "android.permission.BLUETOOTH_ADMIN"

    const-string/jumbo v2, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1487
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "enable() - Enable called with quiet mode status =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mQuietmode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    .line 1488
    iput-boolean p1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mQuietmode:Z

    .line 1489
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/btservice/AdapterState;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1490
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/btservice/AdapterState;->sendMessage(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1491
    const/4 v1, 0x1

    monitor-exit p0

    return v1

    .end local v0    # "m":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method native enableNative(Z)Z
.end method

.method public enableNoAutoConnect()Z
    .locals 1

    .prologue
    .line 1481
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/AdapterService;->enable(Z)Z

    move-result v0

    return v0
.end method

.method factoryReset()Z
    .locals 2

    .prologue
    .line 2246
    const-string/jumbo v0, "android.permission.BLUETOOTH_PRIVILEGED"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2247
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->factoryResetNative()Z

    move-result v0

    return v0
.end method

.method native factoryResetNative()Z
.end method

.method fetchRemoteUuids(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 2072
    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2073
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->fetchUuids(Landroid/bluetooth/BluetoothDevice;)V

    .line 2074
    const/4 v0, 0x1

    return v0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 2590
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->cleanup()V

    .line 2589
    return-void
.end method

.method getAdapterConnectionState()I
    .locals 2

    .prologue
    .line 1595
    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1596
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->getConnectionState()I

    move-result v0

    return v0
.end method

.method native getAdapterPropertiesNative()Z
.end method

.method native getAdapterPropertyNative(I)Z
.end method

.method getAddress()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1504
    const-string/jumbo v2, "android.permission.BLUETOOTH"

    const-string/jumbo v3, "Need BLUETOOTH permission"

    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1506
    const/4 v0, 0x0

    .line 1507
    .local v0, "addrString":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v2}, Lcom/android/bluetooth/btservice/AdapterProperties;->getAddress()[B

    move-result-object v1

    .line 1508
    .local v1, "address":[B
    invoke-static {v1}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method getBondState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 2013
    const-string/jumbo v1, "android.permission.BLUETOOTH"

    const-string/jumbo v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2014
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object v0

    .line 2015
    .local v0, "deviceProp":Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;
    if-nez v0, :cond_0

    .line 2016
    const/16 v1, 0xa

    return v1

    .line 2018
    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->getBondState()I

    move-result v1

    return v1
.end method

.method getBondedDevices()[Landroid/bluetooth/BluetoothDevice;
    .locals 2

    .prologue
    .line 1590
    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1591
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->getBondedDevices()[Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0
.end method

.method getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 2022
    const-string/jumbo v1, "android.permission.BLUETOOTH"

    const-string/jumbo v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2023
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/bluetooth/Utils;->getBytesFromAddress(Ljava/lang/String;)[B

    move-result-object v0

    .line 2024
    .local v0, "addr":[B
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/AdapterService;->getConnectionStateNative([B)I

    move-result v1

    return v1
.end method

.method native getConnectionStateNative([B)I
.end method

.method native getDevicePropertyNative([BI)Z
.end method

.method getDiscoverableTimeout()I
    .locals 2

    .prologue
    .line 1551
    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1553
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->getDiscoverableTimeout()I

    move-result v0

    return v0
.end method

.method getMessageAccessPermission(Landroid/bluetooth/BluetoothDevice;)I
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v3, 0x0

    .line 2144
    const-string/jumbo v1, "android.permission.BLUETOOTH"

    const-string/jumbo v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2145
    const-string/jumbo v1, "message_access_permission"

    invoke-virtual {p0, v1, v3}, Lcom/android/bluetooth/btservice/AdapterService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2147
    .local v0, "pref":Landroid/content/SharedPreferences;
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2148
    return v3

    .line 2150
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2151
    const/4 v1, 0x1

    .line 2150
    :goto_0
    return v1

    .line 2151
    :cond_1
    const/4 v1, 0x2

    goto :goto_0
.end method

.method getName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1518
    const-string/jumbo v1, "android.permission.BLUETOOTH"

    .line 1519
    const-string/jumbo v2, "Need BLUETOOTH permission"

    .line 1518
    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1522
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v1}, Lcom/android/bluetooth/btservice/AdapterProperties;->getName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1523
    :catch_0
    move-exception v0

    .line 1524
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getName() - Unexpected exception ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    .line 1526
    const/4 v1, 0x0

    return-object v1
.end method

.method public getNumOfAdvertisementInstancesSupported()I
    .locals 2

    .prologue
    .line 2259
    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2260
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->getNumOfAdvertisementInstancesSupported()I

    move-result v0

    return v0
.end method

.method public getNumOfOffloadedIrkSupported()I
    .locals 2

    .prologue
    .line 2274
    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2275
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->getNumOfOffloadedIrkSupported()I

    move-result v0

    return v0
.end method

.method public getNumOfOffloadedScanFilterSupported()I
    .locals 2

    .prologue
    .line 2279
    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2280
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->getNumOfOffloadedScanFilterSupported()I

    move-result v0

    return v0
.end method

.method public getOffloadedScanResultStorage()I
    .locals 2

    .prologue
    .line 2288
    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2289
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->getOffloadedScanResultStorage()I

    move-result v0

    return v0
.end method

.method getPhonebookAccessPermission(Landroid/bluetooth/BluetoothDevice;)I
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v3, 0x0

    .line 2119
    const-string/jumbo v1, "android.permission.BLUETOOTH"

    const-string/jumbo v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2120
    const-string/jumbo v1, "phonebook_access_permission"

    invoke-virtual {p0, v1, v3}, Lcom/android/bluetooth/btservice/AdapterService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2122
    .local v0, "pref":Landroid/content/SharedPreferences;
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2123
    return v3

    .line 2125
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2126
    const/4 v1, 0x1

    .line 2125
    :goto_0
    return v1

    .line 2126
    :cond_1
    const/4 v1, 0x2

    goto :goto_0
.end method

.method getProfileConnectionState(I)I
    .locals 2
    .param p1, "profile"    # I

    .prologue
    .line 1600
    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1602
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterProperties;->getProfileConnectionState(I)I

    move-result v0

    return v0
.end method

.method getRemoteAlias(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v3, 0x0

    .line 2042
    const-string/jumbo v1, "android.permission.BLUETOOTH"

    const-string/jumbo v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2043
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object v0

    .line 2044
    .local v0, "deviceProp":Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;
    if-nez v0, :cond_0

    return-object v3

    .line 2045
    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->getAlias()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method getRemoteClass(Landroid/bluetooth/BluetoothDevice;)I
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 2057
    const-string/jumbo v1, "android.permission.BLUETOOTH"

    const-string/jumbo v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2058
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object v0

    .line 2059
    .local v0, "deviceProp":Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 2061
    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->getBluetoothClass()I

    move-result v1

    return v1
.end method

.method native getRemoteMasInstancesNative([B)Z
.end method

.method getRemoteName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v3, 0x0

    .line 2028
    const-string/jumbo v1, "android.permission.BLUETOOTH"

    const-string/jumbo v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2029
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object v0

    .line 2030
    .local v0, "deviceProp":Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;
    if-nez v0, :cond_0

    return-object v3

    .line 2031
    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->getName()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method native getRemoteServicesNative([B)Z
.end method

.method getRemoteType(Landroid/bluetooth/BluetoothDevice;)I
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 2035
    const-string/jumbo v1, "android.permission.BLUETOOTH"

    const-string/jumbo v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2036
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object v0

    .line 2037
    .local v0, "deviceProp":Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 2038
    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->getDeviceType()I

    move-result v1

    return v1
.end method

.method getRemoteUuids(Landroid/bluetooth/BluetoothDevice;)[Landroid/os/ParcelUuid;
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v3, 0x0

    .line 2065
    const-string/jumbo v1, "android.permission.BLUETOOTH"

    const-string/jumbo v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2066
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object v0

    .line 2067
    .local v0, "deviceProp":Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;
    if-nez v0, :cond_0

    return-object v3

    .line 2068
    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v1

    return-object v1
.end method

.method getScanMode()I
    .locals 2

    .prologue
    .line 1537
    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1539
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->getScanMode()I

    move-result v0

    return v0
.end method

.method getSimAccessPermission(Landroid/bluetooth/BluetoothDevice;)I
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v3, 0x0

    .line 2169
    const-string/jumbo v1, "android.permission.BLUETOOTH"

    const-string/jumbo v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2170
    const-string/jumbo v1, "sim_access_permission"

    invoke-virtual {p0, v1, v3}, Lcom/android/bluetooth/btservice/AdapterService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2172
    .local v0, "pref":Landroid/content/SharedPreferences;
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2173
    return v3

    .line 2175
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2176
    const/4 v1, 0x1

    .line 2175
    :goto_0
    return v1

    .line 2176
    :cond_1
    const/4 v1, 0x2

    goto :goto_0
.end method

.method getSocketOpt(III[B)I
    .locals 2
    .param p1, "type"    # I
    .param p2, "channel"    # I
    .param p3, "optionName"    # I
    .param p4, "optionVal"    # [B

    .prologue
    .line 2235
    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2237
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/bluetooth/btservice/AdapterService;->getSocketOptNative(III[B)I

    move-result v0

    return v0
.end method

.method getState()I
    .locals 2

    .prologue
    .line 1471
    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1472
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->getState()I

    move-result v0

    return v0

    .line 1473
    :cond_0
    const/16 v0, 0xa

    return v0
.end method

.method public getTotalNumOfTrackableAdvertisements()I
    .locals 2

    .prologue
    .line 2320
    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2321
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->getTotalNumOfTrackableAdvertisements()I

    move-result v0

    return v0
.end method

.method getUuids()[Landroid/os/ParcelUuid;
    .locals 2

    .prologue
    .line 1512
    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1514
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    return-object v0
.end method

.method public initProfilePriorities(Landroid/bluetooth/BluetoothDevice;[Landroid/os/ParcelUuid;)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "mUuids"    # [Landroid/os/ParcelUuid;

    .prologue
    .line 236
    if-nez p2, :cond_0

    return-void

    .line 237
    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x28

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 238
    .local v2, "m":Landroid/os/Message;
    iput-object p1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 239
    array-length v3, p2

    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 240
    new-instance v0, Landroid/os/Bundle;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 241
    .local v0, "b":Landroid/os/Bundle;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p2

    if-ge v1, v3, :cond_1

    .line 242
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "uuids"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aget-object v4, p2, v1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 241
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 244
    :cond_1
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 245
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 235
    return-void
.end method

.method isDiscovering()Z
    .locals 2

    .prologue
    .line 1584
    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1586
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->isDiscovering()Z

    move-result v0

    return v0
.end method

.method isEnabled()Z
    .locals 2

    .prologue
    .line 1466
    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1467
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMultiAdvertisementSupported()Z
    .locals 2

    .prologue
    .line 2264
    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2265
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->getNumOfAdvertisementInstancesSupported()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPeripheralModeSupported()Z
    .locals 2

    .prologue
    .line 2284
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120063

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isQuietModeEnabled()Z
    .locals 2

    .prologue
    .line 1642
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isQuetModeEnabled() - Enabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mQuietmode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    .line 1643
    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mQuietmode:Z

    return v0
.end method

.method public isRpaOffloadSupported()Z
    .locals 2

    .prologue
    .line 2269
    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2270
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->isRpaOffloadSupported()Z

    move-result v0

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 506
    const-string/jumbo v0, "onBind()"

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    .line 507
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mBinder:Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;

    return-object v0
.end method

.method public onBrEdrDown()V
    .locals 3

    .prologue
    .line 2330
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/btservice/AdapterState;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2331
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/btservice/AdapterState;->sendMessage(Landroid/os/Message;)V

    .line 2329
    return-void
.end method

.method public onCreate()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 481
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 482
    const-string/jumbo v0, "onCreate()"

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    .line 483
    new-instance v0, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;-><init>(Lcom/android/bluetooth/btservice/AdapterService;)V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mBinder:Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;

    .line 484
    new-instance v0, Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/btservice/AdapterProperties;-><init>(Lcom/android/bluetooth/btservice/AdapterService;)V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    .line 485
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-static {p0, v0}, Lcom/android/bluetooth/btservice/AdapterState;->make(Lcom/android/bluetooth/btservice/AdapterService;Lcom/android/bluetooth/btservice/AdapterProperties;)Lcom/android/bluetooth/btservice/AdapterState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    .line 486
    new-instance v0, Lcom/android/bluetooth/btservice/JniCallbacks;

    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/btservice/JniCallbacks;-><init>(Lcom/android/bluetooth/btservice/AdapterState;Lcom/android/bluetooth/btservice/AdapterProperties;)V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mJniCallbacks:Lcom/android/bluetooth/btservice/JniCallbacks;

    .line 487
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/AdapterService;->initNative()Z

    .line 488
    iput-boolean v3, p0, Lcom/android/bluetooth/btservice/AdapterService;->mNativeAvailable:Z

    .line 489
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 491
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterPropertyNative(I)Z

    .line 492
    invoke-virtual {p0, v3}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterPropertyNative(I)Z

    .line 493
    const-string/jumbo v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/AdapterService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 494
    const-string/jumbo v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/AdapterService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mPowerManager:Landroid/os/PowerManager;

    .line 496
    invoke-static {p0}, Lcom/android/bluetooth/sdp/SdpManager;->init(Lcom/android/bluetooth/btservice/AdapterService;)Lcom/android/bluetooth/sdp/SdpManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mSdpManager:Lcom/android/bluetooth/sdp/SdpManager;

    .line 497
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAlarmBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "com.android.bluetooth.btservice.action.ALARM_WAKEUP"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 498
    invoke-static {p0}, Lcom/android/bluetooth/btservice/AdapterService;->setAdapterService(Lcom/android/bluetooth/btservice/AdapterService;)V

    .line 500
    new-instance v0, Lcom/android/bluetooth/btservice/ProfileObserver;

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v1, p0, v2}, Lcom/android/bluetooth/btservice/ProfileObserver;-><init>(Landroid/content/Context;Lcom/android/bluetooth/btservice/AdapterService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mProfileObserver:Lcom/android/bluetooth/btservice/ProfileObserver;

    .line 501
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mProfileObserver:Lcom/android/bluetooth/btservice/ProfileObserver;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/ProfileObserver;->start()V

    .line 480
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 519
    const-string/jumbo v0, "onDestroy()"

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    .line 520
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mProfileObserver:Lcom/android/bluetooth/btservice/ProfileObserver;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/ProfileObserver;->stop()V

    .line 518
    return-void
.end method

.method public onLeServiceUp()V
    .locals 3

    .prologue
    .line 2325
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/btservice/AdapterState;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2326
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/btservice/AdapterState;->sendMessage(Landroid/os/Message;)V

    .line 2324
    return-void
.end method

.method public onProfileConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;III)V
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "profileId"    # I
    .param p3, "newState"    # I
    .param p4, "prevState"    # I

    .prologue
    .line 225
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 226
    .local v1, "m":Landroid/os/Message;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 227
    iput p2, v1, Landroid/os/Message;->arg1:I

    .line 228
    iput p3, v1, Landroid/os/Message;->arg2:I

    .line 229
    new-instance v0, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 230
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v2, "prevState"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 231
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 232
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 224
    return-void
.end method

.method public onProfileServiceStateChanged(Ljava/lang/String;I)V
    .locals 3
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "state"    # I

    .prologue
    .line 320
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 321
    .local v0, "m":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 322
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 323
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 319
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 510
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->getState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 511
    const-string/jumbo v0, "BluetoothAdapterService"

    const-string/jumbo v1, "onUnbind, calling cleanup"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->cleanup()V

    .line 513
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0

    .line 515
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method registerCallback(Landroid/bluetooth/IBluetoothCallback;)V
    .locals 1
    .param p1, "cb"    # Landroid/bluetooth/IBluetoothCallback;

    .prologue
    .line 2251
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 2250
    return-void
.end method

.method removeBond(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 2001
    const-string/jumbo v2, "android.permission.BLUETOOTH_ADMIN"

    const-string/jumbo v3, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2002
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object v0

    .line 2003
    .local v0, "deviceProp":Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->getBondState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_1

    .line 2004
    :cond_0
    const/4 v2, 0x0

    return v2

    .line 2006
    :cond_1
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mBondStateMachine:Lcom/android/bluetooth/btservice/BondStateMachine;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/btservice/BondStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 2007
    .local v1, "msg":Landroid/os/Message;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2008
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mBondStateMachine:Lcom/android/bluetooth/btservice/BondStateMachine;

    invoke-virtual {v2, v1}, Lcom/android/bluetooth/btservice/BondStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 2009
    const/4 v2, 0x1

    return v2
.end method

.method native removeBondNative([B)Z
.end method

.method public removeProfile(Lcom/android/bluetooth/btservice/ProfileService;)V
    .locals 2
    .param p1, "profile"    # Lcom/android/bluetooth/btservice/ProfileService;

    .prologue
    .line 314
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mProfiles:Ljava/util/ArrayList;

    monitor-enter v1

    .line 315
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mProfiles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 313
    return-void

    .line 314
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public removeSdpRecord(I)Z
    .locals 2
    .param p1, "recordHandle"    # I

    .prologue
    .line 2347
    invoke-static {}, Lcom/android/bluetooth/sdp/SdpManager;->getDefaultManager()Lcom/android/bluetooth/sdp/SdpManager;

    move-result-object v0

    .line 2348
    .local v0, "manager":Lcom/android/bluetooth/sdp/SdpManager;
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/sdp/SdpManager;->removeSdpRecord(I)Z

    move-result v1

    return v1
.end method

.method public restoreScanMode()Z
    .locals 3

    .prologue
    .line 2514
    const-string/jumbo v0, "BluetoothAdapterService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "restoreScanMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/bluetooth/btservice/AdapterService;->mScanmode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2515
    sget v0, Lcom/android/bluetooth/btservice/AdapterService;->mScanmode:I

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->getDiscoverableTimeout()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->setScanMode(II)Z

    move-result v0

    return v0
.end method

.method sdpSearch(Landroid/bluetooth/BluetoothDevice;Landroid/os/ParcelUuid;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "uuid"    # Landroid/os/ParcelUuid;

    .prologue
    .line 1605
    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1606
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mSdpManager:Lcom/android/bluetooth/sdp/SdpManager;

    if-eqz v0, :cond_0

    .line 1607
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mSdpManager:Lcom/android/bluetooth/sdp/SdpManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/sdp/SdpManager;->sdpSearch(Landroid/bluetooth/BluetoothDevice;Landroid/os/ParcelUuid;)V

    .line 1608
    const/4 v0, 0x1

    return v0

    .line 1610
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method native sdpSearchNative([B[B)Z
.end method

.method sendConnectionStateChange(Landroid/bluetooth/BluetoothDevice;III)V
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "profile"    # I
    .param p3, "state"    # I
    .param p4, "prevState"    # I

    .prologue
    .line 2197
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->getState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    return-void

    .line 2199
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/bluetooth/btservice/AdapterProperties;->sendConnectionStateChange(Landroid/bluetooth/BluetoothDevice;III)V

    .line 2194
    return-void
.end method

.method native setAdapterPropertyNative(I)Z
.end method

.method native setAdapterPropertyNative(I[B)Z
.end method

.method native setDevicePropertyNative([BI[B)Z
.end method

.method setDiscoverableTimeout(I)Z
    .locals 2
    .param p1, "timeout"    # I

    .prologue
    .line 1557
    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1559
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterProperties;->setDiscoverableTimeout(I)Z

    move-result v0

    return v0
.end method

.method setMessageAccessPermission(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "value"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2155
    const-string/jumbo v4, "android.permission.BLUETOOTH_PRIVILEGED"

    .line 2156
    const-string/jumbo v5, "Need BLUETOOTH PRIVILEGED permission"

    .line 2155
    invoke-virtual {p0, v4, v5}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2157
    const-string/jumbo v4, "message_access_permission"

    invoke-virtual {p0, v4, v3}, Lcom/android/bluetooth/btservice/AdapterService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2159
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2160
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    if-nez p2, :cond_0

    .line 2161
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2165
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    return v2

    .line 2163
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    if-ne p2, v2, :cond_1

    :goto_1
    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method setName(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1530
    const-string/jumbo v0, "android.permission.BLUETOOTH_ADMIN"

    .line 1531
    const-string/jumbo v1, "Need BLUETOOTH ADMIN permission"

    .line 1530
    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1533
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterProperties;->setName(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method setPairingConfirmation(Landroid/bluetooth/BluetoothDevice;Z)Z
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "accept"    # Z

    .prologue
    const/4 v4, 0x0

    .line 2106
    const-string/jumbo v2, "android.permission.BLUETOOTH_ADMIN"

    .line 2107
    const-string/jumbo v3, "Need BLUETOOTH ADMIN permission"

    .line 2106
    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2108
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object v1

    .line 2109
    .local v1, "deviceProp":Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->getBondState()I

    move-result v2

    const/16 v3, 0xb

    if-eq v2, v3, :cond_1

    .line 2110
    :cond_0
    return v4

    .line 2113
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/bluetooth/Utils;->getBytesFromAddress(Ljava/lang/String;)[B

    move-result-object v0

    .line 2114
    .local v0, "addr":[B
    invoke-direct {p0, v0, v4, p2, v4}, Lcom/android/bluetooth/btservice/AdapterService;->sspReplyNative([BIZI)Z

    move-result v2

    return v2
.end method

.method setPasskey(Landroid/bluetooth/BluetoothDevice;ZI[B)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "accept"    # Z
    .param p3, "len"    # I
    .param p4, "passkey"    # [B

    .prologue
    .line 2094
    const-string/jumbo v2, "android.permission.BLUETOOTH"

    const-string/jumbo v3, "Need BLUETOOTH permission"

    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2095
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object v1

    .line 2096
    .local v1, "deviceProp":Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->getBondState()I

    move-result v2

    const/16 v3, 0xb

    if-eq v2, v3, :cond_1

    .line 2097
    :cond_0
    const/4 v2, 0x0

    return v2

    .line 2100
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/bluetooth/Utils;->getBytesFromAddress(Ljava/lang/String;)[B

    move-result-object v0

    .line 2102
    .local v0, "addr":[B
    invoke-static {p4}, Lcom/android/bluetooth/Utils;->byteArrayToInt([B)I

    move-result v2

    .line 2101
    const/4 v3, 0x1

    invoke-direct {p0, v0, v3, p2, v2}, Lcom/android/bluetooth/btservice/AdapterService;->sspReplyNative([BIZI)Z

    move-result v2

    return v2
.end method

.method setPhonebookAccessPermission(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "value"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2130
    const-string/jumbo v4, "android.permission.BLUETOOTH_PRIVILEGED"

    .line 2131
    const-string/jumbo v5, "Need BLUETOOTH PRIVILEGED permission"

    .line 2130
    invoke-virtual {p0, v4, v5}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2132
    const-string/jumbo v4, "phonebook_access_permission"

    invoke-virtual {p0, v4, v3}, Lcom/android/bluetooth/btservice/AdapterService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2134
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2135
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    if-nez p2, :cond_0

    .line 2136
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2140
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    return v2

    .line 2138
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    if-ne p2, v2, :cond_1

    :goto_1
    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method setPin(Landroid/bluetooth/BluetoothDevice;ZI[B)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "accept"    # Z
    .param p3, "len"    # I
    .param p4, "pinCode"    # [B

    .prologue
    .line 2079
    const-string/jumbo v2, "android.permission.BLUETOOTH_ADMIN"

    .line 2080
    const-string/jumbo v3, "Need BLUETOOTH ADMIN permission"

    .line 2079
    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2081
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object v1

    .line 2083
    .local v1, "deviceProp":Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;
    if-eqz v1, :cond_0

    .line 2084
    invoke-virtual {v1}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->getBondState()I

    move-result v2

    const/16 v3, 0xb

    if-eq v2, v3, :cond_1

    .line 2085
    invoke-virtual {v1}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->getBondState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_1

    .line 2086
    :cond_0
    const/4 v2, 0x0

    return v2

    .line 2089
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/bluetooth/Utils;->getBytesFromAddress(Ljava/lang/String;)[B

    move-result-object v0

    .line 2090
    .local v0, "addr":[B
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/android/bluetooth/btservice/AdapterService;->pinReplyNative([BZI[B)Z

    move-result v2

    return v2
.end method

.method setProfileAutoConnectionPriority(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "profileId"    # I

    .prologue
    const/16 v6, 0x3e8

    .line 1956
    const/4 v5, 0x1

    if-ne p2, v5, :cond_1

    .line 1957
    invoke-static {}, Lcom/android/bluetooth/hfp/HeadsetService;->getHeadsetService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v4

    .line 1958
    .local v4, "hsService":Lcom/android/bluetooth/hfp/HeadsetService;
    if-eqz v4, :cond_0

    .line 1959
    invoke-virtual {v4, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v5

    if-eq v6, v5, :cond_0

    .line 1960
    invoke-virtual {v4}, Lcom/android/bluetooth/hfp/HeadsetService;->getConnectedDevices()Ljava/util/List;

    move-result-object v2

    .line 1961
    .local v2, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-direct {p0, v4, v2}, Lcom/android/bluetooth/btservice/AdapterService;->adjustOtherHeadsetPriorities(Lcom/android/bluetooth/hfp/HeadsetService;Ljava/util/List;)V

    .line 1962
    invoke-virtual {v4, p1, v6}, Lcom/android/bluetooth/hfp/HeadsetService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 1955
    .end local v2    # "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v4    # "hsService":Lcom/android/bluetooth/hfp/HeadsetService;
    :cond_0
    :goto_0
    return-void

    .line 1965
    :cond_1
    const/4 v5, 0x2

    if-ne p2, v5, :cond_2

    .line 1966
    invoke-static {}, Lcom/android/bluetooth/a2dp/A2dpService;->getA2dpService()Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v0

    .line 1967
    .local v0, "a2dpService":Lcom/android/bluetooth/a2dp/A2dpService;
    if-eqz v0, :cond_0

    .line 1968
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dp/A2dpService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v5

    if-eq v6, v5, :cond_0

    .line 1969
    invoke-virtual {v0}, Lcom/android/bluetooth/a2dp/A2dpService;->getConnectedDevices()Ljava/util/List;

    move-result-object v2

    .line 1970
    .restart local v2    # "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-direct {p0, v0, v2}, Lcom/android/bluetooth/btservice/AdapterService;->adjustOtherSinkPriorities(Lcom/android/bluetooth/a2dp/A2dpService;Ljava/util/List;)V

    .line 1971
    invoke-virtual {v0, p1, v6}, Lcom/android/bluetooth/a2dp/A2dpService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_0

    .line 1974
    .end local v0    # "a2dpService":Lcom/android/bluetooth/a2dp/A2dpService;
    .end local v2    # "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_2
    const/16 v5, 0xb

    if-ne p2, v5, :cond_3

    .line 1975
    invoke-static {}, Lcom/android/bluetooth/a2dp/A2dpSinkService;->getA2dpSinkService()Lcom/android/bluetooth/a2dp/A2dpSinkService;

    move-result-object v1

    .line 1976
    .local v1, "a2dpSinkService":Lcom/android/bluetooth/a2dp/A2dpSinkService;
    if-eqz v1, :cond_0

    .line 1977
    invoke-virtual {v1, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v5

    if-eq v6, v5, :cond_0

    .line 1978
    invoke-direct {p0, v1, p1}, Lcom/android/bluetooth/btservice/AdapterService;->adjustOtherSrcPriorities(Lcom/android/bluetooth/a2dp/A2dpSinkService;Landroid/bluetooth/BluetoothDevice;)V

    .line 1979
    invoke-virtual {v1, p1, v6}, Lcom/android/bluetooth/a2dp/A2dpSinkService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_0

    .line 1982
    .end local v1    # "a2dpSinkService":Lcom/android/bluetooth/a2dp/A2dpSinkService;
    :cond_3
    const/16 v5, 0x10

    if-ne p2, v5, :cond_0

    .line 1984
    invoke-static {}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getHeadsetClientService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v3

    .line 1985
    .local v3, "headsetClientService":Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    if-eqz v3, :cond_0

    .line 1987
    invoke-virtual {v3, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v5

    .line 1986
    if-eq v6, v5, :cond_0

    .line 1988
    invoke-direct {p0, v3, p1}, Lcom/android/bluetooth/btservice/AdapterService;->adjustOtherHandsfreePriorities(Lcom/android/bluetooth/hfpclient/HeadsetClientService;Landroid/bluetooth/BluetoothDevice;)V

    .line 1989
    invoke-virtual {v3, p1, v6}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_0
.end method

.method setRemoteAlias(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 2049
    const-string/jumbo v1, "android.permission.BLUETOOTH"

    const-string/jumbo v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2050
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object v0

    .line 2051
    .local v0, "deviceProp":Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 2052
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->setAlias(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V

    .line 2053
    const/4 v1, 0x1

    return v1
.end method

.method setScanMode(II)Z
    .locals 3
    .param p1, "mode"    # I
    .param p2, "duration"    # I

    .prologue
    .line 1543
    const-string/jumbo v1, "android.permission.BLUETOOTH"

    const-string/jumbo v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1545
    invoke-virtual {p0, p2}, Lcom/android/bluetooth/btservice/AdapterService;->setDiscoverableTimeout(I)Z

    .line 1546
    invoke-static {p1}, Lcom/android/bluetooth/btservice/AdapterService;->convertScanModeToHal(I)I

    move-result v0

    .line 1547
    .local v0, "newMode":I
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->setScanMode(I)Z

    move-result v1

    return v1
.end method

.method setSimAccessPermission(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "value"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2180
    const-string/jumbo v4, "android.permission.BLUETOOTH_PRIVILEGED"

    .line 2181
    const-string/jumbo v5, "Need BLUETOOTH PRIVILEGED permission"

    .line 2180
    invoke-virtual {p0, v4, v5}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2182
    const-string/jumbo v4, "sim_access_permission"

    invoke-virtual {p0, v4, v3}, Lcom/android/bluetooth/btservice/AdapterService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2184
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2185
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    if-nez p2, :cond_0

    .line 2186
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2190
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    return v2

    .line 2188
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    if-ne p2, v2, :cond_1

    :goto_1
    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method setSocketOpt(III[BI)I
    .locals 2
    .param p1, "type"    # I
    .param p2, "channel"    # I
    .param p3, "optionName"    # I
    .param p4, "optionVal"    # [B
    .param p5, "optionLen"    # I

    .prologue
    .line 2229
    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2231
    invoke-direct/range {p0 .. p5}, Lcom/android/bluetooth/btservice/AdapterService;->setSocketOptNative(III[BI)I

    move-result v0

    return v0
.end method

.method native ssrcleanupNative(Z)V
.end method

.method startBluetoothDisable()V
    .locals 3

    .prologue
    .line 564
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/btservice/AdapterState;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/btservice/AdapterState;->sendMessage(Landroid/os/Message;)V

    .line 563
    return-void
.end method

.method startCoreServices()V
    .locals 4

    .prologue
    .line 550
    const-string/jumbo v1, "startCoreServices()"

    invoke-direct {p0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    .line 551
    invoke-static {}, Lcom/android/bluetooth/btservice/Config;->getSupportedProfiles()[Ljava/lang/Class;

    move-result-object v0

    .line 554
    .local v0, "supportedProfileServices":[Ljava/lang/Class;
    iget-boolean v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mProfilesStarted:Z

    if-nez v1, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 556
    const/16 v1, 0xc

    invoke-direct {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->setProfileServiceState([Ljava/lang/Class;I)V

    .line 548
    :goto_0
    return-void

    .line 558
    :cond_0
    const-string/jumbo v1, "BluetoothAdapterService"

    const-string/jumbo v2, "startCoreProfiles(): Profile Services alreay started"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/btservice/AdapterState;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/btservice/AdapterState;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method startDiscovery()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1563
    const-string/jumbo v1, "android.permission.BLUETOOTH_ADMIN"

    .line 1564
    const-string/jumbo v2, "Need BLUETOOTH ADMIN permission"

    .line 1563
    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1566
    invoke-static {}, Lcom/android/bluetooth/a2dp/A2dpService;->getA2dpService()Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v0

    .line 1567
    .local v0, "a2dpService":Lcom/android/bluetooth/a2dp/A2dpService;
    if-eqz v0, :cond_0

    .line 1568
    invoke-virtual {v0, v3}, Lcom/android/bluetooth/a2dp/A2dpService;->isMulticastOngoing(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    .line 1567
    if-eqz v1, :cond_0

    .line 1569
    const-string/jumbo v1, "BluetoothAdapterService"

    const-string/jumbo v2, "A2dp Multicast is Ongoing, ignore discovery"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1570
    const/4 v1, 0x0

    return v1

    .line 1573
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/AdapterService;->startDiscoveryNative()Z

    move-result v1

    return v1
.end method

.method stopGattProfileService()Z
    .locals 2

    .prologue
    .line 579
    const-string/jumbo v1, "stopGattProfileService()"

    invoke-direct {p0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    .line 580
    invoke-static {}, Lcom/android/bluetooth/btservice/Config;->getSupportedProfiles()[Ljava/lang/Class;

    move-result-object v0

    .line 582
    .local v0, "supportedProfileServices":[Ljava/lang/Class;
    const/16 v1, 0xa

    invoke-direct {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->setGattProfileServiceState([Ljava/lang/Class;I)V

    .line 583
    const/4 v1, 0x1

    return v1
.end method

.method stopProfileServices()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 568
    invoke-static {}, Lcom/android/bluetooth/btservice/Config;->getSupportedProfiles()[Ljava/lang/Class;

    move-result-object v0

    .line 569
    .local v0, "supportedProfileServices":[Ljava/lang/Class;
    iget-boolean v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mProfilesStarted:Z

    if-eqz v1, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 570
    const/16 v1, 0xa

    invoke-direct {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->setProfileServiceState([Ljava/lang/Class;I)V

    .line 571
    const/4 v1, 0x1

    return v1

    .line 573
    :cond_0
    const-string/jumbo v1, "stopProfileServices() - No profiles services to stop or already stopped."

    invoke-direct {p0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    .line 574
    return v2
.end method

.method unregisterCallback(Landroid/bluetooth/IBluetoothCallback;)V
    .locals 1
    .param p1, "cb"    # Landroid/bluetooth/IBluetoothCallback;

    .prologue
    .line 2255
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 2254
    return-void
.end method

.method updateAdapterState(II)V
    .locals 5
    .param p1, "prevState"    # I
    .param p2, "newState"    # I

    .prologue
    .line 588
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterService;->mCallbacks:Landroid/os/RemoteCallbackList;

    if-eqz v3, :cond_1

    .line 589
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 590
    .local v2, "n":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateAdapterState() - Broadcasting state to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " receivers."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    .line 591
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 593
    :try_start_0
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/IBluetoothCallback;

    invoke-interface {v3, p1, p2}, Landroid/bluetooth/IBluetoothCallback;->onBluetoothStateChange(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 591
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 594
    :catch_0
    move-exception v0

    .line 595
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateAdapterState() - Callback #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " failed ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    goto :goto_1

    .line 598
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 587
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_1
    return-void
.end method
