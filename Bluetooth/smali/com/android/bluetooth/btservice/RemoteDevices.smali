.class final Lcom/android/bluetooth/btservice/RemoteDevices;
.super Ljava/lang/Object;
.source "RemoteDevices.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;,
        Lcom/android/bluetooth/btservice/RemoteDevices$1;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final MESSAGE_UUID_INTENT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BluetoothRemoteDevices"

.field private static final UUID_INTENT_DELAY:I = 0x1770

.field private static mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private static mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

.field private static mSdpTracker:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBleOnDevices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mObject:Ljava/lang/Object;


# direct methods
.method static synthetic -get0()Lcom/android/bluetooth/btservice/AdapterService;
    .locals 1

    sget-object v0, Lcom/android/bluetooth/btservice/RemoteDevices;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/bluetooth/btservice/RemoteDevices;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/bluetooth/btservice/RemoteDevices;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->sendUuidIntent(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method constructor <init>(Lcom/android/bluetooth/btservice/AdapterService;)V
    .locals 1
    .param p1, "service"    # Lcom/android/bluetooth/btservice/AdapterService;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mObject:Ljava/lang/Object;

    .line 390
    new-instance v0, Lcom/android/bluetooth/btservice/RemoteDevices$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/btservice/RemoteDevices$1;-><init>(Lcom/android/bluetooth/btservice/RemoteDevices;)V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mHandler:Landroid/os/Handler;

    .line 55
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/btservice/RemoteDevices;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 56
    sput-object p1, Lcom/android/bluetooth/btservice/RemoteDevices;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/bluetooth/btservice/RemoteDevices;->mSdpTracker:Ljava/util/ArrayList;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mDevices:Ljava/util/HashMap;

    .line 59
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mBleOnDevices:Ljava/util/Set;

    .line 54
    return-void
.end method

.method private debugLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 409
    const-string/jumbo v0, "BluetoothRemoteDevices"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    return-void
.end method

.method private errorLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 405
    const-string/jumbo v0, "BluetoothRemoteDevices"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    return-void
.end method

.method private infoLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 413
    const-string/jumbo v0, "BluetoothRemoteDevices"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    return-void
.end method

.method private sendUuidIntent(Landroid/bluetooth/BluetoothDevice;)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v3, 0x0

    .line 227
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object v1

    .line 228
    .local v1, "prop":Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.bluetooth.device.action.UUID"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 229
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 230
    const-string/jumbo v4, "android.bluetooth.device.extra.UUID"

    if-nez v1, :cond_0

    move-object v2, v3

    :goto_0
    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 231
    sget-object v2, Lcom/android/bluetooth/btservice/RemoteDevices;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    if-nez v1, :cond_1

    :goto_1
    invoke-virtual {v2, p1, v3}, Lcom/android/bluetooth/btservice/AdapterService;->initProfilePriorities(Landroid/bluetooth/BluetoothDevice;[Landroid/os/ParcelUuid;)V

    .line 232
    sget-object v2, Lcom/android/bluetooth/btservice/RemoteDevices;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    const-string/jumbo v3, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v2, v0, v3}, Lcom/android/bluetooth/btservice/AdapterService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 235
    sget-object v2, Lcom/android/bluetooth/btservice/RemoteDevices;->mSdpTracker:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 226
    return-void

    .line 230
    :cond_0
    invoke-static {v1}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->-get4(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)[Landroid/os/ParcelUuid;

    move-result-object v2

    goto :goto_0

    .line 231
    :cond_1
    invoke-static {v1}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->-get4(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)[Landroid/os/ParcelUuid;

    move-result-object v3

    goto :goto_1
.end method

.method private warnLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 417
    const-string/jumbo v0, "BluetoothRemoteDevices"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    return-void
.end method


# virtual methods
.method aclStateChangeCallback(I[BI)V
    .locals 8
    .param p1, "status"    # I
    .param p2, "address"    # [B
    .param p3, "newState"    # I

    .prologue
    const/16 v7, 0xf

    .line 336
    invoke-virtual {p0, p2}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 338
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    if-nez v0, :cond_0

    .line 339
    const-string/jumbo v4, "aclStateChangeCallback: Device is NULL"

    invoke-direct {p0, v4}, Lcom/android/bluetooth/btservice/RemoteDevices;->errorLog(Ljava/lang/String;)V

    .line 340
    return-void

    .line 342
    :cond_0
    sget-object v4, Lcom/android/bluetooth/btservice/RemoteDevices;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v4}, Lcom/android/bluetooth/btservice/AdapterService;->getState()I

    move-result v3

    .line 343
    .local v3, "state":I
    const-string/jumbo v4, "BluetoothRemoteDevices"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "state"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "newState"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object v2

    .line 346
    .local v2, "prop":Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;
    if-nez v2, :cond_1

    .line 349
    :cond_1
    const/4 v1, 0x0

    .line 350
    .local v1, "intent":Landroid/content/Intent;
    if-nez p3, :cond_6

    .line 351
    const/16 v4, 0xc

    if-eq v3, v4, :cond_2

    const/16 v4, 0xb

    if-ne v3, v4, :cond_4

    .line 352
    :cond_2
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-string/jumbo v4, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 359
    :cond_3
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "aclStateChangeCallback: State:Connected to Device:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/bluetooth/btservice/RemoteDevices;->debugLog(Ljava/lang/String;)V

    .line 372
    :goto_1
    const-string/jumbo v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 373
    const/high16 v4, 0x4000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 374
    sget-object v4, Lcom/android/bluetooth/btservice/RemoteDevices;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    const-string/jumbo v5, "android.permission.BLUETOOTH"

    invoke-virtual {v4, v1, v5}, Lcom/android/bluetooth/btservice/AdapterService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 335
    return-void

    .line 353
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_4
    if-eq v3, v7, :cond_5

    const/16 v4, 0xe

    if-ne v3, v4, :cond_3

    .line 354
    :cond_5
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-string/jumbo v4, "android.bluetooth.adapter.action.BLE_ACL_CONNECTED"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 356
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "aclStateChangeCallback: added device to Ble ON list"

    invoke-direct {p0, v4}, Lcom/android/bluetooth/btservice/RemoteDevices;->debugLog(Ljava/lang/String;)V

    .line 357
    iget-object v4, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mBleOnDevices:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 361
    .local v1, "intent":Landroid/content/Intent;
    :cond_6
    if-eq v3, v7, :cond_7

    const/16 v4, 0x10

    if-ne v3, v4, :cond_8

    .line 362
    :cond_7
    iget-object v4, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mBleOnDevices:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 361
    if-eqz v4, :cond_8

    .line 363
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-string/jumbo v4, "android.bluetooth.adapter.action.BLE_ACL_DISCONNECTED"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 364
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "aclStateChangeCallback: removing device from Ble Always On List"

    invoke-direct {p0, v4}, Lcom/android/bluetooth/btservice/RemoteDevices;->debugLog(Ljava/lang/String;)V

    .line 365
    iget-object v4, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mBleOnDevices:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 370
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "aclStateChangeCallback: State:DisConnected to Device:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/bluetooth/btservice/RemoteDevices;->debugLog(Ljava/lang/String;)V

    goto :goto_1

    .line 367
    .local v1, "intent":Landroid/content/Intent;
    :cond_8
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-string/jumbo v4, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 368
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "aclStateChangeCallback: sending ACL disconnected intent"

    invoke-direct {p0, v4}, Lcom/android/bluetooth/btservice/RemoteDevices;->debugLog(Ljava/lang/String;)V

    goto :goto_2
.end method

.method addDeviceProperties([B)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;
    .locals 5
    .param p1, "address"    # [B

    .prologue
    .line 97
    iget-object v3, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mDevices:Ljava/util/HashMap;

    monitor-enter v3

    .line 98
    :try_start_0
    new-instance v1, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    invoke-direct {v1, p0}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;-><init>(Lcom/android/bluetooth/btservice/RemoteDevices;)V

    .line 100
    .local v1, "prop":Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;
    sget-object v2, Lcom/android/bluetooth/btservice/RemoteDevices;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 101
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1, p1}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->-set0(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;[B)[B

    .line 102
    iget-object v2, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 103
    return-object v1

    .line 97
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "prop":Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method cleanup()V
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/android/bluetooth/btservice/RemoteDevices;->mSdpTracker:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 65
    sget-object v0, Lcom/android/bluetooth/btservice/RemoteDevices;->mSdpTracker:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mDevices:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mBleOnDevices:Ljava/util/Set;

    if-eqz v0, :cond_2

    .line 71
    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mBleOnDevices:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 63
    :cond_2
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 76
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v0
.end method

.method deviceFoundCallback([B)V
    .locals 7
    .param p1, "address"    # [B

    .prologue
    .line 315
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 316
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "deviceFoundCallback: Remote Address is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/bluetooth/btservice/RemoteDevices;->debugLog(Ljava/lang/String;)V

    .line 317
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object v1

    .line 318
    .local v1, "deviceProp":Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;
    if-nez v1, :cond_0

    .line 319
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Device Properties is null for Device:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/bluetooth/btservice/RemoteDevices;->errorLog(Ljava/lang/String;)V

    .line 320
    return-void

    .line 323
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.bluetooth.device.action.FOUND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 324
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 325
    const-string/jumbo v3, "android.bluetooth.device.extra.CLASS"

    .line 326
    new-instance v4, Landroid/bluetooth/BluetoothClass;

    invoke-static {v1}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->-get1(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/bluetooth/BluetoothClass;-><init>(I)V

    .line 325
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 327
    const-string/jumbo v3, "android.bluetooth.device.extra.RSSI"

    invoke-static {v1}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->-get3(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)S

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;S)Landroid/content/Intent;

    .line 328
    const-string/jumbo v3, "android.bluetooth.device.extra.NAME"

    invoke-static {v1}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->-get2(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 330
    sget-object v3, Lcom/android/bluetooth/btservice/RemoteDevices;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    .line 331
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "android.permission.BLUETOOTH"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 332
    const-string/jumbo v5, "android.permission.ACCESS_COARSE_LOCATION"

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 330
    invoke-virtual {v3, v2, v4}, Lcom/android/bluetooth/btservice/AdapterService;->sendBroadcastMultiplePermissions(Landroid/content/Intent;[Ljava/lang/String;)V

    .line 312
    return-void
.end method

.method devicePropertyChangedCallback([B[I[[B)V
    .locals 12
    .param p1, "address"    # [B
    .param p2, "types"    # [I
    .param p3, "values"    # [[B

    .prologue
    .line 243
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 245
    .local v0, "bdDevice":Landroid/bluetooth/BluetoothDevice;
    if-nez v0, :cond_0

    .line 246
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->addDeviceProperties([B)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object v1

    .line 247
    .local v1, "device":Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 252
    :goto_0
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    array-length v7, p2

    if-ge v3, v7, :cond_3

    if-eqz v1, :cond_3

    .line 253
    aget v5, p2, v3

    .line 254
    .local v5, "type":I
    aget-object v6, p3, v3

    .line 255
    .local v6, "val":[B
    array-length v7, v6

    if-gtz v7, :cond_1

    .line 256
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "devicePropertyChangedCallback: bdDevice: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 257
    const-string/jumbo v8, ", value is empty for type: "

    .line 256
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/bluetooth/btservice/RemoteDevices;->errorLog(Ljava/lang/String;)V

    .line 252
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 249
    .end local v1    # "device":Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;
    .end local v3    # "j":I
    .end local v5    # "type":I
    .end local v6    # "val":[B
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object v1

    .restart local v1    # "device":Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;
    goto :goto_0

    .line 259
    .restart local v3    # "j":I
    .restart local v5    # "type":I
    .restart local v6    # "val":[B
    :cond_1
    iget-object v8, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mObject:Ljava/lang/Object;

    monitor-enter v8

    .line 260
    packed-switch v5, :pswitch_data_0

    :goto_3
    :pswitch_0
    monitor-exit v8

    goto :goto_2

    .line 262
    :pswitch_1
    :try_start_0
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1, v7}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->-set4(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;Ljava/lang/String;)Ljava/lang/String;

    .line 263
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v7, "android.bluetooth.device.action.NAME_CHANGED"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 264
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v7, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v2, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 265
    const-string/jumbo v7, "android.bluetooth.device.extra.NAME"

    invoke-static {v1}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->-get2(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 266
    const/high16 v7, 0x4000000

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 267
    sget-object v7, Lcom/android/bluetooth/btservice/RemoteDevices;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    const-string/jumbo v9, "android.permission.BLUETOOTH"

    invoke-virtual {v7, v2, v9}, Lcom/android/bluetooth/btservice/AdapterService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 268
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Remote Device name is: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->-get2(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/bluetooth/btservice/RemoteDevices;->debugLog(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 259
    .end local v2    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    .line 271
    :pswitch_2
    :try_start_1
    invoke-static {v1}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->-get0(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 272
    invoke-static {v1}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->-get0(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)Ljava/lang/String;

    move-result-object v7

    array-length v9, v6

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v6, v10, v7, v11, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    .line 275
    :cond_2
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1, v7}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->-set1(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_3

    .line 279
    :pswitch_3
    invoke-static {v1, v6}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->-set0(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;[B)[B

    .line 280
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Remote Address is:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v6}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/bluetooth/btservice/RemoteDevices;->debugLog(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 283
    :pswitch_4
    invoke-static {v6}, Lcom/android/bluetooth/Utils;->byteArrayToInt([B)I

    move-result v7

    invoke-static {v1, v7}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->-set2(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;I)I

    .line 284
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v7, "android.bluetooth.device.action.CLASS_CHANGED"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 285
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string/jumbo v7, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v2, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 286
    const-string/jumbo v7, "android.bluetooth.device.extra.CLASS"

    .line 287
    new-instance v9, Landroid/bluetooth/BluetoothClass;

    invoke-static {v1}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->-get1(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)I

    move-result v10

    invoke-direct {v9, v10}, Landroid/bluetooth/BluetoothClass;-><init>(I)V

    .line 286
    invoke-virtual {v2, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 288
    const/high16 v7, 0x4000000

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 289
    sget-object v7, Lcom/android/bluetooth/btservice/RemoteDevices;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    const-string/jumbo v9, "android.permission.BLUETOOTH"

    invoke-virtual {v7, v2, v9}, Lcom/android/bluetooth/btservice/AdapterService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 290
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Remote class is:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->-get1(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/bluetooth/btservice/RemoteDevices;->debugLog(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 293
    .end local v2    # "intent":Landroid/content/Intent;
    :pswitch_5
    array-length v7, v6

    div-int/lit8 v4, v7, 0x10

    .line 294
    .local v4, "numUuids":I
    invoke-static {v6}, Lcom/android/bluetooth/Utils;->byteArrayToUuid([B)[Landroid/os/ParcelUuid;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->-set6(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;[Landroid/os/ParcelUuid;)[Landroid/os/ParcelUuid;

    .line 295
    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/RemoteDevices;->sendUuidIntent(Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_3

    .line 300
    .end local v4    # "numUuids":I
    :pswitch_6
    invoke-static {v6}, Lcom/android/bluetooth/Utils;->byteArrayToInt([B)I

    move-result v7

    invoke-static {v1, v7}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->-set3(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;I)I

    goto/16 :goto_3

    .line 304
    :pswitch_7
    const/4 v7, 0x0

    aget-byte v7, v6, v7

    int-to-short v7, v7

    invoke-static {v1, v7}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->-set5(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;S)S
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3

    .line 239
    .end local v5    # "type":I
    .end local v6    # "val":[B
    :cond_3
    return-void

    .line 260
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_7
    .end packed-switch
.end method

.method fetchUuids(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 380
    sget-object v1, Lcom/android/bluetooth/btservice/RemoteDevices;->mSdpTracker:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 381
    :cond_0
    sget-object v1, Lcom/android/bluetooth/btservice/RemoteDevices;->mSdpTracker:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    iget-object v1, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 384
    .local v0, "message":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 385
    iget-object v1, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1770

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 387
    sget-object v1, Lcom/android/bluetooth/btservice/RemoteDevices;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/bluetooth/Utils;->getBytesFromAddress(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/btservice/AdapterService;->getRemoteServicesNative([B)Z

    .line 379
    return-void
.end method

.method getDevice([B)Landroid/bluetooth/BluetoothDevice;
    .locals 5
    .param p1, "address"    # [B

    .prologue
    .line 86
    iget-object v3, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mDevices:Ljava/util/HashMap;

    monitor-enter v3

    .line 87
    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "dev$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 88
    .local v0, "dev":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    monitor-exit v3

    .line 89
    return-object v0

    .end local v0    # "dev":Landroid/bluetooth/BluetoothDevice;
    :cond_1
    monitor-exit v3

    .line 93
    const/4 v2, 0x0

    return-object v2

    .line 86
    .end local v1    # "dev$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 80
    iget-object v1, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mDevices:Ljava/util/HashMap;

    monitor-enter v1

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
