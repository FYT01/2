.class public Lcom/android/bluetooth/hid/HidDevService;
.super Lcom/android/bluetooth/btservice/ProfileService;
.source "HidDevService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceDeathRecipient;,
        Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceBinder;,
        Lcom/android/bluetooth/hid/HidDevService$1;
    }
.end annotation


# static fields
.field private static final CONN_STATE_CONNECTED:I = 0x0

.field private static final CONN_STATE_CONNECTING:I = 0x1

.field private static final CONN_STATE_DISCONNECTED:I = 0x2

.field private static final CONN_STATE_DISCONNECTING:I = 0x3

.field private static DBG:Z = false

.field public static final LOG_TAG:Ljava/lang/String; = "BluetoothHidDev"

.field private static final MESSAGE_APPLICATION_STATE_CHANGED:I = 0x1

.field private static final MESSAGE_CONNECT_STATE_CHANGED:I = 0x2

.field private static final MESSAGE_GET_REPORT:I = 0x3

.field private static final MESSAGE_INTR_DATA:I = 0x6

.field private static final MESSAGE_SET_PROTOCOL:I = 0x5

.field private static final MESSAGE_SET_REPORT:I = 0x4

.field private static final MESSAGE_VC_UNPLUG:I = 0x7

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAppConfig:Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;

.field private mCallback:Landroid/bluetooth/IBluetoothHidDeviceCallback;

.field private mDeathRcpt:Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceDeathRecipient;

.field private final mHandler:Landroid/os/Handler;

.field private mHidDevice:Landroid/bluetooth/BluetoothDevice;

.field private mHidDeviceState:I

.field private mNativeAvailable:Z


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/bluetooth/hid/HidDevService;->DBG:Z

    return v0
.end method

.method static synthetic -get1()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/bluetooth/hid/HidDevService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/bluetooth/hid/HidDevService;)Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/hid/HidDevService;->mAppConfig:Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/bluetooth/hid/HidDevService;)Landroid/bluetooth/IBluetoothHidDeviceCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/hid/HidDevService;->mCallback:Landroid/bluetooth/IBluetoothHidDeviceCallback;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/bluetooth/hid/HidDevService;)Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceDeathRecipient;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/hid/HidDevService;->mDeathRcpt:Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceDeathRecipient;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/bluetooth/hid/HidDevService;Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;)Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/hid/HidDevService;->mAppConfig:Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/bluetooth/hid/HidDevService;Landroid/bluetooth/IBluetoothHidDeviceCallback;)Landroid/bluetooth/IBluetoothHidDeviceCallback;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/hid/HidDevService;->mCallback:Landroid/bluetooth/IBluetoothHidDeviceCallback;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/bluetooth/hid/HidDevService;Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceDeathRecipient;)Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceDeathRecipient;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/hid/HidDevService;->mDeathRcpt:Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceDeathRecipient;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/bluetooth/hid/HidDevService;[B)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .param p1, "address"    # [B

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hid/HidDevService;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/bluetooth/hid/HidDevService;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/bluetooth/hid/HidDevService;->isAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(I)I
    .locals 1
    .param p0, "halState"    # I

    .prologue
    invoke-static {p0}, Lcom/android/bluetooth/hid/HidDevService;->convertHalState(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/bluetooth/hid/HidDevService;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "newState"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/hid/HidDevService;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 47
    const-string/jumbo v0, "BluetoothHidDev"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/hid/HidDevService;->DBG:Z

    .line 49
    const-class v0, Lcom/android/bluetooth/hid/HidDevService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/hid/HidDevService;->TAG:Ljava/lang/String;

    .line 72
    invoke-static {}, Lcom/android/bluetooth/hid/HidDevService;->classInitNative()V

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/ProfileService;-><init>()V

    .line 59
    iput-boolean v1, p0, Lcom/android/bluetooth/hid/HidDevService;->mNativeAvailable:Z

    .line 61
    iput-object v0, p0, Lcom/android/bluetooth/hid/HidDevService;->mHidDevice:Landroid/bluetooth/BluetoothDevice;

    .line 63
    iput v1, p0, Lcom/android/bluetooth/hid/HidDevService;->mHidDeviceState:I

    .line 65
    iput-object v0, p0, Lcom/android/bluetooth/hid/HidDevService;->mAppConfig:Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;

    .line 67
    iput-object v0, p0, Lcom/android/bluetooth/hid/HidDevService;->mCallback:Landroid/bluetooth/IBluetoothHidDeviceCallback;

    .line 75
    new-instance v0, Lcom/android/bluetooth/hid/HidDevService$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/hid/HidDevService$1;-><init>(Lcom/android/bluetooth/hid/HidDevService;)V

    iput-object v0, p0, Lcom/android/bluetooth/hid/HidDevService;->mHandler:Landroid/os/Handler;

    .line 44
    return-void
.end method

.method private broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "newState"    # I

    .prologue
    .line 529
    sget-boolean v2, Lcom/android/bluetooth/hid/HidDevService;->DBG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/bluetooth/hid/HidDevService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "broadcastConnectionState(): device="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 530
    const-string/jumbo v4, " newState="

    .line 529
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/hid/HidDevService;->mHidDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/bluetooth/hid/HidDevService;->mHidDevice:Landroid/bluetooth/BluetoothDevice;

    if-eq v2, p1, :cond_1

    .line 533
    sget-object v2, Lcom/android/bluetooth/hid/HidDevService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Connection state changed for unknown device, ignoring"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    return-void

    .line 537
    :cond_1
    iget v1, p0, Lcom/android/bluetooth/hid/HidDevService;->mHidDeviceState:I

    .line 538
    .local v1, "prevState":I
    iput p2, p0, Lcom/android/bluetooth/hid/HidDevService;->mHidDeviceState:I

    .line 540
    sget-object v2, Lcom/android/bluetooth/hid/HidDevService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "connection state for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    if-ne v1, p2, :cond_2

    .line 544
    return-void

    .line 547
    :cond_2
    const/16 v2, 0x11

    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/android/bluetooth/hid/HidDevService;->notifyProfileConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;III)V

    .line 550
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "codeaurora.bluetooth.hid.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 551
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 552
    const-string/jumbo v2, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 553
    const-string/jumbo v2, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 554
    const/high16 v2, 0x4000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 555
    const-string/jumbo v2, "android.permission.BLUETOOTH"

    invoke-virtual {p0, v0, v2}, Lcom/android/bluetooth/hid/HidDevService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 528
    return-void
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupNative()V
.end method

