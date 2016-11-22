.class public Lcom/android/bluetooth/pan/PanService;
.super Lcom/android/bluetooth/btservice/ProfileService;
.source "PanService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/pan/PanService$BluetoothPanBinder;,
        Lcom/android/bluetooth/pan/PanService$ConnectState;,
        Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;,
        Lcom/android/bluetooth/pan/PanService$1;
    }
.end annotation


# static fields
.field private static final BLUETOOTH_IFACE_ADDR_START:Ljava/lang/String; = "192.168.44.1"

.field private static final BLUETOOTH_MAX_PAN_CONNECTIONS:I = 0x5

.field private static final BLUETOOTH_PREFIX_LENGTH:I = 0x18

.field private static final CONN_STATE_CONNECTED:I = 0x0

.field private static final CONN_STATE_CONNECTING:I = 0x1

.field private static final CONN_STATE_DISCONNECTED:I = 0x2

.field private static final CONN_STATE_DISCONNECTING:I = 0x3

.field private static DBG:Z = false

.field public static final LOG_TAG:Ljava/lang/String; = "BluetoothPan"

.field private static final MESSAGE_CONNECT:I = 0x1

.field private static final MESSAGE_CONNECT_STATE_CHANGED:I = 0xb

.field private static final MESSAGE_DISCONNECT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "PanService"


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothIfaceAddresses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mMaxPanDevices:I

.field private mNativeAvailable:Z

.field private mNetworkFactory:Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;

.field private mPanDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mPanIfName:Ljava/lang/String;

.field private mTetherOn:Z


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/bluetooth/pan/PanService;->DBG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/bluetooth/pan/PanService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService;->mPanIfName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/bluetooth/pan/PanService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/pan/PanService;->mTetherOn:Z

    return v0
.end method

