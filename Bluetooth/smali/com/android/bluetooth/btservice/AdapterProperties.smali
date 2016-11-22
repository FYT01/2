.class Lcom/android/bluetooth/btservice/AdapterProperties;
.super Ljava/lang/Object;
.source "AdapterProperties.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/btservice/AdapterProperties$DeviceState;
    }
.end annotation


# static fields
.field private static final BD_ADDR_LEN:I = 0x6

.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "BluetoothAdapterProperties"

.field private static final VDBG:Z


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mAddress:[B

.field private mBluetoothClass:I

.field private mBluetoothDisabling:Z

.field private mBondedDevices:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectedDeviceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/bluetooth/btservice/AdapterProperties$DeviceState;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectionState:I

.field private mDiscoverableTimeout:I

.field private mDiscovering:Z

.field private mIsActivityAndEnergyReporting:Z

.field private mIsDebugLogSupported:Z

.field private mIsExtendedScanSupported:Z

.field private mName:Ljava/lang/String;

.field private mNumOfAdvertisementInstancesSupported:I

.field private mNumOfOffloadedIrkSupported:I

.field private mNumOfOffloadedScanFilterSupported:I

.field private mObject:Ljava/lang/Object;

.field private mOffloadedScanResultStorageBytes:I

.field private mProfileConnectionState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mProfilesConnected:I

.field private mProfilesConnecting:I

.field private mProfilesDisconnecting:I

.field private mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

.field private mRpaOffloadSupported:Z

.field private mScanMode:I

.field private mService:Lcom/android/bluetooth/btservice/AdapterService;

.field private mState:I

.field private mTotNumOfTrackableAdv:I

.field private mUuids:[Landroid/os/ParcelUuid;

.field private mVersSupported:I


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/btservice/AdapterService;)V
    .locals 2
    .param p1, "service"    # Lcom/android/bluetooth/btservice/AdapterService;

    .prologue
    const/4 v1, 0x0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mBondedDevices:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 54
    iput v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mConnectionState:I

    .line 55
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mState:I

    .line 76
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mObject:Ljava/lang/Object;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 102
    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mConnectedDeviceList:Ljava/util/ArrayList;

    .line 680
    iput-boolean v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mBluetoothDisabling:Z

    .line 106
    iput-object p1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    .line 107
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 105
    return-void
.end method

.method private convertToAdapterState(I)I
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 441
    packed-switch p1, :pswitch_data_0

    .line 451
    const-string/jumbo v0, "BluetoothAdapterProperties"

    const-string/jumbo v1, "Error in convertToAdapterState"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    const/4 v0, -0x1

    return v0

    .line 443
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 445
    :pswitch_1
    const/4 v0, 0x3

    return v0

    .line 447
    :pswitch_2
    const/4 v0, 0x2

    return v0

    .line 449
    :pswitch_3
    const/4 v0, 0x1

    return v0

    .line 441
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private debugLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 729
    const-string/jumbo v0, "BluetoothAdapterProperties"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    return-void
.end method

.method private errorLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 733
    const-string/jumbo v0, "BluetoothAdapterProperties"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    return-void
.end method

.method private infoLog(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 724
    return-void
.end method

.method private updateCountersAndCheckForConnectionStateChange(II)Z
    .locals 5
    .param p1, "state"    # I
    .param p2, "prevState"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 456
    packed-switch p2, :pswitch_data_0

    .line 479
    :goto_0
    packed-switch p1, :pswitch_data_1

    .line 496
    return v0

    .line 458
    :pswitch_0
    iget v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesConnecting:I

    if-lez v2, :cond_0

    .line 459
    iget v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesConnecting:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesConnecting:I

    goto :goto_0

    .line 461
    :cond_0
    const-string/jumbo v2, "BluetoothAdapterProperties"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mProfilesConnecting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesConnecting:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 465
    :pswitch_1
    iget v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesConnected:I

    if-lez v2, :cond_1

    .line 466
    iget v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesConnected:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesConnected:I

    goto :goto_0

    .line 468
    :cond_1
    const-string/jumbo v2, "BluetoothAdapterProperties"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mProfilesConnected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesConnected:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 472
    :pswitch_2
    iget v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesDisconnecting:I

    if-lez v2, :cond_2

    .line 473
    iget v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesDisconnecting:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesDisconnecting:I

    goto :goto_0

    .line 475
    :cond_2
    const-string/jumbo v2, "BluetoothAdapterProperties"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mProfilesDisconnecting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesDisconnecting:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 481
    :pswitch_3
    iget v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesConnecting:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesConnecting:I

    .line 482
    iget v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesConnected:I

    if-nez v2, :cond_3

    iget v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesConnecting:I

    if-ne v2, v0, :cond_3

    :goto_1
    return v0

    :cond_3
    move v0, v1

    goto :goto_1

    .line 485
    :pswitch_4
    iget v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesConnected:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesConnected:I

    .line 486
    iget v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesConnected:I

    if-ne v2, v0, :cond_4

    :goto_2
    return v0

    :cond_4
    move v0, v1

    goto :goto_2

    .line 489
    :pswitch_5
    iget v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesDisconnecting:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesDisconnecting:I

    .line 490
    iget v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesConnected:I

    if-nez v2, :cond_5

    iget v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesDisconnecting:I

    if-ne v2, v0, :cond_5

    move v1, v0

    :cond_5
    return v1

    .line 493
    :pswitch_6
    iget v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesConnected:I

    if-nez v2, :cond_6

    iget v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesConnecting:I

    if-nez v2, :cond_6

    move v1, v0

    :cond_6
    return v1

    .line 456
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 479
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private updateProfileConnectionState(III)V
    .locals 10
    .param p1, "profile"    # I
    .param p2, "newState"    # I
    .param p3, "oldState"    # I

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 506
    const/4 v2, 0x1

    .line 507
    .local v2, "numDev":I
    move v1, p2

    .line 508
    .local v1, "newHashState":I
    const/4 v4, 0x1

    .line 520
    .local v4, "update":Z
    iget-object v5, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfileConnectionState:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 521
    .local v3, "stateNumDev":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v3, :cond_0

    .line 522
    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 523
    .local v0, "currHashState":I
    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 525
    if-ne p2, v0, :cond_2

    .line 526
    add-int/lit8 v2, v2, 0x1

    .line 545
    .end local v0    # "currHashState":I
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    .line 546
    iget-object v5, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfileConnectionState:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 547
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 546
    invoke-direct {v7, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    :cond_1
    return-void

    .line 527
    .restart local v0    # "currHashState":I
    :cond_2
    if-eq p2, v8, :cond_3

    .line 528
    if-ne p2, v7, :cond_4

    .line 529
    if-eq v0, v8, :cond_4

    .line 530
    :cond_3
    const/4 v2, 0x1

    .line 529
    goto :goto_0

    .line 531
    :cond_4
    if-ne v2, v7, :cond_5

    if-ne p3, v0, :cond_5

    .line 532
    const/4 v4, 0x1

    .line 531
    goto :goto_0

    .line 533
    :cond_5
    if-le v2, v7, :cond_7

    if-ne p3, v0, :cond_7

    .line 534
    add-int/lit8 v2, v2, -0x1

    .line 536
    if-eq v0, v8, :cond_6

    .line 537
    if-ne v0, v7, :cond_0

    .line 538
    :cond_6
    move v1, v0

    goto :goto_0

    .line 541
    :cond_7
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private validateProfileConnectionState(I)Z
    .locals 3
    .param p1, "state"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 433
    if-eqz p1, :cond_0

    .line 434
    if-ne p1, v0, :cond_1

    .line 433
    :cond_0
    :goto_0
    return v0

    .line 435
    :cond_1
    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    .line 436
    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method adapterPropertyChangedCallback([I[[B)V
    .locals 12
    .param p1, "types"    # [I
    .param p2, "values"    # [[B

    .prologue
    .line 555
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v8, p1

    if-ge v1, v8, :cond_1

    .line 556
    aget-object v7, p2, v1

    .line 557
    .local v7, "val":[B
    aget v6, p1, v1

    .line 558
    .local v6, "type":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "adapterPropertyChangedCallback with type:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " len:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v7

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/bluetooth/btservice/AdapterProperties;->infoLog(Ljava/lang/String;)V

    .line 559
    iget-object v9, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mObject:Ljava/lang/Object;

    monitor-enter v9

    .line 560
    packed-switch v6, :pswitch_data_0

    .line 614
    :pswitch_0
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Property change not handled in Java land:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/bluetooth/btservice/AdapterProperties;->errorLog(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_1
    monitor-exit v9

    .line 555
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 562
    :pswitch_1
    :try_start_1
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v7}, Ljava/lang/String;-><init>([B)V

    iput-object v8, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mName:Ljava/lang/String;

    .line 563
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v8, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 564
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v8, "android.bluetooth.adapter.extra.LOCAL_NAME"

    iget-object v10, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mName:Ljava/lang/String;

    invoke-virtual {v2, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 565
    const/high16 v8, 0x4000000

    invoke-virtual {v2, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 566
    iget-object v8, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 567
    const-string/jumbo v11, "android.permission.BLUETOOTH"

    .line 566
    invoke-virtual {v8, v2, v10, v11}, Lcom/android/bluetooth/btservice/AdapterService;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 568
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Name is: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mName:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/bluetooth/btservice/AdapterProperties;->debugLog(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 559
    .end local v2    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8

    .line 571
    :pswitch_2
    :try_start_2
    iput-object v7, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mAddress:[B

    .line 572
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Address is:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mAddress:[B

    invoke-static {v10}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/bluetooth/btservice/AdapterProperties;->debugLog(Ljava/lang/String;)V

    goto :goto_1

    .line 575
    :pswitch_3
    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/android/bluetooth/Utils;->byteArrayToInt([BI)I

    move-result v8

    iput v8, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mBluetoothClass:I

    .line 576
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "BT Class:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mBluetoothClass:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/bluetooth/btservice/AdapterProperties;->debugLog(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 579
    :pswitch_4
    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/android/bluetooth/Utils;->byteArrayToInt([BI)I

    move-result v4

    .line 580
    .local v4, "mode":I
    iget-object v8, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-static {v4}, Lcom/android/bluetooth/btservice/AdapterService;->convertScanModeFromHal(I)I

    move-result v8

    iput v8, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mScanMode:I

    .line 581
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v8, "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 582
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string/jumbo v8, "android.bluetooth.adapter.extra.SCAN_MODE"

    iget v10, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mScanMode:I

    invoke-virtual {v2, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 583
    const/high16 v8, 0x4000000

    invoke-virtual {v2, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 584
    iget-object v8, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    const-string/jumbo v10, "android.permission.BLUETOOTH"

    invoke-virtual {v8, v2, v10}, Lcom/android/bluetooth/btservice/AdapterService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 585
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Scan Mode:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mScanMode:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/bluetooth/btservice/AdapterProperties;->debugLog(Ljava/lang/String;)V

    .line 586
    iget-boolean v8, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mBluetoothDisabling:Z

    if-eqz v8, :cond_0

    .line 587
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mBluetoothDisabling:Z

    .line 588
    iget-object v8, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v8}, Lcom/android/bluetooth/btservice/AdapterService;->startBluetoothDisable()V

    goto/16 :goto_1

    .line 592
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "mode":I
    :pswitch_5
    invoke-static {v7}, Lcom/android/bluetooth/Utils;->byteArrayToUuid([B)[Landroid/os/ParcelUuid;

    move-result-object v8

    iput-object v8, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mUuids:[Landroid/os/ParcelUuid;

    goto/16 :goto_1

    .line 595
    :pswitch_6
    array-length v8, v7

    div-int/lit8 v5, v8, 0x6

    .line 596
    .local v5, "number":I
    const/4 v8, 0x6

    new-array v0, v8, [B

    .line 597
    .local v0, "addrByte":[B
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    if-ge v3, v5, :cond_0

    .line 598
    mul-int/lit8 v8, v3, 0x6

    const/4 v10, 0x0

    const/4 v11, 0x6

    invoke-static {v7, v8, v0, v10, v11}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 599
    iget-object v8, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 600
    invoke-static {v0}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v10

    .line 599
    invoke-virtual {v8, v10}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v8

    .line 601
    const/16 v10, 0xc

    .line 599
    invoke-virtual {p0, v8, v10}, Lcom/android/bluetooth/btservice/AdapterProperties;->onBondStateChanged(Landroid/bluetooth/BluetoothDevice;I)V

    .line 597
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 605
    .end local v0    # "addrByte":[B
    .end local v3    # "j":I
    .end local v5    # "number":I
    :pswitch_7
    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/android/bluetooth/Utils;->byteArrayToInt([BI)I

    move-result v8

    iput v8, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mDiscoverableTimeout:I

    .line 606
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Discoverable Timeout:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mDiscoverableTimeout:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/bluetooth/btservice/AdapterProperties;->debugLog(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 610
    :pswitch_8
    invoke-virtual {p0, v7}, Lcom/android/bluetooth/btservice/AdapterProperties;->updateFeatureSupport([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 551
    .end local v6    # "type":I
    .end local v7    # "val":[B
    :cond_1
    return-void

    .line 560
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method public cleanup()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 119
    iput-object v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    .line 120
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfileConnectionState:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfileConnectionState:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 122
    iput-object v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfileConnectionState:Ljava/util/HashMap;

    .line 124
    :cond_0
    iput-object v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    .line 125
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mBondedDevices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mBondedDevices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 118
    :cond_1
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
    .line 131
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v0
.end method

.method discoveryStateChangeCallback(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    const/4 v3, 0x1

    .line 709
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Callback:discoveryStateChangeCallback with state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/bluetooth/btservice/AdapterProperties;->infoLog(Ljava/lang/String;)V

    .line 710
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mObject:Ljava/lang/Object;

    monitor-enter v2

    .line 712
    if-nez p1, :cond_1

    :try_start_0
    iget-boolean v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mDiscovering:Z

    if-eqz v1, :cond_1

    .line 713
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mDiscovering:Z

    .line 714
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 715
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    const-string/jumbo v3, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v3}, Lcom/android/bluetooth/btservice/AdapterService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    monitor-exit v2

    .line 708
    return-void

    .line 716
    :cond_1
    if-ne p1, v3, :cond_0

    .line 717
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mDiscovering:Z

    .line 718
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 719
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    const-string/jumbo v3, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v3}, Lcom/android/bluetooth/btservice/AdapterService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 710
    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method getAddress()[B
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mObject:Ljava/lang/Object;

    monitor-enter v0

    .line 210
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mAddress:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 209
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method getBluetoothClass()I
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mObject:Ljava/lang/Object;

    monitor-enter v0

    .line 159
    :try_start_0
    iget v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mBluetoothClass:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 158
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method getBondedDevices()[Landroid/bluetooth/BluetoothDevice;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 304
    new-array v1, v3, [Landroid/bluetooth/BluetoothDevice;

    .line 305
    .local v1, "bondedDeviceList":[Landroid/bluetooth/BluetoothDevice;
    iget-object v4, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mObject:Ljava/lang/Object;

    monitor-enter v4

    .line 306
    :try_start_0
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mBondedDevices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 307
    const/4 v3, 0x0

    new-array v3, v3, [Landroid/bluetooth/BluetoothDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    return-object v3

    .line 310
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mBondedDevices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, [Landroid/bluetooth/BluetoothDevice;

    move-object v1, v0

    .line 311
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getBondedDevices: length="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v5, v1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/bluetooth/btservice/AdapterProperties;->infoLog(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ArrayStoreException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    .line 312
    return-object v1

    .line 313
    :catch_0
    move-exception v2

    .line 314
    .local v2, "ee":Ljava/lang/ArrayStoreException;
    :try_start_2
    const-string/jumbo v3, "Error retrieving bonded device array"

    invoke-direct {p0, v3}, Lcom/android/bluetooth/btservice/AdapterProperties;->errorLog(Ljava/lang/String;)V

    .line 315
    const/4 v3, 0x0

    new-array v3, v3, [Landroid/bluetooth/BluetoothDevice;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return-object v3

    .line 305
    .end local v2    # "ee":Ljava/lang/ArrayStoreException;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method getConnectionState()I
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mObject:Ljava/lang/Object;

    monitor-enter v0

    .line 228
    :try_start_0
    iget v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mConnectionState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 227
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method getDiscoverableTimeout()I
    .locals 2

    .prologue
    .line 352
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mObject:Ljava/lang/Object;

    monitor-enter v0

    .line 353
    :try_start_0
    iget v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mDiscoverableTimeout:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 352
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mObject:Ljava/lang/Object;

    monitor-enter v0

    .line 139
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 138
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method getNumOfAdvertisementInstancesSupported()I
    .locals 1

    .prologue
    .line 255
    iget v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mNumOfAdvertisementInstancesSupported:I

    return v0
.end method

.method getNumOfOffloadedIrkSupported()I
    .locals 1

    .prologue
    .line 269
    iget v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mNumOfOffloadedIrkSupported:I

    return v0
.end method

.method getNumOfOffloadedScanFilterSupported()I
    .locals 1

    .prologue
    .line 276
    iget v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mNumOfOffloadedScanFilterSupported:I

    return v0
.end method

.method getOffloadedScanResultStorage()I
    .locals 1

    .prologue
    .line 283
    iget v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mOffloadedScanResultStorageBytes:I

    return v0
.end method

.method getProfileConnectionState(I)I
    .locals 4
    .param p1, "profile"    # I

    .prologue
    .line 366
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mObject:Ljava/lang/Object;

    monitor-enter v2

    .line 367
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfileConnectionState:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 368
    .local v0, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v2

    return v1

    .line 369
    :cond_0
    const/4 v1, 0x0

    monitor-exit v2

    return v1

    .line 366
    .end local v0    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method getScanMode()I
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mObject:Ljava/lang/Object;

    monitor-enter v0

    .line 168
    :try_start_0
    iget v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mScanMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 167
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method getState()I
    .locals 1

    .prologue
    .line 248
    iget v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mState:I

    return v0
.end method

.method getTotalNumOfTrackableAdvertisements()I
    .locals 1

    .prologue
    .line 297
    iget v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mTotNumOfTrackableAdv:I

    return v0
.end method

.method getUuids()[Landroid/os/ParcelUuid;
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mObject:Ljava/lang/Object;

    monitor-enter v0

    .line 189
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mUuids:[Landroid/os/ParcelUuid;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 188
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public init(Lcom/android/bluetooth/btservice/RemoteDevices;)V
    .locals 1
    .param p1, "remoteDevices"    # Lcom/android/bluetooth/btservice/RemoteDevices;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfileConnectionState:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfileConnectionState:Ljava/util/HashMap;

    .line 115
    :goto_0
    iput-object p1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    .line 109
    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfileConnectionState:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto :goto_0
.end method

.method isActivityAndEnergyReportingSupported()Z
    .locals 1

    .prologue
    .line 290
    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mIsActivityAndEnergyReporting:Z

    return v0
.end method

.method isDiscovering()Z
    .locals 2

    .prologue
    .line 374
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mObject:Ljava/lang/Object;

    monitor-enter v0

    .line 375
    :try_start_0
    iget-boolean v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mDiscovering:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 374
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method isRpaOffloadSupported()Z
    .locals 1

    .prologue
    .line 262
    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mRpaOffloadSupported:Z

    return v0
.end method

.method onBleDisable()V
    .locals 2

    .prologue
    .line 686
    const-string/jumbo v0, "onBleDisable"

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->debugLog(Ljava/lang/String;)V

    .line 687
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterProperties;->getState()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 688
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->setScanMode(I)Z

    .line 682
    :cond_0
    return-void
.end method

.method onBluetoothDisable()V
    .locals 2

    .prologue
    .line 699
    const-string/jumbo v0, "onBluetoothDisable()"

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->debugLog(Ljava/lang/String;)V

    .line 700
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mBluetoothDisabling:Z

    .line 701
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterProperties;->getState()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 703
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->cancelDiscovery()Z

    .line 704
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->setScanMode(I)Z

    .line 692
    :cond_0
    return-void
.end method

.method onBluetoothReady()V
    .locals 3

    .prologue
    .line 659
    const-string/jumbo v0, "BluetoothAdapterProperties"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ScanMode =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mScanMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    const-string/jumbo v0, "BluetoothAdapterProperties"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "State =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterProperties;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mObject:Ljava/lang/Object;

    monitor-enter v1

    .line 665
    :try_start_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterProperties;->getState()I

    move-result v0

    const/16 v2, 0xb

    if-ne v0, v2, :cond_0

    .line 666
    iget v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mScanMode:I

    const/16 v2, 0x14

    if-ne v0, v2, :cond_0

    .line 670
    iget v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mDiscoverableTimeout:I

    if-eqz v0, :cond_1

    .line 671
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->setScanMode(I)Z

    .line 675
    :goto_0
    iget v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mDiscoverableTimeout:I

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->setDiscoverableTimeout(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 658
    return-void

    .line 673
    :cond_1
    const/4 v0, 0x2

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->setScanMode(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 664
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method onBondStateChanged(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I

    .prologue
    .line 323
    if-nez p1, :cond_0

    .line 324
    return-void

    .line 326
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v0

    .line 327
    .local v0, "addrByte":[B
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v3, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object v2

    .line 328
    .local v2, "prop":Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;
    if-nez v2, :cond_1

    .line 329
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v3, v0}, Lcom/android/bluetooth/btservice/RemoteDevices;->addDeviceProperties([B)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object v2

    .line 330
    :cond_1
    invoke-virtual {v2, p2}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->setBondState(I)V

    .line 332
    const/16 v3, 0xc

    if-ne p2, v3, :cond_3

    .line 334
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mBondedDevices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 335
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Adding bonded device:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/bluetooth/btservice/AdapterProperties;->debugLog(Ljava/lang/String;)V

    .line 336
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mBondedDevices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    .end local v0    # "addrByte":[B
    .end local v2    # "prop":Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;
    :cond_2
    :goto_0
    return-void

    .line 338
    .restart local v0    # "addrByte":[B
    .restart local v2    # "prop":Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;
    :cond_3
    const/16 v3, 0xa

    if-ne p2, v3, :cond_2

    .line 340
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mBondedDevices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 341
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Removing bonded device:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/bluetooth/btservice/AdapterProperties;->debugLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 346
    .end local v0    # "addrByte":[B
    .end local v2    # "prop":Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;
    :catch_0
    move-exception v1

    .line 347
    .local v1, "ee":Ljava/lang/Exception;
    const-string/jumbo v3, "BluetoothAdapterProperties"

    const-string/jumbo v4, "Exception in onBondStateChanged : "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 343
    .end local v1    # "ee":Ljava/lang/Exception;
    .restart local v0    # "addrByte":[B
    .restart local v2    # "prop":Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;
    :cond_4
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to remove device: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/bluetooth/btservice/AdapterProperties;->debugLog(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method sendConnectionStateChange(Landroid/bluetooth/BluetoothDevice;III)V
    .locals 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "profile"    # I
    .param p3, "state"    # I
    .param p4, "prevState"    # I

    .prologue
    const/4 v3, 0x2

    .line 382
    if-ne p3, v3, :cond_3

    .line 383
    new-instance v2, Lcom/android/bluetooth/btservice/AdapterProperties$DeviceState;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/android/bluetooth/btservice/AdapterProperties$DeviceState;-><init>(Lcom/android/bluetooth/btservice/AdapterProperties;Landroid/bluetooth/BluetoothDevice;II)V

    .line 384
    .local v2, "newDevice":Lcom/android/bluetooth/btservice/AdapterProperties$DeviceState;
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mConnectedDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 385
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mConnectedDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    const-string/jumbo v3, "BluetoothAdapterProperties"

    const-string/jumbo v4, "device is added to list"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    .end local v2    # "newDevice":Lcom/android/bluetooth/btservice/AdapterProperties$DeviceState;
    :cond_0
    :goto_0
    invoke-direct {p0, p3}, Lcom/android/bluetooth/btservice/AdapterProperties;->validateProfileConnectionState(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 401
    invoke-direct {p0, p4}, Lcom/android/bluetooth/btservice/AdapterProperties;->validateProfileConnectionState(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 411
    iget-object v4, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mObject:Ljava/lang/Object;

    monitor-enter v4

    .line 412
    :try_start_0
    invoke-direct {p0, p2, p3, p4}, Lcom/android/bluetooth/btservice/AdapterProperties;->updateProfileConnectionState(III)V

    .line 414
    invoke-direct {p0, p3, p4}, Lcom/android/bluetooth/btservice/AdapterProperties;->updateCountersAndCheckForConnectionStateChange(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 415
    invoke-virtual {p0, p3}, Lcom/android/bluetooth/btservice/AdapterProperties;->setConnectionState(I)V

    .line 417
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 418
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 419
    const-string/jumbo v3, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    .line 420
    invoke-direct {p0, p3}, Lcom/android/bluetooth/btservice/AdapterProperties;->convertToAdapterState(I)I

    move-result v5

    .line 419
    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 421
    const-string/jumbo v3, "android.bluetooth.adapter.extra.PREVIOUS_CONNECTION_STATE"

    .line 422
    invoke-direct {p0, p4}, Lcom/android/bluetooth/btservice/AdapterProperties;->convertToAdapterState(I)I

    move-result v5

    .line 421
    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 423
    const/high16 v3, 0x4000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 424
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 425
    const-string/jumbo v6, "android.permission.BLUETOOTH"

    .line 424
    invoke-virtual {v3, v1, v5, v6}, Lcom/android/bluetooth/btservice/AdapterService;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 426
    const-string/jumbo v3, "BluetoothAdapterProperties"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "CONNECTION_STATE_CHANGE: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 427
    const-string/jumbo v6, " -> "

    .line 426
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    monitor-exit v4

    .line 379
    return-void

    .line 388
    .restart local v2    # "newDevice":Lcom/android/bluetooth/btservice/AdapterProperties$DeviceState;
    :cond_2
    const-string/jumbo v3, "BluetoothAdapterProperties"

    const-string/jumbo v4, "Fake broadcast for device, ignore"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    return-void

    .line 391
    .end local v2    # "newDevice":Lcom/android/bluetooth/btservice/AdapterProperties$DeviceState;
    :cond_3
    if-nez p3, :cond_0

    .line 392
    new-instance v0, Lcom/android/bluetooth/btservice/AdapterProperties$DeviceState;

    invoke-direct {v0, p0, p1, p2, v3}, Lcom/android/bluetooth/btservice/AdapterProperties$DeviceState;-><init>(Lcom/android/bluetooth/btservice/AdapterProperties;Landroid/bluetooth/BluetoothDevice;II)V

    .line 394
    .local v0, "deviceState":Lcom/android/bluetooth/btservice/AdapterProperties$DeviceState;
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mConnectedDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 395
    const-string/jumbo v3, "BluetoothAdapterProperties"

    const-string/jumbo v4, "device is removed from list"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mConnectedDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 406
    .end local v0    # "deviceState":Lcom/android/bluetooth/btservice/AdapterProperties$DeviceState;
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error in sendConnectionStateChange: prevState "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 407
    const-string/jumbo v4, " state "

    .line 406
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/bluetooth/btservice/AdapterProperties;->errorLog(Ljava/lang/String;)V

    .line 408
    return-void

    .line 411
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method setConnectionState(I)V
    .locals 2
    .param p1, "mConnectionState"    # I

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mObject:Ljava/lang/Object;

    monitor-enter v0

    .line 219
    :try_start_0
    iput p1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mConnectionState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 217
    return-void

    .line 218
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method setDiscoverableTimeout(I)Z
    .locals 4
    .param p1, "timeout"    # I

    .prologue
    .line 358
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mObject:Ljava/lang/Object;

    monitor-enter v1

    .line 359
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    .line 361
    invoke-static {p1}, Lcom/android/bluetooth/Utils;->intToByteArray(I)[B

    move-result-object v2

    .line 360
    const/16 v3, 0x9

    .line 359
    invoke-virtual {v0, v3, v2}, Lcom/android/bluetooth/btservice/AdapterService;->setAdapterPropertyNative(I[B)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 358
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method setName(Ljava/lang/String;)Z
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 148
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mObject:Ljava/lang/Object;

    monitor-enter v1

    .line 149
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    .line 150
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x1

    .line 149
    invoke-virtual {v0, v3, v2}, Lcom/android/bluetooth/btservice/AdapterService;->setAdapterPropertyNative(I[B)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 148
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method setScanMode(I)Z
    .locals 4
    .param p1, "scanMode"    # I

    .prologue
    .line 178
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mObject:Ljava/lang/Object;

    monitor-enter v1

    .line 179
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    .line 180
    invoke-static {p1}, Lcom/android/bluetooth/Utils;->intToByteArray(I)[B

    move-result-object v2

    const/4 v3, 0x7

    .line 179
    invoke-virtual {v0, v3, v2}, Lcom/android/bluetooth/btservice/AdapterService;->setAdapterPropertyNative(I[B)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 178
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method setState(I)V
    .locals 3
    .param p1, "mState"    # I

    .prologue
    .line 236
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mObject:Ljava/lang/Object;

    monitor-enter v1

    .line 237
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Setting state to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->debugLog(Ljava/lang/String;)V

    .line 238
    iput p1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 235
    return-void

    .line 236
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method setUuids([Landroid/os/ParcelUuid;)Z
    .locals 4
    .param p1, "uuids"    # [Landroid/os/ParcelUuid;

    .prologue
    .line 199
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mObject:Ljava/lang/Object;

    monitor-enter v1

    .line 200
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    .line 201
    invoke-static {p1}, Lcom/android/bluetooth/Utils;->uuidsToByteArray([Landroid/os/ParcelUuid;)[B

    move-result-object v2

    const/4 v3, 0x3

    .line 200
    invoke-virtual {v0, v3, v2}, Lcom/android/bluetooth/btservice/AdapterService;->setAdapterPropertyNative(I[B)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 199
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method updateFeatureSupport([B)V
    .locals 4
    .param p1, "val"    # [B

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 621
    aget-byte v0, p1, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    .line 622
    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    .line 621
    add-int/2addr v0, v3

    iput v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mVersSupported:I

    .line 623
    const/4 v0, 0x3

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mNumOfAdvertisementInstancesSupported:I

    .line 624
    const/4 v0, 0x4

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mRpaOffloadSupported:Z

    .line 625
    const/4 v0, 0x5

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mNumOfOffloadedIrkSupported:I

    .line 626
    const/4 v0, 0x6

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mNumOfOffloadedScanFilterSupported:I

    .line 627
    const/4 v0, 0x7

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mIsActivityAndEnergyReporting:Z

    .line 628
    const/16 v0, 0x9

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    .line 629
    const/16 v3, 0x8

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    .line 628
    add-int/2addr v0, v3

    iput v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mOffloadedScanResultStorageBytes:I

    .line 630
    const/16 v0, 0xb

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    .line 631
    const/16 v3, 0xa

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    .line 630
    add-int/2addr v0, v3

    iput v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mTotNumOfTrackableAdv:I

    .line 632
    const/16 v0, 0xc

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mIsExtendedScanSupported:Z

    .line 633
    const/16 v0, 0xd

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_3

    :goto_3
    iput-boolean v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mIsDebugLogSupported:Z

    .line 635
    const-string/jumbo v0, "BluetoothAdapterProperties"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "BT_PROPERTY_LOCAL_LE_FEATURES: update from BT controller mNumOfAdvertisementInstancesSupported = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 637
    iget v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mNumOfAdvertisementInstancesSupported:I

    .line 635
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 638
    const-string/jumbo v2, " mRpaOffloadSupported = "

    .line 635
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 638
    iget-boolean v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mRpaOffloadSupported:Z

    .line 635
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 639
    const-string/jumbo v2, " mNumOfOffloadedIrkSupported = "

    .line 635
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 640
    iget v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mNumOfOffloadedIrkSupported:I

    .line 635
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 641
    const-string/jumbo v2, " mNumOfOffloadedScanFilterSupported = "

    .line 635
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 642
    iget v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mNumOfOffloadedScanFilterSupported:I

    .line 635
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 643
    const-string/jumbo v2, " mOffloadedScanResultStorageBytes= "

    .line 635
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 644
    iget v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mOffloadedScanResultStorageBytes:I

    .line 635
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 645
    const-string/jumbo v2, " mIsActivityAndEnergyReporting = "

    .line 635
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 646
    iget-boolean v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mIsActivityAndEnergyReporting:Z

    .line 635
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 647
    const-string/jumbo v2, " mVersSupported = "

    .line 635
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 648
    iget v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mVersSupported:I

    .line 635
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 649
    const-string/jumbo v2, " mTotNumOfTrackableAdv = "

    .line 635
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 650
    iget v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mTotNumOfTrackableAdv:I

    .line 635
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 651
    const-string/jumbo v2, " mIsExtendedScanSupported = "

    .line 635
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 652
    iget-boolean v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mIsExtendedScanSupported:Z

    .line 635
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 653
    const-string/jumbo v2, " mIsDebugLogSupported = "

    .line 635
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 654
    iget-boolean v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mIsDebugLogSupported:Z

    .line 635
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    return-void

    :cond_0
    move v0, v2

    .line 624
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 627
    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 632
    goto/16 :goto_2

    :cond_3
    move v1, v2

    .line 633
    goto/16 :goto_3
.end method
