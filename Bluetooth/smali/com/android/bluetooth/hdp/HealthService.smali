.class public Lcom/android/bluetooth/hdp/HealthService;
.super Lcom/android/bluetooth/btservice/ProfileService;
.source "HealthService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;,
        Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthDeathRecipient;,
        Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthBinder;,
        Lcom/android/bluetooth/hdp/HealthService$AppInfo;,
        Lcom/android/bluetooth/hdp/HealthService$HealthChannel;,
        Lcom/android/bluetooth/hdp/HealthService$ChannelStateEvent;
    }
.end annotation


# static fields
.field private static final APP_REG_STATE_DEREG_FAILED:I = 0x3

.field private static final APP_REG_STATE_DEREG_SUCCESS:I = 0x2

.field private static final APP_REG_STATE_REG_FAILED:I = 0x1

.field private static final APP_REG_STATE_REG_SUCCESS:I = 0x0

.field private static final CHANNEL_TYPE_ANY:I = 0x2

.field private static final CHANNEL_TYPE_RELIABLE:I = 0x0

.field private static final CHANNEL_TYPE_STREAMING:I = 0x1

.field private static final CONN_STATE_CONNECTED:I = 0x1

.field private static final CONN_STATE_CONNECTING:I = 0x0

.field private static final CONN_STATE_DESTROYED:I = 0x4

.field private static final CONN_STATE_DISCONNECTED:I = 0x3

.field private static final CONN_STATE_DISCONNECTING:I = 0x2

.field private static final DBG:Z = true

.field private static final MDEP_ROLE_SINK:I = 0x1

.field private static final MDEP_ROLE_SOURCE:I = 0x0

.field private static final MESSAGE_APP_REGISTRATION_CALLBACK:I = 0xb

.field private static final MESSAGE_CHANNEL_STATE_CALLBACK:I = 0xc

.field private static final MESSAGE_CONNECT_CHANNEL:I = 0x3

.field private static final MESSAGE_DISCONNECT_CHANNEL:I = 0x4

.field private static final MESSAGE_REGISTER_APPLICATION:I = 0x1

.field private static final MESSAGE_UNREGISTER_APPLICATION:I = 0x2

.field private static final TAG:Ljava/lang/String; = "HealthService"

.field private static final VDBG:Z


# instance fields
.field private mApps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/bluetooth/BluetoothHealthAppConfiguration;",
            "Lcom/android/bluetooth/hdp/HealthService$AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;

.field private mHealthChannels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/bluetooth/hdp/HealthService$HealthChannel;",
            ">;"
        }
    .end annotation
.end field

.field private mHealthDevices:Ljava/util/Map;
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


