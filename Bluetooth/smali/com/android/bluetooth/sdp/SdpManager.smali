.class public Lcom/android/bluetooth/sdp/SdpManager;
.super Ljava/lang/Object;
.source "SdpManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;,
        Lcom/android/bluetooth/sdp/SdpManager$SdpSearchTracker;,
        Lcom/android/bluetooth/sdp/SdpManager$1;
    }
.end annotation


# static fields
.field private static final D:Z = true

.field private static final MESSAGE_SDP_INTENT:I = 0x2

.field public static final OPP_FORMAT_ALL:[B

.field public static final OPP_FORMAT_ANY_TYPE_OF_OBJ:B = -0x1t

.field public static final OPP_FORMAT_ICAL20:B = 0x4t

.field public static final OPP_FORMAT_VCAL10:B = 0x3t

.field public static final OPP_FORMAT_VCARD21:B = 0x1t

.field public static final OPP_FORMAT_VCARD30:B = 0x2t

.field public static final OPP_FORMAT_VMESSAGE:B = 0x6t

.field public static final OPP_FORMAT_VNOTE:B = 0x5t

.field public static final PBAP_REPO_FAVORITES:B = 0x8t

.field public static final PBAP_REPO_LOCAL:B = 0x1t

.field public static final PBAP_REPO_SIM:B = 0x2t

.field public static final PBAP_REPO_SPEED_DAIL:B = 0x4t

.field private static final SDP_INTENT_DELAY:I = 0x2af8

.field private static final TAG:Ljava/lang/String; = "SdpManager"

.field private static final V:Z

.field static mSearchInProgress:Z

.field static mTrackerLock:Ljava/lang/Object;

.field private static sAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

.field private static sNativeAvailable:Z

.field private static sSdpManager:Lcom/android/bluetooth/sdp/SdpManager;

.field static sSdpSearchTracker:Lcom/android/bluetooth/sdp/SdpManager$SdpSearchTracker;


# instance fields
.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -get0(Lcom/android/bluetooth/sdp/SdpManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/sdp/SdpManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/bluetooth/sdp/SdpManager;Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;Landroid/os/Parcelable;Z)V
    .locals 0
    .param p1, "inst"    # Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;
    .param p2, "record"    # Landroid/os/Parcelable;
    .param p3, "moreResults"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/sdp/SdpManager;->sendSdpIntent(Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;Landroid/os/Parcelable;Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/bluetooth/sdp/SdpManager;->OPP_FORMAT_ALL:[B

    .line 77
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/bluetooth/sdp/SdpManager;->mSearchInProgress:Z

    .line 78
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/bluetooth/sdp/SdpManager;->mTrackerLock:Ljava/lang/Object;

    .line 89
    const/4 v0, 0x0

    sput-object v0, Lcom/android/bluetooth/sdp/SdpManager;->sSdpManager:Lcom/android/bluetooth/sdp/SdpManager;

    .line 92
    invoke-static {}, Lcom/android/bluetooth/sdp/SdpManager;->classInitNative()V

    .line 39
    return-void

    .line 64
    nop

    :array_0
    .array-data 1
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        -0x1t
    .end array-data
.end method

.method private constructor <init>(Lcom/android/bluetooth/btservice/AdapterService;)V
    .locals 1
    .param p1, "adapterService"    # Lcom/android/bluetooth/btservice/AdapterService;

    .prologue
    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 491
    new-instance v0, Lcom/android/bluetooth/sdp/SdpManager$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/sdp/SdpManager$1;-><init>(Lcom/android/bluetooth/sdp/SdpManager;)V

    iput-object v0, p0, Lcom/android/bluetooth/sdp/SdpManager;->mHandler:Landroid/os/Handler;

    .line 220
    new-instance v0, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchTracker;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchTracker;-><init>(Lcom/android/bluetooth/sdp/SdpManager;)V

    sput-object v0, Lcom/android/bluetooth/sdp/SdpManager;->sSdpSearchTracker:Lcom/android/bluetooth/sdp/SdpManager$SdpSearchTracker;

    .line 223
    sput-object p1, Lcom/android/bluetooth/sdp/SdpManager;->sAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    .line 224
    invoke-direct {p0}, Lcom/android/bluetooth/sdp/SdpManager;->initializeNative()V

    .line 225
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/bluetooth/sdp/SdpManager;->sNativeAvailable:Z

    .line 219
    return-void
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupNative()V
.end method

.method public static getDefaultManager()Lcom/android/bluetooth/sdp/SdpManager;
    .locals 1

    .prologue
    .line 235
    sget-object v0, Lcom/android/bluetooth/sdp/SdpManager;->sSdpManager:Lcom/android/bluetooth/sdp/SdpManager;

    return-object v0
.end method

.method public static init(Lcom/android/bluetooth/btservice/AdapterService;)Lcom/android/bluetooth/sdp/SdpManager;
    .locals 1
    .param p0, "adapterService"    # Lcom/android/bluetooth/btservice/AdapterService;

    .prologue
    .line 230
    new-instance v0, Lcom/android/bluetooth/sdp/SdpManager;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/sdp/SdpManager;-><init>(Lcom/android/bluetooth/btservice/AdapterService;)V

    sput-object v0, Lcom/android/bluetooth/sdp/SdpManager;->sSdpManager:Lcom/android/bluetooth/sdp/SdpManager;

    .line 231
    sget-object v0, Lcom/android/bluetooth/sdp/SdpManager;->sSdpManager:Lcom/android/bluetooth/sdp/SdpManager;

    return-object v0
.end method

.method private native initializeNative()V
.end method

.method private native sdpCreateMapMasRecordNative(Ljava/lang/String;IIIIII)I
.end method

.method private native sdpCreateMapMnsRecordNative(Ljava/lang/String;IIII)I
.end method

.method private native sdpCreateOppOpsRecordNative(Ljava/lang/String;III[B)I
.end method

.method private native sdpCreatePbapPceRecordNative(Ljava/lang/String;I)I
.end method

.method private native sdpCreatePbapPseRecordNative(Ljava/lang/String;IIIII)I
.end method

.method private native sdpCreateSapsRecordNative(Ljava/lang/String;II)I
.end method

.method private native sdpRemoveSdpRecordNative(I)Z
.end method

.method private native sdpSearchNative([B[B)Z
.end method

.method private sendSdpIntent(Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;Landroid/os/Parcelable;Z)V
    .locals 3
    .param p1, "inst"    # Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;
    .param p2, "record"    # Landroid/os/Parcelable;
    .param p3, "moreResults"    # Z

    .prologue
    .line 469
    invoke-virtual {p1}, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;->stopSearch()V

    .line 471
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.bluetooth.device.action.SDP_RECORD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 473
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1}, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 474
    const-string/jumbo v1, "android.bluetooth.device.extra.SDP_SEARCH_STATUS"

    invoke-virtual {p1}, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;->getStatus()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 475
    if-eqz p2, :cond_0

    const-string/jumbo v1, "android.bluetooth.device.extra.SDP_RECORD"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 476
    :cond_0
    const-string/jumbo v1, "android.bluetooth.device.extra.UUID"

    invoke-virtual {p1}, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;->getUuid()Landroid/os/ParcelUuid;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 481
    sget-object v1, Lcom/android/bluetooth/sdp/SdpManager;->sAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    const-string/jumbo v2, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v1, v0, v2}, Lcom/android/bluetooth/btservice/AdapterService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 483
    if-nez p3, :cond_1

    .line 485
    sget-object v1, Lcom/android/bluetooth/sdp/SdpManager;->sSdpSearchTracker:Lcom/android/bluetooth/sdp/SdpManager$SdpSearchTracker;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchTracker;->remove(Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;)Z

    .line 486
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/bluetooth/sdp/SdpManager;->mSearchInProgress:Z

    .line 487
    invoke-direct {p0}, Lcom/android/bluetooth/sdp/SdpManager;->startSearch()V

    .line 467
    :cond_1
    return-void
.end method

.method private startSearch()V
    .locals 4

    .prologue
    .line 447
    sget-object v1, Lcom/android/bluetooth/sdp/SdpManager;->sSdpSearchTracker:Lcom/android/bluetooth/sdp/SdpManager$SdpSearchTracker;

    invoke-virtual {v1}, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchTracker;->getNext()Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;

    move-result-object v0

    .line 449
    .local v0, "inst":Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;
    if-eqz v0, :cond_0

    sget-boolean v1, Lcom/android/bluetooth/sdp/SdpManager;->mSearchInProgress:Z

    if-nez v1, :cond_0

    .line 450
    const-string/jumbo v1, "SdpManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Starting search for UUID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;->getUuid()Landroid/os/ParcelUuid;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/bluetooth/sdp/SdpManager;->mSearchInProgress:Z

    .line 453
    invoke-virtual {v0}, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;->startSearch()V

    .line 455
    invoke-virtual {v0}, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/bluetooth/Utils;->getBytesFromAddress(Ljava/lang/String;)[B

    move-result-object v1

    .line 456
    invoke-virtual {v0}, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;->getUuid()Landroid/os/ParcelUuid;

    move-result-object v2

    invoke-static {v2}, Lcom/android/bluetooth/Utils;->uuidToByteArray(Landroid/os/ParcelUuid;)[B

    move-result-object v2

    .line 455
    invoke-direct {p0, v1, v2}, Lcom/android/bluetooth/sdp/SdpManager;->sdpSearchNative([B[B)Z

    .line 445
    :goto_0
    return-void

    .line 459
    :cond_0
    const-string/jumbo v1, "SdpManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startSearch(): nextInst = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 460
    const-string/jumbo v3, " mSearchInProgress = "

    .line 459
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 460
    sget-boolean v3, Lcom/android/bluetooth/sdp/SdpManager;->mSearchInProgress:Z

    .line 459
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 461
    const-string/jumbo v3, " - search busy or queue empty."

    .line 459
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public cleanup()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 239
    sget-object v0, Lcom/android/bluetooth/sdp/SdpManager;->sSdpSearchTracker:Lcom/android/bluetooth/sdp/SdpManager$SdpSearchTracker;

    if-eqz v0, :cond_0

    .line 240
    sget-object v1, Lcom/android/bluetooth/sdp/SdpManager;->mTrackerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 241
    :try_start_0
    sget-object v0, Lcom/android/bluetooth/sdp/SdpManager;->sSdpSearchTracker:Lcom/android/bluetooth/sdp/SdpManager$SdpSearchTracker;

    invoke-virtual {v0}, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchTracker;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 245
    :cond_0
    sget-boolean v0, Lcom/android/bluetooth/sdp/SdpManager;->sNativeAvailable:Z

    if-eqz v0, :cond_1

    .line 246
    invoke-direct {p0}, Lcom/android/bluetooth/sdp/SdpManager;->cleanupNative()V

    .line 247
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/bluetooth/sdp/SdpManager;->sNativeAvailable:Z

    .line 249
    :cond_1
    sput-object v2, Lcom/android/bluetooth/sdp/SdpManager;->sSdpManager:Lcom/android/bluetooth/sdp/SdpManager;

    .line 238
    return-void

    .line 240
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public createMapMasRecord(Ljava/lang/String;IIIIII)I
    .locals 2
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "masId"    # I
    .param p3, "rfcommChannel"    # I
    .param p4, "l2capPsm"    # I
    .param p5, "version"    # I
    .param p6, "msgTypes"    # I
    .param p7, "features"    # I

    .prologue
    .line 532
    sget-boolean v0, Lcom/android/bluetooth/sdp/SdpManager;->sNativeAvailable:Z

    if-nez v0, :cond_0

    .line 533
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "SdpManager sNativeAvailable == false - native not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 535
    :cond_0
    invoke-direct/range {p0 .. p7}, Lcom/android/bluetooth/sdp/SdpManager;->sdpCreateMapMasRecordNative(Ljava/lang/String;IIIIII)I

    move-result v0

    return v0
.end method

.method public createMapMnsRecord(Ljava/lang/String;IIII)I
    .locals 2
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "rfcommChannel"    # I
    .param p3, "l2capPsm"    # I
    .param p4, "version"    # I
    .param p5, "features"    # I

    .prologue
    .line 561
    sget-boolean v0, Lcom/android/bluetooth/sdp/SdpManager;->sNativeAvailable:Z

    if-nez v0, :cond_0

    .line 562
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "SdpManager sNativeAvailable == false - native not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 564
    :cond_0
    invoke-direct/range {p0 .. p5}, Lcom/android/bluetooth/sdp/SdpManager;->sdpCreateMapMnsRecordNative(Ljava/lang/String;IIII)I

    move-result v0

    return v0
.end method

.method public createOppOpsRecord(Ljava/lang/String;III[B)I
    .locals 2
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "rfcommChannel"    # I
    .param p3, "l2capPsm"    # I
    .param p4, "version"    # I
    .param p5, "formatsList"    # [B

    .prologue
    .line 646
    sget-boolean v0, Lcom/android/bluetooth/sdp/SdpManager;->sNativeAvailable:Z

    if-nez v0, :cond_0

    .line 647
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "SdpManager sNativeAvailable == false - native not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 649
    :cond_0
    invoke-direct/range {p0 .. p5}, Lcom/android/bluetooth/sdp/SdpManager;->sdpCreateOppOpsRecordNative(Ljava/lang/String;III[B)I

    move-result v0

    return v0
.end method

.method public createPbapPceRecord(Ljava/lang/String;I)I
    .locals 2
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "version"    # I

    .prologue
    .line 587
    sget-boolean v0, Lcom/android/bluetooth/sdp/SdpManager;->sNativeAvailable:Z

    if-nez v0, :cond_0

    .line 588
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "SdpManager sNativeAvailable == false - native not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 590
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/sdp/SdpManager;->sdpCreatePbapPceRecordNative(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public createPbapPseRecord(Ljava/lang/String;IIIII)I
    .locals 2
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "rfcommChannel"    # I
    .param p3, "l2capPsm"    # I
    .param p4, "version"    # I
    .param p5, "repositories"    # I
    .param p6, "features"    # I

    .prologue
    .line 617
    sget-boolean v0, Lcom/android/bluetooth/sdp/SdpManager;->sNativeAvailable:Z

    if-nez v0, :cond_0

    .line 618
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "SdpManager sNativeAvailable == false - native not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 620
    :cond_0
    invoke-direct/range {p0 .. p6}, Lcom/android/bluetooth/sdp/SdpManager;->sdpCreatePbapPseRecordNative(Ljava/lang/String;IIIII)I

    move-result v0

    return v0
.end method

.method public createSapsRecord(Ljava/lang/String;II)I
    .locals 2
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "rfcommChannel"    # I
    .param p3, "version"    # I

    .prologue
    .line 669
    sget-boolean v0, Lcom/android/bluetooth/sdp/SdpManager;->sNativeAvailable:Z

    if-nez v0, :cond_0

    .line 670
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "SdpManager sNativeAvailable == false - native not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 672
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/sdp/SdpManager;->sdpCreateSapsRecordNative(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public removeSdpRecord(I)Z
    .locals 2
    .param p1, "recordId"    # I

    .prologue
    .line 684
    sget-boolean v0, Lcom/android/bluetooth/sdp/SdpManager;->sNativeAvailable:Z

    if-nez v0, :cond_0

    .line 685
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "SdpManager sNativeAvailable == false - native not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 687
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/bluetooth/sdp/SdpManager;->sdpRemoveSdpRecordNative(I)Z

    move-result v0

    return v0
.end method

.method sdpMasRecordFoundCallback(I[B[BIIIIIILjava/lang/String;Z)V
    .locals 11
    .param p1, "status"    # I
    .param p2, "address"    # [B
    .param p3, "uuid"    # [B
    .param p4, "masInstanceId"    # I
    .param p5, "l2capPsm"    # I
    .param p6, "rfcommCannelNumber"    # I
    .param p7, "profileVersion"    # I
    .param p8, "supportedFeatures"    # I
    .param p9, "supportedMessageTypes"    # I
    .param p10, "serviceName"    # Ljava/lang/String;
    .param p11, "moreResults"    # Z

    .prologue
    .line 263
    sget-object v10, Lcom/android/bluetooth/sdp/SdpManager;->mTrackerLock:Ljava/lang/Object;

    monitor-enter v10

    .line 264
    :try_start_0
    sget-object v2, Lcom/android/bluetooth/sdp/SdpManager;->sSdpSearchTracker:Lcom/android/bluetooth/sdp/SdpManager$SdpSearchTracker;

    invoke-virtual {v2, p2, p3}, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchTracker;->getSearchInstance([B[B)Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;

    move-result-object v9

    .line 265
    .local v9, "inst":Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;
    const/4 v1, 0x0

    .line 266
    .local v1, "sdpRecord":Landroid/bluetooth/SdpMasRecord;
    if-nez v9, :cond_0

    .line 267
    const-string/jumbo v2, "SdpManager"

    const-string/jumbo v3, "sdpRecordFoundCallback: Search instance is NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v10

    .line 268
    return-void

    .line 270
    :cond_0
    :try_start_1
    invoke-virtual {v9, p1}, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;->setStatus(I)V

    .line 271
    if-nez p1, :cond_1

    .line 272
    new-instance v1, Landroid/bluetooth/SdpMasRecord;

    .end local v1    # "sdpRecord":Landroid/bluetooth/SdpMasRecord;
    move v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    move-object/from16 v8, p10

    invoke-direct/range {v1 .. v8}, Landroid/bluetooth/SdpMasRecord;-><init>(IIIIIILjava/lang/String;)V

    .line 280
    :cond_1
    const-string/jumbo v2, "SdpManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "UUID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const-string/jumbo v2, "SdpManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "UUID in parcel: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p3}, Lcom/android/bluetooth/Utils;->byteArrayToUuid([B)[Landroid/os/ParcelUuid;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    move/from16 v0, p11

    invoke-direct {p0, v9, v1, v0}, Lcom/android/bluetooth/sdp/SdpManager;->sendSdpIntent(Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;Landroid/os/Parcelable;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v10

    .line 261
    return-void

    .line 263
    .end local v9    # "inst":Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;
    :catchall_0
    move-exception v2

    monitor-exit v10

    throw v2
.end method

.method sdpMnsRecordFoundCallback(I[B[BIIIILjava/lang/String;Z)V
    .locals 9
    .param p1, "status"    # I
    .param p2, "address"    # [B
    .param p3, "uuid"    # [B
    .param p4, "l2capPsm"    # I
    .param p5, "rfcommCannelNumber"    # I
    .param p6, "profileVersion"    # I
    .param p7, "supportedFeatures"    # I
    .param p8, "serviceName"    # Ljava/lang/String;
    .param p9, "moreResults"    # Z

    .prologue
    .line 293
    sget-object v8, Lcom/android/bluetooth/sdp/SdpManager;->mTrackerLock:Ljava/lang/Object;

    monitor-enter v8

    .line 295
    :try_start_0
    sget-object v2, Lcom/android/bluetooth/sdp/SdpManager;->sSdpSearchTracker:Lcom/android/bluetooth/sdp/SdpManager$SdpSearchTracker;

    invoke-virtual {v2, p2, p3}, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchTracker;->getSearchInstance([B[B)Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;

    move-result-object v7

    .line 296
    .local v7, "inst":Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;
    const/4 v1, 0x0

    .line 297
    .local v1, "sdpRecord":Landroid/bluetooth/SdpMnsRecord;
    if-nez v7, :cond_0

    .line 298
    const-string/jumbo v2, "SdpManager"

    const-string/jumbo v3, "sdpRecordFoundCallback: Search instance is NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v8

    .line 299
    return-void

    .line 301
    :cond_0
    :try_start_1
    invoke-virtual {v7, p1}, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;->setStatus(I)V

    .line 302
    if-nez p1, :cond_1

    .line 303
    new-instance v1, Landroid/bluetooth/SdpMnsRecord;

    .end local v1    # "sdpRecord":Landroid/bluetooth/SdpMnsRecord;
    move v2, p4

    move v3, p5

    move v4, p6

    move/from16 v5, p7

    move-object/from16 v6, p8

    invoke-direct/range {v1 .. v6}, Landroid/bluetooth/SdpMnsRecord;-><init>(IIIILjava/lang/String;)V

    .line 309
    :cond_1
    const-string/jumbo v2, "SdpManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "UUID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    const-string/jumbo v2, "SdpManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "UUID in parcel: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p3}, Lcom/android/bluetooth/Utils;->byteArrayToUuid([B)[Landroid/os/ParcelUuid;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    move/from16 v0, p9

    invoke-direct {p0, v7, v1, v0}, Lcom/android/bluetooth/sdp/SdpManager;->sendSdpIntent(Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;Landroid/os/Parcelable;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v8

    .line 292
    return-void

    .line 293
    .end local v7    # "inst":Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;
    :catchall_0
    move-exception v2

    monitor-exit v8

    throw v2
.end method

.method sdpOppOpsRecordFoundCallback(I[B[BIIILjava/lang/String;[BZ)V
    .locals 9
    .param p1, "status"    # I
    .param p2, "address"    # [B
    .param p3, "uuid"    # [B
    .param p4, "l2capPsm"    # I
    .param p5, "rfcommCannelNumber"    # I
    .param p6, "profileVersion"    # I
    .param p7, "serviceName"    # Ljava/lang/String;
    .param p8, "formatsList"    # [B
    .param p9, "moreResults"    # Z

    .prologue
    .line 353
    sget-object v8, Lcom/android/bluetooth/sdp/SdpManager;->mTrackerLock:Ljava/lang/Object;

    monitor-enter v8

    .line 354
    :try_start_0
    sget-object v2, Lcom/android/bluetooth/sdp/SdpManager;->sSdpSearchTracker:Lcom/android/bluetooth/sdp/SdpManager$SdpSearchTracker;

    invoke-virtual {v2, p2, p3}, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchTracker;->getSearchInstance([B[B)Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;

    move-result-object v7

    .line 355
    .local v7, "inst":Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;
    const/4 v1, 0x0

    .line 357
    .local v1, "sdpRecord":Landroid/bluetooth/SdpOppOpsRecord;
    if-nez v7, :cond_0

    .line 358
    const-string/jumbo v2, "SdpManager"

    const-string/jumbo v3, "sdpOppOpsRecordFoundCallback: Search instance is NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v8

    .line 359
    return-void

    .line 361
    :cond_0
    :try_start_1
    invoke-virtual {v7, p1}, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;->setStatus(I)V

    .line 362
    if-nez p1, :cond_1

    .line 363
    new-instance v1, Landroid/bluetooth/SdpOppOpsRecord;

    .end local v1    # "sdpRecord":Landroid/bluetooth/SdpOppOpsRecord;
    move-object/from16 v2, p7

    move v3, p5

    move v4, p4

    move v5, p6

    move-object/from16 v6, p8

    invoke-direct/range {v1 .. v6}, Landroid/bluetooth/SdpOppOpsRecord;-><init>(Ljava/lang/String;III[B)V

    .line 369
    :cond_1
    const-string/jumbo v2, "SdpManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "UUID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    const-string/jumbo v2, "SdpManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "UUID in parcel: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p3}, Lcom/android/bluetooth/Utils;->byteArrayToUuid([B)[Landroid/os/ParcelUuid;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    move/from16 v0, p9

    invoke-direct {p0, v7, v1, v0}, Lcom/android/bluetooth/sdp/SdpManager;->sendSdpIntent(Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;Landroid/os/Parcelable;Z)V

    .line 372
    invoke-virtual {v7}, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/OolConnManager;->saveOppSdpRecord(Landroid/bluetooth/SdpOppOpsRecord;Landroid/bluetooth/BluetoothDevice;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v8

    .line 351
    return-void

    .line 353
    .end local v7    # "inst":Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;
    :catchall_0
    move-exception v2

    monitor-exit v8

    throw v2
.end method

.method sdpPseRecordFoundCallback(I[B[BIIIIILjava/lang/String;Z)V
    .locals 10
    .param p1, "status"    # I
    .param p2, "address"    # [B
    .param p3, "uuid"    # [B
    .param p4, "l2capPsm"    # I
    .param p5, "rfcommCannelNumber"    # I
    .param p6, "profileVersion"    # I
    .param p7, "supportedFeatures"    # I
    .param p8, "supportedRepositories"    # I
    .param p9, "serviceName"    # Ljava/lang/String;
    .param p10, "moreResults"    # Z

    .prologue
    .line 323
    sget-object v9, Lcom/android/bluetooth/sdp/SdpManager;->mTrackerLock:Ljava/lang/Object;

    monitor-enter v9

    .line 324
    :try_start_0
    sget-object v2, Lcom/android/bluetooth/sdp/SdpManager;->sSdpSearchTracker:Lcom/android/bluetooth/sdp/SdpManager$SdpSearchTracker;

    invoke-virtual {v2, p2, p3}, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchTracker;->getSearchInstance([B[B)Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;

    move-result-object v8

    .line 325
    .local v8, "inst":Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;
    const/4 v1, 0x0

    .line 326
    .local v1, "sdpRecord":Landroid/bluetooth/SdpPseRecord;
    if-nez v8, :cond_0

    .line 327
    const-string/jumbo v2, "SdpManager"

    const-string/jumbo v3, "sdpRecordFoundCallback: Search instance is NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v9

    .line 328
    return-void

    .line 330
    :cond_0
    :try_start_1
    invoke-virtual {v8, p1}, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;->setStatus(I)V

    .line 331
    if-nez p1, :cond_1

    .line 332
    new-instance v1, Landroid/bluetooth/SdpPseRecord;

    .end local v1    # "sdpRecord":Landroid/bluetooth/SdpPseRecord;
    move v2, p4

    move v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move-object/from16 v7, p9

    invoke-direct/range {v1 .. v7}, Landroid/bluetooth/SdpPseRecord;-><init>(IIIIILjava/lang/String;)V

    .line 339
    :cond_1
    const-string/jumbo v2, "SdpManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "UUID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    const-string/jumbo v2, "SdpManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "UUID in parcel: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p3}, Lcom/android/bluetooth/Utils;->byteArrayToUuid([B)[Landroid/os/ParcelUuid;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    move/from16 v0, p10

    invoke-direct {p0, v8, v1, v0}, Lcom/android/bluetooth/sdp/SdpManager;->sendSdpIntent(Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;Landroid/os/Parcelable;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v9

    .line 322
    return-void

    .line 323
    .end local v8    # "inst":Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;
    :catchall_0
    move-exception v2

    monitor-exit v9

    throw v2
.end method

.method sdpRecordFoundCallback(I[B[BI[B)V
    .locals 7
    .param p1, "status"    # I
    .param p2, "address"    # [B
    .param p3, "uuid"    # [B
    .param p4, "size_record"    # I
    .param p5, "record"    # [B

    .prologue
    .line 404
    sget-object v3, Lcom/android/bluetooth/sdp/SdpManager;->mTrackerLock:Ljava/lang/Object;

    monitor-enter v3

    .line 406
    :try_start_0
    sget-object v2, Lcom/android/bluetooth/sdp/SdpManager;->sSdpSearchTracker:Lcom/android/bluetooth/sdp/SdpManager$SdpSearchTracker;

    invoke-virtual {v2, p2, p3}, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchTracker;->getSearchInstance([B[B)Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;

    move-result-object v0

    .line 407
    .local v0, "inst":Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;
    const/4 v1, 0x0

    .line 408
    .local v1, "sdpRecord":Landroid/bluetooth/SdpRecord;
    if-nez v0, :cond_0

    .line 409
    const-string/jumbo v2, "SdpManager"

    const-string/jumbo v4, "sdpRecordFoundCallback: Search instance is NULL"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 410
    return-void

    .line 412
    :cond_0
    :try_start_1
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;->setStatus(I)V

    .line 413
    if-nez p1, :cond_1

    .line 414
    const-string/jumbo v2, "SdpManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sdpRecordFoundCallback: found a sdp record of size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    const-string/jumbo v2, "SdpManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Record:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p5}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    new-instance v1, Landroid/bluetooth/SdpRecord;

    .end local v1    # "sdpRecord":Landroid/bluetooth/SdpRecord;
    invoke-direct {v1, p4, p5}, Landroid/bluetooth/SdpRecord;-><init>(I[B)V

    .line 419
    :cond_1
    const-string/jumbo v2, "SdpManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "UUID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    const-string/jumbo v2, "SdpManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "UUID in parcel: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p3}, Lcom/android/bluetooth/Utils;->byteArrayToUuid([B)[Landroid/os/ParcelUuid;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/bluetooth/sdp/SdpManager;->sendSdpIntent(Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;Landroid/os/Parcelable;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    .line 403
    return-void

    .line 404
    .end local v0    # "inst":Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method sdpSapsRecordFoundCallback(I[B[BIILjava/lang/String;Z)V
    .locals 7
    .param p1, "status"    # I
    .param p2, "address"    # [B
    .param p3, "uuid"    # [B
    .param p4, "rfcommCannelNumber"    # I
    .param p5, "profileVersion"    # I
    .param p6, "serviceName"    # Ljava/lang/String;
    .param p7, "moreResults"    # Z

    .prologue
    .line 382
    sget-object v3, Lcom/android/bluetooth/sdp/SdpManager;->mTrackerLock:Ljava/lang/Object;

    monitor-enter v3

    .line 383
    :try_start_0
    sget-object v2, Lcom/android/bluetooth/sdp/SdpManager;->sSdpSearchTracker:Lcom/android/bluetooth/sdp/SdpManager$SdpSearchTracker;

    invoke-virtual {v2, p2, p3}, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchTracker;->getSearchInstance([B[B)Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;

    move-result-object v0

    .line 384
    .local v0, "inst":Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;
    const/4 v1, 0x0

    .line 385
    .local v1, "sdpRecord":Landroid/bluetooth/SdpSapsRecord;
    if-nez v0, :cond_0

    .line 386
    const-string/jumbo v2, "SdpManager"

    const-string/jumbo v4, "sdpSapsRecordFoundCallback: Search instance is NULL"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 387
    return-void

    .line 389
    :cond_0
    :try_start_1
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;->setStatus(I)V

    .line 390
    if-nez p1, :cond_1

    .line 391
    new-instance v1, Landroid/bluetooth/SdpSapsRecord;

    .end local v1    # "sdpRecord":Landroid/bluetooth/SdpSapsRecord;
    invoke-direct {v1, p4, p5, p6}, Landroid/bluetooth/SdpSapsRecord;-><init>(IILjava/lang/String;)V

    .line 395
    :cond_1
    const-string/jumbo v2, "SdpManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "UUID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    const-string/jumbo v2, "SdpManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "UUID in parcel: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p3}, Lcom/android/bluetooth/Utils;->byteArrayToUuid([B)[Landroid/os/ParcelUuid;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    invoke-direct {p0, v0, v1, p7}, Lcom/android/bluetooth/sdp/SdpManager;->sendSdpIntent(Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;Landroid/os/Parcelable;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    .line 380
    return-void

    .line 382
    .end local v0    # "inst":Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public sdpSearch(Landroid/bluetooth/BluetoothDevice;Landroid/os/ParcelUuid;)V
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "uuid"    # Landroid/os/ParcelUuid;

    .prologue
    .line 426
    sget-boolean v1, Lcom/android/bluetooth/sdp/SdpManager;->sNativeAvailable:Z

    if-nez v1, :cond_0

    .line 427
    const-string/jumbo v1, "SdpManager"

    const-string/jumbo v2, "Native not initialized!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    return-void

    .line 430
    :cond_0
    sget-object v2, Lcom/android/bluetooth/sdp/SdpManager;->mTrackerLock:Ljava/lang/Object;

    monitor-enter v2

    .line 431
    :try_start_0
    sget-object v1, Lcom/android/bluetooth/sdp/SdpManager;->sSdpSearchTracker:Lcom/android/bluetooth/sdp/SdpManager$SdpSearchTracker;

    invoke-virtual {v1, p1, p2}, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchTracker;->isSearching(Landroid/bluetooth/BluetoothDevice;Landroid/os/ParcelUuid;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    monitor-exit v2

    .line 433
    return-void

    .line 436
    :cond_1
    :try_start_1
    new-instance v0, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;-><init>(Lcom/android/bluetooth/sdp/SdpManager;ILandroid/bluetooth/BluetoothDevice;Landroid/os/ParcelUuid;)V

    .line 437
    .local v0, "inst":Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;
    sget-object v1, Lcom/android/bluetooth/sdp/SdpManager;->sSdpSearchTracker:Lcom/android/bluetooth/sdp/SdpManager$SdpSearchTracker;

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchTracker;->add(Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;)Z

    .line 439
    invoke-direct {p0}, Lcom/android/bluetooth/sdp/SdpManager;->startSearch()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 425
    return-void

    .line 430
    .end local v0    # "inst":Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