.method static synthetic -wrap0(Lcom/android/bluetooth/pan/PanService;[B)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .param p1, "address"    # [B

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/pan/PanService;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/bluetooth/pan/PanService;[BII)Z
    .locals 1
    .param p1, "btAddress"    # [B
    .param p2, "local_role"    # I
    .param p3, "remote_role"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/pan/PanService;->connectPanNative([BII)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/bluetooth/pan/PanService;[B)Z
    .locals 1
    .param p1, "btAddress"    # [B

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/pan/PanService;->disconnectPanNative([B)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/bluetooth/pan/PanService;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/bluetooth/pan/PanService;->isAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(I)I
    .locals 1
    .param p0, "halState"    # I

    .prologue
    invoke-static {p0}, Lcom/android/bluetooth/pan/PanService;->convertHalState(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Lcom/android/bluetooth/pan/PanService;Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/pan/PanService;->log(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 63
    const-string/jumbo v0, "BluetoothPan"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/pan/PanService;->DBG:Z

    .line 85
    invoke-static {}, Lcom/android/bluetooth/pan/PanService;->classInitNative()V

    .line 60
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/ProfileService;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/pan/PanService;->mTetherOn:Z

    .line 143
    new-instance v0, Lcom/android/bluetooth/pan/PanService$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/pan/PanService$1;-><init>(Lcom/android/bluetooth/pan/PanService;)V

    iput-object v0, p0, Lcom/android/bluetooth/pan/PanService;->mHandler:Landroid/os/Handler;

    .line 60
    return-void
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupNative()V
.end method

.method private native connectPanNative([BII)Z
.end method

.method private static convertHalState(I)I
    .locals 4
    .param p0, "halState"    # I

    .prologue
    const/4 v3, 0x0

    .line 393
    packed-switch p0, :pswitch_data_0

    .line 403
    const-string/jumbo v0, "PanService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "bad pan connection state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    return v3

    .line 395
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 397
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 399
    :pswitch_2
    return v3

    .line 401
    :pswitch_3
    const/4 v0, 0x3

    return v0

    .line 393
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private createNewTetheringAddressLocked()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 553
    invoke-direct {p0}, Lcom/android/bluetooth/pan/PanService;->getConnectedPanDevices()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget v4, p0, Lcom/android/bluetooth/pan/PanService;->mMaxPanDevices:I

    if-ne v3, v4, :cond_1

    .line 554
    sget-boolean v3, Lcom/android/bluetooth/pan/PanService;->DBG:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "PanService"

    const-string/jumbo v4, "Max PAN device connections reached"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    :cond_0
    const/4 v3, 0x0

    return-object v3

    .line 557
    :cond_1
    const-string/jumbo v1, "192.168.44.1"

    .line 559
    .local v1, "address":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/android/bluetooth/pan/PanService;->mBluetoothIfaceAddresses:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 560
    const-string/jumbo v3, "\\."

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 561
    .local v0, "addr":[Ljava/lang/String;
    aget-object v3, v0, v5

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 562
    .local v2, "newIp":Ljava/lang/Integer;
    aget-object v3, v0, v5

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 567
    .end local v0    # "addr":[Ljava/lang/String;
    .end local v2    # "newIp":Ljava/lang/Integer;
    :cond_2
    iget-object v3, p0, Lcom/android/bluetooth/pan/PanService;->mBluetoothIfaceAddresses:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 568
    return-object v1
.end method

.method private native disconnectPanNative([B)Z
.end method

.method private native enablePanNative(I)Z
.end method

.method private enableTethering(Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 495
    sget-boolean v13, Lcom/android/bluetooth/pan/PanService;->DBG:Z

    if-eqz v13, :cond_0

    const-string/jumbo v13, "PanService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "updateTetherState:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    :cond_0
    const-string/jumbo v13, "network_management"

    invoke-static {v13}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 498
    .local v3, "b":Landroid/os/IBinder;
    invoke-static {v3}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v12

    .line 500
    .local v12, "service":Landroid/os/INetworkManagementService;
    const-string/jumbo v13, "connectivity"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/bluetooth/pan/PanService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    .line 501
    .local v5, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v4

    .line 504
    .local v4, "bluetoothRegexs":[Ljava/lang/String;
    const/4 v13, 0x0

    new-array v7, v13, [Ljava/lang/String;

    .line 506
    .local v7, "currentIfaces":[Ljava/lang/String;
    :try_start_0
    invoke-interface {v12}, Landroid/os/INetworkManagementService;->listInterfaces()[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 512
    const/4 v9, 0x0

    .line 513
    .local v9, "found":Z
    const/4 v13, 0x0

    array-length v14, v7

    :goto_0
    if-ge v13, v14, :cond_1

    aget-object v6, v7, v13

    .line 514
    .local v6, "currIface":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 515
    const/4 v9, 0x1

    .line 520
    .end local v6    # "currIface":Ljava/lang/String;
    :cond_1
    if-nez v9, :cond_3

    const/4 v13, 0x0

    return-object v13

    .line 507
    .end local v9    # "found":Z
    :catch_0
    move-exception v8

    .line 508
    .local v8, "e":Ljava/lang/Exception;
    const-string/jumbo v13, "PanService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Error listing Interfaces :"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    const/4 v13, 0x0

    return-object v13

    .line 513
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v6    # "currIface":Ljava/lang/String;
    .restart local v9    # "found":Z
    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 522
    .end local v6    # "currIface":Ljava/lang/String;
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/pan/PanService;->createNewTetheringAddressLocked()Ljava/lang/String;

    move-result-object v2

    .line 523
    .local v2, "address":Ljava/lang/String;
    if-nez v2, :cond_4

    const/4 v13, 0x0

    return-object v13

    .line 525
    :cond_4
    const/4 v10, 0x0

    .line 527
    .local v10, "ifcg":Landroid/net/InterfaceConfiguration;
    :try_start_1
    move-object/from16 v0, p1

    invoke-interface {v12, v0}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v10

    .line 528
    .local v10, "ifcg":Landroid/net/InterfaceConfiguration;
    if-eqz v10, :cond_7

    .line 529
    const/4 v1, 0x0

    .line 530
    .local v1, "addr":Ljava/net/InetAddress;
    invoke-virtual {v10}, Landroid/net/InterfaceConfiguration;->getLinkAddress()Landroid/net/LinkAddress;

    move-result-object v11

    .line 531
    .local v11, "linkAddr":Landroid/net/LinkAddress;
    if-eqz v11, :cond_5

    invoke-virtual {v11}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    .local v1, "addr":Ljava/net/InetAddress;
    if-nez v1, :cond_8

    .line 534
    .end local v1    # "addr":Ljava/net/InetAddress;
    :cond_5
    :goto_1
    invoke-static {v2}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 536
    .restart local v1    # "addr":Ljava/net/InetAddress;
    :cond_6
    invoke-virtual {v10}, Landroid/net/InterfaceConfiguration;->setInterfaceUp()V

    .line 537
    new-instance v13, Landroid/net/LinkAddress;

    const/16 v14, 0x18

    invoke-direct {v13, v1, v14}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v10, v13}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    .line 538
    const-string/jumbo v13, "running"

    invoke-virtual {v10, v13}, Landroid/net/InterfaceConfiguration;->clearFlag(Ljava/lang/String;)V

    .line 540
    move-object/from16 v0, p1

    invoke-interface {v12, v0, v10}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    .line 541
    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/net/ConnectivityManager;->tether(Ljava/lang/String;)I

    move-result v13

    if-eqz v13, :cond_7

    .line 542
    const-string/jumbo v13, "PanService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Error tethering "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    .end local v1    # "addr":Ljava/net/InetAddress;
    .end local v11    # "linkAddr":Landroid/net/LinkAddress;
    :cond_7
    return-object v2

    .line 532
    .restart local v1    # "addr":Ljava/net/InetAddress;
    .restart local v11    # "linkAddr":Landroid/net/LinkAddress;
    :cond_8
    const-string/jumbo v13, "0.0.0.0"

    invoke-static {v13}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v13

    .line 531
    if-nez v13, :cond_5

    .line 533
    const-string/jumbo v13, "::0"

    invoke-static {v13}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v13

    .line 531
    if-eqz v13, :cond_6

    goto :goto_1

    .line 545
    .end local v1    # "addr":Ljava/net/InetAddress;
    .end local v10    # "ifcg":Landroid/net/InterfaceConfiguration;
    .end local v11    # "linkAddr":Landroid/net/LinkAddress;
    :catch_1
    move-exception v8

    .line 546
    .restart local v8    # "e":Ljava/lang/Exception;
    const-string/jumbo v13, "PanService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Error configuring interface "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ", :"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    const/4 v13, 0x0

    return-object v13
.end method

.method private getConnectedPanDevices()Ljava/util/List;
    .locals 5
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
    .line 572
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 574
    .local v2, "devices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    iget-object v3, p0, Lcom/android/bluetooth/pan/PanService;->mPanDevices:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "device$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 575
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-direct {p0, v0}, Lcom/android/bluetooth/pan/PanService;->getPanDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 576
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 579
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_1
    return-object v2
.end method

.method private getPanDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 583
    iget-object v1, p0, Lcom/android/bluetooth/pan/PanService;->mPanDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;

    .line 584
    .local v0, "panDevice":Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;
    if-nez v0, :cond_0

    .line 585
    const/4 v1, 0x0

    return v1

    .line 587
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;->-get1(Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;)I

    move-result v1

    return v1
.end method

.method private native getPanLocalRoleNative()I
.end method

.method private native initializeNative()V
.end method

.method private onConnectStateChanged([BIIII)V
    .locals 7
    .param p1, "address"    # [B
    .param p2, "state"    # I
    .param p3, "error"    # I
    .param p4, "local_role"    # I
    .param p5, "remote_role"    # I

    .prologue
    .line 377
    sget-boolean v0, Lcom/android/bluetooth/pan/PanService;->DBG:Z

    if-eqz v0, :cond_0

    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onConnectStateChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", local role:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 379
    const-string/jumbo v1, ", remote_role: "

    .line 378
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/pan/PanService;->log(Ljava/lang/String;)V

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 382
    .local v6, "msg":Landroid/os/Message;
    new-instance v0, Lcom/android/bluetooth/pan/PanService$ConnectState;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/pan/PanService$ConnectState;-><init>([BIIII)V

    iput-object v0, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 383
    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 376
    return-void
.end method

.method private onControlStateChanged(IIILjava/lang/String;)V
    .locals 2
    .param p1, "local_role"    # I
    .param p2, "state"    # I
    .param p3, "error"    # I
    .param p4, "ifname"    # Ljava/lang/String;

    .prologue
    .line 386
    sget-boolean v0, Lcom/android/bluetooth/pan/PanService;->DBG:Z

    if-eqz v0, :cond_0

    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onControlStateChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", ifname: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/pan/PanService;->log(Ljava/lang/String;)V

    .line 388
    :cond_0
    if-nez p3, :cond_1

    .line 389
    iput-object p4, p0, Lcom/android/bluetooth/pan/PanService;->mPanIfName:Ljava/lang/String;

    .line 385
    :cond_1
    return-void
.end method


# virtual methods
.method protected cleanup()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 125
    iget-boolean v0, p0, Lcom/android/bluetooth/pan/PanService;->mNativeAvailable:Z

    if-eqz v0, :cond_0

    .line 126
    invoke-direct {p0}, Lcom/android/bluetooth/pan/PanService;->cleanupNative()V

    .line 127
    iput-boolean v3, p0, Lcom/android/bluetooth/pan/PanService;->mNativeAvailable:Z

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService;->mPanDevices:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    .line 130
    invoke-virtual {p0}, Lcom/android/bluetooth/pan/PanService;->getConnectedDevices()Ljava/util/List;

    move-result-object v6

    .line 131
    .local v6, "DevList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "dev$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 132
    .local v1, "dev":Landroid/bluetooth/BluetoothDevice;
    iget-object v2, p0, Lcom/android/bluetooth/pan/PanService;->mPanIfName:Ljava/lang/String;

    .line 133
    const/4 v4, 0x2

    move-object v0, p0

    .line 132
    invoke-virtual/range {v0 .. v5}, Lcom/android/bluetooth/pan/PanService;->handlePanDeviceStateChange(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;III)V

    goto :goto_0

    .line 135
    .end local v1    # "dev":Landroid/bluetooth/BluetoothDevice;
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService;->mPanDevices:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 137
    .end local v6    # "DevList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v7    # "dev$iterator":Ljava/util/Iterator;
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService;->mBluetoothIfaceAddresses:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 138
    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService;->mBluetoothIfaceAddresses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 140
    :cond_3
    return v5
.end method

.method connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 268
    const-string/jumbo v2, "android.permission.BLUETOOTH"

    const-string/jumbo v3, "Need BLUETOOTH permission"

    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/pan/PanService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    invoke-static {}, Lcom/android/bluetooth/a2dp/A2dpService;->getA2dpService()Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v0

    .line 271
    .local v0, "a2dpService":Lcom/android/bluetooth/a2dp/A2dpService;
    if-eqz v0, :cond_0

    .line 272
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dp/A2dpService;->isMulticastOngoing(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    .line 271
    if-eqz v2, :cond_0

    .line 273
    const-string/jumbo v2, "PanService"

    const-string/jumbo v3, "A2dp Multicast is Ongoing, ignore Connection Request"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    return v5

    .line 277
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/pan/PanService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 278
    const-string/jumbo v2, "PanService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Pan Device not disconnected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    return v5

    .line 283
    :cond_1
    iget-object v2, p0, Lcom/android/bluetooth/pan/PanService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/bluetooth/pan/PanService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 284
    const-string/jumbo v2, "PanService"

    const-string/jumbo v3, "Inquiry is going on, Cancelling inquiry while initiating PANU connection"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object v2, p0, Lcom/android/bluetooth/pan/PanService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 288
    :cond_2
    iget-object v2, p0, Lcom/android/bluetooth/pan/PanService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 289
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/bluetooth/pan/PanService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 290
    return v4
.end method

.method disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 294
    const-string/jumbo v1, "android.permission.BLUETOOTH"

    const-string/jumbo v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/pan/PanService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    iget-object v1, p0, Lcom/android/bluetooth/pan/PanService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 296
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/bluetooth/pan/PanService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 297
    const/4 v1, 0x1

    return v1
.end method

.method public dump(Ljava/lang/StringBuilder;)V
    .locals 6
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 592
    invoke-super {p0, p1}, Lcom/android/bluetooth/btservice/ProfileService;->dump(Ljava/lang/StringBuilder;)V

    .line 593
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mMaxPanDevices: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/bluetooth/pan/PanService;->mMaxPanDevices:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/android/bluetooth/pan/PanService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 594
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mPanIfName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/pan/PanService;->mPanIfName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/android/bluetooth/pan/PanService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 595
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mTetherOn: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/bluetooth/pan/PanService;->mTetherOn:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/android/bluetooth/pan/PanService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 596
    const-string/jumbo v4, "mPanDevices:"

    invoke-static {p1, v4}, Lcom/android/bluetooth/pan/PanService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 597
    iget-object v4, p0, Lcom/android/bluetooth/pan/PanService;->mPanDevices:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "device$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 598
    .local v2, "device":Landroid/bluetooth/BluetoothDevice;
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

    iget-object v5, p0, Lcom/android/bluetooth/pan/PanService;->mPanDevices:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/android/bluetooth/pan/PanService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_0

    .line 600
    .end local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_0
    const-string/jumbo v4, "mBluetoothIfaceAddresses:"

    invoke-static {p1, v4}, Lcom/android/bluetooth/pan/PanService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 601
    iget-object v4, p0, Lcom/android/bluetooth/pan/PanService;->mBluetoothIfaceAddresses:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "address$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 602
    .local v0, "address":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/android/bluetooth/pan/PanService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_1

    .line 591
    .end local v0    # "address":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method getConnectedDevices()Ljava/util/List;
    .locals 4
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
    .line 339
    const-string/jumbo v1, "android.permission.BLUETOOTH"

    const-string/jumbo v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/pan/PanService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x2

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 340
    invoke-virtual {p0, v1}, Lcom/android/bluetooth/pan/PanService;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v0

    .line 342
    .local v0, "devices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    return-object v0
.end method

.method getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 301
    iget-object v1, p0, Lcom/android/bluetooth/pan/PanService;->mPanDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;

    .line 302
    .local v0, "panDevice":Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;
    if-nez v0, :cond_0

    .line 303
    const/4 v1, 0x0

    return v1

    .line 305
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;->-get1(Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;)I

    move-result v1

    return v1
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
    .line 346
    const-string/jumbo v5, "android.permission.BLUETOOTH"

    const-string/jumbo v6, "Need BLUETOOTH permission"

    invoke-virtual {p0, v5, v6}, Lcom/android/bluetooth/pan/PanService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 349
    .local v3, "panDevices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    iget-object v5, p0, Lcom/android/bluetooth/pan/PanService;->mPanDevices:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

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

    .line 350
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/pan/PanService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    .line 351
    .local v2, "panDeviceState":I
    const/4 v5, 0x0

    array-length v6, p1

    :goto_1
    if-ge v5, v6, :cond_0

    aget v4, p1, v5

    .line 352
    .local v4, "state":I
    if-ne v4, v2, :cond_1

    .line 353
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 351
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 358
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "panDeviceState":I
    .end local v4    # "state":I
    :cond_2
    return-object v3
.end method

.method protected getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    const-string/jumbo v0, "PanService"

    return-object v0
.end method

.method handlePanDeviceStateChange(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;III)V
    .locals 9
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "iface"    # Ljava/lang/String;
    .param p3, "state"    # I
    .param p4, "local_role"    # I
    .param p5, "remote_role"    # I

    .prologue
    const/4 v8, 0x3

    const/4 v5, 0x2

    .line 410
    sget-boolean v1, Lcom/android/bluetooth/pan/PanService;->DBG:Z

    if-eqz v1, :cond_0

    .line 411
    const-string/jumbo v1, "PanService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handlePanDeviceStateChange: device: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ", iface: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 412
    const-string/jumbo v4, ", state: "

    .line 411
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 412
    const-string/jumbo v4, ", local_role:"

    .line 411
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 412
    const-string/jumbo v4, ", remote_role:"

    .line 411
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :cond_0
    const/4 v3, 0x0

    .line 417
    .local v3, "ifaceAddr":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/bluetooth/pan/PanService;->mPanDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;

    .line 418
    .local v0, "panDevice":Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;
    if-nez v0, :cond_1

    .line 419
    const/4 v7, 0x0

    .line 430
    .end local v3    # "ifaceAddr":Ljava/lang/String;
    .local v7, "prevState":I
    :goto_0
    if-nez v7, :cond_2

    if-ne p3, v8, :cond_2

    .line 431
    const-string/jumbo v1, "PanService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Ignoring state change from "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    return-void

    .line 421
    .end local v7    # "prevState":I
    .restart local v3    # "ifaceAddr":Ljava/lang/String;
    :cond_1
    invoke-static {v0}, Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;->-get1(Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;)I

    move-result v7

    .line 422
    .restart local v7    # "prevState":I
    invoke-static {v0}, Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;->-get0(Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;)Ljava/lang/String;

    move-result-object v3

    .local v3, "ifaceAddr":Ljava/lang/String;
    goto :goto_0

    .line 435
    .end local v3    # "ifaceAddr":Ljava/lang/String;
    :cond_2
    sget-boolean v1, Lcom/android/bluetooth/pan/PanService;->DBG:Z

    if-eqz v1, :cond_3

    const-string/jumbo v1, "PanService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handlePanDeviceStateChange preState: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " state: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :cond_3
    if-ne v7, p3, :cond_4

    return-void

    .line 438
    :cond_4
    if-ne p5, v5, :cond_c

    .line 439
    if-ne p3, v5, :cond_b

    .line 440
    iget-boolean v1, p0, Lcom/android/bluetooth/pan/PanService;->mTetherOn:Z

    if-eqz v1, :cond_5

    if-ne p4, v5, :cond_7

    .line 441
    :cond_5
    sget-boolean v1, Lcom/android/bluetooth/pan/PanService;->DBG:Z

    if-eqz v1, :cond_6

    const-string/jumbo v1, "PanService"

    const-string/jumbo v2, "handlePanDeviceStateChange BT tethering is off/Local role is PANU drop the connection"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :cond_6
    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/bluetooth/pan/PanService;->disconnectPanNative([B)Z

    .line 444
    return-void

    .line 446
    :cond_7
    sget-boolean v1, Lcom/android/bluetooth/pan/PanService;->DBG:Z

    if-eqz v1, :cond_8

    const-string/jumbo v1, "PanService"

    const-string/jumbo v2, "handlePanDeviceStateChange LOCAL_NAP_ROLE:REMOTE_PANU_ROLE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    :cond_8
    invoke-direct {p0, p2}, Lcom/android/bluetooth/pan/PanService;->enableTethering(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 448
    .restart local v3    # "ifaceAddr":Ljava/lang/String;
    if-nez v3, :cond_9

    const-string/jumbo v1, "PanService"

    const-string/jumbo v2, "Error seting up tether interface"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    .end local v3    # "ifaceAddr":Ljava/lang/String;
    :cond_9
    :goto_1
    if-nez v0, :cond_10

    .line 470
    new-instance v0, Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;

    .end local v0    # "panDevice":Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;
    move-object v1, p0

    move v2, p3

    move-object v4, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;-><init>(Lcom/android/bluetooth/pan/PanService;ILjava/lang/String;Ljava/lang/String;I)V

    .line 471
    .restart local v0    # "panDevice":Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;
    iget-object v1, p0, Lcom/android/bluetooth/pan/PanService;->mPanDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    :goto_2
    sget-boolean v1, Lcom/android/bluetooth/pan/PanService;->DBG:Z

    if-eqz v1, :cond_a

    const-string/jumbo v1, "PanService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Pan Device state : device: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " State:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 483
    const-string/jumbo v4, "->"

    .line 482
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    :cond_a
    const/4 v1, 0x5

    invoke-virtual {p0, p1, v1, p3, v7}, Lcom/android/bluetooth/pan/PanService;->notifyProfileConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;III)V

    .line 485
    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v1, "android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {v6, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 486
    .local v6, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v6, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 487
    const-string/jumbo v1, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {v6, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 488
    const-string/jumbo v1, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {v6, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 489
    const-string/jumbo v1, "android.bluetooth.pan.extra.LOCAL_ROLE"

    invoke-virtual {v6, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 490
    const-string/jumbo v1, "android.permission.BLUETOOTH"

    invoke-virtual {p0, v6, v1}, Lcom/android/bluetooth/pan/PanService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 409
    return-void

    .line 450
    .end local v6    # "intent":Landroid/content/Intent;
    :cond_b
    if-nez p3, :cond_9

    .line 451
    if-eqz v3, :cond_9

    .line 452
    iget-object v1, p0, Lcom/android/bluetooth/pan/PanService;->mBluetoothIfaceAddresses:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 453
    const/4 v3, 0x0

    .local v3, "ifaceAddr":Ljava/lang/String;
    goto :goto_1

    .line 456
    .end local v3    # "ifaceAddr":Ljava/lang/String;
    :cond_c
    iget-object v1, p0, Lcom/android/bluetooth/pan/PanService;->mNetworkFactory:Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;

    if-eqz v1, :cond_9

    .line 458
    sget-boolean v1, Lcom/android/bluetooth/pan/PanService;->DBG:Z

    if-eqz v1, :cond_d

    const-string/jumbo v1, "PanService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handlePanDeviceStateChange LOCAL_PANU_ROLE:REMOTE_NAP_ROLE state = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 459
    const-string/jumbo v4, ", prevState = "

    .line 458
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    :cond_d
    if-ne p3, v5, :cond_e

    .line 461
    iget-object v1, p0, Lcom/android/bluetooth/pan/PanService;->mNetworkFactory:Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;

    invoke-virtual {v1, p2}, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->startReverseTether(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 462
    :cond_e
    if-nez p3, :cond_9

    .line 463
    if-eq v7, v5, :cond_f

    .line 464
    if-ne v7, v8, :cond_9

    .line 465
    :cond_f
    iget-object v1, p0, Lcom/android/bluetooth/pan/PanService;->mNetworkFactory:Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;

    invoke-virtual {v1}, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->stopReverseTether()V

    goto/16 :goto_1

    .line 473
    :cond_10
    invoke-static {v0, p3}, Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;->-set3(Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;I)I

    .line 474
    invoke-static {v0, v3}, Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;->-set1(Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;Ljava/lang/String;)Ljava/lang/String;

    .line 475
    invoke-static {v0, p4}, Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;->-set2(Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;I)I

    .line 476
    invoke-static {v0, p2}, Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;->-set0(Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_2
.end method

.method public initBinder()Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;
    .locals 1

    .prologue
    .line 93
    new-instance v0, Lcom/android/bluetooth/pan/PanService$BluetoothPanBinder;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/pan/PanService$BluetoothPanBinder;-><init>(Lcom/android/bluetooth/pan/PanService;)V

    return-object v0
.end method

.method isPanNapOn()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 309
    sget-boolean v1, Lcom/android/bluetooth/pan/PanService;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "PanService"

    const-string/jumbo v2, "isTetheringOn call getPanLocalRoleNative"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/pan/PanService;->getPanLocalRoleNative()I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method isPanUOn()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 313
    sget-boolean v1, Lcom/android/bluetooth/pan/PanService;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "PanService"

    const-string/jumbo v2, "isTetheringOn call getPanLocalRoleNative"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/pan/PanService;->getPanLocalRoleNative()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method isTetheringOn()Z
    .locals 1

    .prologue
    .line 318
    iget-boolean v0, p0, Lcom/android/bluetooth/pan/PanService;->mTetherOn:Z

    return v0
.end method

.method setBluetoothTethering(Z)V
    .locals 7
    .param p1, "value"    # Z

    .prologue
    .line 322
    sget-boolean v4, Lcom/android/bluetooth/pan/PanService;->DBG:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "PanService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setBluetoothTethering: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", mTetherOn: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/bluetooth/pan/PanService;->mTetherOn:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/pan/PanService;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/net/ConnectivityManager;->enforceTetherChangePermission(Landroid/content/Context;)V

    .line 324
    const-string/jumbo v4, "android.permission.BLUETOOTH_ADMIN"

    const-string/jumbo v5, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {p0, v4, v5}, Lcom/android/bluetooth/pan/PanService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    const-string/jumbo v4, "user"

    invoke-virtual {p0, v4}, Lcom/android/bluetooth/pan/PanService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 326
    .local v3, "um":Landroid/os/UserManager;
    const-string/jumbo v4, "no_config_tethering"

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 327
    new-instance v4, Ljava/lang/SecurityException;

    const-string/jumbo v5, "DISALLOW_CONFIG_TETHERING is enabled for this user."

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 329
    :cond_1
    iget-boolean v4, p0, Lcom/android/bluetooth/pan/PanService;->mTetherOn:Z

    if-eq v4, p1, :cond_2

    .line 331
    iput-boolean p1, p0, Lcom/android/bluetooth/pan/PanService;->mTetherOn:Z

    .line 332
    invoke-virtual {p0}, Lcom/android/bluetooth/pan/PanService;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 333
    .local v0, "DevList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "dev$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 334
    .local v1, "dev":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p0, v1}, Lcom/android/bluetooth/pan/PanService;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_0

    .line 321
    .end local v0    # "DevList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v1    # "dev":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "dev$iterator":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method protected start()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 97
    sget-boolean v1, Lcom/android/bluetooth/pan/PanService;->DBG:Z

    if-nez v1, :cond_0

    .line 98
    const-string/jumbo v1, "BluetoothPan"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    sput-boolean v1, Lcom/android/bluetooth/pan/PanService;->DBG:Z

    .line 99
    :cond_0
    sget-boolean v1, Lcom/android/bluetooth/pan/PanService;->DBG:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "PanService"

    const-string/jumbo v2, "start PANService "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/bluetooth/pan/PanService;->mPanDevices:Ljava/util/HashMap;

    .line 101
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/bluetooth/pan/PanService;->mBluetoothIfaceAddresses:Ljava/util/ArrayList;

    .line 103
    :try_start_0
    invoke-virtual {p0}, Lcom/android/bluetooth/pan/PanService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 104
    const v2, 0x10e0011

    .line 103
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/bluetooth/pan/PanService;->mMaxPanDevices:I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_0
    invoke-direct {p0}, Lcom/android/bluetooth/pan/PanService;->initializeNative()V

    .line 109
    iput-boolean v4, p0, Lcom/android/bluetooth/pan/PanService;->mNativeAvailable:Z

    .line 111
    new-instance v1, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;

    invoke-virtual {p0}, Lcom/android/bluetooth/pan/PanService;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/bluetooth/pan/PanService;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v2, v3, p0}, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/bluetooth/pan/PanService;)V

    iput-object v1, p0, Lcom/android/bluetooth/pan/PanService;->mNetworkFactory:Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;

    .line 114
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/pan/PanService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 116
    return v4

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/bluetooth/pan/PanService;->mMaxPanDevices:I

    goto :goto_0
.end method

.method protected stop()Z
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 121
    const/4 v0, 0x1

    return v0
.end method