# direct methods
.method static synthetic -get0(Lcom/android/bluetooth/hdp/HealthService;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/hdp/HealthService;->mApps:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/bluetooth/hdp/HealthService;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/hdp/HealthService;->mHealthChannels:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/bluetooth/hdp/HealthService;[B)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .param p1, "address"    # [B

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hdp/HealthService;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/bluetooth/hdp/HealthService;I)Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .locals 1
    .param p1, "appId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hdp/HealthService;->findAppConfigByAppId(I)Landroid/bluetooth/BluetoothHealthAppConfiguration;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap10(Lcom/android/bluetooth/hdp/HealthService;I)I
    .locals 1
    .param p1, "role"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hdp/HealthService;->convertRoleToHal(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap11(Lcom/android/bluetooth/hdp/HealthService;IILjava/lang/String;I)I
    .locals 1
    .param p1, "dataType"    # I
    .param p2, "role"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "channelType"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/bluetooth/hdp/HealthService;->registerHealthAppNative(IILjava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap12(Lcom/android/bluetooth/hdp/HealthService;Landroid/bluetooth/BluetoothHealthAppConfiguration;Landroid/bluetooth/BluetoothDevice;IILandroid/os/ParcelFileDescriptor;I)V
    .locals 0
    .param p1, "config"    # Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "state"    # I
    .param p4, "prevState"    # I
    .param p5, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p6, "id"    # I

    .prologue
    invoke-direct/range {p0 .. p6}, Lcom/android/bluetooth/hdp/HealthService;->callHealthChannelCallback(Landroid/bluetooth/BluetoothHealthAppConfiguration;Landroid/bluetooth/BluetoothDevice;IILandroid/os/ParcelFileDescriptor;I)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/bluetooth/hdp/HealthService;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)V
    .locals 0
    .param p1, "config"    # Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .param p2, "status"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/hdp/HealthService;->callStatusCallback(Landroid/bluetooth/BluetoothHealthAppConfiguration;I)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/bluetooth/hdp/HealthService;Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hdp/HealthService;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/bluetooth/hdp/HealthService;I)Z
    .locals 1
    .param p1, "channelId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hdp/HealthService;->disconnectChannelNative(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/bluetooth/hdp/HealthService;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/bluetooth/hdp/HealthService;->isAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/android/bluetooth/hdp/HealthService;I)Z
    .locals 1
    .param p1, "appId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hdp/HealthService;->unregisterHealthAppNative(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Lcom/android/bluetooth/hdp/HealthService;I)Lcom/android/bluetooth/hdp/HealthService$HealthChannel;
    .locals 1
    .param p1, "id"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hdp/HealthService;->findChannelById(I)Lcom/android/bluetooth/hdp/HealthService$HealthChannel;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap6(Lcom/android/bluetooth/hdp/HealthService;[BI)I
    .locals 1
    .param p1, "btAddress"    # [B
    .param p2, "appId"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/hdp/HealthService;->connectChannelNative([BI)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap7(Lcom/android/bluetooth/hdp/HealthService;I)I
    .locals 1
    .param p1, "channelType"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hdp/HealthService;->convertChannelTypeToHal(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap8(Lcom/android/bluetooth/hdp/HealthService;I)I
    .locals 1
    .param p1, "halChannelState"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hdp/HealthService;->convertHalChannelState(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap9(Lcom/android/bluetooth/hdp/HealthService;I)I
    .locals 1
    .param p1, "halRegStatus"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hdp/HealthService;->convertHalRegStatus(I)I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 76
    invoke-static {}, Lcom/android/bluetooth/hdp/HealthService;->classInitNative()V

    .line 58
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/ProfileService;-><init>()V

    return-void
.end method

.method private broadcastHealthDeviceStateChange(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 9
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "newChannelState"    # I

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 665
    iget-object v4, p0, Lcom/android/bluetooth/hdp/HealthService;->mHealthDevices:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    .line 666
    iget-object v4, p0, Lcom/android/bluetooth/hdp/HealthService;->mHealthDevices:Ljava/util/Map;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 669
    :cond_0
    iget-object v4, p0, Lcom/android/bluetooth/hdp/HealthService;->mHealthDevices:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 670
    .local v1, "currDeviceState":I
    invoke-direct {p0, p2}, Lcom/android/bluetooth/hdp/HealthService;->convertState(I)I

    move-result v2

    .line 672
    .local v2, "newDeviceState":I
    if-ne v1, v2, :cond_1

    return-void

    .line 674
    :cond_1
    const/4 v3, 0x0

    .line 676
    .local v3, "sendIntent":Z
    packed-switch v1, :pswitch_data_0

    .line 721
    :cond_2
    :goto_0
    if-eqz v3, :cond_3

    .line 722
    invoke-direct {p0, p1, v2, v1}, Lcom/android/bluetooth/hdp/HealthService;->updateAndSendIntent(Landroid/bluetooth/BluetoothDevice;II)V

    .line 664
    :cond_3
    return-void

    .line 679
    :pswitch_0
    const/4 v3, 0x1

    .line 680
    goto :goto_0

    .line 685
    :pswitch_1
    if-ne v2, v7, :cond_4

    .line 686
    const/4 v3, 0x1

    goto :goto_0

    .line 689
    :cond_4
    filled-new-array {v6, v8}, [I

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lcom/android/bluetooth/hdp/HealthService;->findChannelByStates(Landroid/bluetooth/BluetoothDevice;[I)Ljava/util/List;

    move-result-object v0

    .line 692
    .local v0, "chan":Ljava/util/List;, "Ljava/util/List<Lcom/android/bluetooth/hdp/HealthService$HealthChannel;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 693
    const/4 v3, 0x1

    goto :goto_0

    .line 701
    .end local v0    # "chan":Ljava/util/List;, "Ljava/util/List<Lcom/android/bluetooth/hdp/HealthService$HealthChannel;>;"
    :pswitch_2
    filled-new-array {v6, v7}, [I

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lcom/android/bluetooth/hdp/HealthService;->findChannelByStates(Landroid/bluetooth/BluetoothDevice;[I)Ljava/util/List;

    move-result-object v0

    .line 704
    .restart local v0    # "chan":Ljava/util/List;, "Ljava/util/List<Lcom/android/bluetooth/hdp/HealthService$HealthChannel;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 705
    const/4 v3, 0x1

    goto :goto_0

    .line 713
    .end local v0    # "chan":Ljava/util/List;, "Ljava/util/List<Lcom/android/bluetooth/hdp/HealthService$HealthChannel;>;"
    :pswitch_3
    filled-new-array {v6, v8}, [I

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lcom/android/bluetooth/hdp/HealthService;->findChannelByStates(Landroid/bluetooth/BluetoothDevice;[I)Ljava/util/List;

    move-result-object v0

    .line 716
    .restart local v0    # "chan":Ljava/util/List;, "Ljava/util/List<Lcom/android/bluetooth/hdp/HealthService$HealthChannel;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 717
    invoke-direct {p0, p1, v2, v1}, Lcom/android/bluetooth/hdp/HealthService;->updateAndSendIntent(Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_0

    .line 676
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private callHealthChannelCallback(Landroid/bluetooth/BluetoothHealthAppConfiguration;Landroid/bluetooth/BluetoothDevice;IILandroid/os/ParcelFileDescriptor;I)V
    .locals 10
    .param p1, "config"    # Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "state"    # I
    .param p4, "prevState"    # I
    .param p5, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p6, "id"    # I

    .prologue
    .line 613
    invoke-direct {p0, p2, p3}, Lcom/android/bluetooth/hdp/HealthService;->broadcastHealthDeviceStateChange(Landroid/bluetooth/BluetoothDevice;I)V

    .line 615
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Health Device Callback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " State Change: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/hdp/HealthService;->log(Ljava/lang/String;)V

    .line 618
    const/4 v5, 0x0

    .line 619
    .local v5, "dupedFd":Landroid/os/ParcelFileDescriptor;
    if-eqz p5, :cond_0

    .line 621
    :try_start_0
    invoke-virtual {p5}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 627
    .end local v5    # "dupedFd":Landroid/os/ParcelFileDescriptor;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/bluetooth/hdp/HealthService;->mApps:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/bluetooth/hdp/HealthService$AppInfo;

    .line 628
    .local v7, "appInfo":Lcom/android/bluetooth/hdp/HealthService$AppInfo;
    if-nez v7, :cond_1

    .line 629
    const-string/jumbo v1, "HealthService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No AppInfo found for AppConfig "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    return-void

    .line 622
    .end local v7    # "appInfo":Lcom/android/bluetooth/hdp/HealthService$AppInfo;
    .restart local v5    # "dupedFd":Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v9

    .line 623
    .local v9, "e":Ljava/io/IOException;
    const/4 v5, 0x0

    .line 624
    const-string/jumbo v1, "HealthService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception while duping: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 632
    .end local v5    # "dupedFd":Landroid/os/ParcelFileDescriptor;
    .end local v9    # "e":Ljava/io/IOException;
    .restart local v7    # "appInfo":Lcom/android/bluetooth/hdp/HealthService$AppInfo;
    :cond_1
    invoke-static {v7}, Lcom/android/bluetooth/hdp/HealthService$AppInfo;->-get1(Lcom/android/bluetooth/hdp/HealthService$AppInfo;)Landroid/bluetooth/IBluetoothHealthCallback;

    move-result-object v0

    .line 633
    .local v0, "callback":Landroid/bluetooth/IBluetoothHealthCallback;
    if-nez v0, :cond_2

    .line 634
    const-string/jumbo v1, "HealthService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No callback found for config: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    return-void

    :cond_2
    move-object v1, p1

    move-object v2, p2

    move v3, p4

    move v4, p3

    move/from16 v6, p6

    .line 639
    :try_start_1
    invoke-interface/range {v0 .. v6}, Landroid/bluetooth/IBluetoothHealthCallback;->onHealthChannelStateChange(Landroid/bluetooth/BluetoothHealthAppConfiguration;Landroid/bluetooth/BluetoothDevice;IILandroid/os/ParcelFileDescriptor;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 612
    :goto_1
    return-void

    .line 640
    :catch_1
    move-exception v8

    .line 641
    .local v8, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "HealthService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Remote Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private callStatusCallback(Landroid/bluetooth/BluetoothHealthAppConfiguration;I)V
    .locals 6
    .param p1, "config"    # Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .param p2, "status"    # I

    .prologue
    .line 529
    iget-object v3, p0, Lcom/android/bluetooth/hdp/HealthService;->mApps:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/hdp/HealthService$AppInfo;

    .line 530
    .local v0, "appInfo":Lcom/android/bluetooth/hdp/HealthService$AppInfo;
    if-nez v0, :cond_0

    .line 531
    const-string/jumbo v3, "HealthService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " No AppInfo found for AppConfig "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    return-void

    .line 534
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/hdp/HealthService$AppInfo;->-get1(Lcom/android/bluetooth/hdp/HealthService$AppInfo;)Landroid/bluetooth/IBluetoothHealthCallback;

    move-result-object v1

    .line 535
    .local v1, "callback":Landroid/bluetooth/IBluetoothHealthCallback;
    if-nez v1, :cond_1

    .line 536
    const-string/jumbo v3, "HealthService"

    const-string/jumbo v4, "Callback object null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    return-void

    .line 541
    :cond_1
    :try_start_0
    invoke-interface {v1, p1, p2}, Landroid/bluetooth/IBluetoothHealthCallback;->onHealthAppConfigurationStatusChange(Landroid/bluetooth/BluetoothHealthAppConfiguration;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 527
    :goto_0
    return-void

    .line 542
    :catch_0
    move-exception v2

    .line 543
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "HealthService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Remote Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static native classInitNative()V
.end method

.method private cleanupApps()V
    .locals 4

    .prologue
    .line 115
    iget-object v3, p0, Lcom/android/bluetooth/hdp/HealthService;->mApps:Ljava/util/Map;

    if-eqz v3, :cond_1

    .line 117
    iget-object v3, p0, Lcom/android/bluetooth/hdp/HealthService;->mApps:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 118
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothHealthAppConfiguration;Lcom/android/bluetooth/hdp/HealthService$AppInfo;>;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 119
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 120
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothHealthAppConfiguration;Lcom/android/bluetooth/hdp/HealthService$AppInfo;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/hdp/HealthService$AppInfo;

    .line 121
    .local v0, "appInfo":Lcom/android/bluetooth/hdp/HealthService$AppInfo;
    if-eqz v0, :cond_0

    .line 122
    invoke-static {v0}, Lcom/android/bluetooth/hdp/HealthService$AppInfo;->-wrap0(Lcom/android/bluetooth/hdp/HealthService$AppInfo;)V

    .line 123
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 114
    .end local v0    # "appInfo":Lcom/android/bluetooth/hdp/HealthService$AppInfo;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothHealthAppConfiguration;Lcom/android/bluetooth/hdp/HealthService$AppInfo;>;"
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothHealthAppConfiguration;Lcom/android/bluetooth/hdp/HealthService$AppInfo;>;>;"
    :cond_1
    return-void
.end method

.method private native cleanupNative()V
.end method

.method private connectChannel(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)Z
    .locals 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "config"    # Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .param p3, "channelType"    # I

    .prologue
    const/4 v5, 0x0

    .line 597
    iget-object v1, p0, Lcom/android/bluetooth/hdp/HealthService;->mApps:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 598
    const-string/jumbo v1, "HealthService"

    const-string/jumbo v2, "connectChannel fail to get a app id from config"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    const/4 v1, 0x0

    return v1

    .line 602
    :cond_0
    new-instance v0, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;-><init>(Lcom/android/bluetooth/hdp/HealthService;Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;ILcom/android/bluetooth/hdp/HealthService$HealthChannel;)V

    .line 604
    .local v0, "chan":Lcom/android/bluetooth/hdp/HealthService$HealthChannel;
    iget-object v1, p0, Lcom/android/bluetooth/hdp/HealthService;->mHandler:Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 605
    .local v6, "msg":Landroid/os/Message;
    iput-object v0, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 606
    iget-object v1, p0, Lcom/android/bluetooth/hdp/HealthService;->mHandler:Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;

    invoke-virtual {v1, v6}, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 608
    const/4 v1, 0x1

    return v1
.end method

.method private native connectChannelNative([BI)I
.end method

.method private convertChannelTypeToHal(I)I
    .locals 4
    .param p1, "channelType"    # I

    .prologue
    const/4 v3, 0x2

    .line 764
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 765
    :cond_0
    const/16 v0, 0xb

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    return v0

    .line 766
    :cond_1
    const/16 v0, 0xc

    if-ne p1, v0, :cond_2

    return v3

    .line 767
    :cond_2
    const-string/jumbo v0, "HealthService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unkonw channel type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    return v3
.end method

.method private convertHalChannelState(I)I
    .locals 4
    .param p1, "halChannelState"    # I

    .prologue
    const/4 v3, 0x0

    .line 577
    packed-switch p1, :pswitch_data_0

    .line 590
    const-string/jumbo v0, "HealthService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected channel state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    return v3

    .line 579
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 581
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 583
    :pswitch_2
    const/4 v0, 0x3

    return v0

    .line 585
    :pswitch_3
    return v3

    .line 588
    :pswitch_4
    return v3

    .line 577
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private convertHalRegStatus(I)I
    .locals 4
    .param p1, "halRegStatus"    # I

    .prologue
    const/4 v3, 0x1

    .line 562
    packed-switch p1, :pswitch_data_0

    .line 572
    const-string/jumbo v0, "HealthService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected App Registration state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    return v3

    .line 564
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 566
    :pswitch_1
    return v3

    .line 568
    :pswitch_2
    const/4 v0, 0x2

    return v0

    .line 570
    :pswitch_3
    const/4 v0, 0x3

    return v0

    .line 562
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private convertRoleToHal(I)I
    .locals 4
    .param p1, "role"    # I

    .prologue
    const/4 v3, 0x1

    .line 757
    if-ne p1, v3, :cond_0

    const/4 v0, 0x0

    return v0

    .line 758
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    return v3

    .line 759
    :cond_1
    const-string/jumbo v0, "HealthService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unkonw role: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    return v3
.end method

.method private convertState(I)I
    .locals 4
    .param p1, "state"    # I

    .prologue
    const/4 v3, 0x0

    .line 742
    packed-switch p1, :pswitch_data_0

    .line 752
    const-string/jumbo v0, "HealthService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Mismatch in Channel and Health Device State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    return v3

    .line 744
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 746
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 748
    :pswitch_2
    const/4 v0, 0x3

    return v0

    .line 750
    :pswitch_3
    return v3

    .line 742
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private native disconnectChannelNative(I)Z
.end method

.method private findAppConfigByAppId(I)Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .locals 6
    .param p1, "appId"    # I

    .prologue
    .line 548
    const/4 v0, 0x0

    .line 549
    .local v0, "appConfig":Landroid/bluetooth/BluetoothHealthAppConfiguration;
    iget-object v3, p0, Lcom/android/bluetooth/hdp/HealthService;->mApps:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "e$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 550
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothHealthAppConfiguration;Lcom/android/bluetooth/hdp/HealthService$AppInfo;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/hdp/HealthService$AppInfo;

    invoke-static {v3}, Lcom/android/bluetooth/hdp/HealthService$AppInfo;->-get0(Lcom/android/bluetooth/hdp/HealthService$AppInfo;)I

    move-result v3

    if-ne p1, v3, :cond_0

    .line 551
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "appConfig":Landroid/bluetooth/BluetoothHealthAppConfiguration;
    check-cast v0, Landroid/bluetooth/BluetoothHealthAppConfiguration;

    .line 555
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothHealthAppConfiguration;Lcom/android/bluetooth/hdp/HealthService$AppInfo;>;"
    :cond_1
    if-nez v0, :cond_2

    .line 556
    const-string/jumbo v3, "HealthService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "No appConfig found for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    :cond_2
    return-object v0
.end method

.method private findChannelById(I)Lcom/android/bluetooth/hdp/HealthService$HealthChannel;
    .locals 5
    .param p1, "id"    # I

    .prologue
    .line 772
    iget-object v2, p0, Lcom/android/bluetooth/hdp/HealthService;->mHealthChannels:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "chan$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;

    .line 773
    .local v0, "chan":Lcom/android/bluetooth/hdp/HealthService$HealthChannel;
    invoke-static {v0}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->-get1(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;)I

    move-result v2

    if-ne v2, p1, :cond_0

    return-object v0

    .line 775
    .end local v0    # "chan":Lcom/android/bluetooth/hdp/HealthService$HealthChannel;
    :cond_1
    const-string/jumbo v2, "HealthService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No channel found by id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    const/4 v2, 0x0

    return-object v2
.end method

.method private findChannelByStates(Landroid/bluetooth/BluetoothDevice;[I)Ljava/util/List;
    .locals 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "states"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothDevice;",
            "[I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/bluetooth/hdp/HealthService$HealthChannel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 780
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 781
    .local v2, "channels":Ljava/util/List;, "Ljava/util/List<Lcom/android/bluetooth/hdp/HealthService$HealthChannel;>;"
    iget-object v4, p0, Lcom/android/bluetooth/hdp/HealthService;->mHealthChannels:Ljava/util/List;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "chan$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;

    .line 782
    .local v0, "chan":Lcom/android/bluetooth/hdp/HealthService$HealthChannel;
    invoke-static {v0}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->-get3(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 783
    const/4 v4, 0x0

    array-length v5, p2

    :goto_0
    if-ge v4, v5, :cond_0

    aget v3, p2, v4

    .line 784
    .local v3, "state":I
    invoke-static {v0}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->-get4(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;)I

    move-result v6

    if-ne v6, v3, :cond_1

    .line 785
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 783
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 790
    .end local v0    # "chan":Lcom/android/bluetooth/hdp/HealthService$HealthChannel;
    .end local v3    # "state":I
    :cond_2
    return-object v2
.end method

.method private getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 794
    iget-object v0, p0, Lcom/android/bluetooth/hdp/HealthService;->mHealthDevices:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 795
    const/4 v0, 0x0

    return v0

    .line 797
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/hdp/HealthService;->mHealthDevices:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private getStringChannelType(I)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 518
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 519
    const-string/jumbo v0, "Reliable"

    return-object v0

    .line 520
    :cond_0
    const/16 v0, 0xb

    if-ne p1, v0, :cond_1

    .line 521
    const-string/jumbo v0, "Streaming"

    return-object v0

    .line 523
    :cond_1
    const-string/jumbo v0, "Any"

    return-object v0
.end method

.method private native initializeNative()V
.end method

.method private onAppRegistrationState(II)V
    .locals 3
    .param p1, "appId"    # I
    .param p2, "state"    # I

    .prologue
    .line 502
    iget-object v1, p0, Lcom/android/bluetooth/hdp/HealthService;->mHandler:Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 503
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 504
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 505
    iget-object v1, p0, Lcom/android/bluetooth/hdp/HealthService;->mHandler:Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 501
    return-void
.end method

.method private onChannelStateChanged(I[BIIILjava/io/FileDescriptor;)V
    .locals 10
    .param p1, "appId"    # I
    .param p2, "addr"    # [B
    .param p3, "cfgIndex"    # I
    .param p4, "channelId"    # I
    .param p5, "state"    # I
    .param p6, "pfd"    # Ljava/io/FileDescriptor;

    .prologue
    .line 510
    iget-object v1, p0, Lcom/android/bluetooth/hdp/HealthService;->mHandler:Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 511
    .local v9, "msg":Landroid/os/Message;
    new-instance v0, Lcom/android/bluetooth/hdp/HealthService$ChannelStateEvent;

    const/4 v8, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/bluetooth/hdp/HealthService$ChannelStateEvent;-><init>(Lcom/android/bluetooth/hdp/HealthService;I[BIIILjava/io/FileDescriptor;Lcom/android/bluetooth/hdp/HealthService$ChannelStateEvent;)V

    .line 513
    .local v0, "channelStateEvent":Lcom/android/bluetooth/hdp/HealthService$ChannelStateEvent;
    iput-object v0, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 514
    iget-object v1, p0, Lcom/android/bluetooth/hdp/HealthService;->mHandler:Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;

    invoke-virtual {v1, v9}, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 509
    return-void
.end method

.method private native registerHealthAppNative(IILjava/lang/String;I)I
.end method

.method private native unregisterHealthAppNative(I)Z
.end method

.method private updateAndSendIntent(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "newDeviceState"    # I
    .param p3, "prevDeviceState"    # I

    .prologue
    .line 727
    if-nez p2, :cond_0

    .line 728
    iget-object v0, p0, Lcom/android/bluetooth/hdp/HealthService;->mHealthDevices:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 732
    :goto_0
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/bluetooth/hdp/HealthService;->notifyProfileConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;III)V

    .line 726
    return-void

    .line 730
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/hdp/HealthService;->mHealthDevices:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method protected cleanup()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 128
    iput-object v0, p0, Lcom/android/bluetooth/hdp/HealthService;->mHandler:Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;

    .line 130
    iget-boolean v0, p0, Lcom/android/bluetooth/hdp/HealthService;->mNativeAvailable:Z

    if-eqz v0, :cond_0

    .line 131
    invoke-direct {p0}, Lcom/android/bluetooth/hdp/HealthService;->cleanupNative()V

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/hdp/HealthService;->mNativeAvailable:Z

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/hdp/HealthService;->mHealthChannels:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/android/bluetooth/hdp/HealthService;->mHealthChannels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/hdp/HealthService;->mHealthDevices:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 138
    iget-object v0, p0, Lcom/android/bluetooth/hdp/HealthService;->mHealthDevices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 140
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/hdp/HealthService;->mApps:Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 141
    iget-object v0, p0, Lcom/android/bluetooth/hdp/HealthService;->mApps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 143
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method connectChannelToSink(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "config"    # Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .param p3, "channelType"    # I

    .prologue
    .line 450
    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hdp/HealthService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/hdp/HealthService;->connectChannel(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)Z

    move-result v0

    return v0
.end method

.method connectChannelToSource(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "config"    # Landroid/bluetooth/BluetoothHealthAppConfiguration;

    .prologue
    .line 444
    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hdp/HealthService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    const/16 v0, 0xc

    invoke-direct {p0, p1, p2, v0}, Lcom/android/bluetooth/hdp/HealthService;->connectChannel(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)Z

    move-result v0

    return v0
.end method

.method disconnectChannel(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "config"    # Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .param p3, "channelId"    # I

    .prologue
    .line 456
    const-string/jumbo v2, "android.permission.BLUETOOTH"

    const-string/jumbo v3, "Need BLUETOOTH permission"

    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/hdp/HealthService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    invoke-direct {p0, p3}, Lcom/android/bluetooth/hdp/HealthService;->findChannelById(I)Lcom/android/bluetooth/hdp/HealthService$HealthChannel;

    move-result-object v0

    .line 458
    .local v0, "chan":Lcom/android/bluetooth/hdp/HealthService$HealthChannel;
    if-nez v0, :cond_0

    .line 459
    const-string/jumbo v2, "HealthService"

    const-string/jumbo v3, "disconnectChannel: no channel found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    const/4 v2, 0x0

    return v2

    .line 462
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/hdp/HealthService;->mHandler:Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v0}, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 463
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/bluetooth/hdp/HealthService;->mHandler:Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;

    invoke-virtual {v2, v1}, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 464
    const/4 v2, 0x1

    return v2
.end method

.method public dump(Ljava/lang/StringBuilder;)V
    .locals 8
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 817
    invoke-super {p0, p1}, Lcom/android/bluetooth/btservice/ProfileService;->dump(Ljava/lang/StringBuilder;)V

    .line 818
    const-string/jumbo v6, "mHealthChannels:"

    invoke-static {p1, v6}, Lcom/android/bluetooth/hdp/HealthService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 819
    iget-object v6, p0, Lcom/android/bluetooth/hdp/HealthService;->mHealthChannels:Ljava/util/List;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "channel$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;

    .line 820
    .local v0, "channel":Lcom/android/bluetooth/hdp/HealthService$HealthChannel;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/android/bluetooth/hdp/HealthService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_0

    .line 822
    .end local v0    # "channel":Lcom/android/bluetooth/hdp/HealthService$HealthChannel;
    :cond_0
    const-string/jumbo v6, "mApps:"

    invoke-static {p1, v6}, Lcom/android/bluetooth/hdp/HealthService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 823
    iget-object v6, p0, Lcom/android/bluetooth/hdp/HealthService;->mApps:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "conf$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothHealthAppConfiguration;

    .line 824
    .local v2, "conf":Landroid/bluetooth/BluetoothHealthAppConfiguration;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/bluetooth/hdp/HealthService;->mApps:Ljava/util/Map;

    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/android/bluetooth/hdp/HealthService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_1

    .line 826
    .end local v2    # "conf":Landroid/bluetooth/BluetoothHealthAppConfiguration;
    :cond_1
    const-string/jumbo v6, "mHealthDevices:"

    invoke-static {p1, v6}, Lcom/android/bluetooth/hdp/HealthService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 827
    iget-object v6, p0, Lcom/android/bluetooth/hdp/HealthService;->mHealthDevices:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "device$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 828
    .local v4, "device":Landroid/bluetooth/BluetoothDevice;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/bluetooth/hdp/HealthService;->mHealthDevices:Ljava/util/Map;

    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/android/bluetooth/hdp/HealthService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_2

    .line 816
    .end local v4    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_2
    return-void
.end method

.method getConnectedHealthDevices()Ljava/util/List;
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
    .line 489
    const-string/jumbo v1, "android.permission.BLUETOOTH"

    const-string/jumbo v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/hdp/HealthService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x2

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 490
    invoke-virtual {p0, v1}, Lcom/android/bluetooth/hdp/HealthService;->lookupHealthDevicesMatchingStates([I)Ljava/util/List;

    move-result-object v0

    .line 492
    .local v0, "devices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    return-object v0
.end method

.method getHealthDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 484
    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hdp/HealthService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hdp/HealthService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    return v0
.end method

.method getHealthDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 3
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
    .line 496
    const-string/jumbo v1, "android.permission.BLUETOOTH"

    const-string/jumbo v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/hdp/HealthService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hdp/HealthService;->lookupHealthDevicesMatchingStates([I)Ljava/util/List;

    move-result-object v0

    .line 498
    .local v0, "devices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    return-object v0
.end method

.method getMainChannelFd(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;)Landroid/os/ParcelFileDescriptor;
    .locals 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "config"    # Landroid/bluetooth/BluetoothHealthAppConfiguration;

    .prologue
    const/4 v6, 0x0

    .line 469
    const-string/jumbo v3, "android.permission.BLUETOOTH"

    const-string/jumbo v4, "Need BLUETOOTH permission"

    invoke-virtual {p0, v3, v4}, Lcom/android/bluetooth/hdp/HealthService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    const/4 v2, 0x0

    .line 471
    .local v2, "healthChan":Lcom/android/bluetooth/hdp/HealthService$HealthChannel;
    iget-object v3, p0, Lcom/android/bluetooth/hdp/HealthService;->mHealthChannels:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v2    # "healthChan":Lcom/android/bluetooth/hdp/HealthService$HealthChannel;
    .local v1, "chan$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;

    .line 472
    .local v0, "chan":Lcom/android/bluetooth/hdp/HealthService$HealthChannel;
    invoke-static {v0}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->-get3(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v0}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->-get2(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;)Landroid/bluetooth/BluetoothHealthAppConfiguration;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/bluetooth/BluetoothHealthAppConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 473
    move-object v2, v0

    .local v2, "healthChan":Lcom/android/bluetooth/hdp/HealthService$HealthChannel;
    goto :goto_0

    .line 476
    .end local v0    # "chan":Lcom/android/bluetooth/hdp/HealthService$HealthChannel;
    .end local v2    # "healthChan":Lcom/android/bluetooth/hdp/HealthService$HealthChannel;
    :cond_1
    if-nez v2, :cond_2

    .line 477
    const-string/jumbo v3, "HealthService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "No channel found for device: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " config: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    return-object v6

    .line 480
    :cond_2
    invoke-static {v2}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->-get0(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    return-object v3
.end method

.method protected getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    const-string/jumbo v0, "HealthService"

    return-object v0
.end method

.method protected initBinder()Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;
    .locals 1

    .prologue
    .line 84
    new-instance v0, Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthBinder;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthBinder;-><init>(Lcom/android/bluetooth/hdp/HealthService;)V

    return-object v0
.end method

.method lookupHealthDevicesMatchingStates([I)Ljava/util/List;
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
    .line 801
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 803
    .local v3, "healthDevices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    iget-object v5, p0, Lcom/android/bluetooth/hdp/HealthService;->mHealthDevices:Ljava/util/Map;

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

    .line 804
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-direct {p0, v0}, Lcom/android/bluetooth/hdp/HealthService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    .line 805
    .local v2, "healthDeviceState":I
    const/4 v5, 0x0

    array-length v6, p1

    :goto_1
    if-ge v5, v6, :cond_0

    aget v4, p1, v5

    .line 806
    .local v4, "state":I
    if-ne v4, v2, :cond_1

    .line 807
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 805
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 812
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "healthDeviceState":I
    .end local v4    # "state":I
    :cond_2
    return-object v3
.end method

.method registerAppConfiguration(Landroid/bluetooth/BluetoothHealthAppConfiguration;Landroid/bluetooth/IBluetoothHealthCallback;)Z
    .locals 5
    .param p1, "config"    # Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .param p2, "callback"    # Landroid/bluetooth/IBluetoothHealthCallback;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 419
    const-string/jumbo v1, "android.permission.BLUETOOTH"

    .line 420
    const-string/jumbo v2, "Need BLUETOOTH permission"

    .line 419
    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/hdp/HealthService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    iget-object v1, p0, Lcom/android/bluetooth/hdp/HealthService;->mApps:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 422
    const-string/jumbo v1, "HealthService"

    const-string/jumbo v2, "Config has already been registered"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    const/4 v1, 0x0

    return v1

    .line 425
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/hdp/HealthService;->mApps:Ljava/util/Map;

    new-instance v2, Lcom/android/bluetooth/hdp/HealthService$AppInfo;

    invoke-direct {v2, p2, v4}, Lcom/android/bluetooth/hdp/HealthService$AppInfo;-><init>(Landroid/bluetooth/IBluetoothHealthCallback;Lcom/android/bluetooth/hdp/HealthService$AppInfo;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    iget-object v1, p0, Lcom/android/bluetooth/hdp/HealthService;->mHandler:Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;

    invoke-virtual {v1, v3, p1}, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 427
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/bluetooth/hdp/HealthService;->mHandler:Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 428
    return v3
.end method

.method protected start()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 88
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/bluetooth/hdp/HealthService;->mHealthChannels:Ljava/util/List;

    .line 89
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/android/bluetooth/hdp/HealthService;->mApps:Ljava/util/Map;

    .line 91
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/android/bluetooth/hdp/HealthService;->mHealthDevices:Ljava/util/Map;

    .line 93
    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "BluetoothHdpHandler"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 94
    .local v1, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 95
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 96
    .local v0, "looper":Landroid/os/Looper;
    new-instance v2, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v3}, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;-><init>(Lcom/android/bluetooth/hdp/HealthService;Landroid/os/Looper;Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;)V

    iput-object v2, p0, Lcom/android/bluetooth/hdp/HealthService;->mHandler:Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;

    .line 97
    invoke-direct {p0}, Lcom/android/bluetooth/hdp/HealthService;->initializeNative()V

    .line 98
    iput-boolean v4, p0, Lcom/android/bluetooth/hdp/HealthService;->mNativeAvailable:Z

    .line 99
    return v4
.end method

.method protected stop()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 103
    iget-object v1, p0, Lcom/android/bluetooth/hdp/HealthService;->mHandler:Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;

    if-eqz v1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/android/bluetooth/hdp/HealthService;->mHandler:Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 105
    iget-object v1, p0, Lcom/android/bluetooth/hdp/HealthService;->mHandler:Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;

    invoke-virtual {v1}, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 106
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 110
    .end local v0    # "looper":Landroid/os/Looper;
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/hdp/HealthService;->cleanupApps()V

    .line 111
    const/4 v1, 0x1

    return v1
.end method

.method unregisterAppConfiguration(Landroid/bluetooth/BluetoothHealthAppConfiguration;)Z
    .locals 3
    .param p1, "config"    # Landroid/bluetooth/BluetoothHealthAppConfiguration;

    .prologue
    .line 432
    const-string/jumbo v1, "android.permission.BLUETOOTH"

    const-string/jumbo v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/hdp/HealthService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    iget-object v1, p0, Lcom/android/bluetooth/hdp/HealthService;->mApps:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 434
    const-string/jumbo v1, "HealthService"

    const-string/jumbo v2, "unregisterAppConfiguration: no app found"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    const/4 v1, 0x0

    return v1

    .line 437
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/hdp/HealthService;->mHandler:Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 438
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/bluetooth/hdp/HealthService;->mHandler:Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 439
    const/4 v1, 0x1

    return v1
.end method
