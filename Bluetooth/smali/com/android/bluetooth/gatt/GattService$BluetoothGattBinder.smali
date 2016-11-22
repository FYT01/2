.class Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;
.super Landroid/bluetooth/IBluetoothGatt$Stub;
.source "GattService.java"

# interfaces
.implements Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/gatt/GattService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BluetoothGattBinder"
.end annotation


# instance fields
.field private mService:Lcom/android/bluetooth/gatt/GattService;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/gatt/GattService;)V
    .locals 0
    .param p1, "svc"    # Lcom/android/bluetooth/gatt/GattService;

    .prologue
    .line 293
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothGatt$Stub;-><init>()V

    .line 294
    iput-object p1, p0, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->mService:Lcom/android/bluetooth/gatt/GattService;

    .line 293
    return-void
.end method

.method private getService()Lcom/android/bluetooth/gatt/GattService;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 303
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->mService:Lcom/android/bluetooth/gatt/GattService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->mService:Lcom/android/bluetooth/gatt/GattService;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/GattService;->-wrap0(Lcom/android/bluetooth/gatt/GattService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->mService:Lcom/android/bluetooth/gatt/GattService;

    return-object v0

    .line 304
    :cond_0
    const-string/jumbo v0, "BtGatt.GattService"

    const-string/jumbo v1, "getService() - Service requested, but not available!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    return-object v2
.end method


# virtual methods
.method public addCharacteristic(ILandroid/os/ParcelUuid;II)V
    .locals 2
    .param p1, "serverIf"    # I
    .param p2, "charId"    # Landroid/os/ParcelUuid;
    .param p3, "properties"    # I
    .param p4, "permissions"    # I

    .prologue
    .line 525
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 526
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    return-void

    .line 527
    :cond_0
    invoke-virtual {p2}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3, p4}, Lcom/android/bluetooth/gatt/GattService;->addCharacteristic(ILjava/util/UUID;II)V

    .line 524
    return-void
.end method

.method public addDescriptor(ILandroid/os/ParcelUuid;I)V
    .locals 2
    .param p1, "serverIf"    # I
    .param p2, "descId"    # Landroid/os/ParcelUuid;
    .param p3, "permissions"    # I

    .prologue
    .line 533
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 534
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    return-void

    .line 535
    :cond_0
    invoke-virtual {p2}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3}, Lcom/android/bluetooth/gatt/GattService;->addDescriptor(ILjava/util/UUID;I)V

    .line 532
    return-void
.end method

.method public addIncludedService(IIILandroid/os/ParcelUuid;)V
    .locals 2
    .param p1, "serverIf"    # I
    .param p2, "srvcType"    # I
    .param p3, "srvcInstanceId"    # I
    .param p4, "srvcId"    # Landroid/os/ParcelUuid;

    .prologue
    .line 517
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 518
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    return-void

    .line 520
    :cond_0
    invoke-virtual {p4}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v1

    .line 519
    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/android/bluetooth/gatt/GattService;->addIncludedService(IIILjava/util/UUID;)V

    .line 516
    return-void
.end method

.method public beginReliableWrite(ILjava/lang/String;)V
    .locals 1
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 432
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 433
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    return-void

    .line 434
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/gatt/GattService;->beginReliableWrite(ILjava/lang/String;)V

    .line 431
    return-void
.end method

.method public beginServiceDeclaration(IIIILandroid/os/ParcelUuid;Z)V
    .locals 7
    .param p1, "serverIf"    # I
    .param p2, "srvcType"    # I
    .param p3, "srvcInstanceId"    # I
    .param p4, "minHandles"    # I
    .param p5, "srvcId"    # Landroid/os/ParcelUuid;
    .param p6, "advertisePreferred"    # Z

    .prologue
    .line 509
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 510
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    return-void

    .line 512
    :cond_0
    invoke-virtual {p5}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v5

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p6

    .line 511
    invoke-virtual/range {v0 .. v6}, Lcom/android/bluetooth/gatt/GattService;->beginServiceDeclaration(IIIILjava/util/UUID;Z)V

    .line 508
    return-void
.end method

.method public cleanup()Z
    .locals 1

    .prologue
    .line 298
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->mService:Lcom/android/bluetooth/gatt/GattService;

    .line 299
    const/4 v0, 0x1

    return v0
.end method

.method public clearServices(I)V
    .locals 1
    .param p1, "serverIf"    # I

    .prologue
    .line 553
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 554
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    return-void

    .line 555
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/GattService;->clearServices(I)V

    .line 552
    return-void