.method private native connectNative()Z
.end method

.method private static convertHalState(I)I
    .locals 1
    .param p0, "halState"    # I

    .prologue
    const/4 v0, 0x0

    .line 559
    packed-switch p0, :pswitch_data_0

    .line 569
    return v0

    .line 561
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 563
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 565
    :pswitch_2
    return v0

    .line 567
    :pswitch_3
    const/4 v0, 0x3

    return v0

    .line 559
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private native disconnectNative()Z
.end method

.method private native initNative()V
.end method

.method private declared-synchronized onApplicationStateChanged([BZ)V
    .locals 5
    .param p1, "address"    # [B
    .param p2, "registered"    # Z

    .prologue
    const/4 v1, 0x1

    monitor-enter p0

    .line 461
    :try_start_0
    sget-boolean v2, Lcom/android/bluetooth/hid/HidDevService;->DBG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/bluetooth/hid/HidDevService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onApplicationStateChanged(): registered="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/hid/HidDevService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 464
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 465
    if-eqz p2, :cond_1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 466
    iget-object v1, p0, Lcom/android/bluetooth/hid/HidDevService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 460
    return-void

    .line 465
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized onConnectStateChanged([BI)V
    .locals 4
    .param p1, "address"    # [B
    .param p2, "state"    # I

    .prologue
    monitor-enter p0

    .line 470
    :try_start_0
    sget-boolean v1, Lcom/android/bluetooth/hid/HidDevService;->DBG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/bluetooth/hid/HidDevService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onConnectStateChanged(): address="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 471
    const-string/jumbo v3, " state="

    .line 470
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/hid/HidDevService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 474
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 475
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 476
    iget-object v1, p0, Lcom/android/bluetooth/hid/HidDevService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 469
    return-void

    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized onGetReport(BBS)V
    .locals 4
    .param p1, "type"    # B
    .param p2, "id"    # B
    .param p3, "bufferSize"    # S

    .prologue
    monitor-enter p0

    .line 480
    :try_start_0
    sget-boolean v1, Lcom/android/bluetooth/hid/HidDevService;->DBG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/bluetooth/hid/HidDevService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onGetReport(): type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " bufferSize="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/hid/HidDevService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 484
    .local v0, "msg":Landroid/os/Message;
    if-lez p3, :cond_1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p3}, Ljava/lang/Integer;-><init>(I)V

    :goto_0
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 485
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 486
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 487
    iget-object v1, p0, Lcom/android/bluetooth/hid/HidDevService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 479
    return-void

    .line 484
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized onIntrData(B[B)V
    .locals 5
    .param p1, "reportId"    # B
    .param p2, "data"    # [B

    .prologue
    monitor-enter p0

    .line 511
    :try_start_0
    sget-boolean v2, Lcom/android/bluetooth/hid/HidDevService;->DBG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/bluetooth/hid/HidDevService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onIntrData(): reportId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :cond_0
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 515
    .local v0, "bb":Ljava/nio/ByteBuffer;
    iget-object v2, p0, Lcom/android/bluetooth/hid/HidDevService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 516
    .local v1, "msg":Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 517
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 518
    iget-object v2, p0, Lcom/android/bluetooth/hid/HidDevService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 510
    return-void

    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    .end local v1    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized onSetProtocol(B)V
    .locals 4
    .param p1, "protocol"    # B

    .prologue
    monitor-enter p0

    .line 503
    :try_start_0
    sget-boolean v1, Lcom/android/bluetooth/hid/HidDevService;->DBG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/bluetooth/hid/HidDevService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onSetProtocol(): protocol="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/hid/HidDevService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 506
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 507
    iget-object v1, p0, Lcom/android/bluetooth/hid/HidDevService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 502
    return-void

    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized onSetReport(BB[B)V
    .locals 5
    .param p1, "reportType"    # B
    .param p2, "reportId"    # B
    .param p3, "data"    # [B

    .prologue
    monitor-enter p0

    .line 491
    :try_start_0
    sget-boolean v2, Lcom/android/bluetooth/hid/HidDevService;->DBG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/bluetooth/hid/HidDevService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSetReport(): reportType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " reportId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    :cond_0
    invoke-static {p3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 495
    .local v0, "bb":Ljava/nio/ByteBuffer;
    iget-object v2, p0, Lcom/android/bluetooth/hid/HidDevService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 496
    .local v1, "msg":Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 497
    iput p2, v1, Landroid/os/Message;->arg2:I

    .line 498
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 499
    iget-object v2, p0, Lcom/android/bluetooth/hid/HidDevService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 490
    return-void

    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    .end local v1    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized onVirtualCableUnplug()V
    .locals 3

    .prologue
    monitor-enter p0

    .line 522
    :try_start_0
    sget-boolean v1, Lcom/android/bluetooth/hid/HidDevService;->DBG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/bluetooth/hid/HidDevService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onVirtualCableUnplug()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/hid/HidDevService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 525
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/bluetooth/hid/HidDevService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 521
    return-void

    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private native registerAppNative(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;B[B[I[I)Z
.end method

.method private native replyReportNative(BB[B)Z
.end method

.method private native reportErrorNative(B)Z
.end method

.method private native sendReportNative(I[B)Z
.end method

.method private native unplugNative()Z
.end method

.method private native unregisterAppNative()Z
.end method


# virtual methods
.method protected cleanup()Z
    .locals 2

    .prologue
    .line 450
    sget-boolean v0, Lcom/android/bluetooth/hid/HidDevService;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/bluetooth/hid/HidDevService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "cleanup()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    :cond_0
    iget-boolean v0, p0, Lcom/android/bluetooth/hid/HidDevService;->mNativeAvailable:Z

    if-eqz v0, :cond_1

    .line 453
    invoke-direct {p0}, Lcom/android/bluetooth/hid/HidDevService;->cleanupNative()V

    .line 454
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/hid/HidDevService;->mNativeAvailable:Z

    .line 457
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method declared-synchronized connect()Z
    .locals 2

    .prologue
    monitor-enter p0

    .line 412
    :try_start_0
    sget-boolean v0, Lcom/android/bluetooth/hid/HidDevService;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/bluetooth/hid/HidDevService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "connect()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/hid/HidDevService;->connectNative()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized disconnect()Z
    .locals 2

    .prologue
    monitor-enter p0

    .line 418
    :try_start_0
    sget-boolean v0, Lcom/android/bluetooth/hid/HidDevService;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/bluetooth/hid/HidDevService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "disconnect()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/hid/HidDevService;->disconnectNative()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected initBinder()Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;
    .locals 1

    .prologue
    .line 363
    new-instance v0, Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceBinder;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceBinder;-><init>(Lcom/android/bluetooth/hid/HidDevService;)V

    return-object v0
.end method

.method declared-synchronized registerApp(Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;Landroid/bluetooth/IBluetoothHidDeviceCallback;)Z
    .locals 8
    .param p1, "config"    # Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;
    .param p2, "sdp"    # Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;
    .param p3, "inQos"    # Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;
    .param p4, "outQos"    # Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;
    .param p5, "callback"    # Landroid/bluetooth/IBluetoothHidDeviceCallback;

    .prologue
    const/4 v7, 0x0

    monitor-enter p0

    .line 369
    :try_start_0
    sget-boolean v0, Lcom/android/bluetooth/hid/HidDevService;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/bluetooth/hid/HidDevService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerApp()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidDevService;->mAppConfig:Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 372
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 375
    :cond_1
    :try_start_1
    iput-object p1, p0, Lcom/android/bluetooth/hid/HidDevService;->mAppConfig:Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;

    .line 376
    iput-object p5, p0, Lcom/android/bluetooth/hid/HidDevService;->mCallback:Landroid/bluetooth/IBluetoothHidDeviceCallback;

    .line 378
    iget-object v1, p2, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;->name:Ljava/lang/String;

    iget-object v2, p2, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;->description:Ljava/lang/String;

    iget-object v3, p2, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;->provider:Ljava/lang/String;

    iget-byte v4, p2, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;->subclass:B

    .line 379
    iget-object v5, p2, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;->descriptors:[B

    if-nez p3, :cond_2

    move-object v6, v7

    :goto_0
    if-nez p4, :cond_3

    :goto_1
    move-object v0, p0

    .line 378
    invoke-direct/range {v0 .. v7}, Lcom/android/bluetooth/hid/HidDevService;->registerAppNative(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;B[B[I[I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 379
    :cond_2
    :try_start_2
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->toArray()[I

    move-result-object v6

    goto :goto_0

    .line 380
    :cond_3
    invoke-virtual {p4}, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->toArray()[I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v7

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized replyReport(BB[B)Z
    .locals 3
    .param p1, "type"    # B
    .param p2, "id"    # B
    .param p3, "data"    # [B

    .prologue
    monitor-enter p0

    .line 400
    :try_start_0
    sget-boolean v0, Lcom/android/bluetooth/hid/HidDevService;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/bluetooth/hid/HidDevService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "replyReport(): type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/hid/HidDevService;->replyReportNative(BB[B)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized reportError(B)Z
    .locals 3
    .param p1, "error"    # B

    .prologue
    monitor-enter p0

    .line 424
    :try_start_0
    sget-boolean v0, Lcom/android/bluetooth/hid/HidDevService;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/bluetooth/hid/HidDevService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reportError(): error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hid/HidDevService;->reportErrorNative(B)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized sendReport(I[B)Z
    .locals 3
    .param p1, "id"    # I
    .param p2, "data"    # [B

    .prologue
    monitor-enter p0

    .line 394
    :try_start_0
    sget-boolean v0, Lcom/android/bluetooth/hid/HidDevService;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/bluetooth/hid/HidDevService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendReport(): id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/hid/HidDevService;->sendReportNative(I[B)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected start()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 431
    sget-boolean v0, Lcom/android/bluetooth/hid/HidDevService;->DBG:Z

    if-nez v0, :cond_0

    .line 432
    const-string/jumbo v0, "BluetoothHidDev"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/hid/HidDevService;->DBG:Z

    .line 433
    :cond_0
    sget-boolean v0, Lcom/android/bluetooth/hid/HidDevService;->DBG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "Start Bluetooth HidDevService"

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hid/HidDevService;->log(Ljava/lang/String;)V

    .line 435
    :cond_1
    invoke-direct {p0}, Lcom/android/bluetooth/hid/HidDevService;->initNative()V

    .line 436
    iput-boolean v2, p0, Lcom/android/bluetooth/hid/HidDevService;->mNativeAvailable:Z

    .line 438
    return v2
.end method

.method protected stop()Z
    .locals 1

    .prologue
    .line 443
    sget-boolean v0, Lcom/android/bluetooth/hid/HidDevService;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Stopping Bluetooth HidDevService"

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hid/HidDevService;->log(Ljava/lang/String;)V

    .line 445
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method declared-synchronized unplug()Z
    .locals 2

    .prologue
    monitor-enter p0

    .line 406
    :try_start_0
    sget-boolean v0, Lcom/android/bluetooth/hid/HidDevService;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/bluetooth/hid/HidDevService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "unplug()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/hid/HidDevService;->unplugNative()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized unregisterApp(Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;)Z
    .locals 2
    .param p1, "config"    # Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;

    .prologue
    monitor-enter p0

    .line 384
    :try_start_0
    sget-boolean v0, Lcom/android/bluetooth/hid/HidDevService;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/bluetooth/hid/HidDevService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "unregisterApp()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidDevService;->mAppConfig:Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    if-nez p1, :cond_2

    .line 387
    :cond_1
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 386
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidDevService;->mAppConfig:Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 390
    invoke-direct {p0}, Lcom/android/bluetooth/hid/HidDevService;->unregisterAppNative()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
