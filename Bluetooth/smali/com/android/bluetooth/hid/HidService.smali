.class public Lcom/android/bluetooth/hid/HidService;
.super Lcom/android/bluetooth/btservice/ProfileService;
.source "HidService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/hid/HidService$BluetoothInputDeviceBinder;,
        Lcom/android/bluetooth/hid/HidService$1;
    }
.end annotation


# static fields
.field private static final CONN_STATE_CONNECTED:I = 0x0

.field private static final CONN_STATE_CONNECTING:I = 0x1

.field private static final CONN_STATE_DISCONNECTED:I = 0x2

.field private static final CONN_STATE_DISCONNECTING:I = 0x3

.field private static DBG:Z = false

.field public static final LOG_TAG:Ljava/lang/String; = "BluetoothHidHost"

.field private static final MESSAGE_CONNECT:I = 0x1

.field private static final MESSAGE_CONNECT_STATE_CHANGED:I = 0x3

.field private static final MESSAGE_DISCONNECT:I = 0x2

.field private static final MESSAGE_GET_IDLE_TIME:I = 0xe

.field private static final MESSAGE_GET_PROTOCOL_MODE:I = 0x4

.field private static final MESSAGE_GET_REPORT:I = 0x8

.field private static final MESSAGE_ON_GET_IDLE_TIME:I = 0xf

.field private static final MESSAGE_ON_GET_PROTOCOL_MODE:I = 0x6

.field private static final MESSAGE_ON_GET_REPORT:I = 0x9

.field private static final MESSAGE_ON_HANDSHAKE:I = 0xd

.field private static final MESSAGE_ON_VIRTUAL_UNPLUG:I = 0xc

.field private static final MESSAGE_SEND_DATA:I = 0xb

.field private static final MESSAGE_SET_IDLE_TIME:I = 0x10

.field private static final MESSAGE_SET_PROTOCOL_MODE:I = 0x7

.field private static final MESSAGE_SET_REPORT:I = 0xa

.field private static final MESSAGE_VIRTUAL_UNPLUG:I = 0x5

.field private static final TAG:Ljava/lang/String; = "HidService"

.field private static sHidService:Lcom/android/bluetooth/hid/HidService;


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mInputDevices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNativeAvailable:Z

