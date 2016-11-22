.class Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiseNative;
.super Ljava/lang/Object;
.source "AdvertiseManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/gatt/AdvertiseManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdvertiseNative"
.end annotation


# static fields
.field private static final ADVERTISING_CHANNEL_37:I = 0x1

.field private static final ADVERTISING_CHANNEL_38:I = 0x2

.field private static final ADVERTISING_CHANNEL_39:I = 0x4

.field private static final ADVERTISING_CHANNEL_ALL:I = 0x7

.field private static final ADVERTISING_EVENT_TYPE_CONNECTABLE:I = 0x0

.field private static final ADVERTISING_EVENT_TYPE_NON_CONNECTABLE:I = 0x3

.field private static final ADVERTISING_EVENT_TYPE_SCANNABLE:I = 0x2

.field private static final ADVERTISING_INTERVAL_DELTA_UNIT:I = 0xa

.field private static final ADVERTISING_INTERVAL_HIGH_MILLS:I = 0x3e8

.field private static final ADVERTISING_INTERVAL_LOW_MILLS:I = 0x64

.field private static final ADVERTISING_INTERVAL_MEDIUM_MILLS:I = 0xfa

.field private static final ADVERTISING_TX_POWER_LOW:I = 0x1

.field private static final ADVERTISING_TX_POWER_MAX:I = 0x4

.field private static final ADVERTISING_TX_POWER_MID:I = 0x2

.field private static final ADVERTISING_TX_POWER_MIN:I = 0x0

.field private static final ADVERTISING_TX_POWER_UPPER:I = 0x3


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/gatt/AdvertiseManager;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/gatt/AdvertiseManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/bluetooth/gatt/AdvertiseManager;

    .prologue
    .line 238
    iput-object p1, p0, Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiseNative;->this$0:Lcom/android/bluetooth/gatt/AdvertiseManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/gatt/AdvertiseManager;Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiseNative;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/bluetooth/gatt/AdvertiseManager;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiseNative;-><init>(Lcom/android/bluetooth/gatt/AdvertiseManager;)V

    return-void
.end method

.method private enableAdvertising(Lcom/android/bluetooth/gatt/AdvertiseClient;)V
    .locals 10
    .param p1, "client"    # Lcom/android/bluetooth/gatt/AdvertiseClient;

    .prologue
    .line 340
    iget v1, p1, Lcom/android/bluetooth/gatt/AdvertiseClient;->clientIf:I

    .line 341
    .local v1, "clientIf":I
    iget-object v0, p1, Lcom/android/bluetooth/gatt/AdvertiseClient;->settings:Landroid/bluetooth/le/AdvertiseSettings;

    invoke-direct {p0, v0}, Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiseNative;->getAdvertisingIntervalUnit(Landroid/bluetooth/le/AdvertiseSettings;)J

    move-result-wide v8

    long-to-int v2, v8

    .line 342
    .local v2, "minAdvertiseUnit":I
    add-int/lit8 v3, v2, 0xa

    .line 343
    .local v3, "maxAdvertiseUnit":I
    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiseNative;->getAdvertisingEventType(Lcom/android/bluetooth/gatt/AdvertiseClient;)I

    move-result v4

    .line 344
    .local v4, "advertiseEventType":I
    iget-object v0, p1, Lcom/android/bluetooth/gatt/AdvertiseClient;->settings:Landroid/bluetooth/le/AdvertiseSettings;

    invoke-direct {p0, v0}, Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiseNative;->getTxPowerLevel(Landroid/bluetooth/le/AdvertiseSettings;)I

    move-result v6

    .line 345
    .local v6, "txPowerLevel":I
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 346
    iget-object v5, p1, Lcom/android/bluetooth/gatt/AdvertiseClient;->settings:Landroid/bluetooth/le/AdvertiseSettings;

    invoke-virtual {v5}, Landroid/bluetooth/le/AdvertiseSettings;->getTimeout()I

    move-result v5

    int-to-long v8, v5

    .line 345
    invoke-virtual {v0, v8, v9}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v8

    long-to-int v7, v8

    .line 347
    .local v7, "advertiseTimeoutSeconds":I
    iget-object v0, p0, Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiseNative;->this$0:Lcom/android/bluetooth/gatt/AdvertiseManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/AdvertiseManager;->-get0(Lcom/android/bluetooth/gatt/AdvertiseManager;)Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->isMultiAdvertisementSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    const/4 v5, 0x7

    move-object v0, p0

    .line 348
    invoke-direct/range {v0 .. v7}, Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiseNative;->gattClientEnableAdvNative(IIIIIII)V

    .line 339
    :goto_0
    return-void

    .line 356
    :cond_0
    iget v0, p1, Lcom/android/bluetooth/gatt/AdvertiseClient;->clientIf:I

    const/4 v5, 0x1

    invoke-direct {p0, v0, v5}, Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiseNative;->gattAdvertiseNative(IZ)V

    goto :goto_0
