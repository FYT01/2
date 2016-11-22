.class Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;
.super Landroid/bluetooth/IBluetooth$Stub;
.source "AdapterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/btservice/AdapterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AdapterServiceBinder"
.end annotation


# instance fields
.field private mService:Lcom/android/bluetooth/btservice/AdapterService;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/btservice/AdapterService;)V
    .locals 0
    .param p1, "svc"    # Lcom/android/bluetooth/btservice/AdapterService;

    .prologue
    .line 837
    invoke-direct {p0}, Landroid/bluetooth/IBluetooth$Stub;-><init>()V

    .line 838
    iput-object p1, p0, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    .line 837
    return-void
.end method


# virtual methods
.method public cancelBondProcess(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v3, 0x0

    .line 1072
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1073
    const-string/jumbo v1, "BluetoothAdapterService"

    const-string/jumbo v2, "cancelBondProcess() - Not allowed for non-active user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    return v3

    .line 1077
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1078
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-nez v0, :cond_1

    return v3

    .line 1079
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->cancelBondProcess(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    return v1
.end method

.method public cancelDiscovery()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1015
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1016
    const-string/jumbo v1, "BluetoothAdapterService"

    const-string/jumbo v2, "cancelDiscovery() - Not allowed for non-active user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    return v3

    .line 1020
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1021
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-nez v0, :cond_1

    return v3

    .line 1022
    :cond_1
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->cancelDiscovery()Z

    move-result v1

    return v1
.end method

.method public cleanup()Z
    .locals 1

    .prologue
    .line 841
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    .line 842
    const/4 v0, 0x1

    return v0
.end method

.method public configHciSnoopLog(Z)Z
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    const/4 v4, 0x0

    .line 1349
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_0

    .line 1350
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "Bluetooth"

    aput-object v2, v1, v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 1351
    const-string/jumbo v2, "configHciSnoopLog() - Not allowed for non-active user b/18643224"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 1350
    const v2, 0x534e4554

    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1352
    return v4

    .line 1355
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1356
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-nez v0, :cond_1

    return v4

    .line 1357
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->configHciSnoopLog(Z)Z

    move-result v1

    return v1
.end method

.method public connectSocket(Landroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;II)Landroid/os/ParcelFileDescriptor;
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "type"    # I
    .param p3, "uuid"    # Landroid/os/ParcelUuid;
    .param p4, "port"    # I
    .param p5, "flag"    # I

    .prologue
    const/4 v3, 0x0

    .line 1293
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-static {v1}, Lcom/android/bluetooth/Utils;->checkCallerAllowManagedProfiles(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1294
    const-string/jumbo v1, "BluetoothAdapterService"

    const-string/jumbo v2, "connectSocket() - Not allowed for non-active user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    return-object v3

    .line 1298
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1299
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-nez v0, :cond_1

    return-object v3

    :cond_1
    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 1300
    invoke-virtual/range {v0 .. v5}, Lcom/android/bluetooth/btservice/AdapterService;->connectSocket(Landroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;II)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    return-object v1
.end method

.method public createBond(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "transport"    # I

    .prologue
    const/4 v3, 0x0

    .line 1061
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1062
    const-string/jumbo v1, "BluetoothAdapterService"

    const-string/jumbo v2, "createBond() - Not allowed for non-active user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    return v3

    .line 1066
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1067
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-nez v0, :cond_1

    return v3

    .line 1068
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/btservice/AdapterService;->createBond(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v1

    return v1
.end method

.method public createMapMnsSdpRecord(Ljava/lang/String;IIII)I
    .locals 6
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "rfcommChannel"    # I
    .param p3, "l2capPsm"    # I
    .param p4, "version"    # I
    .param p5, "features"    # I

    .prologue
    .line 1444
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1445
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    return v1

    :cond_0
    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 1446
    invoke-virtual/range {v0 .. v5}, Lcom/android/bluetooth/btservice/AdapterService;->createMapMnsSdpRecord(Ljava/lang/String;IIII)I

    move-result v1

    return v1
.end method

.method public createPbapPceSdpRecord(Ljava/lang/String;I)I
    .locals 2
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "version"    # I

    .prologue
    .line 1451
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1452
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    return v1

    .line 1453
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/btservice/AdapterService;->createPbapPceSdpRecord(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public createSocketChannel(ILjava/lang/String;Landroid/os/ParcelUuid;II)Landroid/os/ParcelFileDescriptor;
    .locals 6
    .param p1, "type"    # I
    .param p2, "serviceName"    # Ljava/lang/String;
    .param p3, "uuid"    # Landroid/os/ParcelUuid;
    .param p4, "port"    # I
    .param p5, "flag"    # I

    .prologue
    const/4 v3, 0x0

    .line 1305
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-static {v1}, Lcom/android/bluetooth/Utils;->checkCallerAllowManagedProfiles(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1306
    const-string/jumbo v1, "BluetoothAdapterService"

    const-string/jumbo v2, "createSocketChannel() - Not allowed for non-active user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    return-object v3

    .line 1310
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1311
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-nez v0, :cond_1

    return-object v3

    :cond_1
    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 1312
    invoke-virtual/range {v0 .. v5}, Lcom/android/bluetooth/btservice/AdapterService;->createSocketChannel(ILjava/lang/String;Landroid/os/ParcelUuid;II)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    return-object v1
.end method

.method public disable()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 889
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_0

    .line 890
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 895
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 896
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-nez v0, :cond_2

    return v3

    .line 891
    .end local v0    # "service":Lcom/android/bluetooth/btservice/AdapterService;
    :cond_1
    const-string/jumbo v1, "BluetoothAdapterService"

    const-string/jumbo v2, "disable() - Not allowed for non-active user and non system user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    return v3

    .line 897
    .restart local v0    # "service":Lcom/android/bluetooth/btservice/AdapterService;
    :cond_2
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->disable()Z

    move-result v1

    return v1
.end method

.method public dump(Landroid/os/ParcelFileDescriptor;)V
    .locals 2
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    .line 1425
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1426
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-nez v0, :cond_0

    return-void

    .line 1427
    :cond_0
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->-wrap6(Lcom/android/bluetooth/btservice/AdapterService;Ljava/io/FileDescriptor;)V

    .line 1424
    return-void
.end method

.method public enable()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 866
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_0

    .line 867
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 871
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 872
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-nez v0, :cond_2

    return v3

    .line 868
    .end local v0    # "service":Lcom/android/bluetooth/btservice/AdapterService;
    :cond_1
    const-string/jumbo v1, "BluetoothAdapterService"

    const-string/jumbo v2, "enable() - Not allowed for non-active user and non system user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    return v3

    .line 873
    .restart local v0    # "service":Lcom/android/bluetooth/btservice/AdapterService;
    :cond_2
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->enable()Z

    move-result v1

    return v1
.end method

.method public enableNoAutoConnect()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 877
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_0

    .line 878
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 883
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 884
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-nez v0, :cond_2

    return v3

    .line 879
    .end local v0    # "service":Lcom/android/bluetooth/btservice/AdapterService;
    :cond_1
    const-string/jumbo v1, "BluetoothAdapterService"

    const-string/jumbo v2, "enableNoAuto() - Not allowed for non-active user and non system user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    return v3

    .line 885
    .restart local v0    # "service":Lcom/android/bluetooth/btservice/AdapterService;
    :cond_2
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->enableNoAutoConnect()Z

    move-result v1

    return v1
.end method

.method public factoryReset()Z
    .locals 2

    .prologue
    .line 1361
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1362
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 1363
    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->disable()Z

    .line 1364
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->factoryReset()Z

    move-result v1

    return v1
.end method

.method public fetchRemoteUuids(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v3, 0x0

    .line 1173
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-static {v1}, Lcom/android/bluetooth/Utils;->checkCallerAllowManagedProfiles(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1174
    const-string/jumbo v1, "BluetoothAdapterService"

    const-string/jumbo v2, "fetchRemoteUuids() - Not allowed for non-active user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    return v3

    .line 1178
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1179
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-nez v0, :cond_1

    return v3

    .line 1180
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->fetchRemoteUuids(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    return v1
.end method

.method public getActivityEnergyInfoFromController()V
    .locals 1

    .prologue
    .line 1413
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1414
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-nez v0, :cond_0

    return-void

    .line 1415
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/btservice/AdapterService;->-wrap7(Lcom/android/bluetooth/btservice/AdapterService;)V

    .line 1412
    return-void
.end method

.method public getAdapterConnectionState()I
    .locals 2

    .prologue
    .line 1044
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1045
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 1046
    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterConnectionState()I

    move-result v1

    return v1
.end method

.method public getAddress()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 901
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_0

    .line 902
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-static {v1}, Lcom/android/bluetooth/Utils;->checkCallerAllowManagedProfiles(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 907
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 908
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-nez v0, :cond_2

    return-object v3

    .line 903
    .end local v0    # "service":Lcom/android/bluetooth/btservice/AdapterService;
    :cond_1
    const-string/jumbo v1, "BluetoothAdapterService"

    const-string/jumbo v2, "getAddress() - Not allowed for non-active user and non system user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    return-object v3

    .line 909
    .restart local v0    # "service":Lcom/android/bluetooth/btservice/AdapterService;
    :cond_2
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getAddress()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getBondState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 1095
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1096
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-nez v0, :cond_0

    const/16 v1, 0xa

    return v1

    .line 1097
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->getBondState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    return v1
.end method

.method public getBondedDevices()[Landroid/bluetooth/BluetoothDevice;
    .locals 2

    .prologue
    .line 1037
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1038
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/bluetooth/BluetoothDevice;

    return-object v1

    .line 1039
    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getBondedDevices()[Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    return-object v1
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 1101
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1102
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 1103
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    return v1
.end method

.method public getDiscoverableTimeout()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 982
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v1

    if-nez v1, :cond_0

    .line 983
    const-string/jumbo v1, "BluetoothAdapterService"

    const-string/jumbo v2, "getDiscoverableTimeout() - Not allowed for non-active user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    return v3

    .line 987
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 988
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-nez v0, :cond_1

    return v3

    .line 989
    :cond_1
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getDiscoverableTimeout()I

    move-result v1

    return v1
.end method

.method public getMessageAccessPermission(Landroid/bluetooth/BluetoothDevice;)I
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v3, 0x0

    .line 1241
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1242
    const-string/jumbo v1, "BluetoothAdapterService"

    const-string/jumbo v2, "getMessageAccessPermission() - Not allowed for non-active user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    return v3

    .line 1246
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1247
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-nez v0, :cond_1

    return v3

    .line 1248
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->getMessageAccessPermission(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    return v1
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 924
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_0

    .line 925
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 930
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 931
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-nez v0, :cond_2

    return-object v3

    .line 926
    .end local v0    # "service":Lcom/android/bluetooth/btservice/AdapterService;
    :cond_1
    const-string/jumbo v1, "BluetoothAdapterService"

    const-string/jumbo v2, "getName() - Not allowed for non-active user and non system user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    return-object v3

    .line 932
    .restart local v0    # "service":Lcom/android/bluetooth/btservice/AdapterService;
    :cond_2
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getName()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getPhonebookAccessPermission(Landroid/bluetooth/BluetoothDevice;)I
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v3, 0x0

    .line 1219
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1220
    const-string/jumbo v1, "BluetoothAdapterService"

    const-string/jumbo v2, "getPhonebookAccessPermission() - Not allowed for non-active user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    return v3

    .line 1224
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1225
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-nez v0, :cond_1

    return v3

    .line 1226
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->getPhonebookAccessPermission(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    return v1
.end method

.method public getProfileConnectionState(I)I
    .locals 4
    .param p1, "profile"    # I

    .prologue
    const/4 v3, 0x0

    .line 1050
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-static {v1}, Lcom/android/bluetooth/Utils;->checkCallerAllowManagedProfiles(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1051
    const-string/jumbo v1, "BluetoothAdapterService"

    const-string/jumbo v2, "getProfileConnectionState- Not allowed for non-active user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    return v3

    .line 1055
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1056
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-nez v0, :cond_1

    return v3

    .line 1057
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->getProfileConnectionState(I)I

    move-result v1

    return v1
.end method

.method public getRemoteAlias(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v3, 0x0

    .line 1129
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-static {v1}, Lcom/android/bluetooth/Utils;->checkCallerAllowManagedProfiles(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1130
    const-string/jumbo v1, "BluetoothAdapterService"

    const-string/jumbo v2, "getRemoteAlias() - Not allowed for non-active user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    return-object v3

    .line 1134
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1135
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-nez v0, :cond_1

    return-object v3

    .line 1136
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->getRemoteAlias(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getRemoteClass(Landroid/bluetooth/BluetoothDevice;)I
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v3, 0x0

    .line 1151
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-static {v1}, Lcom/android/bluetooth/Utils;->checkCallerAllowManagedProfiles(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1152
    const-string/jumbo v1, "BluetoothAdapterService"

    const-string/jumbo v2, "getRemoteClass() - Not allowed for non-active user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    return v3

    .line 1156
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1157
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-nez v0, :cond_1

    return v3

    .line 1158
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->getRemoteClass(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    return v1
.end method

.method public getRemoteName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v3, 0x0

    .line 1107
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-static {v1}, Lcom/android/bluetooth/Utils;->checkCallerAllowManagedProfiles(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1108
    const-string/jumbo v1, "BluetoothAdapterService"

    const-string/jumbo v2, "getRemoteName() - Not allowed for non-active user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    return-object v3

    .line 1112
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1113
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-nez v0, :cond_1

    return-object v3

    .line 1114
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->getRemoteName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getRemoteType(Landroid/bluetooth/BluetoothDevice;)I
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v3, 0x0

    .line 1118
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-static {v1}, Lcom/android/bluetooth/Utils;->checkCallerAllowManagedProfiles(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1119
    const-string/jumbo v1, "BluetoothAdapterService"

    const-string/jumbo v2, "getRemoteType() - Not allowed for non-active user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    return v3

    .line 1123
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1124
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-nez v0, :cond_1

    return v3

    .line 1125
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->getRemoteType(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    return v1
.end method

.method public getRemoteUuids(Landroid/bluetooth/BluetoothDevice;)[Landroid/os/ParcelUuid;
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v3, 0x0

    .line 1162
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-static {v1}, Lcom/android/bluetooth/Utils;->checkCallerAllowManagedProfiles(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1163
    const-string/jumbo v1, "BluetoothAdapterService"

    const-string/jumbo v2, "getRemoteUuids() - Not allowed for non-active user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    new-array v1, v3, [Landroid/os/ParcelUuid;

    return-object v1

    .line 1167
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1168
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-nez v0, :cond_1

    new-array v1, v3, [Landroid/os/ParcelUuid;

    return-object v1

    .line 1169
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->getRemoteUuids(Landroid/bluetooth/BluetoothDevice;)[Landroid/os/ParcelUuid;

    move-result-object v1

    return-object v1
.end method

.method public getScanMode()I
    .locals 4

    .prologue
    const/16 v3, 0x14

    .line 947
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-static {v1}, Lcom/android/bluetooth/Utils;->checkCallerAllowManagedProfiles(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 948
    const-string/jumbo v1, "BluetoothAdapterService"

    const-string/jumbo v2, "getScanMode() - Not allowed for non-active user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    return v3

    .line 952
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 953
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-nez v0, :cond_1

    return v3

    .line 954
    :cond_1
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getScanMode()I

    move-result v1

    return v1
.end method

.method public getService()Lcom/android/bluetooth/btservice/AdapterService;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 846
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-static {v0}, Lcom/android/bluetooth/btservice/AdapterService;->-wrap2(Lcom/android/bluetooth/btservice/AdapterService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 847
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    return-object v0

    .line 849
    :cond_0
    return-object v1
.end method

.method public getSimAccessPermission(Landroid/bluetooth/BluetoothDevice;)I
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v3, 0x0

    .line 1263
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1264
    const-string/jumbo v1, "BluetoothAdapterService"

    const-string/jumbo v2, "getSimAccessPermission() - Not allowed for non-active user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    return v3

    .line 1268
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1269
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-nez v0, :cond_1

    return v3

    .line 1270
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->getSimAccessPermission(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    return v1
.end method

.method public getSocketOpt(III[B)I
    .locals 4
    .param p1, "type"    # I
    .param p2, "channel"    # I
    .param p3, "optionName"    # I
    .param p4, "optionVal"    # [B

    .prologue
    const/4 v3, -0x1

    .line 1338
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1339
    const-string/jumbo v1, "BluetoothAdapterService"

    const-string/jumbo v2, "getSocketOpt(): not allowed for non-active user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    return v3

    .line 1343
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1344
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-nez v0, :cond_1

    return v3

    .line 1345
    :cond_1
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/bluetooth/btservice/AdapterService;->getSocketOpt(III[B)I

    move-result v1

    return v1
.end method

.method public getState()I
    .locals 2

    .prologue
    .line 860
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 861
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-nez v0, :cond_0

    const/16 v1, 0xa

    return v1

    .line 862
    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getState()I

    move-result v1

    return v1
.end method

.method public getUuids()[Landroid/os/ParcelUuid;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 913
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v1

    if-nez v1, :cond_0

    .line 914
    const-string/jumbo v1, "BluetoothAdapterService"

    const-string/jumbo v2, "getUuids() - Not allowed for non-active user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    new-array v1, v3, [Landroid/os/ParcelUuid;

    return-object v1

    .line 918
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 919
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-nez v0, :cond_1

    new-array v1, v3, [Landroid/os/ParcelUuid;

    return-object v1

    .line 920
    :cond_1
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v1

    return-object v1
.end method

.method public isActivityAndEnergyReportingSupported()Z
    .locals 2

    .prologue
    .line 1407
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1408
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 1409
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/btservice/AdapterService;->-wrap1(Lcom/android/bluetooth/btservice/AdapterService;)Z

    move-result v1

    return v1
.end method

.method public isDiscovering()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1025
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-static {v1}, Lcom/android/bluetooth/Utils;->checkCallerAllowManagedProfiles(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1026
    const-string/jumbo v1, "BluetoothAdapterService"

    const-string/jumbo v2, "isDiscovering() - Not allowed for non-active user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    return v3

    .line 1030
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1031
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-nez v0, :cond_1

    return v3

    .line 1032
    :cond_1
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->isDiscovering()Z

    move-result v1

    return v1
.end method

.method public isEnabled()Z
    .locals 2

    .prologue
    .line 853
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 854
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 855
    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->isEnabled()Z

    move-result v1

    return v1
.end method

.method public isMultiAdvertisementSupported()Z
    .locals 2

    .prologue
    .line 1381
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1382
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 1383
    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->isMultiAdvertisementSupported()Z

    move-result v1

    return v1
.end method

.method public isOffloadedFilteringSupported()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1393
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1394
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-nez v0, :cond_0

    return v2

    .line 1395
    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getNumOfOffloadedScanFilterSupported()I

    move-result v1

    .line 1396
    .local v1, "val":I
    const/16 v3, 0xa

    if-lt v1, v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public isOffloadedScanBatchingSupported()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1400
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1401
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-nez v0, :cond_0

    return v2

    .line 1402
    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getOffloadedScanResultStorage()I

    move-result v1

    .line 1403
    .local v1, "val":I
    const/16 v3, 0x400

    if-lt v1, v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public isPeripheralModeSupported()Z
    .locals 2

    .prologue
    .line 1387
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1388
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 1389
    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->isPeripheralModeSupported()Z

    move-result v1

    return v1
.end method

.method public onBrEdrDown()V
    .locals 1

    .prologue
    .line 1437
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1438
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-nez v0, :cond_0

    return-void

    .line 1439
    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->onBrEdrDown()V

    .line 1436
    return-void
.end method

.method public onLeServiceUp()V
    .locals 1

    .prologue
    .line 1431
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1432
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-nez v0, :cond_0

    return-void

    .line 1433
    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->onLeServiceUp()V

    .line 1430
    return-void
.end method

.method public registerCallback(Landroid/bluetooth/IBluetoothCallback;)V
    .locals 1
    .param p1, "cb"    # Landroid/bluetooth/IBluetoothCallback;

    .prologue
    .line 1369
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1370
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-nez v0, :cond_0

    return-void

    .line 1371
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->registerCallback(Landroid/bluetooth/IBluetoothCallback;)V

    .line 1368
    return-void
.end method

.method public removeBond(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v3, 0x0

    .line 1083
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1084
    const-string/jumbo v1, "BluetoothAdapterService"

    const-string/jumbo v2, "removeBond() - Not allowed for non-active user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    return v3

    .line 1088
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1089
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-nez v0, :cond_1

    return v3

    .line 1090
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->removeBond(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    return v1
.end method

.method public removeSdpRecord(I)Z
    .locals 2
    .param p1, "recordHandle"    # I

    .prologue
    .line 1457
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1458
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 1459
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->removeSdpRecord(I)Z

    move-result v1

    return v1
.end method

.method public reportActivityInfo()Landroid/bluetooth/BluetoothActivityEnergyInfo;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1419
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1420
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-nez v0, :cond_0

    return-object v1

    .line 1421
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/btservice/AdapterService;->-wrap0(Lcom/android/bluetooth/btservice/AdapterService;)Landroid/bluetooth/BluetoothActivityEnergyInfo;

    move-result-object v1

    return-object v1
.end method

.method public sdpSearch(Landroid/bluetooth/BluetoothDevice;Landroid/os/ParcelUuid;)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "uuid"    # Landroid/os/ParcelUuid;

    .prologue
    const/4 v3, 0x0

    .line 1315
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1316
    const-string/jumbo v1, "BluetoothAdapterService"

    const-string/jumbo v2, "sdpSea(): not allowed for non-active user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    return v3

    .line 1320
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1321
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-nez v0, :cond_1

    return v3

    .line 1322
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/btservice/AdapterService;->sdpSearch(Landroid/bluetooth/BluetoothDevice;Landroid/os/ParcelUuid;)Z

    move-result v1

    return v1
.end method

.method public sendConnectionStateChange(Landroid/bluetooth/BluetoothDevice;III)V
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "profile"    # I
    .param p3, "state"    # I
    .param p4, "prevState"    # I

    .prologue
    .line 1286
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1287
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-nez v0, :cond_0

    return-void

    .line 1288
    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/bluetooth/btservice/AdapterService;->sendConnectionStateChange(Landroid/bluetooth/BluetoothDevice;III)V

    .line 1285
    return-void
.end method

.method public setDiscoverableTimeout(I)Z
    .locals 4
    .param p1, "timeout"    # I

    .prologue
    const/4 v3, 0x0

    .line 993
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v1

    if-nez v1, :cond_0

    .line 994
    const-string/jumbo v1, "BluetoothAdapterService"

    const-string/jumbo v2, "setDiscoverableTimeout() - Not allowed for non-active user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    return v3

    .line 998
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 999
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-nez v0, :cond_1

    return v3

    .line 1000
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->setDiscoverableTimeout(I)Z

    move-result v1

    return v1
.end method

.method public setMessageAccessPermission(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "value"    # I

    .prologue
    const/4 v3, 0x0

    .line 1252
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1253
    const-string/jumbo v1, "BluetoothAdapterService"

    const-string/jumbo v2, "setMessageAccessPermission() - Not allowed for non-active user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    return v3

    .line 1257
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1258
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-nez v0, :cond_1

    return v3

    .line 1259
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/btservice/AdapterService;->setMessageAccessPermission(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v1

    return v1
.end method

.method public setName(Ljava/lang/String;)Z
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 936
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v1

    if-nez v1, :cond_0

    .line 937
    const-string/jumbo v1, "BluetoothAdapterService"

    const-string/jumbo v2, "setName() - Not allowed for non-active user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    return v3

    .line 941
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 942
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-nez v0, :cond_1

    return v3

    .line 943
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->setName(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public setPairingConfirmation(Landroid/bluetooth/BluetoothDevice;Z)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "accept"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1208
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1209
    const-string/jumbo v1, "BluetoothAdapterService"

    const-string/jumbo v2, "setPairingConfirmation() - Not allowed for non-active user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    return v3

    .line 1213
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1214
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-nez v0, :cond_1

    return v3

    .line 1215
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/btservice/AdapterService;->setPairingConfirmation(Landroid/bluetooth/BluetoothDevice;Z)Z

    move-result v1

    return v1
.end method

.method public setPasskey(Landroid/bluetooth/BluetoothDevice;ZI[B)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "accept"    # Z
    .param p3, "len"    # I
    .param p4, "passkey"    # [B

    .prologue
    const/4 v3, 0x0

    .line 1197
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1198
    const-string/jumbo v1, "BluetoothAdapterService"

    const-string/jumbo v2, "setPasskey() - Not allowed for non-active user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    return v3

    .line 1202
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1203
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-nez v0, :cond_1

    return v3

    .line 1204
    :cond_1
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/bluetooth/btservice/AdapterService;->setPasskey(Landroid/bluetooth/BluetoothDevice;ZI[B)Z

    move-result v1

    return v1
.end method

.method public setPhonebookAccessPermission(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "value"    # I

    .prologue
    const/4 v3, 0x0

    .line 1230
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1231
    const-string/jumbo v1, "BluetoothAdapterService"

    const-string/jumbo v2, "setPhonebookAccessPermission() - Not allowed for non-active user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    return v3

    .line 1235
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1236
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-nez v0, :cond_1

    return v3

    .line 1237
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/btservice/AdapterService;->setPhonebookAccessPermission(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v1

    return v1
.end method

.method public setPin(Landroid/bluetooth/BluetoothDevice;ZI[B)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "accept"    # Z
    .param p3, "len"    # I
    .param p4, "pinCode"    # [B

    .prologue
    const/4 v3, 0x0

    .line 1186
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1187
    const-string/jumbo v1, "BluetoothAdapterService"

    const-string/jumbo v2, "setPin() - Not allowed for non-active user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    return v3

    .line 1191
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1192
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-nez v0, :cond_1

    return v3

    .line 1193
    :cond_1
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/bluetooth/btservice/AdapterService;->setPin(Landroid/bluetooth/BluetoothDevice;ZI[B)Z

    move-result v1

    return v1
.end method

.method public setRemoteAlias(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1140
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1141
    const-string/jumbo v1, "BluetoothAdapterService"

    const-string/jumbo v2, "setRemoteAlias() - Not allowed for non-active user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    return v3

    .line 1145
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1146
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-nez v0, :cond_1

    return v3

    .line 1147
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/btservice/AdapterService;->setRemoteAlias(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public setScanMode(II)Z
    .locals 6
    .param p1, "mode"    # I
    .param p2, "duration"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 958
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v2

    if-nez v2, :cond_0

    .line 959
    const-string/jumbo v2, "BluetoothAdapterService"

    const-string/jumbo v3, "setScanMode() - Not allowed for non-active user"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    return v5

    .line 964
    :cond_0
    invoke-static {}, Lcom/android/bluetooth/a2dp/A2dpService;->getA2dpService()Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v0

    .line 965
    .local v0, "a2dpService":Lcom/android/bluetooth/a2dp/A2dpService;
    if-eqz v0, :cond_1

    .line 966
    invoke-virtual {v0, v3}, Lcom/android/bluetooth/a2dp/A2dpService;->isMulticastOngoing(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    .line 965
    if-eqz v2, :cond_1

    .line 967
    const-string/jumbo v2, "BluetoothAdapterService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "A2dp Multicast is Ongoing, ignore setmode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    invoke-static {p1}, Lcom/android/bluetooth/btservice/AdapterService;->-set1(I)I

    .line 969
    return v5

    .line 972
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v1

    .line 973
    .local v1, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-nez v1, :cond_2

    return v5

    .line 976
    :cond_2
    invoke-virtual {v1}, Lcom/android/bluetooth/btservice/AdapterService;->getScanMode()I

    move-result v2

    invoke-static {v2}, Lcom/android/bluetooth/btservice/AdapterService;->-set1(I)I

    .line 977
    const-string/jumbo v2, "BluetoothAdapterService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setScanMode: prev mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->-get0()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " new mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    invoke-virtual {v1, p1, p2}, Lcom/android/bluetooth/btservice/AdapterService;->setScanMode(II)Z

    move-result v2

    return v2
.end method

.method public setSimAccessPermission(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "value"    # I

    .prologue
    const/4 v3, 0x0

    .line 1274
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1275
    const-string/jumbo v1, "BluetoothAdapterService"

    const-string/jumbo v2, "setSimAccessPermission() - Not allowed for non-active user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    return v3

    .line 1279
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1280
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-nez v0, :cond_1

    return v3

    .line 1281
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/btservice/AdapterService;->setSimAccessPermission(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v1

    return v1
.end method

.method public setSocketOpt(III[BI)I
    .locals 6
    .param p1, "type"    # I
    .param p2, "channel"    # I
    .param p3, "optionName"    # I
    .param p4, "optionVal"    # [B
    .param p5, "optionLen"    # I

    .prologue
    const/4 v3, -0x1

    .line 1327
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1328
    const-string/jumbo v1, "BluetoothAdapterService"

    const-string/jumbo v2, "setSocketOpt(): not allowed for non-active user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    return v3

    .line 1332
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1333
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-nez v0, :cond_1

    return v3

    :cond_1
    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    .line 1334
    invoke-virtual/range {v0 .. v5}, Lcom/android/bluetooth/btservice/AdapterService;->setSocketOpt(III[BI)I

    move-result v1

    return v1
.end method

.method public startDiscovery()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1004
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1005
    const-string/jumbo v1, "BluetoothAdapterService"

    const-string/jumbo v2, "startDiscovery() - Not allowed for non-active user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    return v3

    .line 1009
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1010
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-nez v0, :cond_1

    return v3

    .line 1011
    :cond_1
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->startDiscovery()Z

    move-result v1

    return v1
.end method

.method public unregisterCallback(Landroid/bluetooth/IBluetoothCallback;)V
    .locals 1
    .param p1, "cb"    # Landroid/bluetooth/IBluetoothCallback;

    .prologue
    .line 1375
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1376
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-nez v0, :cond_0

    return-void

    .line 1377
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->unregisterCallback(Landroid/bluetooth/IBluetoothCallback;)V

    .line 1374
    return-void
.end method