.end method

.method public clientConnect(ILjava/lang/String;ZI)V
    .locals 4
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "isDirect"    # Z
    .param p4, "transport"    # I

    .prologue
    const/4 v2, 0x0

    .line 348
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v1

    .line 349
    .local v1, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v1, :cond_0

    return-void

    .line 352
    :cond_0
    invoke-static {}, Lcom/android/bluetooth/a2dp/A2dpService;->getA2dpService()Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v0

    .line 353
    .local v0, "a2dpService":Lcom/android/bluetooth/a2dp/A2dpService;
    if-eqz v0, :cond_1

    .line 354
    invoke-virtual {v0, v2}, Lcom/android/bluetooth/a2dp/A2dpService;->isMulticastOngoing(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    .line 353
    if-eqz v2, :cond_1

    .line 355
    const-string/jumbo v2, "BtGatt.GattService"

    const-string/jumbo v3, "A2dp Multicast is Ongoing, ignore Connection Request"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    return-void

    .line 359
    :cond_1
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/bluetooth/gatt/GattService;->clientConnect(ILjava/lang/String;ZI)V

    .line 347
    return-void
.end method

.method public clientDisconnect(ILjava/lang/String;)V
    .locals 1
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 363
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 364
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    return-void

    .line 365
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/gatt/GattService;->clientDisconnect(ILjava/lang/String;)V

    .line 362
    return-void
.end method

.method public configureMTU(ILjava/lang/String;I)V
    .locals 1
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "mtu"    # I

    .prologue
    .line 461
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 462
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    return-void

    .line 463
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/bluetooth/gatt/GattService;->configureMTU(ILjava/lang/String;I)V

    .line 460
    return-void
.end method

.method public connectionParameterUpdate(ILjava/lang/String;I)V
    .locals 1
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "connectionPriority"    # I

    .prologue
    .line 468
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 469
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    return-void

    .line 470
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/bluetooth/gatt/GattService;->connectionParameterUpdate(ILjava/lang/String;I)V

    .line 467
    return-void
.end method

.method public disconnectAll()V
    .locals 1

    .prologue
    .line 592
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 593
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    return-void

    .line 594
    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/GattService;->disconnectAll()V

    .line 591
    return-void
.end method

.method public discoverServices(ILjava/lang/String;)V
    .locals 1
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 375
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 376
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    return-void

    .line 377
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/gatt/GattService;->discoverServices(ILjava/lang/String;)V

    .line 374
    return-void
.end method

.method public endReliableWrite(ILjava/lang/String;Z)V
    .locals 1
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "execute"    # Z

    .prologue
    .line 438
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 439
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    return-void

    .line 440
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/bluetooth/gatt/GattService;->endReliableWrite(ILjava/lang/String;Z)V

    .line 437
    return-void
.end method

.method public endServiceDeclaration(I)V
    .locals 1
    .param p1, "serverIf"    # I

    .prologue
    .line 539
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 540
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    return-void

    .line 541
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/GattService;->endServiceDeclaration(I)V

    .line 538
    return-void
.end method

.method public flushPendingBatchResults(IZ)V
    .locals 1
    .param p1, "appIf"    # I
    .param p2, "isServer"    # Z

    .prologue
    .line 342
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 343
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    return-void

    .line 344
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/gatt/GattService;->flushPendingBatchResults(IZ)V

    .line 341
    return-void
.end method

.method public getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 2
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
    .line 309
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 310
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1

    .line 311
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/GattService;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public numHwTrackFiltersAvailable()I
    .locals 2

    .prologue
    .line 606
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 607
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 608
    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/GattService;->numHwTrackFiltersAvailable()I

    move-result v1

    return v1
.end method

.method public readCharacteristic(ILjava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;I)V
    .locals 9
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "srvcType"    # I
    .param p4, "srvcInstanceId"    # I
    .param p5, "srvcId"    # Landroid/os/ParcelUuid;
    .param p6, "charInstanceId"    # I
    .param p7, "charId"    # Landroid/os/ParcelUuid;
    .param p8, "authReq"    # I

    .prologue
    .line 384
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 385
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    return-void

    .line 387
    :cond_0
    invoke-virtual {p5}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v5

    .line 388
    invoke-virtual/range {p7 .. p7}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v7

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v6, p6

    move/from16 v8, p8

    .line 386
    invoke-virtual/range {v0 .. v8}, Lcom/android/bluetooth/gatt/GattService;->readCharacteristic(ILjava/lang/String;IILjava/util/UUID;ILjava/util/UUID;I)V

    .line 383
    return-void
.end method

.method public readDescriptor(ILjava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;I)V
    .locals 11
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "srvcType"    # I
    .param p4, "srvcInstanceId"    # I
    .param p5, "srvcId"    # Landroid/os/ParcelUuid;
    .param p6, "charInstanceId"    # I
    .param p7, "charId"    # Landroid/os/ParcelUuid;
    .param p8, "descrInstanceId"    # I
    .param p9, "descrId"    # Landroid/os/ParcelUuid;
    .param p10, "authReq"    # I

    .prologue
    .line 408
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 409
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    return-void

    .line 411
    :cond_0
    invoke-virtual/range {p5 .. p5}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v5

    .line 412
    invoke-virtual/range {p7 .. p7}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v7

    .line 413
    invoke-virtual/range {p9 .. p9}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v9

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move/from16 v6, p6

    move/from16 v8, p8

    move/from16 v10, p10

    .line 410
    invoke-virtual/range {v0 .. v10}, Lcom/android/bluetooth/gatt/GattService;->readDescriptor(ILjava/lang/String;IILjava/util/UUID;ILjava/util/UUID;ILjava/util/UUID;I)V

    .line 407
    return-void
.end method

.method public readRemoteRssi(ILjava/lang/String;)V
    .locals 1
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 455
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 456
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    return-void

    .line 457
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/gatt/GattService;->readRemoteRssi(ILjava/lang/String;)V

    .line 454
    return-void
.end method

.method public refreshDevice(ILjava/lang/String;)V
    .locals 1
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 369
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 370
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    return-void

    .line 371
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/gatt/GattService;->refreshDevice(ILjava/lang/String;)V

    .line 368
    return-void
.end method

.method public registerClient(Landroid/os/ParcelUuid;Landroid/bluetooth/IBluetoothGattCallback;)V
    .locals 2
    .param p1, "uuid"    # Landroid/os/ParcelUuid;
    .param p2, "callback"    # Landroid/bluetooth/IBluetoothGattCallback;

    .prologue
    .line 315
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 316
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    return-void

    .line 317
    :cond_0
    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/bluetooth/gatt/GattService;->registerClient(Ljava/util/UUID;Landroid/bluetooth/IBluetoothGattCallback;)V

    .line 314
    return-void
.end method

.method public registerForNotification(ILjava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;Z)V
    .locals 9
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "srvcType"    # I
    .param p4, "srvcInstanceId"    # I
    .param p5, "srvcId"    # Landroid/os/ParcelUuid;
    .param p6, "charInstanceId"    # I
    .param p7, "charId"    # Landroid/os/ParcelUuid;
    .param p8, "enable"    # Z

    .prologue
    .line 447
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 448
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    return-void

    .line 450
    :cond_0
    invoke-virtual {p5}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v5

    .line 451
    invoke-virtual/range {p7 .. p7}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v7

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v6, p6

    move/from16 v8, p8

    .line 449
    invoke-virtual/range {v0 .. v8}, Lcom/android/bluetooth/gatt/GattService;->registerForNotification(ILjava/lang/String;IILjava/util/UUID;ILjava/util/UUID;Z)V

    .line 446
    return-void
.end method

.method public registerServer(Landroid/os/ParcelUuid;Landroid/bluetooth/IBluetoothGattServerCallback;)V
    .locals 2
    .param p1, "uuid"    # Landroid/os/ParcelUuid;
    .param p2, "callback"    # Landroid/bluetooth/IBluetoothGattServerCallback;

    .prologue
    .line 474
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 475
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    return-void

    .line 476
    :cond_0
    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/bluetooth/gatt/GattService;->registerServer(Ljava/util/UUID;Landroid/bluetooth/IBluetoothGattServerCallback;)V

    .line 473
    return-void
.end method

.method public registerStatisticsClient(Landroid/bluetooth/IBluetoothGattCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/bluetooth/IBluetoothGattCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
    .prologue
    return-void
.end method
.method public removeService(IIILandroid/os/ParcelUuid;)V
    .locals 2
    .param p1, "serverIf"    # I
    .param p2, "srvcType"    # I
    .param p3, "srvcInstanceId"    # I
    .param p4, "srvcId"    # Landroid/os/ParcelUuid;

    .prologue
    .line 546
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 547
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    return-void

    .line 549
    :cond_0
    invoke-virtual {p4}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v1

    .line 548
    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/android/bluetooth/gatt/GattService;->removeService(IIILjava/util/UUID;)V

    .line 545
    return-void
.end method

.method public sendNotification(ILjava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;Z[B)V
    .locals 10
    .param p1, "serverIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "srvcType"    # I
    .param p4, "srvcInstanceId"    # I
    .param p5, "srvcId"    # Landroid/os/ParcelUuid;
    .param p6, "charInstanceId"    # I
    .param p7, "charId"    # Landroid/os/ParcelUuid;
    .param p8, "confirm"    # Z
    .param p9, "value"    # [B

    .prologue
    .line 569
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 570
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    return-void

    .line 572
    :cond_0
    invoke-virtual {p5}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual/range {p7 .. p7}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v7

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move/from16 v6, p6

    move/from16 v8, p8

    move-object/from16 v9, p9

    .line 571
    invoke-virtual/range {v0 .. v9}, Lcom/android/bluetooth/gatt/GattService;->sendNotification(ILjava/lang/String;IILjava/util/UUID;ILjava/util/UUID;Z[B)V

    .line 568
    return-void
.end method

.method public sendResponse(ILjava/lang/String;III[B)V
    .locals 7
    .param p1, "serverIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "requestId"    # I
    .param p4, "status"    # I
    .param p5, "offset"    # I
    .param p6, "value"    # [B

    .prologue
    .line 560
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 561
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    return-void

    :cond_0
    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    .line 562
    invoke-virtual/range {v0 .. v6}, Lcom/android/bluetooth/gatt/GattService;->sendResponse(ILjava/lang/String;III[B)V

    .line 559
    return-void
.end method

.method public serverConnect(ILjava/lang/String;ZI)V
    .locals 4
    .param p1, "serverIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "isDirect"    # Z
    .param p4, "transport"    # I

    .prologue
    const/4 v2, 0x0

    .line 486
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v1

    .line 487
    .local v1, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v1, :cond_0

    return-void

    .line 490
    :cond_0
    invoke-static {}, Lcom/android/bluetooth/a2dp/A2dpService;->getA2dpService()Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v0

    .line 491
    .local v0, "a2dpService":Lcom/android/bluetooth/a2dp/A2dpService;
    if-eqz v0, :cond_1

    .line 492
    invoke-virtual {v0, v2}, Lcom/android/bluetooth/a2dp/A2dpService;->isMulticastOngoing(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    .line 491
    if-eqz v2, :cond_1

    .line 493
    const-string/jumbo v2, "BtGatt.GattService"

    const-string/jumbo v3, "A2dp Multicast is Ongoing, ignore Connection Request"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    return-void

    .line 497
    :cond_1
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/bluetooth/gatt/GattService;->serverConnect(ILjava/lang/String;ZI)V

    .line 485
    return-void
.end method

.method public serverDisconnect(ILjava/lang/String;)V
    .locals 1
    .param p1, "serverIf"    # I
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 501
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 502
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    return-void

    .line 503
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/gatt/GattService;->serverDisconnect(ILjava/lang/String;)V

    .line 500
    return-void
.end method

.method public startMultiAdvertising(ILandroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseSettings;)V
    .locals 1
    .param p1, "clientIf"    # I
    .param p2, "advertiseData"    # Landroid/bluetooth/le/AdvertiseData;
    .param p3, "scanResponse"    # Landroid/bluetooth/le/AdvertiseData;
    .param p4, "settings"    # Landroid/bluetooth/le/AdvertiseSettings;

    .prologue
    .line 578
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 579
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    return-void

    .line 580
    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/bluetooth/gatt/GattService;->startMultiAdvertising(ILandroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseSettings;)V

    .line 577
    return-void
.end method

.method public startScan(IZLandroid/bluetooth/le/ScanSettings;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 7
    .param p1, "appIf"    # I
    .param p2, "isServer"    # Z
    .param p3, "settings"    # Landroid/bluetooth/le/ScanSettings;
    .param p5, "storages"    # Ljava/util/List;
    .param p6, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Landroid/bluetooth/le/ScanSettings;",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;",
            "Ljava/util/List;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 329
    .local p4, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 330
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    return-void

    :cond_0
    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 331
    invoke-virtual/range {v0 .. v6}, Lcom/android/bluetooth/gatt/GattService;->startScan(IZLandroid/bluetooth/le/ScanSettings;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 328
    return-void
.end method

.method public stopMultiAdvertising(I)V
    .locals 2
    .param p1, "clientIf"    # I

    .prologue
    .line 585
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 586
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    return-void

    .line 587
    :cond_0
    new-instance v1, Lcom/android/bluetooth/gatt/AdvertiseClient;

    invoke-direct {v1, p1}, Lcom/android/bluetooth/gatt/AdvertiseClient;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/gatt/GattService;->stopMultiAdvertising(Lcom/android/bluetooth/gatt/AdvertiseClient;)V

    .line 584
    return-void
.end method

.method public stopScan(IZ)V
    .locals 2
    .param p1, "appIf"    # I
    .param p2, "isServer"    # Z

    .prologue
    .line 335
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 336
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    return-void

    .line 337
    :cond_0
    new-instance v1, Lcom/android/bluetooth/gatt/ScanClient;

    invoke-direct {v1, p1, p2}, Lcom/android/bluetooth/gatt/ScanClient;-><init>(IZ)V

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/gatt/GattService;->stopScan(Lcom/android/bluetooth/gatt/ScanClient;)V

    .line 334
    return-void
.end method

.method public unregAll()V
    .locals 1

    .prologue
    .line 599
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 600
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    return-void

    .line 601
    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/GattService;->unregAll()V

    .line 598
    return-void
.end method

.method public unregisterClient(I)V
    .locals 1
    .param p1, "clientIf"    # I

    .prologue
    .line 321
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 322
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    return-void

    .line 323
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/GattService;->unregisterClient(I)V

    .line 320
    return-void
.end method

.method public unregisterServer(I)V
    .locals 1
    .param p1, "serverIf"    # I

    .prologue
    .line 480
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 481
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    return-void

    .line 482
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/GattService;->unregisterServer(I)V

    .line 479
    return-void
.end method

.method public unregisterStatisticsClient(Landroid/bluetooth/IBluetoothGattCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/bluetooth/IBluetoothGattCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
    .prologue
    return-void
.end method
.method public writeCharacteristic(ILjava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;II[B)V
    .locals 11
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "srvcType"    # I
    .param p4, "srvcInstanceId"    # I
    .param p5, "srvcId"    # Landroid/os/ParcelUuid;
    .param p6, "charInstanceId"    # I
    .param p7, "charId"    # Landroid/os/ParcelUuid;
    .param p8, "writeType"    # I
    .param p9, "authReq"    # I
    .param p10, "value"    # [B

    .prologue
    .line 395
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 396
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    return-void

    .line 398
    :cond_0
    invoke-virtual/range {p5 .. p5}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v5

    .line 399
    invoke-virtual/range {p7 .. p7}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v7

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move/from16 v6, p6

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    .line 397
    invoke-virtual/range {v0 .. v10}, Lcom/android/bluetooth/gatt/GattService;->writeCharacteristic(ILjava/lang/String;IILjava/util/UUID;ILjava/util/UUID;II[B)V

    .line 394
    return-void
.end method

.method public writeDescriptor(ILjava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;II[B)V
    .locals 13
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "srvcType"    # I
    .param p4, "srvcInstanceId"    # I
    .param p5, "srvcId"    # Landroid/os/ParcelUuid;
    .param p6, "charInstanceId"    # I
    .param p7, "charId"    # Landroid/os/ParcelUuid;
    .param p8, "descrInstanceId"    # I
    .param p9, "descrId"    # Landroid/os/ParcelUuid;
    .param p10, "writeType"    # I
    .param p11, "authReq"    # I
    .param p12, "value"    # [B

    .prologue
    .line 422
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 423
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    return-void

    .line 425
    :cond_0
    invoke-virtual/range {p5 .. p5}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v5

    .line 426
    invoke-virtual/range {p7 .. p7}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v7

    .line 427
    invoke-virtual/range {p9 .. p9}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v9

    move v1, p1

    move-object v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v6, p6

    move/from16 v8, p8

    move/from16 v10, p10

    move/from16 v11, p11

    move-object/from16 v12, p12

    .line 424
    invoke-virtual/range {v0 .. v12}, Lcom/android/bluetooth/gatt/GattService;->writeDescriptor(ILjava/lang/String;IILjava/util/UUID;ILjava/util/UUID;ILjava/util/UUID;II[B)V

    .line 421
    return-void
.end method