.field private mTargetDevice:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/bluetooth/hid/HidService;->DBG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/bluetooth/hid/HidService;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/hid/HidService;->mInputDevices:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/bluetooth/hid/HidService;)Landroid/bluetooth/BluetoothDevice;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/hid/HidService;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/bluetooth/hid/HidService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/hid/HidService;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/bluetooth/hid/HidService;[B)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .param p1, "address"    # [B

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hid/HidService;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/bluetooth/hid/HidService;[B)Z
    .locals 1
    .param p1, "btAddress"    # [B

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hid/HidService;->connectHidNative([B)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/bluetooth/hid/HidService;[BB)Z
    .locals 1
    .param p1, "btAddress"    # [B
    .param p2, "protocolMode"    # B

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/hid/HidService;->setProtocolModeNative([BB)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap11(Lcom/android/bluetooth/hid/HidService;[BBLjava/lang/String;)Z
    .locals 1
    .param p1, "btAddress"    # [B
    .param p2, "reportType"    # B
    .param p3, "report"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/hid/HidService;->setReportNative([BBLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap12(Lcom/android/bluetooth/hid/HidService;[B)Z
    .locals 1
    .param p1, "btAddress"    # [B

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hid/HidService;->virtualUnPlugNative([B)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap13(I)I
    .locals 1
    .param p0, "halState"    # I

    .prologue
    invoke-static {p0}, Lcom/android/bluetooth/hid/HidService;->convertHalState(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap14(Lcom/android/bluetooth/hid/HidService;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "newState"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/hid/HidService;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/bluetooth/hid/HidService;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "status"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/hid/HidService;->broadcastHandshake(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic -wrap16(Lcom/android/bluetooth/hid/HidService;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "idleTime"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/hid/HidService;->broadcastIdleTime(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic -wrap17(Lcom/android/bluetooth/hid/HidService;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "protocolMode"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/hid/HidService;->broadcastProtocolMode(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic -wrap18(Lcom/android/bluetooth/hid/HidService;Landroid/bluetooth/BluetoothDevice;[BI)V
    .locals 0
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "report"    # [B
    .param p3, "rpt_size"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/hid/HidService;->broadcastReport(Landroid/bluetooth/BluetoothDevice;[BI)V

    return-void
.end method

.method static synthetic -wrap19(Lcom/android/bluetooth/hid/HidService;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "status"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/hid/HidService;->broadcastVirtualUnplugStatus(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/bluetooth/hid/HidService;[B)Z
    .locals 1
    .param p1, "btAddress"    # [B

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hid/HidService;->disconnectHidNative([B)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap20(Lcom/android/bluetooth/hid/HidService;Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hid/HidService;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/bluetooth/hid/HidService;[B)Z
    .locals 1
    .param p1, "btAddress"    # [B

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hid/HidService;->getIdleTimeNative([B)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/android/bluetooth/hid/HidService;[B)Z
    .locals 1
    .param p1, "btAddress"    # [B

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hid/HidService;->getProtocolModeNative([B)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Lcom/android/bluetooth/hid/HidService;[BBBI)Z
    .locals 1
    .param p1, "btAddress"    # [B
    .param p2, "reportType"    # B
    .param p3, "reportId"    # B
    .param p4, "bufferSize"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/bluetooth/hid/HidService;->getReportNative([BBBI)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap6(Lcom/android/bluetooth/hid/HidService;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/bluetooth/hid/HidService;->isAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap7(Lcom/android/bluetooth/hid/HidService;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hid/HidService;->okToConnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap8(Lcom/android/bluetooth/hid/HidService;[BLjava/lang/String;)Z
    .locals 1
    .param p1, "btAddress"    # [B
    .param p2, "report"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/hid/HidService;->sendDataNative([BLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap9(Lcom/android/bluetooth/hid/HidService;[BB)Z
    .locals 1
    .param p1, "btAddress"    # [B
    .param p2, "idleTime"    # B

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/hid/HidService;->setIdleTimeNative([BB)Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 53
    const-string/jumbo v0, "BluetoothHidHost"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/hid/HidService;->DBG:Z

    .line 78
    invoke-static {}, Lcom/android/bluetooth/hid/HidService;->classInitNative()V

    .line 50
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/ProfileService;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/hid/HidService;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;

    .line 153
    new-instance v0, Lcom/android/bluetooth/hid/HidService$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/hid/HidService$1;-><init>(Lcom/android/bluetooth/hid/HidService;)V

    iput-object v0, p0, Lcom/android/bluetooth/hid/HidService;->mHandler:Landroid/os/Handler;

    .line 50
    return-void
.end method

.method private broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "newState"    # I

    .prologue
    .line 687
    iget-object v3, p0, Lcom/android/bluetooth/hid/HidService;->mInputDevices:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 688
    .local v2, "prevStateInteger":Ljava/lang/Integer;
    if-nez v2, :cond_0

    const/4 v1, 0x0

    .line 690
    .local v1, "prevState":I
    :goto_0
    if-ne v1, p2, :cond_1

    .line 691
    const-string/jumbo v3, "HidService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "no state change: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    return-void

    .line 689
    .end local v1    # "prevState":I
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .restart local v1    # "prevState":I
    goto :goto_0

    .line 694
    :cond_1
    iget-object v3, p0, Lcom/android/bluetooth/hid/HidService;->mInputDevices:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 699
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Connection state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/hid/HidService;->log(Ljava/lang/String;)V

    .line 700
    const/4 v3, 0x4

    invoke-virtual {p0, p1, v3, p2, v1}, Lcom/android/bluetooth/hid/HidService;->notifyProfileConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;III)V

    .line 702
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 703
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 704
    const-string/jumbo v3, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 705
    const-string/jumbo v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 706
    const/high16 v3, 0x4000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 707
    const-string/jumbo v3, "android.permission.BLUETOOTH"

    invoke-virtual {p0, v0, v3}, Lcom/android/bluetooth/hid/HidService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 686
    return-void
.end method

.method private broadcastHandshake(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "status"    # I

    .prologue
    .line 711
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.bluetooth.input.profile.action.HANDSHAKE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 712
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 713
    const-string/jumbo v1, "android.bluetooth.BluetoothInputDevice.extra.STATUS"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 714
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 715
    const-string/jumbo v1, "android.permission.BLUETOOTH"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hid/HidService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 710
    return-void
.end method

.method private broadcastIdleTime(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "idleTime"    # I

    .prologue
    .line 745
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "codeaurora.bluetooth.input.profile.action.IDLE_TIME_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 746
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 747
    const-string/jumbo v1, "codeaurora.bluetooth.BluetoothInputDevice.extra.IDLE_TIME"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 748
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 749
    const-string/jumbo v1, "android.permission.BLUETOOTH"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hid/HidService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 750
    sget-boolean v1, Lcom/android/bluetooth/hid/HidService;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Idle time ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/hid/HidService;->log(Ljava/lang/String;)V

    .line 744
    :cond_0
    return-void
.end method

.method private broadcastProtocolMode(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "protocolMode"    # I

    .prologue
    .line 719
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.bluetooth.input.profile.action.PROTOCOL_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 720
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 721
    const-string/jumbo v1, "android.bluetooth.BluetoothInputDevice.extra.PROTOCOL_MODE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 722
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 723
    const-string/jumbo v1, "android.permission.BLUETOOTH"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hid/HidService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 724
    sget-boolean v1, Lcom/android/bluetooth/hid/HidService;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Protocol Mode ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/hid/HidService;->log(Ljava/lang/String;)V

    .line 718
    :cond_0
    return-void
.end method

.method private broadcastReport(Landroid/bluetooth/BluetoothDevice;[BI)V
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "report"    # [B
    .param p3, "rpt_size"    # I

    .prologue
    .line 728
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.bluetooth.input.profile.action.REPORT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 729
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 730
    const-string/jumbo v1, "android.bluetooth.BluetoothInputDevice.extra.REPORT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 731
    const-string/jumbo v1, "android.bluetooth.BluetoothInputDevice.extra.REPORT_BUFFER_SIZE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 732
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 733
    const-string/jumbo v1, "android.permission.BLUETOOTH"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hid/HidService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 727
    return-void
.end method

.method private broadcastVirtualUnplugStatus(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "status"    # I

    .prologue
    .line 737
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.bluetooth.input.profile.action.VIRTUAL_UNPLUG_STATUS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 738
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 739
    const-string/jumbo v1, "android.bluetooth.BluetoothInputDevice.extra.VIRTUAL_UNPLUG_STATUS"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 740
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 741
    const-string/jumbo v1, "android.permission.BLUETOOTH"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hid/HidService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 736
    return-void
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupNative()V
.end method

.method private static declared-synchronized clearHidService()V
    .locals 2

    .prologue
    const-class v0, Lcom/android/bluetooth/hid/HidService;

    monitor-enter v0

    .line 149
    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/android/bluetooth/hid/HidService;->sHidService:Lcom/android/bluetooth/hid/HidService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 148
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private native connectHidNative([B)Z
.end method

.method private static convertHalState(I)I
    .locals 4
    .param p0, "halState"    # I

    .prologue
    const/4 v3, 0x0

    .line 766
    packed-switch p0, :pswitch_data_0

    .line 776
    const-string/jumbo v0, "HidService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "bad hid connection state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    return v3

    .line 768
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 770
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 772
    :pswitch_2
    return v3

    .line 774
    :pswitch_3
    const/4 v0, 0x3

    return v0

    .line 766
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private native disconnectHidNative([B)Z
.end method

.method public static declared-synchronized getHidService()Lcom/android/bluetooth/hid/HidService;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-class v1, Lcom/android/bluetooth/hid/HidService;

    monitor-enter v1

    .line 119
    :try_start_0
    sget-object v0, Lcom/android/bluetooth/hid/HidService;->sHidService:Lcom/android/bluetooth/hid/HidService;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/bluetooth/hid/HidService;->sHidService:Lcom/android/bluetooth/hid/HidService;

    invoke-virtual {v0}, Lcom/android/bluetooth/hid/HidService;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    sget-boolean v0, Lcom/android/bluetooth/hid/HidService;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "HidService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getHidService(): returning "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/bluetooth/hid/HidService;->sHidService:Lcom/android/bluetooth/hid/HidService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_0
    sget-object v0, Lcom/android/bluetooth/hid/HidService;->sHidService:Lcom/android/bluetooth/hid/HidService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 123
    :cond_1
    :try_start_1
    sget-boolean v0, Lcom/android/bluetooth/hid/HidService;->DBG:Z

    if-eqz v0, :cond_2

    .line 124
    sget-object v0, Lcom/android/bluetooth/hid/HidService;->sHidService:Lcom/android/bluetooth/hid/HidService;

    if-nez v0, :cond_3

    .line 125
    const-string/jumbo v0, "HidService"

    const-string/jumbo v2, "getHidService(): service is NULL"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_0
    monitor-exit v1

    .line 130
    return-object v3

    .line 126
    :cond_3
    :try_start_2
    sget-object v0, Lcom/android/bluetooth/hid/HidService;->sHidService:Lcom/android/bluetooth/hid/HidService;

    invoke-virtual {v0}, Lcom/android/bluetooth/hid/HidService;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 127
    const-string/jumbo v0, "HidService"

    const-string/jumbo v2, "getHidService(): service is not available"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private native getIdleTimeNative([B)Z
.end method

.method private native getProtocolModeNative([B)Z
.end method

.method private native getReportNative([BBBI)Z
.end method

.method private native initializeNative()V
.end method

.method private okToConnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v3, 0x0

    .line 754
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 757
    .local v0, "adapterService":Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    .line 758
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->isQuietModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/bluetooth/hid/HidService;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v1, :cond_1

    .line 761
    :cond_0
    return v3

    .line 759
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hid/HidService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 760
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    .line 763
    const/4 v1, 0x1

    return v1
.end method

.method private onConnectStateChanged([BI)V
    .locals 3
    .param p1, "address"    # [B
    .param p2, "state"    # I

    .prologue
    .line 679
    iget-object v1, p0, Lcom/android/bluetooth/hid/HidService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 680
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 681
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 682
    iget-object v1, p0, Lcom/android/bluetooth/hid/HidService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 678
    return-void
.end method

.method private onGetIdleTime([BI)V
    .locals 3
    .param p1, "address"    # [B
    .param p2, "idleTime"    # I

    .prologue
    .line 648
    iget-object v1, p0, Lcom/android/bluetooth/hid/HidService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 649
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 650
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 651
    iget-object v1, p0, Lcom/android/bluetooth/hid/HidService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 647
    return-void
.end method

.method private onGetProtocolMode([BI)V
    .locals 3
    .param p1, "address"    # [B
    .param p2, "mode"    # I

    .prologue
    .line 641
    iget-object v1, p0, Lcom/android/bluetooth/hid/HidService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 642
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 643
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 644
    iget-object v1, p0, Lcom/android/bluetooth/hid/HidService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 640
    return-void
.end method

.method private onGetReport([B[BI)V
    .locals 4
    .param p1, "address"    # [B
    .param p2, "report"    # [B
    .param p3, "rpt_size"    # I

    .prologue
    .line 655
    iget-object v2, p0, Lcom/android/bluetooth/hid/HidService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 656
    .local v1, "msg":Landroid/os/Message;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 657
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 658
    .local v0, "data":Landroid/os/Bundle;
    const-string/jumbo v2, "android.bluetooth.BluetoothInputDevice.extra.REPORT"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 659
    const-string/jumbo v2, "android.bluetooth.BluetoothInputDevice.extra.REPORT_BUFFER_SIZE"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 660
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 661
    iget-object v2, p0, Lcom/android/bluetooth/hid/HidService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 654
    return-void
.end method

.method private onHandshake([BI)V
    .locals 3
    .param p1, "address"    # [B
    .param p2, "status"    # I

    .prologue
    .line 665
    iget-object v1, p0, Lcom/android/bluetooth/hid/HidService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 666
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 667
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 668
    iget-object v1, p0, Lcom/android/bluetooth/hid/HidService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 664
    return-void
.end method

.method private onVirtualUnplug([BI)V
    .locals 3
    .param p1, "address"    # [B
    .param p2, "status"    # I

    .prologue
    .line 672
    iget-object v1, p0, Lcom/android/bluetooth/hid/HidService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 673
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 674
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 675
    iget-object v1, p0, Lcom/android/bluetooth/hid/HidService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 671
    return-void
.end method

.method private native sendDataNative([BLjava/lang/String;)Z
.end method

.method private static declared-synchronized setHidService(Lcom/android/bluetooth/hid/HidService;)V
    .locals 4
    .param p0, "instance"    # Lcom/android/bluetooth/hid/HidService;

    .prologue
    const-class v1, Lcom/android/bluetooth/hid/HidService;

    monitor-enter v1

    .line 134
    if-eqz p0, :cond_2

    :try_start_0
    invoke-virtual {p0}, Lcom/android/bluetooth/hid/HidService;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 135
    sget-boolean v0, Lcom/android/bluetooth/hid/HidService;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "HidService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setHidService(): set to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/bluetooth/hid/HidService;->sHidService:Lcom/android/bluetooth/hid/HidService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_0
    sput-object p0, Lcom/android/bluetooth/hid/HidService;->sHidService:Lcom/android/bluetooth/hid/HidService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v1

    .line 133
    return-void

    .line 138
    :cond_2
    :try_start_1
    sget-boolean v0, Lcom/android/bluetooth/hid/HidService;->DBG:Z

    if-eqz v0, :cond_1

    .line 139
    sget-object v0, Lcom/android/bluetooth/hid/HidService;->sHidService:Lcom/android/bluetooth/hid/HidService;

    if-nez v0, :cond_3

    .line 140
    const-string/jumbo v0, "HidService"

    const-string/jumbo v2, "setHidService(): service not available"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 141
    :cond_3
    :try_start_2
    sget-object v0, Lcom/android/bluetooth/hid/HidService;->sHidService:Lcom/android/bluetooth/hid/HidService;

    invoke-virtual {v0}, Lcom/android/bluetooth/hid/HidService;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 142
    const-string/jumbo v0, "HidService"

    const-string/jumbo v2, "setHidService(): service is cleaning up"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private native setIdleTimeNative([BB)Z
.end method

.method private native setProtocolModeNative([BB)Z
.end method

.method private native setReportNative([BBLjava/lang/String;)Z
.end method

.method private native virtualUnPlugNative([B)Z
.end method


# virtual methods
.method protected cleanup()Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/android/bluetooth/hid/HidService;->mNativeAvailable:Z

    if-eqz v0, :cond_0

    .line 107
    invoke-direct {p0}, Lcom/android/bluetooth/hid/HidService;->cleanupNative()V

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/hid/HidService;->mNativeAvailable:Z

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidService;->mInputDevices:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidService;->mInputDevices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 114
    :cond_1
    invoke-static {}, Lcom/android/bluetooth/hid/HidService;->clearHidService()V

    .line 115
    const/4 v0, 0x1

    return v0
.end method

.method connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 444
    const-string/jumbo v2, "android.permission.BLUETOOTH"

    const-string/jumbo v3, "Need BLUETOOTH permission"

    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/hid/HidService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    invoke-static {}, Lcom/android/bluetooth/a2dp/A2dpService;->getA2dpService()Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v0

    .line 448
    .local v0, "a2dpService":Lcom/android/bluetooth/a2dp/A2dpService;
    if-eqz v0, :cond_0

    .line 449
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dp/A2dpService;->isMulticastOngoing(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    .line 448
    if-eqz v2, :cond_0

    .line 450
    const-string/jumbo v2, "HidService"

    const-string/jumbo v3, "A2dp Multicast is Ongoing, ignore Connection Request"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    return v5

    .line 454
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hid/HidService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 455
    const-string/jumbo v2, "HidService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Hid Device not disconnected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    return v5

    .line 458
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hid/HidService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    if-nez v2, :cond_2

    .line 459
    const-string/jumbo v2, "HidService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Hid Device PRIORITY_OFF: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    return v5

    .line 463
    :cond_2
    iget-object v2, p0, Lcom/android/bluetooth/hid/HidService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 464
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/bluetooth/hid/HidService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 465
    return v4
.end method

.method disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 469
    const-string/jumbo v1, "android.permission.BLUETOOTH"

    const-string/jumbo v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/hid/HidService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    iget-object v1, p0, Lcom/android/bluetooth/hid/HidService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 471
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/bluetooth/hid/HidService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 472
    const/4 v1, 0x1

    return v1
.end method

.method public dump(Ljava/lang/StringBuilder;)V
    .locals 4
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 783
    invoke-super {p0, p1}, Lcom/android/bluetooth/btservice/ProfileService;->dump(Ljava/lang/StringBuilder;)V

    .line 784
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mTargetDevice: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/hid/HidService;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/bluetooth/hid/HidService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 785
    const-string/jumbo v2, "mInputDevices:"

    invoke-static {p1, v2}, Lcom/android/bluetooth/hid/HidService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 786
    iget-object v2, p0, Lcom/android/bluetooth/hid/HidService;->mInputDevices:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "device$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 787
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/hid/HidService;->mInputDevices:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/bluetooth/hid/HidService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_0

    .line 782
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_0
    return-void
.end method

.method getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 476
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidService;->mInputDevices:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 477
    const/4 v0, 0x0

    return v0

    .line 479
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidService;->mInputDevices:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 7
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
    .line 483
    const-string/jumbo v5, "android.permission.BLUETOOTH"

    const-string/jumbo v6, "Need BLUETOOTH permission"

    invoke-virtual {p0, v5, v6}, Lcom/android/bluetooth/hid/HidService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 486
    .local v3, "inputDevices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    iget-object v5, p0, Lcom/android/bluetooth/hid/HidService;->mInputDevices:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "device$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 487
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hid/HidService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    .line 488
    .local v2, "inputDeviceState":I
    const/4 v5, 0x0

    array-length v6, p1

    :goto_1
    if-ge v5, v6, :cond_0

    aget v4, p1, v5

    .line 489
    .local v4, "state":I
    if-ne v4, v2, :cond_1

    .line 490
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 488
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 495
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "inputDeviceState":I
    .end local v4    # "state":I
    :cond_2
    return-object v3
.end method

.method getIdleTime(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 613
    const-string/jumbo v2, "android.permission.BLUETOOTH_ADMIN"

    .line 614
    const-string/jumbo v3, "Need BLUETOOTH_ADMIN permission"

    .line 613
    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/hid/HidService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hid/HidService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    .line 616
    .local v1, "state":I
    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 617
    const/4 v2, 0x0

    return v2

    .line 619
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/hid/HidService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xe

    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 620
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/bluetooth/hid/HidService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 621
    const/4 v2, 0x1

    return v2
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    const-string/jumbo v0, "HidService"

    return-object v0
.end method

.method public getPriority(Landroid/bluetooth/BluetoothDevice;)I
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 509
    const-string/jumbo v1, "android.permission.BLUETOOTH_ADMIN"

    .line 510
    const-string/jumbo v2, "Need BLUETOOTH_ADMIN permission"

    .line 509
    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/hid/HidService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    invoke-virtual {p0}, Lcom/android/bluetooth/hid/HidService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 512
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/Settings$Global;->getBluetoothInputDevicePriorityKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 513
    const/4 v3, -0x1

    .line 511
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 514
    .local v0, "priority":I
    return v0
.end method

.method getProtocolMode(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 519
    const-string/jumbo v2, "android.permission.BLUETOOTH_ADMIN"

    .line 520
    const-string/jumbo v3, "Need BLUETOOTH_ADMIN permission"

    .line 519
    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/hid/HidService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hid/HidService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    .line 522
    .local v1, "state":I
    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 523
    const/4 v2, 0x0

    return v2

    .line 525
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/hid/HidService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 526
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/bluetooth/hid/HidService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 527
    const/4 v2, 0x1

    return v2
.end method

.method getReport(Landroid/bluetooth/BluetoothDevice;BBI)Z
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "reportType"    # B
    .param p3, "reportId"    # B
    .param p4, "bufferSize"    # I

    .prologue
    .line 559
    const-string/jumbo v3, "android.permission.BLUETOOTH_ADMIN"

    .line 560
    const-string/jumbo v4, "Need BLUETOOTH_ADMIN permission"

    .line 559
    invoke-virtual {p0, v3, v4}, Lcom/android/bluetooth/hid/HidService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hid/HidService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    .line 562
    .local v2, "state":I
    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 563
    const/4 v3, 0x0

    return v3

    .line 565
    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/hid/HidService;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 566
    .local v1, "msg":Landroid/os/Message;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 567
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 568
    .local v0, "data":Landroid/os/Bundle;
    const-string/jumbo v3, "android.bluetooth.BluetoothInputDevice.extra.REPORT_TYPE"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 569
    const-string/jumbo v3, "android.bluetooth.BluetoothInputDevice.extra.REPORT_ID"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 570
    const-string/jumbo v3, "android.bluetooth.BluetoothInputDevice.extra.REPORT_BUFFER_SIZE"

    invoke-virtual {v0, v3, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 571
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 572
    iget-object v3, p0, Lcom/android/bluetooth/hid/HidService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 573
    const/4 v3, 0x1

    return v3
.end method

.method public initBinder()Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;
    .locals 1

    .prologue
    .line 86
    new-instance v0, Lcom/android/bluetooth/hid/HidService$BluetoothInputDeviceBinder;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/hid/HidService$BluetoothInputDeviceBinder;-><init>(Lcom/android/bluetooth/hid/HidService;)V

    return-object v0
.end method

.method sendData(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "report"    # Ljava/lang/String;

    .prologue
    .line 595
    const-string/jumbo v1, "android.permission.BLUETOOTH_ADMIN"

    .line 596
    const-string/jumbo v2, "Need BLUETOOTH_ADMIN permission"

    .line 595
    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/hid/HidService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hid/HidService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 598
    .local v0, "state":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 599
    const/4 v1, 0x0

    return v1

    .line 602
    :cond_0
    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/android/bluetooth/hid/HidService;->sendDataNative([BLjava/lang/String;)Z

    move-result v1

    return v1
.end method

.method setIdleTime(Landroid/bluetooth/BluetoothDevice;B)Z
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "idleTime"    # B

    .prologue
    .line 625
    const-string/jumbo v3, "android.permission.BLUETOOTH_ADMIN"

    .line 626
    const-string/jumbo v4, "Need BLUETOOTH_ADMIN permission"

    .line 625
    invoke-virtual {p0, v3, v4}, Lcom/android/bluetooth/hid/HidService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hid/HidService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    .line 628
    .local v2, "state":I
    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 629
    const/4 v3, 0x0

    return v3

    .line 631
    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/hid/HidService;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 632
    .local v1, "msg":Landroid/os/Message;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 633
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 634
    .local v0, "data":Landroid/os/Bundle;
    const-string/jumbo v3, "codeaurora.bluetooth.BluetoothInputDevice.extra.IDLE_TIME"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 635
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 636
    iget-object v3, p0, Lcom/android/bluetooth/hid/HidService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 637
    const/4 v3, 0x1

    return v3
.end method

.method public setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "priority"    # I

    .prologue
    .line 499
    const-string/jumbo v0, "android.permission.BLUETOOTH_ADMIN"

    .line 500
    const-string/jumbo v1, "Need BLUETOOTH_ADMIN permission"

    .line 499
    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hid/HidService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    invoke-virtual {p0}, Lcom/android/bluetooth/hid/HidService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 502
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Settings$Global;->getBluetoothInputDevicePriorityKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 501
    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 504
    sget-boolean v0, Lcom/android/bluetooth/hid/HidService;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "HidService"

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

    .line 505
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method setProtocolMode(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "protocolMode"    # I

    .prologue
    .line 545
    const-string/jumbo v2, "android.permission.BLUETOOTH_ADMIN"

    .line 546
    const-string/jumbo v3, "Need BLUETOOTH_ADMIN permission"

    .line 545
    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/hid/HidService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hid/HidService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    .line 548
    .local v1, "state":I
    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 549
    const/4 v2, 0x0

    return v2

    .line 551
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/hid/HidService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 552
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 553
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 554
    iget-object v2, p0, Lcom/android/bluetooth/hid/HidService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 555
    const/4 v2, 0x1

    return v2
.end method

.method setReport(Landroid/bluetooth/BluetoothDevice;BLjava/lang/String;)Z
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "reportType"    # B
    .param p3, "report"    # Ljava/lang/String;

    .prologue
    .line 577
    const-string/jumbo v3, "android.permission.BLUETOOTH_ADMIN"

    .line 578
    const-string/jumbo v4, "Need BLUETOOTH_ADMIN permission"

    .line 577
    invoke-virtual {p0, v3, v4}, Lcom/android/bluetooth/hid/HidService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hid/HidService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    .line 580
    .local v2, "state":I
    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 581
    const/4 v3, 0x0

    return v3

    .line 583
    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/hid/HidService;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 584
    .local v1, "msg":Landroid/os/Message;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 585
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 586
    .local v0, "data":Landroid/os/Bundle;
    const-string/jumbo v3, "android.bluetooth.BluetoothInputDevice.extra.REPORT_TYPE"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 587
    const-string/jumbo v3, "android.bluetooth.BluetoothInputDevice.extra.REPORT"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 589
    iget-object v3, p0, Lcom/android/bluetooth/hid/HidService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 590
    const/4 v3, 0x1

    return v3
.end method

.method protected start()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 90
    sget-boolean v0, Lcom/android/bluetooth/hid/HidService;->DBG:Z

    if-nez v0, :cond_0

    .line 91
    const-string/jumbo v0, "BluetoothHidHost"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/hid/HidService;->DBG:Z

    .line 92
    :cond_0
    sget-boolean v0, Lcom/android/bluetooth/hid/HidService;->DBG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "Start Bluetooth HidService"

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hid/HidService;->log(Ljava/lang/String;)V

    .line 93
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/hid/HidService;->mInputDevices:Ljava/util/Map;

    .line 94
    invoke-direct {p0}, Lcom/android/bluetooth/hid/HidService;->initializeNative()V

    .line 95
    iput-boolean v2, p0, Lcom/android/bluetooth/hid/HidService;->mNativeAvailable:Z

    .line 96
    invoke-static {p0}, Lcom/android/bluetooth/hid/HidService;->setHidService(Lcom/android/bluetooth/hid/HidService;)V

    .line 97
    return v2
.end method

.method protected stop()Z
    .locals 1

    .prologue
    .line 101
    sget-boolean v0, Lcom/android/bluetooth/hid/HidService;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Stopping Bluetooth HidService"

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hid/HidService;->log(Ljava/lang/String;)V

    .line 102
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method virtualUnplug(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 533
    const-string/jumbo v2, "android.permission.BLUETOOTH_ADMIN"

    .line 534
    const-string/jumbo v3, "Need BLUETOOTH_ADMIN permission"

    .line 533
    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/hid/HidService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hid/HidService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    .line 536
    .local v1, "state":I
    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 537
    const/4 v2, 0x0

    return v2

    .line 539
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/hid/HidService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 540
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/bluetooth/hid/HidService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 541
    const/4 v2, 0x1

    return v2
.end method