.end method

.method private native gattAdvertiseNative(IZ)V
.end method

.method private native gattClientDisableAdvNative(I)V
.end method

.method private native gattClientEnableAdvNative(IIIIIII)V
.end method

.method private native gattClientSetAdvDataNative(IZZZI[B[B[B)V
.end method

.method private native gattClientUpdateAdvNative(IIIIIII)V
.end method

.method private native gattSetAdvDataNative(IZZZIII[B[B[B)V
.end method

.method private getAdvertisingEventType(Lcom/android/bluetooth/gatt/AdvertiseClient;)I
    .locals 2
    .param p1, "client"    # Lcom/android/bluetooth/gatt/AdvertiseClient;

    .prologue
    .line 457
    iget-object v0, p1, Lcom/android/bluetooth/gatt/AdvertiseClient;->settings:Landroid/bluetooth/le/AdvertiseSettings;

    .line 458
    .local v0, "settings":Landroid/bluetooth/le/AdvertiseSettings;
    invoke-virtual {v0}, Landroid/bluetooth/le/AdvertiseSettings;->isConnectable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 459
    const/4 v1, 0x0

    return v1

    .line 461
    :cond_0
    iget-object v1, p1, Lcom/android/bluetooth/gatt/AdvertiseClient;->scanResponse:Landroid/bluetooth/le/AdvertiseData;

    if-nez v1, :cond_1

    const/4 v1, 0x3

    :goto_0
    return v1

    .line 462
    :cond_1
    const/4 v1, 0x2

    goto :goto_0
.end method

.method private getAdvertisingIntervalUnit(Landroid/bluetooth/le/AdvertiseSettings;)J
    .locals 2
    .param p1, "settings"    # Landroid/bluetooth/le/AdvertiseSettings;

    .prologue
    const/16 v1, 0x3e8

    .line 467
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseSettings;->getMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 476
    invoke-static {v1}, Lcom/android/bluetooth/Utils;->millsToUnit(I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 469
    :pswitch_0
    invoke-static {v1}, Lcom/android/bluetooth/Utils;->millsToUnit(I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 471
    :pswitch_1
    const/16 v0, 0xfa

    invoke-static {v0}, Lcom/android/bluetooth/Utils;->millsToUnit(I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 473
    :pswitch_2
    const/16 v0, 0x64

    invoke-static {v0}, Lcom/android/bluetooth/Utils;->millsToUnit(I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 467
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getManufacturerData(Landroid/bluetooth/le/AdvertiseData;)[B
    .locals 8
    .param p1, "advertiseData"    # Landroid/bluetooth/le/AdvertiseData;

    .prologue
    const/4 v7, 0x2

    const/4 v5, 0x0

    .line 400
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseData;->getManufacturerSpecificData()Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 401
    new-array v4, v5, [B

    return-object v4

    .line 403
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseData;->getManufacturerSpecificData()Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 404
    .local v3, "manufacturerId":I
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseData;->getManufacturerSpecificData()Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 406
    .local v2, "manufacturerData":[B
    if-nez v2, :cond_2

    move v4, v5

    :goto_0
    add-int/lit8 v1, v4, 0x2

    .line 407
    .local v1, "dataLen":I
    new-array v0, v1, [B

    .line 409
    .local v0, "concated":[B
    and-int/lit16 v4, v3, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v5

    .line 410
    shr-int/lit8 v4, v3, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    const/4 v6, 0x1

    aput-byte v4, v0, v6

    .line 411
    if-eqz v2, :cond_1

    .line 412
    array-length v4, v2

    invoke-static {v2, v5, v0, v7, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 414
    :cond_1
    return-object v0

    .line 406
    .end local v0    # "concated":[B
    .end local v1    # "dataLen":I
    :cond_2
    array-length v4, v2

    goto :goto_0
.end method

.method private getServiceData(Landroid/bluetooth/le/AdvertiseData;)[B
    .locals 9
    .param p1, "advertiseData"    # Landroid/bluetooth/le/AdvertiseData;

    .prologue
    const/4 v8, 0x2

    const/4 v6, 0x0

    .line 419
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseData;->getServiceData()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 420
    new-array v5, v6, [B

    return-object v5

    .line 422
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseData;->getServiceData()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelUuid;

    .line 423
    .local v3, "uuid":Landroid/os/ParcelUuid;
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseData;->getServiceData()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 424
    .local v2, "serviceData":[B
    if-nez v2, :cond_2

    move v5, v6

    :goto_0
    add-int/lit8 v1, v5, 0x2

    .line 425
    .local v1, "dataLen":I
    new-array v0, v1, [B

    .line 427
    .local v0, "concated":[B
    invoke-static {v3}, Landroid/bluetooth/BluetoothUuid;->getServiceIdentifierFromParcelUuid(Landroid/os/ParcelUuid;)I

    move-result v4

    .line 430
    .local v4, "uuidValue":I
    and-int/lit16 v5, v4, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v6

    .line 431
    shr-int/lit8 v5, v4, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    const/4 v7, 0x1

    aput-byte v5, v0, v7

    .line 432
    if-eqz v2, :cond_1

    .line 433
    array-length v5, v2

    invoke-static {v2, v6, v0, v8, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 435
    :cond_1
    return-object v0

    .line 424
    .end local v0    # "concated":[B
    .end local v1    # "dataLen":I
    .end local v4    # "uuidValue":I
    :cond_2
    array-length v5, v2

    goto :goto_0
.end method

.method private getTxPowerLevel(Landroid/bluetooth/le/AdvertiseSettings;)I
    .locals 2
    .param p1, "settings"    # Landroid/bluetooth/le/AdvertiseSettings;

    .prologue
    const/4 v1, 0x2

    .line 440
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseSettings;->getTxPowerLevel()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 451
    return v1

    .line 442
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 444
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 446
    :pswitch_2
    return v1

    .line 448
    :pswitch_3
    const/4 v0, 0x3

    return v0

    .line 440
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private resetCountDownLatch()V
    .locals 3

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiseNative;->this$0:Lcom/android/bluetooth/gatt/AdvertiseManager;

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    invoke-static {v0, v1}, Lcom/android/bluetooth/gatt/AdvertiseManager;->-set0(Lcom/android/bluetooth/gatt/AdvertiseManager;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;

    .line 326
    return-void
.end method

.method private setAdvertisingData(Lcom/android/bluetooth/gatt/AdvertiseClient;Landroid/bluetooth/le/AdvertiseData;Z)V
    .locals 26
    .param p1, "client"    # Lcom/android/bluetooth/gatt/AdvertiseClient;
    .param p2, "data"    # Landroid/bluetooth/le/AdvertiseData;
    .param p3, "isScanResponse"    # Z

    .prologue
    .line 362
    if-nez p2, :cond_0

    .line 363
    return-void

    .line 365
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/bluetooth/le/AdvertiseData;->getIncludeDeviceName()Z

    move-result v5

    .line 366
    .local v5, "includeName":Z
    invoke-virtual/range {p2 .. p2}, Landroid/bluetooth/le/AdvertiseData;->getIncludeTxPowerLevel()Z

    move-result v6

    .line 367
    .local v6, "includeTxPower":Z
    const/4 v7, 0x0

    .line 368
    .local v7, "appearance":I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiseNative;->getManufacturerData(Landroid/bluetooth/le/AdvertiseData;)[B

    move-result-object v8

    .line 370
    .local v8, "manufacturerData":[B
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiseNative;->getServiceData(Landroid/bluetooth/le/AdvertiseData;)[B

    move-result-object v9

    .line 372
    .local v9, "serviceData":[B
    invoke-virtual/range {p2 .. p2}, Landroid/bluetooth/le/AdvertiseData;->getServiceUuids()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_1

    .line 373
    const/4 v2, 0x0

    new-array v10, v2, [B

    .line 387
    .local v10, "serviceUuids":[B
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiseNative;->this$0:Lcom/android/bluetooth/gatt/AdvertiseManager;

    invoke-static {v2}, Lcom/android/bluetooth/gatt/AdvertiseManager;->-get0(Lcom/android/bluetooth/gatt/AdvertiseManager;)Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/bluetooth/btservice/AdapterService;->isMultiAdvertisementSupported()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 388
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/bluetooth/gatt/AdvertiseClient;->clientIf:I

    move-object/from16 v2, p0

    move/from16 v4, p3

    invoke-direct/range {v2 .. v10}, Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiseNative;->gattClientSetAdvDataNative(IZZZI[B[B[B)V

    .line 361
    :goto_1
    return-void

    .line 376
    .end local v10    # "serviceUuids":[B
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/bluetooth/le/AdvertiseData;->getServiceUuids()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x10

    .line 375
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 377
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 375
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v22

    .line 378
    .local v22, "advertisingUuidBytes":Ljava/nio/ByteBuffer;
    invoke-virtual/range {p2 .. p2}, Landroid/bluetooth/le/AdvertiseData;->getServiceUuids()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .local v24, "parcelUuid$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/os/ParcelUuid;

    .line 379
    .local v23, "parcelUuid":Landroid/os/ParcelUuid;
    invoke-virtual/range {v23 .. v23}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v25

    .line 382
    .local v25, "uuid":Ljava/util/UUID;
    invoke-virtual/range {v25 .. v25}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 383
    invoke-virtual/range {v25 .. v25}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v12

    .line 382
    invoke-virtual {v2, v12, v13}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    goto :goto_2

    .line 385
    .end local v23    # "parcelUuid":Landroid/os/ParcelUuid;
    .end local v25    # "uuid":Ljava/util/UUID;
    :cond_2
    invoke-virtual/range {v22 .. v22}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v10

    .restart local v10    # "serviceUuids":[B
    goto :goto_0

    .line 392
    .end local v22    # "advertisingUuidBytes":Ljava/nio/ByteBuffer;
    .end local v24    # "parcelUuid$iterator":Ljava/util/Iterator;
    :cond_3
    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/bluetooth/gatt/AdvertiseClient;->clientIf:I

    .line 393
    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v11, p0

    move/from16 v13, p3

    move v14, v5

    move v15, v6

    move/from16 v18, v7

    move-object/from16 v19, v8

    move-object/from16 v20, v9

    move-object/from16 v21, v10

    .line 392
    invoke-direct/range {v11 .. v21}, Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiseNative;->gattSetAdvDataNative(IZZZIII[B[B[B)V

    goto :goto_1
.end method

.method private waitForCallback()Z
    .locals 5

    .prologue
    .line 333
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiseNative;->this$0:Lcom/android/bluetooth/gatt/AdvertiseManager;

    invoke-static {v1}, Lcom/android/bluetooth/gatt/AdvertiseManager;->-get3(Lcom/android/bluetooth/gatt/AdvertiseManager;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 334
    :catch_0
    move-exception v0

    .line 335
    .local v0, "e":Ljava/lang/InterruptedException;
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method startAdverising(Lcom/android/bluetooth/gatt/AdvertiseClient;)Z
    .locals 1
    .param p1, "client"    # Lcom/android/bluetooth/gatt/AdvertiseClient;

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiseNative;->this$0:Lcom/android/bluetooth/gatt/AdvertiseManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/AdvertiseManager;->-get0(Lcom/android/bluetooth/gatt/AdvertiseManager;)Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->isMultiAdvertisementSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiseNative;->this$0:Lcom/android/bluetooth/gatt/AdvertiseManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/AdvertiseManager;->-get0(Lcom/android/bluetooth/gatt/AdvertiseManager;)Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->isPeripheralModeSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiseNative;->this$0:Lcom/android/bluetooth/gatt/AdvertiseManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/AdvertiseManager;->-get0(Lcom/android/bluetooth/gatt/AdvertiseManager;)Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->isMultiAdvertisementSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 274
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiseNative;->startMultiAdvertising(Lcom/android/bluetooth/gatt/AdvertiseClient;)Z

    move-result v0

    return v0

    .line 271
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 276
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiseNative;->startSingleAdvertising(Lcom/android/bluetooth/gatt/AdvertiseClient;)Z

    move-result v0

    return v0
.end method

.method startMultiAdvertising(Lcom/android/bluetooth/gatt/AdvertiseClient;)Z
    .locals 4
    .param p1, "client"    # Lcom/android/bluetooth/gatt/AdvertiseClient;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 280
    iget-object v0, p0, Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiseNative;->this$0:Lcom/android/bluetooth/gatt/AdvertiseManager;

    const-string/jumbo v1, "starting multi advertising"

    invoke-static {v0, v1}, Lcom/android/bluetooth/gatt/AdvertiseManager;->-wrap0(Lcom/android/bluetooth/gatt/AdvertiseManager;Ljava/lang/String;)V

    .line 281
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiseNative;->resetCountDownLatch()V

    .line 282
    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiseNative;->enableAdvertising(Lcom/android/bluetooth/gatt/AdvertiseClient;)V

    .line 283
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiseNative;->waitForCallback()Z

    move-result v0

    if-nez v0, :cond_0

    .line 284
    return v2

    .line 286
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiseNative;->resetCountDownLatch()V

    .line 287
    iget-object v0, p1, Lcom/android/bluetooth/gatt/AdvertiseClient;->advertiseData:Landroid/bluetooth/le/AdvertiseData;

    invoke-direct {p0, p1, v0, v2}, Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiseNative;->setAdvertisingData(Lcom/android/bluetooth/gatt/AdvertiseClient;Landroid/bluetooth/le/AdvertiseData;Z)V

    .line 288
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiseNative;->waitForCallback()Z

    move-result v0

    if-nez v0, :cond_1

    .line 289
    return v2

    .line 291
    :cond_1
    iget-object v0, p1, Lcom/android/bluetooth/gatt/AdvertiseClient;->scanResponse:Landroid/bluetooth/le/AdvertiseData;

    if-eqz v0, :cond_2

    .line 292
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiseNative;->resetCountDownLatch()V

    .line 293
    iget-object v0, p1, Lcom/android/bluetooth/gatt/AdvertiseClient;->scanResponse:Landroid/bluetooth/le/AdvertiseData;

    invoke-direct {p0, p1, v0, v3}, Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiseNative;->setAdvertisingData(Lcom/android/bluetooth/gatt/AdvertiseClient;Landroid/bluetooth/le/AdvertiseData;Z)V

    .line 294
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiseNative;->waitForCallback()Z

    move-result v0

    if-nez v0, :cond_2

    .line 295
    return v2

    .line 298
    :cond_2
    return v3
.end method

.method startSingleAdvertising(Lcom/android/bluetooth/gatt/AdvertiseClient;)Z
    .locals 3
    .param p1, "client"    # Lcom/android/bluetooth/gatt/AdvertiseClient;

    .prologue
    const/4 v2, 0x0

    .line 302
    iget-object v0, p0, Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiseNative;->this$0:Lcom/android/bluetooth/gatt/AdvertiseManager;

    const-string/jumbo v1, "starting single advertising"

    invoke-static {v0, v1}, Lcom/android/bluetooth/gatt/AdvertiseManager;->-wrap0(Lcom/android/bluetooth/gatt/AdvertiseManager;Ljava/lang/String;)V

    .line 303
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiseNative;->resetCountDownLatch()V

    .line 304
    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiseNative;->enableAdvertising(Lcom/android/bluetooth/gatt/AdvertiseClient;)V

    .line 305
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiseNative;->waitForCallback()Z

    move-result v0

    if-nez v0, :cond_0

    .line 306
    return v2

    .line 308
    :cond_0
    iget-object v0, p1, Lcom/android/bluetooth/gatt/AdvertiseClient;->advertiseData:Landroid/bluetooth/le/AdvertiseData;

    invoke-direct {p0, p1, v0, v2}, Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiseNative;->setAdvertisingData(Lcom/android/bluetooth/gatt/AdvertiseClient;Landroid/bluetooth/le/AdvertiseData;Z)V

    .line 309
    const/4 v0, 0x1

    return v0
.end method

.method stopAdvertising(Lcom/android/bluetooth/gatt/AdvertiseClient;)V
    .locals 4
    .param p1, "client"    # Lcom/android/bluetooth/gatt/AdvertiseClient;

    .prologue
    const/4 v2, 0x0

    .line 313
    iget-object v1, p0, Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiseNative;->this$0:Lcom/android/bluetooth/gatt/AdvertiseManager;

    invoke-static {v1}, Lcom/android/bluetooth/gatt/AdvertiseManager;->-get0(Lcom/android/bluetooth/gatt/AdvertiseManager;)Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/bluetooth/btservice/AdapterService;->isMultiAdvertisementSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 314
    iget v1, p1, Lcom/android/bluetooth/gatt/AdvertiseClient;->clientIf:I

    invoke-direct {p0, v1}, Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiseNative;->gattClientDisableAdvNative(I)V

    .line 312
    :goto_0
    return-void

    .line 316
    :cond_0
    iget v1, p1, Lcom/android/bluetooth/gatt/AdvertiseClient;->clientIf:I

    invoke-direct {p0, v1, v2}, Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiseNative;->gattAdvertiseNative(IZ)V

    .line 318
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiseNative;->this$0:Lcom/android/bluetooth/gatt/AdvertiseManager;

    invoke-static {v1}, Lcom/android/bluetooth/gatt/AdvertiseManager;->-get4(Lcom/android/bluetooth/gatt/AdvertiseManager;)Lcom/android/bluetooth/gatt/GattService;

    move-result-object v1

    .line 319
    iget v2, p1, Lcom/android/bluetooth/gatt/AdvertiseClient;->clientIf:I

    const/4 v3, 0x0

    .line 318
    invoke-virtual {v1, v3, v2}, Lcom/android/bluetooth/gatt/GattService;->onAdvertiseInstanceDisabled(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 320
    :catch_0
    move-exception v0

    .line 321
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BtGatt.AdvertiseManager"

    const-string/jumbo v2, "failed onAdvertiseInstanceDisabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
