.class public Lcom/android/bluetooth/gatt/GattService;
.super Lcom/android/bluetooth/btservice/ProfileService;
.source "GattService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/gatt/GattService$ClientMap;,
        Lcom/android/bluetooth/gatt/GattService$ServerMap;,
        Lcom/android/bluetooth/gatt/GattService$ClientDeathRecipient;,
        Lcom/android/bluetooth/gatt/GattService$ServerDeathRecipient;,
        Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;
    }
.end annotation


# static fields
.field private static final ADVT_STATE_ONFOUND:I = 0x0

.field private static final ADVT_STATE_ONLOST:I = 0x1

.field private static final DBG:Z = true

.field private static final HID_UUIDS:[Ljava/util/UUID;

.field private static final MAC_ADDRESS_LENGTH:I = 0x6

.field static final SCAN_FILTER_ENABLED:I = 0x1

.field static final SCAN_FILTER_MODIFIED:I = 0x2

.field private static final TAG:Ljava/lang/String; = "BtGatt.GattService"

.field private static final TIME_STAMP_LENGTH:I = 0x2

.field private static final TRUNCATED_RESULT_SIZE:I = 0xb

.field private static final VDBG:Z


# instance fields
.field private mAdvertiseManager:Lcom/android/bluetooth/gatt/AdvertiseManager;

.field private mAdvertisingServiceUuids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation
.end field

.field private mAppOps:Landroid/app/AppOpsManager;

.field mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

.field mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

.field private mMaxScanFilters:I

.field private mReliableQueue:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mScanManager:Lcom/android/bluetooth/gatt/ScanManager;

.field mSearchQueue:Lcom/android/bluetooth/gatt/SearchQueue;

.field mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

.field private mServiceDeclarations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/bluetooth/gatt/ServiceDeclaration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/bluetooth/gatt/GattService;)Lcom/android/bluetooth/gatt/ScanManager;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mScanManager:Lcom/android/bluetooth/gatt/ScanManager;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/bluetooth/gatt/GattService;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/bluetooth/gatt/GattService;->isAvailable()Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 87
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/util/UUID;

    .line 88
    const-string/jumbo v1, "00002A4A-0000-1000-8000-00805F9B34FB"

    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 89
    const-string/jumbo v1, "00002A4B-0000-1000-8000-00805F9B34FB"

    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 90
    const-string/jumbo v1, "00002A4C-0000-1000-8000-00805F9B34FB"

    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 91
    const-string/jumbo v1, "00002A4D-0000-1000-8000-00805F9B34FB"

    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 87
    sput-object v0, Lcom/android/bluetooth/gatt/GattService;->HID_UUIDS:[Ljava/util/UUID;

    .line 165
    const-string/jumbo v0, "/system/lib/libbluetooth_jni.so"

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 166
    const-string/jumbo v0, "BtGatt.GattService"

    const-string/jumbo v1, "classInitNative called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-static {}, Lcom/android/bluetooth/gatt/GattService;->classInitNative()V

    .line 70
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/ProfileService;-><init>()V

    .line 97
    new-instance v0, Lcom/android/bluetooth/gatt/SearchQueue;

    invoke-direct {v0}, Lcom/android/bluetooth/gatt/SearchQueue;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mSearchQueue:Lcom/android/bluetooth/gatt/SearchQueue;

    .line 104
    new-instance v0, Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/gatt/GattService$ClientMap;-><init>(Lcom/android/bluetooth/gatt/GattService;)V

    iput-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    .line 110
    new-instance v0, Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/gatt/GattService$ServerMap;-><init>(Lcom/android/bluetooth/gatt/GattService;)V

    iput-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    .line 115
    new-instance v0, Lcom/android/bluetooth/gatt/HandleMap;

    invoke-direct {v0}, Lcom/android/bluetooth/gatt/HandleMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mAdvertisingServiceUuids:Ljava/util/List;

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mServiceDeclarations:Ljava/util/List;

    .line 162
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mReliableQueue:Ljava/util/Set;

    .line 70
    return-void
.end method

.method private addDeclaration()Lcom/android/bluetooth/gatt/ServiceDeclaration;
    .locals 3

    .prologue
    .line 126
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mServiceDeclarations:Ljava/util/List;

    monitor-enter v1

    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mServiceDeclarations:Ljava/util/List;

    new-instance v2, Lcom/android/bluetooth/gatt/ServiceDeclaration;

    invoke-direct {v2}, Lcom/android/bluetooth/gatt/ServiceDeclaration;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 129
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->getActiveDeclaration()Lcom/android/bluetooth/gatt/ServiceDeclaration;

    move-result-object v0

    return-object v0

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupNative()V
.end method

.method private continueSearch(II)V
    .locals 22
    .param p1, "connId"    # I
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2174
    if-nez p2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/gatt/GattService;->mSearchQueue:Lcom/android/bluetooth/gatt/SearchQueue;

    invoke-virtual {v2}, Lcom/android/bluetooth/gatt/SearchQueue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2188
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getByConnId(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v20

    .line 2189
    .local v20, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattCallback;>.App;"
    if-eqz v20, :cond_1

    .line 2190
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/IBluetoothGattCallback;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->addressByConnId(I)Ljava/lang/String;

    move-result-object v3

    move/from16 v0, p2

    invoke-interface {v2, v3, v0}, Landroid/bluetooth/IBluetoothGattCallback;->onSearchComplete(Ljava/lang/String;I)V

    .line 2173
    .end local v20    # "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattCallback;>.App;"
    :cond_1
    :goto_0
    return-void

    .line 2175
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/gatt/GattService;->mSearchQueue:Lcom/android/bluetooth/gatt/SearchQueue;

    invoke-virtual {v2}, Lcom/android/bluetooth/gatt/SearchQueue;->pop()Lcom/android/bluetooth/gatt/SearchQueue$Entry;

    move-result-object v21

    .line 2177
    .local v21, "svc":Lcom/android/bluetooth/gatt/SearchQueue$Entry;
    move-object/from16 v0, v21

    iget-wide v2, v0, Lcom/android/bluetooth/gatt/SearchQueue$Entry;->charUuidLsb:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 2179
    move-object/from16 v0, v21

    iget v3, v0, Lcom/android/bluetooth/gatt/SearchQueue$Entry;->connId:I

    move-object/from16 v0, v21

    iget v4, v0, Lcom/android/bluetooth/gatt/SearchQueue$Entry;->srvcType:I

    .line 2180
    move-object/from16 v0, v21

    iget v5, v0, Lcom/android/bluetooth/gatt/SearchQueue$Entry;->srvcInstId:I

    move-object/from16 v0, v21

    iget-wide v6, v0, Lcom/android/bluetooth/gatt/SearchQueue$Entry;->srvcUuidLsb:J

    move-object/from16 v0, v21

    iget-wide v8, v0, Lcom/android/bluetooth/gatt/SearchQueue$Entry;->srvcUuidMsb:J

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const/4 v10, 0x0

    move-object/from16 v2, p0

    .line 2179
    invoke-direct/range {v2 .. v14}, Lcom/android/bluetooth/gatt/GattService;->gattClientGetCharacteristicNative(IIIJJIJJ)V

    goto :goto_0

    .line 2183
    :cond_3
    move-object/from16 v0, v21

    iget v3, v0, Lcom/android/bluetooth/gatt/SearchQueue$Entry;->connId:I

    move-object/from16 v0, v21

    iget v4, v0, Lcom/android/bluetooth/gatt/SearchQueue$Entry;->srvcType:I

    .line 2184
    move-object/from16 v0, v21

    iget v5, v0, Lcom/android/bluetooth/gatt/SearchQueue$Entry;->srvcInstId:I

    move-object/from16 v0, v21

    iget-wide v6, v0, Lcom/android/bluetooth/gatt/SearchQueue$Entry;->srvcUuidLsb:J

    move-object/from16 v0, v21

    iget-wide v8, v0, Lcom/android/bluetooth/gatt/SearchQueue$Entry;->srvcUuidMsb:J

    .line 2185
    move-object/from16 v0, v21

    iget v10, v0, Lcom/android/bluetooth/gatt/SearchQueue$Entry;->charInstId:I

    move-object/from16 v0, v21

    iget-wide v11, v0, Lcom/android/bluetooth/gatt/SearchQueue$Entry;->charUuidLsb:J

    move-object/from16 v0, v21

    iget-wide v13, v0, Lcom/android/bluetooth/gatt/SearchQueue$Entry;->charUuidMsb:J

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const/4 v15, 0x0

    move-object/from16 v2, p0

    .line 2183
    invoke-direct/range {v2 .. v19}, Lcom/android/bluetooth/gatt/GattService;->gattClientGetDescriptorNative(IIIJJIJJIJJ)V

    goto :goto_0
.end method

.method private continueServiceDeclaration(III)V
    .locals 19
    .param p1, "serverIf"    # I
    .param p2, "status"    # I
    .param p3, "srvcHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2196
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/gatt/GattService;->mServiceDeclarations:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_0

    return-void

    .line 2197
    :cond_0
    const-string/jumbo v4, "BtGatt.GattService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "continueServiceDeclaration() - srvcHandle="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2199
    const/16 v16, 0x0

    .line 2201
    .local v16, "finished":Z
    const/4 v15, 0x0

    .line 2202
    .local v15, "entry":Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;
    if-nez p2, :cond_1

    .line 2203
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/gatt/GattService;->getPendingDeclaration()Lcom/android/bluetooth/gatt/ServiceDeclaration;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/bluetooth/gatt/ServiceDeclaration;->getNext()Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;

    move-result-object v15

    .line 2205
    .end local v15    # "entry":Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;
    :cond_1
    if-eqz v15, :cond_6

    .line 2206
    const-string/jumbo v4, "BtGatt.GattService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "continueServiceDeclaration() - next entry type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2207
    iget-byte v6, v15, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->type:B

    .line 2206
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2208
    iget-byte v4, v15, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->type:B

    packed-switch v4, :pswitch_data_0

    .line 2253
    :goto_0
    if-eqz v16, :cond_3

    .line 2254
    const-string/jumbo v4, "BtGatt.GattService"

    const-string/jumbo v5, "continueServiceDeclaration() - completed."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2255
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->getById(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v14

    .line 2256
    .local v14, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattServerCallback;>.App;"
    if-eqz v14, :cond_2

    .line 2257
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Lcom/android/bluetooth/gatt/HandleMap;->getByHandle(I)Lcom/android/bluetooth/gatt/HandleMap$Entry;

    move-result-object v18

    .line 2259
    .local v18, "serviceEntry":Lcom/android/bluetooth/gatt/HandleMap$Entry;
    if-eqz v18, :cond_7

    .line 2260
    iget-object v4, v14, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v4, Landroid/bluetooth/IBluetoothGattServerCallback;

    move-object/from16 v0, v18

    iget v5, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serviceType:I

    .line 2261
    move-object/from16 v0, v18

    iget v6, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->instance:I

    new-instance v7, Landroid/os/ParcelUuid;

    move-object/from16 v0, v18

    iget-object v8, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->uuid:Ljava/util/UUID;

    invoke-direct {v7, v8}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    .line 2260
    move/from16 v0, p2

    invoke-interface {v4, v0, v5, v6, v7}, Landroid/bluetooth/IBluetoothGattServerCallback;->onServiceAdded(IIILandroid/os/ParcelUuid;)V

    .line 2266
    .end local v18    # "serviceEntry":Lcom/android/bluetooth/gatt/HandleMap$Entry;
    :cond_2
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/gatt/GattService;->removePendingDeclaration()V

    .line 2268
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/gatt/GattService;->getPendingDeclaration()Lcom/android/bluetooth/gatt/ServiceDeclaration;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 2269
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v4, v5}, Lcom/android/bluetooth/gatt/GattService;->continueServiceDeclaration(III)V

    .line 2195
    .end local v14    # "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattServerCallback;>.App;"
    :cond_3
    return-void

    .line 2210
    :pswitch_0
    iget-boolean v4, v15, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->advertisePreferred:Z

    if-eqz v4, :cond_4

    .line 2211
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/gatt/GattService;->mAdvertisingServiceUuids:Ljava/util/List;

    iget-object v5, v15, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->uuid:Ljava/util/UUID;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2213
    :cond_4
    iget v6, v15, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->serviceType:I

    .line 2214
    iget v7, v15, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->instance:I

    .line 2215
    iget-object v4, v15, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->uuid:Ljava/util/UUID;

    invoke-virtual {v4}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v8

    .line 2216
    iget-object v4, v15, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->uuid:Ljava/util/UUID;

    invoke-virtual {v4}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v10

    .line 2217
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/gatt/GattService;->getPendingDeclaration()Lcom/android/bluetooth/gatt/ServiceDeclaration;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/bluetooth/gatt/ServiceDeclaration;->getNumHandles()I

    move-result v12

    move-object/from16 v4, p0

    move/from16 v5, p1

    .line 2213
    invoke-direct/range {v4 .. v12}, Lcom/android/bluetooth/gatt/GattService;->gattServerAddServiceNative(IIIJJI)V

    goto :goto_0

    .line 2222
    :pswitch_1
    iget-object v4, v15, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->uuid:Ljava/util/UUID;

    invoke-virtual {v4}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v8

    .line 2223
    iget-object v4, v15, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->uuid:Ljava/util/UUID;

    invoke-virtual {v4}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v10

    .line 2224
    iget v12, v15, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->properties:I

    iget v13, v15, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->permissions:I

    move-object/from16 v5, p0

    move/from16 v6, p1

    move/from16 v7, p3

    .line 2221
    invoke-direct/range {v5 .. v13}, Lcom/android/bluetooth/gatt/GattService;->gattServerAddCharacteristicNative(IIJJII)V

    goto/16 :goto_0

    .line 2229
    :pswitch_2
    iget-object v4, v15, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->uuid:Ljava/util/UUID;

    invoke-virtual {v4}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v8

    .line 2230
    iget-object v4, v15, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->uuid:Ljava/util/UUID;

    invoke-virtual {v4}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v10

    .line 2231
    iget v12, v15, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->permissions:I

    move-object/from16 v5, p0

    move/from16 v6, p1

    move/from16 v7, p3

    .line 2228
    invoke-direct/range {v5 .. v12}, Lcom/android/bluetooth/gatt/GattService;->gattServerAddDescriptorNative(IIJJI)V

    goto/16 :goto_0

    .line 2236
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    iget-object v5, v15, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->uuid:Ljava/util/UUID;

    .line 2237
    iget v6, v15, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->serviceType:I

    iget v7, v15, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->instance:I

    .line 2236
    invoke-virtual {v4, v5, v6, v7}, Lcom/android/bluetooth/gatt/HandleMap;->getServiceHandle(Ljava/util/UUID;II)I

    move-result v17

    .line 2238
    .local v17, "inclSrvc":I
    if-eqz v17, :cond_5

    .line 2239
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/bluetooth/gatt/GattService;->gattServerAddIncludedServiceNative(III)V

    goto/16 :goto_0

    .line 2242
    :cond_5
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 2249
    .end local v17    # "inclSrvc":I
    :cond_6
    const/4 v4, 0x3

    .line 2248
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    invoke-direct {v0, v1, v2, v4}, Lcom/android/bluetooth/gatt/GattService;->gattServerStartServiceNative(III)V

    .line 2250
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 2263
    .restart local v14    # "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattServerCallback;>.App;"
    .restart local v18    # "serviceEntry":Lcom/android/bluetooth/gatt/HandleMap$Entry;
    :cond_7
    iget-object v4, v14, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v4, Landroid/bluetooth/IBluetoothGattServerCallback;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move/from16 v0, p2

    invoke-interface {v4, v0, v5, v6, v7}, Landroid/bluetooth/IBluetoothGattServerCallback;->onServiceAdded(IIILandroid/os/ParcelUuid;)V

    goto/16 :goto_1

    .line 2208
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private deleteServices(I)V
    .locals 9
    .param p1, "serverIf"    # I

    .prologue
    .line 2293
    const-string/jumbo v6, "BtGatt.GattService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "deleteServices() - serverIf="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2299
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2300
    .local v5, "handleList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v6, p0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    invoke-virtual {v6}, Lcom/android/bluetooth/gatt/HandleMap;->getEntries()Ljava/util/List;

    move-result-object v0

    .line 2301
    .local v0, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/android/bluetooth/gatt/HandleMap$Entry;>;"
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "entry$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/gatt/HandleMap$Entry;

    .line 2302
    .local v1, "entry":Lcom/android/bluetooth/gatt/HandleMap$Entry;
    iget v6, v1, Lcom/android/bluetooth/gatt/HandleMap$Entry;->type:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 2303
    iget v6, v1, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serverIf:I

    if-ne v6, p1, :cond_0

    .line 2305
    iget v6, v1, Lcom/android/bluetooth/gatt/HandleMap$Entry;->handle:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2309
    .end local v1    # "entry":Lcom/android/bluetooth/gatt/HandleMap$Entry;
    :cond_1
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "handle$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 2310
    .local v3, "handle":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {p0, p1, v6}, Lcom/android/bluetooth/gatt/GattService;->gattServerDeleteServiceNative(II)V

    goto :goto_1

    .line 2292
    .end local v3    # "handle":Ljava/lang/Integer;
    :cond_2
    return-void
.end method

.method private deliverBatchScan(Lcom/android/bluetooth/gatt/ScanClient;Ljava/util/Set;)V
    .locals 6
    .param p1, "client"    # Lcom/android/bluetooth/gatt/ScanClient;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/bluetooth/gatt/ScanClient;",
            "Ljava/util/Set",
            "<",
            "Landroid/bluetooth/le/ScanResult;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1084
    .local p2, "allResults":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/le/ScanResult;>;"
    iget-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    iget v5, p1, Lcom/android/bluetooth/gatt/ScanClient;->clientIf:I

    invoke-virtual {v4, v5}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getById(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v0

    .line 1085
    .local v0, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattCallback;>.App;"
    if-nez v0, :cond_0

    return-void

    .line 1086
    :cond_0
    iget-object v4, p1, Lcom/android/bluetooth/gatt/ScanClient;->filters:Ljava/util/List;

    if-eqz v4, :cond_1

    iget-object v4, p1, Lcom/android/bluetooth/gatt/ScanClient;->filters:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1087
    :cond_1
    iget-object v4, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v4, Landroid/bluetooth/IBluetoothGattCallback;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v4, v5}, Landroid/bluetooth/IBluetoothGattCallback;->onBatchScanResults(Ljava/util/List;)V

    .line 1090
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1091
    .local v1, "results":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanResult;>;"
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "scanResult$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/le/ScanResult;

    .line 1092
    .local v2, "scanResult":Landroid/bluetooth/le/ScanResult;
    invoke-direct {p0, p1, v2}, Lcom/android/bluetooth/gatt/GattService;->matchesFilters(Lcom/android/bluetooth/gatt/ScanClient;Landroid/bluetooth/le/ScanResult;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1093
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1096
    .end local v2    # "scanResult":Landroid/bluetooth/le/ScanResult;
    :cond_4
    iget-object v4, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v4, Landroid/bluetooth/IBluetoothGattCallback;

    invoke-interface {v4, v1}, Landroid/bluetooth/IBluetoothGattCallback;->onBatchScanResults(Ljava/util/List;)V

    .line 1083
    return-void
.end method

.method private enforceAdminPermission()V
    .locals 2

    .prologue
    .line 2148
    const-string/jumbo v0, "android.permission.BLUETOOTH_ADMIN"

    const-string/jumbo v1, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2147
    return-void
.end method

.method private enforcePrivilegedPermission()V
    .locals 2

    .prologue
    .line 2169
    const-string/jumbo v0, "android.permission.BLUETOOTH_PRIVILEGED"

    .line 2170
    const-string/jumbo v1, "Need BLUETOOTH_PRIVILEGED permission"

    .line 2169
    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2168
    return-void
.end method

.method private static extractBytes([BII)[B
    .locals 2
    .param p0, "scanRecord"    # [B
    .param p1, "start"    # I
    .param p2, "length"    # I

    .prologue
    .line 1186
    new-array v0, p2, [B

    .line 1187
    .local v0, "bytes":[B
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1188
    return-object v0
.end method

.method private native gattClientConfigureMTUNative(II)V
.end method

.method private native gattClientConnectNative(ILjava/lang/String;ZI)V
.end method

.method private native gattClientDisconnectNative(ILjava/lang/String;I)V
.end method

.method private native gattClientExecuteWriteNative(IZ)V
.end method

.method private native gattClientGetCharacteristicNative(IIIJJIJJ)V
.end method

.method private native gattClientGetDescriptorNative(IIIJJIJJIJJ)V
.end method

.method private native gattClientGetDeviceTypeNative(Ljava/lang/String;)I
.end method

.method private native gattClientGetIncludedServiceNative(IIIJJIIJJ)V
.end method

.method private native gattClientReadCharacteristicNative(IIIJJIJJI)V
.end method

.method private native gattClientReadDescriptorNative(IIIJJIJJIJJI)V
.end method

.method private native gattClientReadRemoteRssiNative(ILjava/lang/String;)V
.end method

.method private native gattClientRefreshNative(ILjava/lang/String;)V
.end method

.method private native gattClientRegisterAppNative(JJ)V
.end method

.method private native gattClientRegisterForNotificationsNative(ILjava/lang/String;IIJJIJJZ)V
.end method

.method private native gattClientSearchServiceNative(IZJJ)V
.end method

.method private native gattClientUnregisterAppNative(I)V
.end method

.method private native gattClientWriteCharacteristicNative(IIIJJIJJII[B)V
.end method

.method private native gattClientWriteDescriptorNative(IIIJJIJJIJJII[B)V
.end method

.method private native gattConnectionParameterUpdateNative(ILjava/lang/String;IIII)V
.end method

.method private native gattServerAddCharacteristicNative(IIJJII)V
.end method

.method private native gattServerAddDescriptorNative(IIJJI)V
.end method

.method private native gattServerAddIncludedServiceNative(III)V
.end method

.method private native gattServerAddServiceNative(IIIJJI)V
.end method

.method private native gattServerConnectNative(ILjava/lang/String;ZI)V
.end method

.method private native gattServerDeleteServiceNative(II)V
.end method

.method private native gattServerDisconnectNative(ILjava/lang/String;I)V
.end method

.method private native gattServerRegisterAppNative(JJ)V
.end method

.method private native gattServerSendIndicationNative(III[B)V
.end method

.method private native gattServerSendNotificationNative(III[B)V
.end method

.method private native gattServerSendResponseNative(IIIIII[BI)V
.end method

.method private native gattServerStartServiceNative(III)V
.end method

.method private native gattServerStopServiceNative(II)V
.end method

.method private native gattServerUnregisterAppNative(I)V
.end method

.method private native gattTestNative(IJJLjava/lang/String;IIIII)V
.end method

.method private getActiveDeclaration()Lcom/android/bluetooth/gatt/ServiceDeclaration;
    .locals 3

    .prologue
    .line 133
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mServiceDeclarations:Ljava/util/List;

    monitor-enter v1

    .line 134
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mServiceDeclarations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mServiceDeclarations:Ljava/util/List;

    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mServiceDeclarations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/ServiceDeclaration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_0
    monitor-exit v1

    .line 137
    const/4 v0, 0x0

    return-object v0

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getDeviceType(Landroid/bluetooth/BluetoothDevice;)I
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 2141
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/bluetooth/gatt/GattService;->gattClientGetDeviceTypeNative(Ljava/lang/String;)I

    move-result v0

    .line 2142
    .local v0, "type":I
    const-string/jumbo v1, "BtGatt.GattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getDeviceType() - device="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2143
    const-string/jumbo v3, ", type="

    .line 2142
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2144
    return v0
.end method

.method private getPendingDeclaration()Lcom/android/bluetooth/gatt/ServiceDeclaration;
    .locals 3

    .prologue
    .line 141
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mServiceDeclarations:Ljava/util/List;

    monitor-enter v1

    .line 142
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mServiceDeclarations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mServiceDeclarations:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/ServiceDeclaration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_0
    monitor-exit v1

    .line 145
    const/4 v0, 0x0

    return-object v0

    .line 141
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private hasScanResultPermission(Lcom/android/bluetooth/gatt/ScanClient;)Z
    .locals 6
    .param p1, "client"    # Lcom/android/bluetooth/gatt/ScanClient;

    .prologue
    const/4 v3, 0x0

    .line 676
    invoke-virtual {p0}, Lcom/android/bluetooth/gatt/GattService;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070010

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 677
    .local v2, "requiresLocationEnabled":Z
    invoke-virtual {p0}, Lcom/android/bluetooth/gatt/GattService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 678
    const-string/jumbo v5, "location_mode"

    .line 677
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    .line 680
    .local v1, "locationEnabledSetting":Z
    :goto_0
    if-eqz v2, :cond_1

    if-nez v1, :cond_1

    .line 681
    iget-boolean v0, p1, Lcom/android/bluetooth/gatt/ScanClient;->legacyForegroundApp:Z

    .line 682
    :goto_1
    iget-boolean v4, p1, Lcom/android/bluetooth/gatt/ScanClient;->hasPeersMacAddressPermission:Z

    if-nez v4, :cond_2

    .line 683
    iget-boolean v4, p1, Lcom/android/bluetooth/gatt/ScanClient;->hasLocationPermission:Z

    if-eqz v4, :cond_3

    .line 682
    :goto_2
    return v0

    .line 677
    .end local v1    # "locationEnabledSetting":Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "locationEnabledSetting":Z
    goto :goto_0

    .line 680
    :cond_1
    const/4 v0, 0x1

    .local v0, "locationEnabled":Z
    goto :goto_1

    .line 682
    .end local v0    # "locationEnabled":Z
    :cond_2
    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    move v0, v3

    .line 683
    goto :goto_2
.end method

.method private native initializeNative()V
.end method

.method private isHidUuid(Ljava/util/UUID;)Z
    .locals 6
    .param p1, "uuid"    # Ljava/util/UUID;

    .prologue
    const/4 v2, 0x0

    .line 2134
    sget-object v3, Lcom/android/bluetooth/gatt/GattService;->HID_UUIDS:[Ljava/util/UUID;

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    .line 2135
    .local v0, "hid_uuid":Ljava/util/UUID;
    invoke-virtual {v0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v1, 0x1

    return v1

    .line 2134
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2137
    .end local v0    # "hid_uuid":Ljava/util/UUID;
    :cond_1
    return v2
.end method

.method private matchesFilters(Lcom/android/bluetooth/gatt/ScanClient;Landroid/bluetooth/le/ScanResult;)Z
    .locals 4
    .param p1, "client"    # Lcom/android/bluetooth/gatt/ScanClient;
    .param p2, "scanResult"    # Landroid/bluetooth/le/ScanResult;

    .prologue
    const/4 v3, 0x1

    .line 688
    iget-object v2, p1, Lcom/android/bluetooth/gatt/ScanClient;->filters:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/android/bluetooth/gatt/ScanClient;->filters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 689
    :cond_0
    return v3

    .line 691
    :cond_1
    iget-object v2, p1, Lcom/android/bluetooth/gatt/ScanClient;->filters:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "filter$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/le/ScanFilter;

    .line 692
    .local v0, "filter":Landroid/bluetooth/le/ScanFilter;
    invoke-virtual {v0, p2}, Landroid/bluetooth/le/ScanFilter;->matches(Landroid/bluetooth/le/ScanResult;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 693
    return v3

    .line 696
    .end local v0    # "filter":Landroid/bluetooth/le/ScanFilter;
    :cond_3
    const/4 v2, 0x0

    return v2
.end method

.method private needsPrivilegedPermissionForScan(Landroid/bluetooth/le/ScanSettings;)Z
    .locals 8
    .param p1, "settings"    # Landroid/bluetooth/le/ScanSettings;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2152
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 2154
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v3

    const/16 v4, 0xc

    if-eq v3, v4, :cond_0

    return v1

    .line 2157
    :cond_0
    if-nez p1, :cond_1

    return v2

    .line 2160
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanSettings;->getReportDelayMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    return v2

    .line 2163
    :cond_2
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanSettings;->getScanResultType()I

    move-result v3

    if-ne v3, v1, :cond_3

    :goto_0
    return v1

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method private parseBatchScanResults(II[B)Ljava/util/Set;
    .locals 4
    .param p1, "numRecords"    # I
    .param p2, "reportType"    # I
    .param p3, "batchRecord"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II[B)",
            "Ljava/util/Set",
            "<",
            "Landroid/bluetooth/le/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1101
    if-nez p1, :cond_0

    .line 1102
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 1104
    :cond_0
    const-string/jumbo v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "current time is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 1106
    invoke-direct {p0, p1, p3}, Lcom/android/bluetooth/gatt/GattService;->parseTruncatedResults(I[B)Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 1108
    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/android/bluetooth/gatt/GattService;->parseFullResults(I[B)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private parseFullResults(I[B)Ljava/util/Set;
    .locals 24
    .param p1, "numRecords"    # I
    .param p2, "batchRecord"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[B)",
            "Ljava/util/Set",
            "<",
            "Landroid/bluetooth/le/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1138
    const-string/jumbo v4, "BtGatt.GattService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Batch record : "

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {p2 .. p2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    new-instance v17, Ljava/util/HashSet;

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 1140
    .local v17, "results":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/le/ScanResult;>;"
    const/4 v13, 0x0

    .line 1141
    .local v13, "position":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v14

    .line 1142
    .local v14, "now":J
    :goto_0
    move-object/from16 v0, p2

    array-length v4, v0

    if-ge v13, v4, :cond_0

    .line 1143
    const/4 v4, 0x6

    move-object/from16 v0, p2

    invoke-static {v0, v13, v4}, Lcom/android/bluetooth/gatt/GattService;->extractBytes([BII)[B

    move-result-object v10

    .line 1145
    .local v10, "address":[B
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/bluetooth/gatt/GattService;->reverse([B)V

    .line 1146
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/gatt/GattService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4, v10}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    .line 1147
    .local v5, "device":Landroid/bluetooth/BluetoothDevice;
    add-int/lit8 v13, v13, 0x6

    .line 1149
    add-int/lit8 v13, v13, 0x1

    .line 1151
    add-int/lit8 v13, v13, 0x1

    .line 1152
    add-int/lit8 v16, v13, 0x1

    .end local v13    # "position":I
    .local v16, "position":I
    aget-byte v7, p2, v13

    .line 1153
    .local v7, "rssi":I
    const/4 v4, 0x2

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-static {v0, v1, v4}, Lcom/android/bluetooth/gatt/GattService;->extractBytes([BII)[B

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/bluetooth/gatt/GattService;->parseTimestampNanos([B)J

    move-result-wide v22

    sub-long v8, v14, v22

    .line 1154
    .local v8, "timestampNanos":J
    add-int/lit8 v13, v16, 0x2

    .line 1157
    .end local v16    # "position":I
    .restart local v13    # "position":I
    add-int/lit8 v16, v13, 0x1

    .end local v13    # "position":I
    .restart local v16    # "position":I
    aget-byte v12, p2, v13

    .line 1158
    .local v12, "advertisePacketLen":I
    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-static {v0, v1, v12}, Lcom/android/bluetooth/gatt/GattService;->extractBytes([BII)[B

    move-result-object v11

    .line 1159
    .local v11, "advertiseBytes":[B
    add-int v13, v16, v12

    .line 1160
    .end local v16    # "position":I
    .restart local v13    # "position":I
    add-int/lit8 v16, v13, 0x1

    .end local v13    # "position":I
    .restart local v16    # "position":I
    aget-byte v20, p2, v13

    .line 1161
    .local v20, "scanResponsePacketLen":I
    move-object/from16 v0, p2

    move/from16 v1, v16

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/gatt/GattService;->extractBytes([BII)[B

    move-result-object v19

    .line 1162
    .local v19, "scanResponseBytes":[B
    add-int v13, v16, v20

    .line 1163
    .end local v16    # "position":I
    .restart local v13    # "position":I
    add-int v4, v12, v20

    new-array v0, v4, [B

    move-object/from16 v18, v0

    .line 1164
    .local v18, "scanRecord":[B
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-static {v11, v4, v0, v6, v12}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1165
    const/4 v4, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move/from16 v2, v20

    invoke-static {v0, v4, v1, v12, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1167
    const-string/jumbo v4, "BtGatt.GattService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "ScanRecord : "

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {v18 .. v18}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    new-instance v4, Landroid/bluetooth/le/ScanResult;

    invoke-static/range {v18 .. v18}, Landroid/bluetooth/le/ScanRecord;->parseFromBytes([B)Landroid/bluetooth/le/ScanRecord;

    move-result-object v6

    invoke-direct/range {v4 .. v9}, Landroid/bluetooth/le/ScanResult;-><init>(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/le/ScanRecord;IJ)V

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1171
    .end local v5    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v7    # "rssi":I
    .end local v8    # "timestampNanos":J
    .end local v10    # "address":[B
    .end local v11    # "advertiseBytes":[B
    .end local v12    # "advertisePacketLen":I
    .end local v18    # "scanRecord":[B
    .end local v19    # "scanResponseBytes":[B
    .end local v20    # "scanResponsePacketLen":I
    :cond_0
    return-object v17
.end method

.method private parseTruncatedResults(I[B)Ljava/util/Set;
    .locals 16
    .param p1, "numRecords"    # I
    .param p2, "batchRecord"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[B)",
            "Ljava/util/Set",
            "<",
            "Landroid/bluetooth/le/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1113
    const-string/jumbo v2, "BtGatt.GattService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "batch record "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p2 .. p2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    new-instance v13, Ljava/util/HashSet;

    move/from16 v0, p1

    invoke-direct {v13, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 1115
    .local v13, "results":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/le/ScanResult;>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v10

    .line 1116
    .local v10, "now":J
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    move/from16 v0, p1

    if-ge v9, v0, :cond_0

    .line 1117
    mul-int/lit8 v2, v9, 0xb

    .line 1118
    const/16 v4, 0xb

    .line 1117
    move-object/from16 v0, p2

    invoke-static {v0, v2, v4}, Lcom/android/bluetooth/gatt/GattService;->extractBytes([BII)[B

    move-result-object v12

    .line 1119
    .local v12, "record":[B
    const/4 v2, 0x0

    const/4 v4, 0x6

    invoke-static {v12, v2, v4}, Lcom/android/bluetooth/gatt/GattService;->extractBytes([BII)[B

    move-result-object v8

    .line 1120
    .local v8, "address":[B
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/bluetooth/gatt/GattService;->reverse([B)V

    .line 1121
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/gatt/GattService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2, v8}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    .line 1122
    .local v3, "device":Landroid/bluetooth/BluetoothDevice;
    const/16 v2, 0x8

    aget-byte v5, v12, v2

    .line 1123
    .local v5, "rssi":I
    const/16 v2, 0x9

    const/4 v4, 0x2

    invoke-static {v12, v2, v4}, Lcom/android/bluetooth/gatt/GattService;->extractBytes([BII)[B

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/bluetooth/gatt/GattService;->parseTimestampNanos([B)J

    move-result-wide v14

    sub-long v6, v10, v14

    .line 1124
    .local v6, "timestampNanos":J
    new-instance v2, Landroid/bluetooth/le/ScanResult;

    const/4 v4, 0x0

    new-array v4, v4, [B

    invoke-static {v4}, Landroid/bluetooth/le/ScanRecord;->parseFromBytes([B)Landroid/bluetooth/le/ScanRecord;

    move-result-object v4

    invoke-direct/range {v2 .. v7}, Landroid/bluetooth/le/ScanResult;-><init>(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/le/ScanRecord;IJ)V

    invoke-interface {v13, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1116
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1127
    .end local v3    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v5    # "rssi":I
    .end local v6    # "timestampNanos":J
    .end local v8    # "address":[B
    .end local v12    # "record":[B
    :cond_0
    return-object v13
.end method

.method private parseUuids([B)Ljava/util/List;
    .locals 11
    .param p1, "adv_data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2315
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2317
    .local v5, "uuids":Ljava/util/List;, "Ljava/util/List<Ljava/util/UUID;>;"
    const/4 v1, 0x0

    .line 2318
    .local v1, "offset":I
    :goto_0
    array-length v6, p1

    add-int/lit8 v6, v6, -0x2

    if-ge v1, v6, :cond_0

    .line 2319
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "offset":I
    .local v2, "offset":I
    aget-byte v0, p1, v1

    .line 2320
    .local v0, "len":I
    if-nez v0, :cond_1

    move v1, v2

    .line 2341
    .end local v0    # "len":I
    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    :cond_0
    return-object v5

    .line 2322
    .end local v1    # "offset":I
    .restart local v0    # "len":I
    .restart local v2    # "offset":I
    :cond_1
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    aget-byte v3, p1, v2

    .line 2323
    .local v3, "type":I
    packed-switch v3, :pswitch_data_0

    .line 2336
    add-int/lit8 v6, v0, -0x1

    add-int/2addr v1, v6

    .line 2337
    goto :goto_0

    :pswitch_0
    move v2, v1

    .line 2326
    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    :goto_1
    if-le v0, v10, :cond_2

    .line 2327
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    aget-byte v4, p1, v2

    .line 2328
    .local v4, "uuid16":I
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    aget-byte v6, p1, v1

    shl-int/lit8 v6, v6, 0x8

    add-int/2addr v4, v6

    .line 2329
    add-int/lit8 v0, v0, -0x2

    .line 2331
    const-string/jumbo v6, "%08x-0000-1000-8000-00805f9b34fb"

    .line 2330
    new-array v7, v10, [Ljava/lang/Object;

    .line 2331
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    .line 2330
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v4    # "uuid16":I
    :cond_2
    move v1, v2

    .line 2333
    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    goto :goto_0

    .line 2323
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private removePendingDeclaration()V
    .locals 3

    .prologue
    .line 149
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mServiceDeclarations:Ljava/util/List;

    monitor-enter v1

    .line 150
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mServiceDeclarations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mServiceDeclarations:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 148
    return-void

    .line 149
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private reverse([B)V
    .locals 4
    .param p1, "address"    # [B

    .prologue
    .line 1176
    array-length v2, p1

    .line 1177
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    div-int/lit8 v3, v2, 0x2

    if-ge v1, v3, :cond_0

    .line 1178
    aget-byte v0, p1, v1

    .line 1179
    .local v0, "b":B
    add-int/lit8 v3, v2, -0x1

    sub-int/2addr v3, v1

    aget-byte v3, p1, v3

    aput-byte v3, p1, v1

    .line 1180
    add-int/lit8 v3, v2, -0x1

    sub-int/2addr v3, v1

    aput-byte v0, p1, v3

    .line 1177
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1175
    .end local v0    # "b":B
    :cond_0
    return-void
.end method

.method private stopNextService(II)V
    .locals 6
    .param p1, "serverIf"    # I
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2275
    const-string/jumbo v3, "BtGatt.GattService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stopNextService() - serverIf="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2276
    const-string/jumbo v5, ", status="

    .line 2275
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2278
    if-nez p2, :cond_1

    .line 2279
    iget-object v3, p0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    invoke-virtual {v3}, Lcom/android/bluetooth/gatt/HandleMap;->getEntries()Ljava/util/List;

    move-result-object v0

    .line 2280
    .local v0, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/android/bluetooth/gatt/HandleMap$Entry;>;"
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "entry$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/gatt/HandleMap$Entry;

    .line 2281
    .local v1, "entry":Lcom/android/bluetooth/gatt/HandleMap$Entry;
    iget v3, v1, Lcom/android/bluetooth/gatt/HandleMap$Entry;->type:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 2282
    iget v3, v1, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serverIf:I

    if-ne v3, p1, :cond_0

    .line 2283
    iget-boolean v3, v1, Lcom/android/bluetooth/gatt/HandleMap$Entry;->started:Z

    if-eqz v3, :cond_0

    .line 2286
    iget v3, v1, Lcom/android/bluetooth/gatt/HandleMap$Entry;->handle:I

    invoke-direct {p0, p1, v3}, Lcom/android/bluetooth/gatt/GattService;->gattServerStopServiceNative(II)V

    .line 2287
    return-void

    .line 2274
    .end local v0    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/android/bluetooth/gatt/HandleMap$Entry;>;"
    .end local v1    # "entry":Lcom/android/bluetooth/gatt/HandleMap$Entry;
    .end local v2    # "entry$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method


# virtual methods
.method CreateonTrackAdvFoundLostObject(II[BI[BIIILjava/lang/String;IIII)Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;
    .locals 14
    .param p1, "client_if"    # I
    .param p2, "adv_pkt_len"    # I
    .param p3, "adv_pkt"    # [B
    .param p4, "scan_rsp_len"    # I
    .param p5, "scan_rsp"    # [B
    .param p6, "filt_index"    # I
    .param p7, "adv_state"    # I
    .param p8, "adv_info_present"    # I
    .param p9, "address"    # Ljava/lang/String;
    .param p10, "addr_type"    # I
    .param p11, "tx_power"    # I
    .param p12, "rssi_value"    # I
    .param p13, "time_stamp"    # I

    .prologue
    .line 1204
    new-instance v0, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;

    move v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    invoke-direct/range {v0 .. v13}, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;-><init>(II[BI[BIIILjava/lang/String;IIII)V

    return-object v0
.end method

.method addCharacteristic(ILjava/util/UUID;II)V
    .locals 3
    .param p1, "serverIf"    # I
    .param p2, "charUuid"    # Ljava/util/UUID;
    .param p3, "properties"    # I
    .param p4, "permissions"    # I

    .prologue
    .line 2043
    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2045
    const-string/jumbo v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "addCharacteristic() - uuid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2046
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->getActiveDeclaration()Lcom/android/bluetooth/gatt/ServiceDeclaration;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/bluetooth/gatt/ServiceDeclaration;->addCharacteristic(Ljava/util/UUID;II)V

    .line 2042
    return-void
.end method

.method addDescriptor(ILjava/util/UUID;I)V
    .locals 3
    .param p1, "serverIf"    # I
    .param p2, "descUuid"    # Ljava/util/UUID;
    .param p3, "permissions"    # I

    .prologue
    .line 2050
    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2052
    const-string/jumbo v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "addDescriptor() - uuid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2053
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->getActiveDeclaration()Lcom/android/bluetooth/gatt/ServiceDeclaration;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/android/bluetooth/gatt/ServiceDeclaration;->addDescriptor(Ljava/util/UUID;I)V

    .line 2049
    return-void
.end method

.method addIncludedService(IIILjava/util/UUID;)V
    .locals 3
    .param p1, "serverIf"    # I
    .param p2, "srvcType"    # I
    .param p3, "srvcInstanceId"    # I
    .param p4, "srvcUuid"    # Ljava/util/UUID;

    .prologue
    .line 2035
    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2037
    const-string/jumbo v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "addIncludedService() - uuid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2038
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->getActiveDeclaration()Lcom/android/bluetooth/gatt/ServiceDeclaration;

    move-result-object v0

    invoke-virtual {v0, p4, p2, p3}, Lcom/android/bluetooth/gatt/ServiceDeclaration;->addIncludedService(Ljava/util/UUID;II)V

    .line 2034
    return-void
.end method

.method beginReliableWrite(ILjava/lang/String;)V
    .locals 3
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 1637
    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1639
    const-string/jumbo v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "beginReliableWrite() - address="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1640
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mReliableQueue:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1636
    return-void
.end method

.method beginServiceDeclaration(IIIILjava/util/UUID;Z)V
    .locals 6
    .param p1, "serverIf"    # I
    .param p2, "srvcType"    # I
    .param p3, "srvcInstanceId"    # I
    .param p4, "minHandles"    # I
    .param p5, "srvcUuid"    # Ljava/util/UUID;
    .param p6, "advertisePreferred"    # Z

    .prologue
    .line 2025
    const-string/jumbo v1, "android.permission.BLUETOOTH"

    const-string/jumbo v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2027
    const-string/jumbo v1, "BtGatt.GattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "beginServiceDeclaration() - uuid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2028
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->addDeclaration()Lcom/android/bluetooth/gatt/ServiceDeclaration;

    move-result-object v0

    .local v0, "serviceDeclaration":Lcom/android/bluetooth/gatt/ServiceDeclaration;
    move-object v1, p5

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p6

    .line 2029
    invoke-virtual/range {v0 .. v5}, Lcom/android/bluetooth/gatt/ServiceDeclaration;->addService(Ljava/util/UUID;IIIZ)V

    .line 2024
    return-void
.end method

.method protected cleanup()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 211
    const-string/jumbo v0, "BtGatt.GattService"

    const-string/jumbo v1, "cleanup()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->cleanupNative()V

    .line 213
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mAdvertiseManager:Lcom/android/bluetooth/gatt/AdvertiseManager;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mAdvertiseManager:Lcom/android/bluetooth/gatt/AdvertiseManager;

    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/AdvertiseManager;->cleanup()V

    .line 215
    iput-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mAdvertiseManager:Lcom/android/bluetooth/gatt/AdvertiseManager;

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mScanManager:Lcom/android/bluetooth/gatt/ScanManager;

    if-eqz v0, :cond_1

    .line 218
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mScanManager:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/ScanManager;->cleanup()V

    .line 219
    iput-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mScanManager:Lcom/android/bluetooth/gatt/ScanManager;

    .line 221
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method clearServices(I)V
    .locals 2
    .param p1, "serverIf"    # I

    .prologue
    .line 2082
    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2084
    const-string/jumbo v0, "BtGatt.GattService"

    const-string/jumbo v1, "clearServices()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2085
    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/GattService;->deleteServices(I)V

    .line 2081
    return-void
.end method

.method clientConnect(ILjava/lang/String;ZI)V
    .locals 3
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "isDirect"    # Z
    .param p4, "transport"    # I

    .prologue
    .line 1477
    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1479
    const-string/jumbo v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "clientConnect() - address="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", isDirect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1480
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/bluetooth/gatt/GattService;->gattClientConnectNative(ILjava/lang/String;ZI)V

    .line 1476
    return-void
.end method

.method clientDisconnect(ILjava/lang/String;)V
    .locals 4
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 1484
    const-string/jumbo v1, "android.permission.BLUETOOTH"

    const-string/jumbo v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1486
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v1, p1, p2}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->connIdByAddress(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1487
    .local v0, "connId":Ljava/lang/Integer;
    const-string/jumbo v1, "BtGatt.GattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "clientDisconnect() - address="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", connId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1489
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    invoke-direct {p0, p1, p2, v1}, Lcom/android/bluetooth/gatt/GattService;->gattClientDisconnectNative(ILjava/lang/String;I)V

    .line 1483
    return-void

    .line 1489
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method configureMTU(ILjava/lang/String;I)V
    .locals 4
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "mtu"    # I

    .prologue
    .line 1683
    const-string/jumbo v1, "android.permission.BLUETOOTH"

    const-string/jumbo v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1685
    const-string/jumbo v1, "BtGatt.GattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "configureMTU() - address="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mtu="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1686
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v1, p1, p2}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->connIdByAddress(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1687
    .local v0, "connId":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 1688
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1, p3}, Lcom/android/bluetooth/gatt/GattService;->gattClientConfigureMTUNative(II)V

    .line 1682
    :goto_0
    return-void

    .line 1690
    :cond_0
    const-string/jumbo v1, "BtGatt.GattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "configureMTU() - No connection for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method connectionParameterUpdate(ILjava/lang/String;I)V
    .locals 7
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "connectionPriority"    # I

    .prologue
    .line 1695
    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1698
    const/16 v3, 0x18

    .line 1699
    .local v3, "minInterval":I
    const/16 v4, 0x28

    .line 1702
    .local v4, "maxInterval":I
    const/4 v5, 0x0

    .line 1705
    .local v5, "latency":I
    const/16 v6, 0x7d0

    .line 1707
    .local v6, "timeout":I
    packed-switch p3, :pswitch_data_0

    .line 1721
    :goto_0
    const-string/jumbo v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "connectionParameterUpdate() - address="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1722
    const-string/jumbo v2, "params="

    .line 1721
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1722
    const-string/jumbo v2, " interval="

    .line 1721
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1722
    const-string/jumbo v2, "/"

    .line 1721
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    .line 1723
    invoke-direct/range {v0 .. v6}, Lcom/android/bluetooth/gatt/GattService;->gattConnectionParameterUpdateNative(ILjava/lang/String;IIII)V

    .line 1694
    return-void

    .line 1710
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/bluetooth/gatt/GattService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f080000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 1711
    invoke-virtual {p0}, Lcom/android/bluetooth/gatt/GattService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    goto :goto_0

    .line 1715
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/bluetooth/gatt/GattService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 1716
    invoke-virtual {p0}, Lcom/android/bluetooth/gatt/GattService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 1717
    const/4 v5, 0x2

    .line 1718
    goto :goto_0

    .line 1707
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method disconnectAll()V
    .locals 6

    .prologue
    .line 1439
    const-string/jumbo v3, "BtGatt.GattService"

    const-string/jumbo v4, "disconnectAll()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1440
    iget-object v3, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v3}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getConnectedMap()Ljava/util/Map;

    move-result-object v0

    .line 1441
    .local v0, "connMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1442
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    const-string/jumbo v4, "BtGatt.GattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "disconnecting addr:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v4, v3}, Lcom/android/bluetooth/gatt/GattService;->clientDisconnect(ILjava/lang/String;)V

    goto :goto_0

    .line 1438
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method discoverServices(ILjava/lang/String;)V
    .locals 8
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, 0x0

    .line 1536
    const-string/jumbo v1, "android.permission.BLUETOOTH"

    const-string/jumbo v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1538
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v1, p1, p2}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->connIdByAddress(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1539
    .local v0, "connId":Ljava/lang/Integer;
    const-string/jumbo v1, "BtGatt.GattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "discoverServices() - address="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", connId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1541
    if-eqz v0, :cond_0

    .line 1542
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    move-object v1, p0

    move-wide v6, v4

    invoke-direct/range {v1 .. v7}, Lcom/android/bluetooth/gatt/GattService;->gattClientSearchServiceNative(IZJJ)V

    .line 1535
    :goto_0
    return-void

    .line 1544
    :cond_0
    const-string/jumbo v1, "BtGatt.GattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "discoverServices() - No connection for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public dump(Ljava/lang/StringBuilder;)V
    .locals 6
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 2346
    invoke-super {p0, p1}, Lcom/android/bluetooth/btservice/ProfileService;->dump(Ljava/lang/StringBuilder;)V

    .line 2347
    const-string/jumbo v4, "mAdvertisingServiceUuids:"

    invoke-static {p1, v4}, Lcom/android/bluetooth/gatt/GattService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2348
    iget-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->mAdvertisingServiceUuids:Ljava/util/List;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "uuid$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/UUID;

    .line 2349
    .local v2, "uuid":Ljava/util/UUID;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/android/bluetooth/gatt/GattService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_0

    .line 2351
    .end local v2    # "uuid":Ljava/util/UUID;
    :cond_0
    iget-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->mServiceDeclarations:Ljava/util/List;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "declaration$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/ServiceDeclaration;

    .line 2352
    .local v0, "declaration":Lcom/android/bluetooth/gatt/ServiceDeclaration;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/android/bluetooth/gatt/GattService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_1

    .line 2354
    .end local v0    # "declaration":Lcom/android/bluetooth/gatt/ServiceDeclaration;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mMaxScanFilters: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/bluetooth/gatt/GattService;->mMaxScanFilters:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/android/bluetooth/gatt/GattService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2356
    const-string/jumbo v4, "\nGATT Client Map\n"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2357
    iget-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v4, p1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->dump(Ljava/lang/StringBuilder;)V

    .line 2359
    const-string/jumbo v4, "\nGATT Server Map\n"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2360
    iget-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v4, p1}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->dump(Ljava/lang/StringBuilder;)V

    .line 2362
    const-string/jumbo v4, "\nGATT Handle Map\n"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2363
    iget-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    invoke-virtual {v4, p1}, Lcom/android/bluetooth/gatt/HandleMap;->dump(Ljava/lang/StringBuilder;)V

    .line 2345
    return-void
.end method

.method endReliableWrite(ILjava/lang/String;Z)V
    .locals 4
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "execute"    # Z

    .prologue
    .line 1644
    const-string/jumbo v1, "android.permission.BLUETOOTH"

    const-string/jumbo v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1646
    const-string/jumbo v1, "BtGatt.GattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "endReliableWrite() - address="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1647
    const-string/jumbo v3, " execute: "

    .line 1646
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1648
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mReliableQueue:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1650
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v1, p1, p2}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->connIdByAddress(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1651
    .local v0, "connId":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1, p3}, Lcom/android/bluetooth/gatt/GattService;->gattClientExecuteWriteNative(IZ)V

    .line 1643
    :cond_0
    return-void
.end method

.method endServiceDeclaration(I)V
    .locals 4
    .param p1, "serverIf"    # I

    .prologue
    .line 2057
    const-string/jumbo v1, "android.permission.BLUETOOTH"

    const-string/jumbo v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2059
    const-string/jumbo v1, "BtGatt.GattService"

    const-string/jumbo v2, "endServiceDeclaration()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2061
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->getActiveDeclaration()Lcom/android/bluetooth/gatt/ServiceDeclaration;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->getPendingDeclaration()Lcom/android/bluetooth/gatt/ServiceDeclaration;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 2063
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, p1, v1, v2}, Lcom/android/bluetooth/gatt/GattService;->continueServiceDeclaration(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2056
    :cond_0
    :goto_0
    return-void

    .line 2064
    :catch_0
    move-exception v0

    .line 2065
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BtGatt.GattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method flushPendingBatchResults(IZ)V
    .locals 3
    .param p1, "clientIf"    # I
    .param p2, "isServer"    # Z

    .prologue
    .line 1425
    const-string/jumbo v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "flushPendingBatchResults - clientIf="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1426
    const-string/jumbo v2, ", isServer="

    .line 1425
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mScanManager:Lcom/android/bluetooth/gatt/ScanManager;

    new-instance v1, Lcom/android/bluetooth/gatt/ScanClient;

    invoke-direct {v1, p1, p2}, Lcom/android/bluetooth/gatt/ScanClient;-><init>(IZ)V

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/gatt/ScanManager;->flushBatchScanResults(Lcom/android/bluetooth/gatt/ScanClient;)V

    .line 1424
    return-void
.end method

.method gattTestCommand(ILjava/util/UUID;Ljava/lang/String;IIIII)V
    .locals 12
    .param p1, "command"    # I
    .param p2, "uuid1"    # Ljava/util/UUID;
    .param p3, "bda1"    # Ljava/lang/String;
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "p4"    # I
    .param p8, "p5"    # I

    .prologue
    .line 2372
    if-nez p3, :cond_0

    const-string/jumbo p3, "00:00:00:00:00:00"

    .line 2373
    :cond_0
    if-eqz p2, :cond_1

    .line 2374
    invoke-virtual {p2}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    .line 2375
    invoke-virtual {p2}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v4

    move-object v0, p0

    move v1, p1

    move-object v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    .line 2374
    invoke-direct/range {v0 .. v11}, Lcom/android/bluetooth/gatt/GattService;->gattTestNative(IJJLjava/lang/String;IIIII)V

    .line 2371
    :goto_0
    return-void

    .line 2377
    :cond_1
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-direct/range {v0 .. v11}, Lcom/android/bluetooth/gatt/GattService;->gattTestNative(IJJLjava/lang/String;IIIII)V

    goto :goto_0
.end method

.method getConnectedDevices()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1519
    const-string/jumbo v2, "android.permission.BLUETOOTH"

    const-string/jumbo v3, "Need BLUETOOTH permission"

    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1521
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1522
    .local v0, "connectedDevAddress":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v2}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getConnectedDevices()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1523
    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v2}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->getConnectedDevices()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1524
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1525
    .local v1, "connectedDeviceList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-object v1
.end method

.method getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 16
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
    .line 1363
    const-string/jumbo v13, "android.permission.BLUETOOTH"

    const-string/jumbo v14, "Need BLUETOOTH permission"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1365
    const/4 v1, 0x1

    .line 1367
    .local v1, "DEVICE_TYPE_BREDR":I
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 1372
    .local v9, "deviceStates":Ljava/util/Map;, "Ljava/util/Map<Landroid/bluetooth/BluetoothDevice;Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/gatt/GattService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v13}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v4

    .line 1373
    .local v4, "bondedDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "device$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/BluetoothDevice;

    .line 1374
    .local v6, "device":Landroid/bluetooth/BluetoothDevice;
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/bluetooth/gatt/GattService;->getDeviceType(Landroid/bluetooth/BluetoothDevice;)I

    move-result v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_0

    .line 1375
    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v9, v6, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1381
    .end local v6    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_1
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 1382
    .local v5, "connectedDevices":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v13}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getConnectedDevices()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v5, v13}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1383
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v13}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->getConnectedDevices()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v5, v13}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1385
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "address$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1386
    .local v2, "address":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/gatt/GattService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v13, v2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    .line 1387
    .restart local v6    # "device":Landroid/bluetooth/BluetoothDevice;
    if-eqz v6, :cond_2

    .line 1388
    const/4 v13, 0x2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v9, v6, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1394
    .end local v2    # "address":Ljava/lang/String;
    .end local v6    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_3
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1396
    .local v8, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "entry$iterator":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 1397
    .local v10, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothDevice;Ljava/lang/Integer;>;"
    const/4 v13, 0x0

    move-object/from16 v0, p1

    array-length v15, v0

    move v14, v13

    :goto_2
    if-ge v14, v15, :cond_4

    aget v12, p1, v14

    .line 1398
    .local v12, "state":I
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-ne v13, v12, :cond_5

    .line 1399
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v8, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1397
    :cond_5
    add-int/lit8 v13, v14, 0x1

    move v14, v13

    goto :goto_2

    .line 1404
    .end local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothDevice;Ljava/lang/Integer;>;"
    .end local v12    # "state":I
    :cond_6
    return-object v8
.end method

.method protected getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    const-string/jumbo v0, "BtGatt.GattService"

    return-object v0
.end method

.method declared-synchronized getRegisteredServiceUuids()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 1510
    :try_start_0
    invoke-static {p0}, Lcom/android/bluetooth/Utils;->enforceAdminPermission(Landroid/content/ContextWrapper;)V

    .line 1511
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1512
    .local v2, "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    iget-object v3, p0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    iget-object v3, v3, Lcom/android/bluetooth/gatt/HandleMap;->mEntries:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;

    .line 1513
    .local v0, "entry":Lcom/android/bluetooth/gatt/HandleMap$Entry;
    new-instance v3, Landroid/os/ParcelUuid;

    iget-object v4, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->uuid:Ljava/util/UUID;

    invoke-direct {v3, v4}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v0    # "entry":Lcom/android/bluetooth/gatt/HandleMap$Entry;
    .end local v1    # "entry$iterator":Ljava/util/Iterator;
    .end local v2    # "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .restart local v1    # "entry$iterator":Ljava/util/Iterator;
    .restart local v2    # "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    :cond_0
    monitor-exit p0

    .line 1515
    return-object v2
.end method

.method protected initBinder()Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;
    .locals 1

    .prologue
    .line 175
    new-instance v0, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;-><init>(Lcom/android/bluetooth/gatt/GattService;)V

    return-object v0
.end method

.method numHwTrackFiltersAvailable()I
    .locals 2

    .prologue
    .line 1505
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getTotalNumOfTrackableAdvertisements()I

    move-result v0

    .line 1506
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mScanManager:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-virtual {v1}, Lcom/android/bluetooth/gatt/ScanManager;->getCurrentUsedTrackingAdvertisement()I

    move-result v1

    .line 1505
    sub-int/2addr v0, v1

    return v0
.end method

.method onAdvertiseCallback(II)V
    .locals 3
    .param p1, "status"    # I
    .param p2, "clientIf"    # I

    .prologue
    .line 1292
    const-string/jumbo v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAdvertiseCallback,- clientIf="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mAdvertiseManager:Lcom/android/bluetooth/gatt/AdvertiseManager;

    invoke-virtual {v0, p2, p1}, Lcom/android/bluetooth/gatt/AdvertiseManager;->callbackDone(II)V

    .line 1291
    return-void
.end method

.method onAdvertiseDataSet(II)V
    .locals 3
    .param p1, "status"    # I
    .param p2, "clientIf"    # I

    .prologue
    .line 1317
    const-string/jumbo v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAdvertiseDataSet() - clientIf="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1318
    const-string/jumbo v2, ", status="

    .line 1317
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mAdvertiseManager:Lcom/android/bluetooth/gatt/AdvertiseManager;

    invoke-virtual {v0, p2, p1}, Lcom/android/bluetooth/gatt/AdvertiseManager;->callbackDone(II)V

    .line 1316
    return-void
.end method

.method onAdvertiseDataUpdated(II)V
    .locals 3
    .param p1, "status"    # I
    .param p2, "client_if"    # I

    .prologue
    .line 1311
    const-string/jumbo v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAdvertiseDataUpdated() - client_if="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1312
    const-string/jumbo v2, ", status="

    .line 1311
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    return-void
.end method

.method onAdvertiseInstanceDisabled(II)V
    .locals 7
    .param p1, "status"    # I
    .param p2, "clientIf"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1324
    const-string/jumbo v2, "BtGatt.GattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onAdvertiseInstanceDisabled() - clientIf="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1325
    const-string/jumbo v4, ", status="

    .line 1324
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v2, p2}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getById(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v0

    .line 1327
    .local v0, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattCallback;>.App;"
    if-eqz v0, :cond_0

    .line 1328
    const-string/jumbo v2, "BtGatt.GattService"

    const-string/jumbo v3, "Client app is not null!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    const/4 v1, 0x0

    .line 1330
    .local v1, "isStart":Z
    if-nez p1, :cond_1

    .line 1331
    iget-object v2, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/IBluetoothGattCallback;

    invoke-interface {v2, v6, v1, v5}, Landroid/bluetooth/IBluetoothGattCallback;->onMultiAdvertiseCallback(IZLandroid/bluetooth/le/AdvertiseSettings;)V

    .line 1323
    .end local v1    # "isStart":Z
    :cond_0
    :goto_0
    return-void

    .line 1334
    .restart local v1    # "isStart":Z
    :cond_1
    iget-object v2, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/IBluetoothGattCallback;

    .line 1335
    const/4 v3, 0x4

    .line 1334
    invoke-interface {v2, v3, v1, v5}, Landroid/bluetooth/IBluetoothGattCallback;->onMultiAdvertiseCallback(IZLandroid/bluetooth/le/AdvertiseSettings;)V

    goto :goto_0
.end method

.method onAdvertiseInstanceEnabled(II)V
    .locals 3
    .param p1, "status"    # I
    .param p2, "clientIf"    # I

    .prologue
    .line 1304
    const-string/jumbo v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAdvertiseInstanceEnabled() - clientIf="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1305
    const-string/jumbo v2, ", status="

    .line 1304
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mAdvertiseManager:Lcom/android/bluetooth/gatt/AdvertiseManager;

    invoke-virtual {v0, p2, p1}, Lcom/android/bluetooth/gatt/AdvertiseManager;->callbackDone(II)V

    .line 1303
    return-void
.end method

.method onAttributeRead(Ljava/lang/String;IIIIZ)V
    .locals 17
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "connId"    # I
    .param p3, "transId"    # I
    .param p4, "attrHandle"    # I
    .param p5, "offset"    # I
    .param p6, "isLong"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1837
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Lcom/android/bluetooth/gatt/HandleMap;->getByHandle(I)Lcom/android/bluetooth/gatt/HandleMap$Entry;

    move-result-object v15

    .line 1838
    .local v15, "entry":Lcom/android/bluetooth/gatt/HandleMap$Entry;
    if-nez v15, :cond_0

    return-void

    .line 1840
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v2, v0, v1}, Lcom/android/bluetooth/gatt/HandleMap;->addRequest(II)V

    .line 1842
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    iget v3, v15, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serverIf:I

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->getById(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v13

    .line 1843
    .local v13, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattServerCallback;>.App;"
    if-nez v13, :cond_1

    return-void

    .line 1845
    :cond_1
    iget v2, v15, Lcom/android/bluetooth/gatt/HandleMap$Entry;->type:I

    packed-switch v2, :pswitch_data_0

    .line 1869
    const-string/jumbo v2, "BtGatt.GattService"

    const-string/jumbo v3, "onAttributeRead() - Requested unknown attribute type."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1832
    :goto_0
    return-void

    .line 1848
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    iget v3, v15, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serviceHandle:I

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/gatt/HandleMap;->getByHandle(I)Lcom/android/bluetooth/gatt/HandleMap$Entry;

    move-result-object v16

    .line 1849
    .local v16, "serviceEntry":Lcom/android/bluetooth/gatt/HandleMap$Entry;
    iget-object v2, v13, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/IBluetoothGattServerCallback;

    .line 1850
    move-object/from16 v0, v16

    iget v7, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serviceType:I

    move-object/from16 v0, v16

    iget v8, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->instance:I

    .line 1851
    new-instance v9, Landroid/os/ParcelUuid;

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->uuid:Ljava/util/UUID;

    invoke-direct {v9, v3}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    iget v10, v15, Lcom/android/bluetooth/gatt/HandleMap$Entry;->instance:I

    .line 1852
    new-instance v11, Landroid/os/ParcelUuid;

    iget-object v3, v15, Lcom/android/bluetooth/gatt/HandleMap$Entry;->uuid:Ljava/util/UUID;

    invoke-direct {v11, v3}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    move-object/from16 v3, p1

    move/from16 v4, p3

    move/from16 v5, p5

    move/from16 v6, p6

    .line 1849
    invoke-interface/range {v2 .. v11}, Landroid/bluetooth/IBluetoothGattServerCallback;->onCharacteristicReadRequest(Ljava/lang/String;IIZIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;)V

    goto :goto_0

    .line 1858
    .end local v16    # "serviceEntry":Lcom/android/bluetooth/gatt/HandleMap$Entry;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    iget v3, v15, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serviceHandle:I

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/gatt/HandleMap;->getByHandle(I)Lcom/android/bluetooth/gatt/HandleMap$Entry;

    move-result-object v16

    .line 1859
    .restart local v16    # "serviceEntry":Lcom/android/bluetooth/gatt/HandleMap$Entry;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    iget v3, v15, Lcom/android/bluetooth/gatt/HandleMap$Entry;->charHandle:I

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/gatt/HandleMap;->getByHandle(I)Lcom/android/bluetooth/gatt/HandleMap$Entry;

    move-result-object v14

    .line 1860
    .local v14, "charEntry":Lcom/android/bluetooth/gatt/HandleMap$Entry;
    iget-object v2, v13, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/IBluetoothGattServerCallback;

    .line 1861
    move-object/from16 v0, v16

    iget v7, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serviceType:I

    move-object/from16 v0, v16

    iget v8, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->instance:I

    .line 1862
    new-instance v9, Landroid/os/ParcelUuid;

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->uuid:Ljava/util/UUID;

    invoke-direct {v9, v3}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    iget v10, v14, Lcom/android/bluetooth/gatt/HandleMap$Entry;->instance:I

    .line 1863
    new-instance v11, Landroid/os/ParcelUuid;

    iget-object v3, v14, Lcom/android/bluetooth/gatt/HandleMap$Entry;->uuid:Ljava/util/UUID;

    invoke-direct {v11, v3}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    .line 1864
    new-instance v12, Landroid/os/ParcelUuid;

    iget-object v3, v15, Lcom/android/bluetooth/gatt/HandleMap$Entry;->uuid:Ljava/util/UUID;

    invoke-direct {v12, v3}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    move-object/from16 v3, p1

    move/from16 v4, p3

    move/from16 v5, p5

    move/from16 v6, p6

    .line 1860
    invoke-interface/range {v2 .. v12}, Landroid/bluetooth/IBluetoothGattServerCallback;->onDescriptorReadRequest(Ljava/lang/String;IIZIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;Landroid/os/ParcelUuid;)V

    goto :goto_0

    .line 1845
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method onAttributeWrite(Ljava/lang/String;IIIIIZZ[B)V
    .locals 20
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "connId"    # I
    .param p3, "transId"    # I
    .param p4, "attrHandle"    # I
    .param p5, "offset"    # I
    .param p6, "length"    # I
    .param p7, "needRsp"    # Z
    .param p8, "isPrep"    # Z
    .param p9, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1884
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Lcom/android/bluetooth/gatt/HandleMap;->getByHandle(I)Lcom/android/bluetooth/gatt/HandleMap$Entry;

    move-result-object v18

    .line 1885
    .local v18, "entry":Lcom/android/bluetooth/gatt/HandleMap$Entry;
    if-nez v18, :cond_0

    return-void

    .line 1887
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v2, v0, v1}, Lcom/android/bluetooth/gatt/HandleMap;->addRequest(II)V

    .line 1889
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serverIf:I

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->getById(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v16

    .line 1890
    .local v16, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattServerCallback;>.App;"
    if-nez v16, :cond_1

    return-void

    .line 1892
    :cond_1
    move-object/from16 v0, v18

    iget v2, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->type:I

    packed-switch v2, :pswitch_data_0

    .line 1918
    const-string/jumbo v2, "BtGatt.GattService"

    const-string/jumbo v3, "onAttributeWrite() - Requested unknown attribute type."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1878
    :goto_0
    return-void

    .line 1895
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serviceHandle:I

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/gatt/HandleMap;->getByHandle(I)Lcom/android/bluetooth/gatt/HandleMap$Entry;

    move-result-object v19

    .line 1896
    .local v19, "serviceEntry":Lcom/android/bluetooth/gatt/HandleMap$Entry;
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/IBluetoothGattServerCallback;

    .line 1898
    move-object/from16 v0, v19

    iget v9, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serviceType:I

    move-object/from16 v0, v19

    iget v10, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->instance:I

    .line 1899
    new-instance v11, Landroid/os/ParcelUuid;

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->uuid:Ljava/util/UUID;

    invoke-direct {v11, v3}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    move-object/from16 v0, v18

    iget v12, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->instance:I

    .line 1900
    new-instance v13, Landroid/os/ParcelUuid;

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->uuid:Ljava/util/UUID;

    invoke-direct {v13, v3}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    move-object/from16 v3, p1

    move/from16 v4, p3

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p8

    move/from16 v8, p7

    move-object/from16 v14, p9

    .line 1896
    invoke-interface/range {v2 .. v14}, Landroid/bluetooth/IBluetoothGattServerCallback;->onCharacteristicWriteRequest(Ljava/lang/String;IIIZZIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;[B)V

    goto :goto_0

    .line 1906
    .end local v19    # "serviceEntry":Lcom/android/bluetooth/gatt/HandleMap$Entry;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serviceHandle:I

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/gatt/HandleMap;->getByHandle(I)Lcom/android/bluetooth/gatt/HandleMap$Entry;

    move-result-object v19

    .line 1907
    .restart local v19    # "serviceEntry":Lcom/android/bluetooth/gatt/HandleMap$Entry;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->charHandle:I

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/gatt/HandleMap;->getByHandle(I)Lcom/android/bluetooth/gatt/HandleMap$Entry;

    move-result-object v17

    .line 1908
    .local v17, "charEntry":Lcom/android/bluetooth/gatt/HandleMap$Entry;
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/IBluetoothGattServerCallback;

    .line 1910
    move-object/from16 v0, v19

    iget v9, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serviceType:I

    move-object/from16 v0, v19

    iget v10, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->instance:I

    .line 1911
    new-instance v11, Landroid/os/ParcelUuid;

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->uuid:Ljava/util/UUID;

    invoke-direct {v11, v3}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    move-object/from16 v0, v17

    iget v12, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->instance:I

    .line 1912
    new-instance v13, Landroid/os/ParcelUuid;

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->uuid:Ljava/util/UUID;

    invoke-direct {v13, v3}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    .line 1913
    new-instance v14, Landroid/os/ParcelUuid;

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->uuid:Ljava/util/UUID;

    invoke-direct {v14, v3}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    move-object/from16 v3, p1

    move/from16 v4, p3

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p8

    move/from16 v8, p7

    move-object/from16 v15, p9

    .line 1908
    invoke-interface/range {v2 .. v15}, Landroid/bluetooth/IBluetoothGattServerCallback;->onDescriptorWriteRequest(Ljava/lang/String;IIIZZIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;Landroid/os/ParcelUuid;[B)V

    goto/16 :goto_0

    .line 1892
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method onBatchScanReports(IIII[B)V
    .locals 7
    .param p1, "status"    # I
    .param p2, "clientIf"    # I
    .param p3, "reportType"    # I
    .param p4, "numRecords"    # I
    .param p5, "recordData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1063
    const-string/jumbo v4, "BtGatt.GattService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onBatchScanReports() - clientIf="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", status="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1064
    const-string/jumbo v6, ", reportType="

    .line 1063
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1064
    const-string/jumbo v6, ", numRecords="

    .line 1063
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    iget-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->mScanManager:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-virtual {v4, p2, p1}, Lcom/android/bluetooth/gatt/ScanManager;->callbackDone(II)V

    .line 1067
    invoke-direct {p0, p4, p3, p5}, Lcom/android/bluetooth/gatt/GattService;->parseBatchScanResults(II[B)Ljava/util/Set;

    move-result-object v3

    .line 1068
    .local v3, "results":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/le/ScanResult;>;"
    const/4 v4, 0x1

    if-ne p3, v4, :cond_2

    .line 1070
    iget-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v4, p2}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getById(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v0

    .line 1071
    .local v0, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattCallback;>.App;"
    if-nez v0, :cond_0

    return-void

    .line 1072
    :cond_0
    iget-object v4, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v4, Landroid/bluetooth/IBluetoothGattCallback;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v4, v5}, Landroid/bluetooth/IBluetoothGattCallback;->onBatchScanResults(Ljava/util/List;)V

    .line 1061
    .end local v0    # "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattCallback;>.App;"
    :cond_1
    return-void

    .line 1074
    :cond_2
    iget-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->mScanManager:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-virtual {v4}, Lcom/android/bluetooth/gatt/ScanManager;->getFullBatchScanQueue()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "client$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/gatt/ScanClient;

    .line 1076
    .local v1, "client":Lcom/android/bluetooth/gatt/ScanClient;
    invoke-direct {p0, v1, v3}, Lcom/android/bluetooth/gatt/GattService;->deliverBatchScan(Lcom/android/bluetooth/gatt/ScanClient;Ljava/util/Set;)V

    goto :goto_0
.end method

.method onBatchScanStartStopped(III)V
    .locals 3
    .param p1, "startStopAction"    # I
    .param p2, "status"    # I
    .param p3, "clientIf"    # I

    .prologue
    .line 1054
    const-string/jumbo v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBatchScanStartStopped() - clientIf="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1055
    const-string/jumbo v2, ", status="

    .line 1054
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1055
    const-string/jumbo v2, ", startStopAction="

    .line 1054
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mScanManager:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-virtual {v0, p3, p2}, Lcom/android/bluetooth/gatt/ScanManager;->callbackDone(II)V

    .line 1052
    return-void
.end method

.method onBatchScanStorageConfigured(II)V
    .locals 3
    .param p1, "status"    # I
    .param p2, "clientIf"    # I

    .prologue
    .line 1046
    const-string/jumbo v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBatchScanStorageConfigured() - clientIf="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mScanManager:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-virtual {v0, p2, p1}, Lcom/android/bluetooth/gatt/ScanManager;->callbackDone(II)V

    .line 1044
    return-void
.end method

.method onBatchScanThresholdCrossed(I)V
    .locals 4
    .param p1, "clientIf"    # I

    .prologue
    .line 1193
    const-string/jumbo v1, "BtGatt.GattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onBatchScanThresholdCrossed() - clientIf="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    const/4 v0, 0x0

    .line 1196
    .local v0, "isServer":Z
    invoke-virtual {p0, p1, v0}, Lcom/android/bluetooth/gatt/GattService;->flushPendingBatchResults(IZ)V

    .line 1191
    return-void
.end method

.method onCharacteristicAdded(IIJJII)V
    .locals 5
    .param p1, "status"    # I
    .param p2, "serverIf"    # I
    .param p3, "charUuidLsb"    # J
    .param p5, "charUuidMsb"    # J
    .param p7, "srvcHandle"    # I
    .param p8, "charHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1769
    new-instance v0, Ljava/util/UUID;

    invoke-direct {v0, p5, p6, p3, p4}, Ljava/util/UUID;-><init>(JJ)V

    .line 1770
    .local v0, "uuid":Ljava/util/UUID;
    const-string/jumbo v1, "BtGatt.GattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCharacteristicAdded() UUID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1771
    const-string/jumbo v3, ", srvcHandle="

    .line 1770
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1771
    const-string/jumbo v3, ", charHandle="

    .line 1770
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1772
    if-nez p1, :cond_0

    .line 1773
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    invoke-virtual {v1, p2, p8, v0, p7}, Lcom/android/bluetooth/gatt/HandleMap;->addCharacteristic(IILjava/util/UUID;I)V

    .line 1774
    :cond_0
    invoke-direct {p0, p2, p1, p7}, Lcom/android/bluetooth/gatt/GattService;->continueServiceDeclaration(III)V

    .line 1768
    return-void
.end method

.method onClientCongestion(IZ)V
    .locals 11
    .param p1, "connId"    # I
    .param p2, "congested"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1343
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getByConnId(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v8

    .line 1345
    .local v8, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattCallback;>.App;"
    if-eqz v8, :cond_1

    .line 1346
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v8, Lcom/android/bluetooth/gatt/ContextMap$App;->isCongested:Ljava/lang/Boolean;

    .line 1347
    :goto_0
    iget-object v0, v8, Lcom/android/bluetooth/gatt/ContextMap$App;->isCongested:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1348
    invoke-virtual {v8}, Lcom/android/bluetooth/gatt/ContextMap$App;->popQueuedCallback()Lcom/android/bluetooth/gatt/CallbackInfo;

    move-result-object v9

    .line 1349
    .local v9, "callbackInfo":Lcom/android/bluetooth/gatt/CallbackInfo;
    if-nez v9, :cond_0

    return-void

    .line 1350
    :cond_0
    iget-object v0, v8, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/IBluetoothGattCallback;

    iget-object v1, v9, Lcom/android/bluetooth/gatt/CallbackInfo;->address:Ljava/lang/String;

    .line 1351
    iget v2, v9, Lcom/android/bluetooth/gatt/CallbackInfo;->status:I

    iget v3, v9, Lcom/android/bluetooth/gatt/CallbackInfo;->srvcType:I

    .line 1352
    iget v4, v9, Lcom/android/bluetooth/gatt/CallbackInfo;->srvcInstId:I

    new-instance v5, Landroid/os/ParcelUuid;

    iget-object v6, v9, Lcom/android/bluetooth/gatt/CallbackInfo;->srvcUuid:Ljava/util/UUID;

    invoke-direct {v5, v6}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    .line 1353
    iget v6, v9, Lcom/android/bluetooth/gatt/CallbackInfo;->charInstId:I

    new-instance v7, Landroid/os/ParcelUuid;

    iget-object v10, v9, Lcom/android/bluetooth/gatt/CallbackInfo;->charUuid:Ljava/util/UUID;

    invoke-direct {v7, v10}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    .line 1350
    invoke-interface/range {v0 .. v7}, Landroid/bluetooth/IBluetoothGattCallback;->onCharacteristicWrite(Ljava/lang/String;IIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;)V

    goto :goto_0

    .line 1340
    .end local v9    # "callbackInfo":Lcom/android/bluetooth/gatt/CallbackInfo;
    :cond_1
    return-void
.end method

.method onClientConnected(Ljava/lang/String;ZII)V
    .locals 4
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "connected"    # Z
    .param p3, "connId"    # I
    .param p4, "serverIf"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1815
    const-string/jumbo v1, "BtGatt.GattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onConnected() connId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1816
    const-string/jumbo v3, ", address="

    .line 1815
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1816
    const-string/jumbo v3, ", connected="

    .line 1815
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1818
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v1, p4}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->getById(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v0

    .line 1819
    .local v0, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattServerCallback;>.App;"
    if-nez v0, :cond_0

    return-void

    .line 1821
    :cond_0
    if-eqz p2, :cond_1

    .line 1822
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v1, p4, p3, p1}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->addConnection(IILjava/lang/String;)V

    .line 1827
    :goto_0
    iget-object v1, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/IBluetoothGattServerCallback;

    const/4 v2, 0x0

    invoke-interface {v1, v2, p4, p2, p1}, Landroid/bluetooth/IBluetoothGattServerCallback;->onServerConnectionState(IIZLjava/lang/String;)V

    .line 1813
    return-void

    .line 1824
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v1, p4, p3}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->removeConnection(II)V

    goto :goto_0
.end method

.method onClientRegistered(IIJJ)V
    .locals 5
    .param p1, "status"    # I
    .param p2, "clientIf"    # I
    .param p3, "uuidLsb"    # J
    .param p5, "uuidMsb"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 701
    new-instance v1, Ljava/util/UUID;

    invoke-direct {v1, p5, p6, p3, p4}, Ljava/util/UUID;-><init>(JJ)V

    .line 702
    .local v1, "uuid":Ljava/util/UUID;
    const-string/jumbo v2, "BtGatt.GattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onClientRegistered() - UUID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", clientIf="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v2, v1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getByUuid(Ljava/util/UUID;)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v0

    .line 704
    .local v0, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattCallback;>.App;"
    if-eqz v0, :cond_0

    .line 705
    if-nez p1, :cond_1

    .line 706
    iput p2, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->id:I

    .line 707
    new-instance v2, Lcom/android/bluetooth/gatt/GattService$ClientDeathRecipient;

    invoke-direct {v2, p0, p2}, Lcom/android/bluetooth/gatt/GattService$ClientDeathRecipient;-><init>(Lcom/android/bluetooth/gatt/GattService;I)V

    invoke-virtual {v0, v2}, Lcom/android/bluetooth/gatt/ContextMap$App;->linkToDeath(Landroid/os/IBinder$DeathRecipient;)V

    .line 711
    :goto_0
    iget-object v2, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/IBluetoothGattCallback;

    invoke-interface {v2, p1, p2}, Landroid/bluetooth/IBluetoothGattCallback;->onClientRegistered(II)V

    .line 700
    :cond_0
    return-void

    .line 709
    :cond_1
    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v2, v1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->remove(Ljava/util/UUID;)V

    goto :goto_0
.end method

.method onConfigureMTU(III)V
    .locals 5
    .param p1, "connId"    # I
    .param p2, "status"    # I
    .param p3, "mtu"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1279
    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->addressByConnId(I)Ljava/lang/String;

    move-result-object v0

    .line 1281
    .local v0, "address":Ljava/lang/String;
    const-string/jumbo v2, "BtGatt.GattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onConfigureMTU() address="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1282
    const-string/jumbo v4, ", mtu="

    .line 1281
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getByConnId(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v1

    .line 1285
    .local v1, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattCallback;>.App;"
    if-eqz v1, :cond_0

    .line 1286
    iget-object v2, v1, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/IBluetoothGattCallback;

    invoke-interface {v2, v0, p3, p2}, Landroid/bluetooth/IBluetoothGattCallback;->onConfigureMTU(Ljava/lang/String;II)V

    .line 1278
    :cond_0
    return-void
.end method

.method onConnected(IIILjava/lang/String;)V
    .locals 5
    .param p1, "clientIf"    # I
    .param p2, "connId"    # I
    .param p3, "status"    # I
    .param p4, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 717
    const-string/jumbo v1, "BtGatt.GattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onConnected() - clientIf="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 718
    const-string/jumbo v4, ", connId="

    .line 717
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 718
    const-string/jumbo v4, ", address="

    .line 717
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    if-nez p3, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v1, p1, p2, p4}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->addConnection(IILjava/lang/String;)V

    .line 721
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getById(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v0

    .line 722
    .local v0, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattCallback;>.App;"
    if-eqz v0, :cond_2

    .line 723
    iget-object v1, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/IBluetoothGattCallback;

    .line 724
    if-nez p3, :cond_1

    const/4 v2, 0x1

    .line 723
    :cond_1
    invoke-interface {v1, p3, p1, v2, p4}, Landroid/bluetooth/IBluetoothGattCallback;->onClientConnectionState(IIZLjava/lang/String;)V

    .line 716
    :cond_2
    return-void
.end method

.method onDescriptorAdded(IIJJII)V
    .locals 5
    .param p1, "status"    # I
    .param p2, "serverIf"    # I
    .param p3, "descrUuidLsb"    # J
    .param p5, "descrUuidMsb"    # J
    .param p7, "srvcHandle"    # I
    .param p8, "descrHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1781
    new-instance v0, Ljava/util/UUID;

    invoke-direct {v0, p5, p6, p3, p4}, Ljava/util/UUID;-><init>(JJ)V

    .line 1782
    .local v0, "uuid":Ljava/util/UUID;
    const-string/jumbo v1, "BtGatt.GattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDescriptorAdded() UUID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1783
    const-string/jumbo v3, ", srvcHandle="

    .line 1782
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1783
    const-string/jumbo v3, ", descrHandle="

    .line 1782
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1784
    if-nez p1, :cond_0

    .line 1785
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    invoke-virtual {v1, p2, p8, v0, p7}, Lcom/android/bluetooth/gatt/HandleMap;->addDescriptor(IILjava/util/UUID;I)V

    .line 1786
    :cond_0
    invoke-direct {p0, p2, p1, p7}, Lcom/android/bluetooth/gatt/GattService;->continueServiceDeclaration(III)V

    .line 1780
    return-void
.end method

.method onDisconnected(IIILjava/lang/String;)V
    .locals 4
    .param p1, "clientIf"    # I
    .param p2, "connId"    # I
    .param p3, "status"    # I
    .param p4, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 730
    const-string/jumbo v1, "BtGatt.GattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDisconnected() - clientIf="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 731
    const-string/jumbo v3, ", connId="

    .line 730
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 731
    const-string/jumbo v3, ", address="

    .line 730
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v1, p1, p2}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->removeConnection(II)V

    .line 734
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mSearchQueue:Lcom/android/bluetooth/gatt/SearchQueue;

    invoke-virtual {v1, p2}, Lcom/android/bluetooth/gatt/SearchQueue;->removeConnId(I)V

    .line 735
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getById(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v0

    .line 736
    .local v0, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattCallback;>.App;"
    if-eqz v0, :cond_0

    .line 737
    iget-object v1, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/IBluetoothGattCallback;

    const/4 v2, 0x0

    invoke-interface {v1, p3, p1, v2, p4}, Landroid/bluetooth/IBluetoothGattCallback;->onClientConnectionState(IIZLjava/lang/String;)V

    .line 729
    :cond_0
    return-void
.end method

.method onExecuteCompleted(II)V
    .locals 3
    .param p1, "connId"    # I
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 950
    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->addressByConnId(I)Ljava/lang/String;

    move-result-object v0

    .line 954
    .local v0, "address":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getByConnId(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v1

    .line 955
    .local v1, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattCallback;>.App;"
    if-eqz v1, :cond_0

    .line 956
    iget-object v2, v1, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/IBluetoothGattCallback;

    invoke-interface {v2, v0, p2}, Landroid/bluetooth/IBluetoothGattCallback;->onExecuteWrite(Ljava/lang/String;I)V

    .line 949
    :cond_0
    return-void
.end method

.method onExecuteWrite(Ljava/lang/String;III)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "connId"    # I
    .param p3, "transId"    # I
    .param p4, "execWrite"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 1925
    const-string/jumbo v1, "BtGatt.GattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onExecuteWrite() connId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1926
    const-string/jumbo v4, ", address="

    .line 1925
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1926
    const-string/jumbo v4, ", transId="

    .line 1925
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1928
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v1, p2}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->getByConnId(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v0

    .line 1929
    .local v0, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattServerCallback;>.App;"
    if-nez v0, :cond_0

    return-void

    .line 1931
    :cond_0
    iget-object v1, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/IBluetoothGattServerCallback;

    if-ne p4, v2, :cond_1

    :goto_0
    invoke-interface {v1, p1, p3, v2}, Landroid/bluetooth/IBluetoothGattServerCallback;->onExecuteWrite(Ljava/lang/String;IZ)V

    .line 1924
    return-void

    .line 1931
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method onGetCharacteristic(IIIIJJIJJI)V
    .locals 25
    .param p1, "connId"    # I
    .param p2, "status"    # I
    .param p3, "srvcType"    # I
    .param p4, "srvcInstId"    # I
    .param p5, "srvcUuidLsb"    # J
    .param p7, "srvcUuidMsb"    # J
    .param p9, "charInstId"    # I
    .param p10, "charUuidLsb"    # J
    .param p12, "charUuidMsb"    # J
    .param p14, "charProp"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 769
    new-instance v23, Ljava/util/UUID;

    move-object/from16 v0, v23

    move-wide/from16 v1, p7

    move-wide/from16 v3, p5

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    .line 770
    .local v23, "srvcUuid":Ljava/util/UUID;
    new-instance v22, Ljava/util/UUID;

    move-object/from16 v0, v22

    move-wide/from16 v1, p12

    move-wide/from16 v3, p10

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    .line 771
    .local v22, "charUuid":Ljava/util/UUID;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->addressByConnId(I)Ljava/lang/String;

    move-result-object v20

    .line 776
    .local v20, "address":Ljava/lang/String;
    if-nez p2, :cond_1

    .line 777
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/gatt/GattService;->mSearchQueue:Lcom/android/bluetooth/gatt/SearchQueue;

    move/from16 v7, p1

    move/from16 v8, p3

    move/from16 v9, p4

    move-wide/from16 v10, p5

    move-wide/from16 v12, p7

    move/from16 v14, p9

    move-wide/from16 v15, p10

    move-wide/from16 v17, p12

    invoke-virtual/range {v6 .. v18}, Lcom/android/bluetooth/gatt/SearchQueue;->add(IIIJJIJJ)V

    .line 781
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getByConnId(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v21

    .line 782
    .local v21, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattCallback;>.App;"
    if-eqz v21, :cond_0

    .line 783
    move-object/from16 v0, v21

    iget-object v6, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v6, Landroid/bluetooth/IBluetoothGattCallback;

    .line 784
    new-instance v10, Landroid/os/ParcelUuid;

    move-object/from16 v0, v23

    invoke-direct {v10, v0}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    .line 785
    new-instance v12, Landroid/os/ParcelUuid;

    move-object/from16 v0, v22

    invoke-direct {v12, v0}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    move-object/from16 v7, v20

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v11, p9

    move/from16 v13, p14

    .line 783
    invoke-interface/range {v6 .. v13}, Landroid/bluetooth/IBluetoothGattCallback;->onGetCharacteristic(Ljava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;I)V

    :cond_0
    move-object/from16 v6, p0

    move/from16 v7, p1

    move/from16 v8, p3

    move/from16 v9, p4

    move-wide/from16 v10, p5

    move-wide/from16 v12, p7

    move/from16 v14, p9

    move-wide/from16 v15, p10

    move-wide/from16 v17, p12

    .line 789
    invoke-direct/range {v6 .. v18}, Lcom/android/bluetooth/gatt/GattService;->gattClientGetCharacteristicNative(IIIJJIJJ)V

    .line 767
    .end local v21    # "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattCallback;>.App;"
    :goto_0
    return-void

    .line 796
    :cond_1
    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v6, p0

    move/from16 v7, p1

    move/from16 v8, p3

    move/from16 v9, p4

    move-wide/from16 v10, p5

    move-wide/from16 v12, p7

    .line 794
    invoke-direct/range {v6 .. v19}, Lcom/android/bluetooth/gatt/GattService;->gattClientGetIncludedServiceNative(IIIJJIIJJ)V

    goto :goto_0
.end method

.method onGetDescriptor(IIIIJJIJJIJJ)V
    .locals 31
    .param p1, "connId"    # I
    .param p2, "status"    # I
    .param p3, "srvcType"    # I
    .param p4, "srvcInstId"    # I
    .param p5, "srvcUuidLsb"    # J
    .param p7, "srvcUuidMsb"    # J
    .param p9, "charInstId"    # I
    .param p10, "charUuidLsb"    # J
    .param p12, "charUuidMsb"    # J
    .param p14, "descrInstId"    # I
    .param p15, "descrUuidLsb"    # J
    .param p17, "descrUuidMsb"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 805
    new-instance v29, Ljava/util/UUID;

    move-object/from16 v0, v29

    move-wide/from16 v1, p7

    move-wide/from16 v3, p5

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    .line 806
    .local v29, "srvcUuid":Ljava/util/UUID;
    new-instance v27, Ljava/util/UUID;

    move-object/from16 v0, v27

    move-wide/from16 v1, p12

    move-wide/from16 v3, p10

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    .line 807
    .local v27, "charUuid":Ljava/util/UUID;
    new-instance v28, Ljava/util/UUID;

    move-object/from16 v0, v28

    move-wide/from16 v1, p17

    move-wide/from16 v3, p15

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    .line 808
    .local v28, "descUuid":Ljava/util/UUID;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->addressByConnId(I)Ljava/lang/String;

    move-result-object v7

    .line 813
    .local v7, "address":Ljava/lang/String;
    if-nez p2, :cond_1

    .line 814
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getByConnId(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v26

    .line 815
    .local v26, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattCallback;>.App;"
    if-eqz v26, :cond_0

    .line 816
    move-object/from16 v0, v26

    iget-object v6, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v6, Landroid/bluetooth/IBluetoothGattCallback;

    .line 817
    new-instance v10, Landroid/os/ParcelUuid;

    move-object/from16 v0, v29

    invoke-direct {v10, v0}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    .line 818
    new-instance v12, Landroid/os/ParcelUuid;

    move-object/from16 v0, v27

    invoke-direct {v12, v0}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    .line 819
    new-instance v14, Landroid/os/ParcelUuid;

    move-object/from16 v0, v28

    invoke-direct {v14, v0}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v11, p9

    move/from16 v13, p14

    .line 816
    invoke-interface/range {v6 .. v14}, Landroid/bluetooth/IBluetoothGattCallback;->onGetDescriptor(Ljava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;)V

    :cond_0
    move-object/from16 v8, p0

    move/from16 v9, p1

    move/from16 v10, p3

    move/from16 v11, p4

    move-wide/from16 v12, p5

    move-wide/from16 v14, p7

    move/from16 v16, p9

    move-wide/from16 v17, p10

    move-wide/from16 v19, p12

    move/from16 v21, p14

    move-wide/from16 v22, p15

    move-wide/from16 v24, p17

    .line 823
    invoke-direct/range {v8 .. v25}, Lcom/android/bluetooth/gatt/GattService;->gattClientGetDescriptorNative(IIIJJIJJIJJ)V

    .line 803
    .end local v26    # "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattCallback;>.App;"
    :goto_0
    return-void

    .line 829
    :cond_1
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v6}, Lcom/android/bluetooth/gatt/GattService;->continueSearch(II)V

    goto :goto_0
.end method

.method onGetIncludedService(IIIIJJIIJJ)V
    .locals 25
    .param p1, "connId"    # I
    .param p2, "status"    # I
    .param p3, "srvcType"    # I
    .param p4, "srvcInstId"    # I
    .param p5, "srvcUuidLsb"    # J
    .param p7, "srvcUuidMsb"    # J
    .param p9, "inclSrvcType"    # I
    .param p10, "inclSrvcInstId"    # I
    .param p11, "inclSrvcUuidLsb"    # J
    .param p13, "inclSrvcUuidMsb"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 837
    new-instance v24, Ljava/util/UUID;

    move-object/from16 v0, v24

    move-wide/from16 v1, p7

    move-wide/from16 v3, p5

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    .line 838
    .local v24, "srvcUuid":Ljava/util/UUID;
    new-instance v23, Ljava/util/UUID;

    move-object/from16 v0, v23

    move-wide/from16 v1, p13

    move-wide/from16 v3, p11

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    .line 839
    .local v23, "inclSrvcUuid":Ljava/util/UUID;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->addressByConnId(I)Ljava/lang/String;

    move-result-object v7

    .line 845
    .local v7, "address":Ljava/lang/String;
    if-nez p2, :cond_1

    .line 846
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getByConnId(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v22

    .line 847
    .local v22, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattCallback;>.App;"
    if-eqz v22, :cond_0

    .line 848
    move-object/from16 v0, v22

    iget-object v6, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v6, Landroid/bluetooth/IBluetoothGattCallback;

    .line 849
    new-instance v10, Landroid/os/ParcelUuid;

    move-object/from16 v0, v24

    invoke-direct {v10, v0}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    .line 850
    new-instance v13, Landroid/os/ParcelUuid;

    move-object/from16 v0, v23

    invoke-direct {v13, v0}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v11, p9

    move/from16 v12, p10

    .line 848
    invoke-interface/range {v6 .. v13}, Landroid/bluetooth/IBluetoothGattCallback;->onGetIncludedService(Ljava/lang/String;IILandroid/os/ParcelUuid;IILandroid/os/ParcelUuid;)V

    :cond_0
    move-object/from16 v8, p0

    move/from16 v9, p1

    move/from16 v10, p3

    move/from16 v11, p4

    move-wide/from16 v12, p5

    move-wide/from16 v14, p7

    move/from16 v16, p9

    move/from16 v17, p10

    move-wide/from16 v18, p11

    move-wide/from16 v20, p13

    .line 854
    invoke-direct/range {v8 .. v21}, Lcom/android/bluetooth/gatt/GattService;->gattClientGetIncludedServiceNative(IIIJJIIJJ)V

    .line 836
    .end local v22    # "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattCallback;>.App;"
    :goto_0
    return-void

    .line 859
    :cond_1
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v6}, Lcom/android/bluetooth/gatt/GattService;->continueSearch(II)V

    goto :goto_0
.end method

.method onIncludedServiceAdded(IIII)V
    .locals 3
    .param p1, "status"    # I
    .param p2, "serverIf"    # I
    .param p3, "srvcHandle"    # I
    .param p4, "includedSrvcHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1760
    const-string/jumbo v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onIncludedServiceAdded() status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1761
    const-string/jumbo v2, ", service="

    .line 1760
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1761
    const-string/jumbo v2, ", included="

    .line 1760
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1762
    invoke-direct {p0, p2, p1, p3}, Lcom/android/bluetooth/gatt/GattService;->continueServiceDeclaration(III)V

    .line 1759
    return-void
.end method

.method onMtuChanged(II)V
    .locals 5
    .param p1, "connId"    # I
    .param p2, "mtu"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1972
    const-string/jumbo v2, "BtGatt.GattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onMtuChanged() - connId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mtu="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1974
    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->addressByConnId(I)Ljava/lang/String;

    move-result-object v0

    .line 1975
    .local v0, "address":Ljava/lang/String;
    if-nez v0, :cond_0

    return-void

    .line 1977
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->getByConnId(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v1

    .line 1978
    .local v1, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattServerCallback;>.App;"
    if-nez v1, :cond_1

    return-void

    .line 1980
    :cond_1
    iget-object v2, v1, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/IBluetoothGattServerCallback;

    invoke-interface {v2, v0, p2}, Landroid/bluetooth/IBluetoothGattServerCallback;->onMtuChanged(Ljava/lang/String;I)V

    .line 1971
    return-void
.end method

.method onMultipleAdvertiseCallback(IIZLandroid/bluetooth/le/AdvertiseSettings;)V
    .locals 3
    .param p1, "clientIf"    # I
    .param p2, "status"    # I
    .param p3, "isStart"    # Z
    .param p4, "settings"    # Landroid/bluetooth/le/AdvertiseSettings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1260
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getById(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v0

    .line 1261
    .local v0, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattCallback;>.App;"
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 1262
    :cond_0
    const-string/jumbo v1, "BtGatt.GattService"

    const-string/jumbo v2, "Advertise app or callback is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    return-void

    .line 1265
    :cond_1
    iget-object v1, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/IBluetoothGattCallback;

    invoke-interface {v1, p2, p3, p4}, Landroid/bluetooth/IBluetoothGattCallback;->onMultiAdvertiseCallback(IZLandroid/bluetooth/le/AdvertiseSettings;)V

    .line 1259
    return-void
.end method

.method onNotificationSent(II)V
    .locals 3
    .param p1, "connId"    # I
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1941
    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->addressByConnId(I)Ljava/lang/String;

    move-result-object v0

    .line 1942
    .local v0, "address":Ljava/lang/String;
    if-nez v0, :cond_0

    return-void

    .line 1944
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->getByConnId(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v1

    .line 1945
    .local v1, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattServerCallback;>.App;"
    if-nez v1, :cond_1

    return-void

    .line 1947
    :cond_1
    iget-object v2, v1, Lcom/android/bluetooth/gatt/ContextMap$App;->isCongested:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1948
    iget-object v2, v1, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/IBluetoothGattServerCallback;

    invoke-interface {v2, v0, p2}, Landroid/bluetooth/IBluetoothGattServerCallback;->onNotificationSent(Ljava/lang/String;I)V

    .line 1938
    :goto_0
    return-void

    .line 1950
    :cond_2
    const/16 v2, 0x8f

    if-ne p2, v2, :cond_3

    .line 1951
    const/4 p2, 0x0

    .line 1953
    :cond_3
    new-instance v2, Lcom/android/bluetooth/gatt/CallbackInfo;

    invoke-direct {v2, v0, p2}, Lcom/android/bluetooth/gatt/CallbackInfo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/gatt/ContextMap$App;->queueCallback(Lcom/android/bluetooth/gatt/CallbackInfo;)V

    goto :goto_0
.end method

.method onNotify(ILjava/lang/String;IIJJIJJZ[B)V
    .locals 15
    .param p1, "connId"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "srvcType"    # I
    .param p4, "srvcInstId"    # I
    .param p5, "srvcUuidLsb"    # J
    .param p7, "srvcUuidMsb"    # J
    .param p9, "charInstId"    # I
    .param p10, "charUuidLsb"    # J
    .param p12, "charUuidMsb"    # J
    .param p14, "isNotify"    # Z
    .param p15, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 879
    new-instance v14, Ljava/util/UUID;

    move-wide/from16 v0, p7

    move-wide/from16 v2, p5

    invoke-direct {v14, v0, v1, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    .line 880
    .local v14, "srvcUuid":Ljava/util/UUID;
    new-instance v13, Ljava/util/UUID;

    move-wide/from16 v0, p12

    move-wide/from16 v2, p10

    invoke-direct {v13, v0, v1, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    .line 886
    .local v13, "charUuid":Ljava/util/UUID;
    invoke-direct {p0, v13}, Lcom/android/bluetooth/gatt/GattService;->isHidUuid(Ljava/util/UUID;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 887
    const-string/jumbo v4, "android.permission.BLUETOOTH_PRIVILEGED"

    invoke-virtual {p0, v4}, Lcom/android/bluetooth/gatt/GattService;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 888
    return-void

    .line 891
    :cond_0
    iget-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getByConnId(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v12

    .line 892
    .local v12, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattCallback;>.App;"
    if-eqz v12, :cond_1

    .line 893
    iget-object v4, v12, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v4, Landroid/bluetooth/IBluetoothGattCallback;

    .line 894
    new-instance v8, Landroid/os/ParcelUuid;

    invoke-direct {v8, v14}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    .line 895
    new-instance v10, Landroid/os/ParcelUuid;

    invoke-direct {v10, v13}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    move-object/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v9, p9

    move-object/from16 v11, p15

    .line 893
    invoke-interface/range {v4 .. v11}, Landroid/bluetooth/IBluetoothGattCallback;->onNotify(Ljava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;[B)V

    .line 878
    :cond_1
    return-void
.end method

.method onReadCharacteristic(IIIIJJIJJI[B)V
    .locals 16
    .param p1, "connId"    # I
    .param p2, "status"    # I
    .param p3, "srvcType"    # I
    .param p4, "srvcInstId"    # I
    .param p5, "srvcUuidLsb"    # J
    .param p7, "srvcUuidMsb"    # J
    .param p9, "charInstId"    # I
    .param p10, "charUuidLsb"    # J
    .param p12, "charUuidMsb"    # J
    .param p14, "charType"    # I
    .param p15, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 905
    new-instance v15, Ljava/util/UUID;

    move-wide/from16 v0, p7

    move-wide/from16 v2, p5

    invoke-direct {v15, v0, v1, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    .line 906
    .local v15, "srvcUuid":Ljava/util/UUID;
    new-instance v14, Ljava/util/UUID;

    move-wide/from16 v0, p12

    move-wide/from16 v2, p10

    invoke-direct {v14, v0, v1, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    .line 907
    .local v14, "charUuid":Ljava/util/UUID;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->addressByConnId(I)Ljava/lang/String;

    move-result-object v5

    .line 912
    .local v5, "address":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getByConnId(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v13

    .line 913
    .local v13, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattCallback;>.App;"
    if-eqz v13, :cond_0

    .line 914
    iget-object v4, v13, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v4, Landroid/bluetooth/IBluetoothGattCallback;

    .line 915
    new-instance v9, Landroid/os/ParcelUuid;

    invoke-direct {v9, v15}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    .line 916
    new-instance v11, Landroid/os/ParcelUuid;

    invoke-direct {v11, v14}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v10, p9

    move-object/from16 v12, p15

    .line 914
    invoke-interface/range {v4 .. v12}, Landroid/bluetooth/IBluetoothGattCallback;->onCharacteristicRead(Ljava/lang/String;IIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;[B)V

    .line 903
    :cond_0
    return-void
.end method

.method onReadDescriptor(IIIIJJIJJIJJI[B)V
    .locals 21
    .param p1, "connId"    # I
    .param p2, "status"    # I
    .param p3, "srvcType"    # I
    .param p4, "srvcInstId"    # I
    .param p5, "srvcUuidLsb"    # J
    .param p7, "srvcUuidMsb"    # J
    .param p9, "charInstId"    # I
    .param p10, "charUuidLsb"    # J
    .param p12, "charUuidMsb"    # J
    .param p14, "descrInstId"    # I
    .param p15, "descrUuidLsb"    # J
    .param p17, "descrUuidMsb"    # J
    .param p19, "charType"    # I
    .param p20, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 966
    new-instance v19, Ljava/util/UUID;

    move-object/from16 v0, v19

    move-wide/from16 v1, p7

    move-wide/from16 v3, p5

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    .line 967
    .local v19, "srvcUuid":Ljava/util/UUID;
    new-instance v17, Ljava/util/UUID;

    move-object/from16 v0, v17

    move-wide/from16 v1, p12

    move-wide/from16 v3, p10

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    .line 968
    .local v17, "charUuid":Ljava/util/UUID;
    new-instance v18, Ljava/util/UUID;

    move-object/from16 v0, v18

    move-wide/from16 v1, p17

    move-wide/from16 v3, p15

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    .line 969
    .local v18, "descrUuid":Ljava/util/UUID;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->addressByConnId(I)Ljava/lang/String;

    move-result-object v6

    .line 974
    .local v6, "address":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getByConnId(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v16

    .line 975
    .local v16, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattCallback;>.App;"
    if-eqz v16, :cond_0

    .line 976
    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v5, Landroid/bluetooth/IBluetoothGattCallback;

    .line 977
    new-instance v10, Landroid/os/ParcelUuid;

    move-object/from16 v0, v19

    invoke-direct {v10, v0}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    .line 978
    new-instance v12, Landroid/os/ParcelUuid;

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    .line 979
    new-instance v14, Landroid/os/ParcelUuid;

    move-object/from16 v0, v18

    invoke-direct {v14, v0}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v11, p9

    move/from16 v13, p14

    move-object/from16 v15, p20

    .line 976
    invoke-interface/range {v5 .. v15}, Landroid/bluetooth/IBluetoothGattCallback;->onDescriptorRead(Ljava/lang/String;IIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;[B)V

    .line 964
    :cond_0
    return-void
.end method

.method onReadRemoteRssi(ILjava/lang/String;II)V
    .locals 4
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "rssi"    # I
    .param p4, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1007
    const-string/jumbo v1, "BtGatt.GattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onReadRemoteRssi() - clientIf="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " address="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1008
    const-string/jumbo v3, ", rssi="

    .line 1007
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1008
    const-string/jumbo v3, ", status="

    .line 1007
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getById(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v0

    .line 1011
    .local v0, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattCallback;>.App;"
    if-eqz v0, :cond_0

    .line 1012
    iget-object v1, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/IBluetoothGattCallback;

    invoke-interface {v1, p2, p3, p4}, Landroid/bluetooth/IBluetoothGattCallback;->onReadRemoteRssi(Ljava/lang/String;II)V

    .line 1006
    :cond_0
    return-void
.end method

.method onRegisterForNotifications(IIIIIJJIJJ)V
    .locals 10
    .param p1, "connId"    # I
    .param p2, "status"    # I
    .param p3, "registered"    # I
    .param p4, "srvcType"    # I
    .param p5, "srvcInstId"    # I
    .param p6, "srvcUuidLsb"    # J
    .param p8, "srvcUuidMsb"    # J
    .param p10, "charInstId"    # I
    .param p11, "charUuidLsb"    # J
    .param p13, "charUuidMsb"    # J

    .prologue
    .line 866
    new-instance v6, Ljava/util/UUID;

    move-wide/from16 v0, p8

    move-wide/from16 v2, p6

    invoke-direct {v6, v0, v1, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    .line 867
    .local v6, "srvcUuid":Ljava/util/UUID;
    new-instance v5, Ljava/util/UUID;

    move-wide/from16 v0, p13

    move-wide/from16 v2, p11

    invoke-direct {v5, v0, v1, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    .line 868
    .local v5, "charUuid":Ljava/util/UUID;
    iget-object v7, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v7, p1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->addressByConnId(I)Ljava/lang/String;

    move-result-object v4

    .line 870
    .local v4, "address":Ljava/lang/String;
    const-string/jumbo v7, "BtGatt.GattService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onRegisterForNotifications() - address="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 871
    const-string/jumbo v9, ", status="

    .line 870
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 871
    const-string/jumbo v9, ", registered="

    .line 870
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 872
    const-string/jumbo v9, ", charUuid="

    .line 870
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    return-void
.end method

.method onResponseSendCompleted(II)V
    .locals 3
    .param p1, "status"    # I
    .param p2, "attrHandle"    # I

    .prologue
    .line 1935
    const-string/jumbo v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onResponseSendCompleted() handle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1934
    return-void
.end method

.method onScanFilterConfig(IIIII)V
    .locals 3
    .param p1, "action"    # I
    .param p2, "status"    # I
    .param p3, "clientIf"    # I
    .param p4, "filterType"    # I
    .param p5, "availableSpace"    # I

    .prologue
    .line 1036
    const-string/jumbo v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onScanFilterConfig() - clientIf="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1037
    const-string/jumbo v2, " status = "

    .line 1036
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1037
    const-string/jumbo v2, ", filterType="

    .line 1036
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1038
    const-string/jumbo v2, ", availableSpace="

    .line 1036
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mScanManager:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-virtual {v0, p3, p2}, Lcom/android/bluetooth/gatt/ScanManager;->callbackDone(II)V

    .line 1034
    return-void
.end method

.method onScanFilterEnableDisabled(III)V
    .locals 3
    .param p1, "action"    # I
    .param p2, "status"    # I
    .param p3, "clientIf"    # I

    .prologue
    .line 1018
    const-string/jumbo v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onScanFilterEnableDisabled() - clientIf="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1019
    const-string/jumbo v2, ", action="

    .line 1018
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mScanManager:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-virtual {v0, p3, p2}, Lcom/android/bluetooth/gatt/ScanManager;->callbackDone(II)V

    .line 1016
    return-void
.end method

.method onScanFilterParamsConfigured(IIII)V
    .locals 3
    .param p1, "action"    # I
    .param p2, "status"    # I
    .param p3, "clientIf"    # I
    .param p4, "availableSpace"    # I

    .prologue
    .line 1026
    const-string/jumbo v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onScanFilterParamsConfigured() - clientIf="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1027
    const-string/jumbo v2, ", status="

    .line 1026
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1027
    const-string/jumbo v2, ", action="

    .line 1026
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1028
    const-string/jumbo v2, ", availableSpace="

    .line 1026
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mScanManager:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-virtual {v0, p3, p2}, Lcom/android/bluetooth/gatt/ScanManager;->callbackDone(II)V

    .line 1024
    return-void
.end method

.method onScanManagerErrorCallback(II)V
    .locals 3
    .param p1, "clientIf"    # I
    .param p2, "errorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1270
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getById(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v0

    .line 1271
    .local v0, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattCallback;>.App;"
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 1272
    :cond_0
    const-string/jumbo v1, "BtGatt.GattService"

    const-string/jumbo v2, "App or callback is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    return-void

    .line 1275
    :cond_1
    iget-object v1, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/IBluetoothGattCallback;

    invoke-interface {v1, p2}, Landroid/bluetooth/IBluetoothGattCallback;->onScanManagerErrorCallback(I)V

    .line 1269
    return-void
.end method

.method onScanParamSetupCompleted(II)V
    .locals 4
    .param p1, "status"    # I
    .param p2, "clientIf"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1249
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v1, p2}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getById(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v0

    .line 1250
    .local v0, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattCallback;>.App;"
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 1251
    :cond_0
    const-string/jumbo v1, "BtGatt.GattService"

    const-string/jumbo v2, "Advertise app or callback is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    return-void

    .line 1254
    :cond_1
    const-string/jumbo v1, "BtGatt.GattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onScanParamSetupCompleted : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    return-void
.end method

.method onScanResult(Ljava/lang/String;I[B)V
    .locals 21
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "rssi"    # I
    .param p3, "adv_data"    # [B

    .prologue
    .line 619
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/bluetooth/gatt/GattService;->parseUuids([B)Ljava/util/List;

    move-result-object v18

    .line 620
    .local v18, "remoteUuids":Ljava/util/List;, "Ljava/util/List<Ljava/util/UUID;>;"
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/gatt/GattService;->mScanManager:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-virtual {v6}, Lcom/android/bluetooth/gatt/ScanManager;->getRegularScanQueue()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "client$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/bluetooth/gatt/ScanClient;

    .line 621
    .local v12, "client":Lcom/android/bluetooth/gatt/ScanClient;
    iget-object v6, v12, Lcom/android/bluetooth/gatt/ScanClient;->uuids:[Ljava/util/UUID;

    array-length v6, v6

    if-lez v6, :cond_4

    .line 622
    const/4 v15, 0x0

    .line 623
    .local v15, "matches":I
    iget-object v7, v12, Lcom/android/bluetooth/gatt/ScanClient;->uuids:[Ljava/util/UUID;

    const/4 v6, 0x0

    array-length v8, v7

    :goto_1
    if-ge v6, v8, :cond_3

    aget-object v19, v7, v6

    .line 624
    .local v19, "search":Ljava/util/UUID;
    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "remote$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/UUID;

    .line 625
    .local v16, "remote":Ljava/util/UUID;
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 626
    add-int/lit8 v15, v15, 0x1

    .line 623
    .end local v16    # "remote":Ljava/util/UUID;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 632
    .end local v17    # "remote$iterator":Ljava/util/Iterator;
    .end local v19    # "search":Ljava/util/UUID;
    :cond_3
    iget-object v6, v12, Lcom/android/bluetooth/gatt/ScanClient;->uuids:[Ljava/util/UUID;

    array-length v6, v6

    if-lt v15, v6, :cond_0

    .line 635
    .end local v15    # "matches":I
    :cond_4
    iget-boolean v6, v12, Lcom/android/bluetooth/gatt/ScanClient;->isServer:Z

    if-nez v6, :cond_5

    .line 636
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    iget v7, v12, Lcom/android/bluetooth/gatt/ScanClient;->clientIf:I

    invoke-virtual {v6, v7}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getById(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v10

    .line 637
    .local v10, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattCallback;>.App;"
    if-eqz v10, :cond_0

    .line 638
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    .line 640
    .local v5, "device":Landroid/bluetooth/BluetoothDevice;
    new-instance v4, Landroid/bluetooth/le/ScanResult;

    invoke-static/range {p3 .. p3}, Landroid/bluetooth/le/ScanRecord;->parseFromBytes([B)Landroid/bluetooth/le/ScanRecord;

    move-result-object v6

    .line 641
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v8

    move/from16 v7, p2

    .line 640
    invoke-direct/range {v4 .. v9}, Landroid/bluetooth/le/ScanResult;-><init>(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/le/ScanRecord;IJ)V

    .line 644
    .local v4, "result":Landroid/bluetooth/le/ScanResult;
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/bluetooth/gatt/GattService;->hasScanResultPermission(Lcom/android/bluetooth/gatt/ScanClient;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v4}, Lcom/android/bluetooth/gatt/GattService;->matchesFilters(Lcom/android/bluetooth/gatt/ScanClient;Landroid/bluetooth/le/ScanResult;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 646
    :try_start_0
    iget-object v0, v12, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    move-object/from16 v20, v0

    .line 647
    .local v20, "settings":Landroid/bluetooth/le/ScanSettings;
    invoke-virtual/range {v20 .. v20}, Landroid/bluetooth/le/ScanSettings;->getCallbackType()I

    move-result v6

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_0

    .line 649
    iget-object v6, v10, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v6, Landroid/bluetooth/IBluetoothGattCallback;

    invoke-interface {v6, v4}, Landroid/bluetooth/IBluetoothGattCallback;->onScanResult(Landroid/bluetooth/le/ScanResult;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 651
    .end local v20    # "settings":Landroid/bluetooth/le/ScanSettings;
    :catch_0
    move-exception v14

    .line 652
    .local v14, "e":Landroid/os/RemoteException;
    const-string/jumbo v6, "BtGatt.GattService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    iget v7, v12, Lcom/android/bluetooth/gatt/ScanClient;->clientIf:I

    invoke-virtual {v6, v7}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->remove(I)V

    .line 654
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/gatt/GattService;->mScanManager:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-virtual {v6, v12}, Lcom/android/bluetooth/gatt/ScanManager;->stopScan(Lcom/android/bluetooth/gatt/ScanClient;)V

    goto/16 :goto_0

    .line 659
    .end local v4    # "result":Landroid/bluetooth/le/ScanResult;
    .end local v5    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v10    # "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattCallback;>.App;"
    .end local v14    # "e":Landroid/os/RemoteException;
    :cond_5
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    iget v7, v12, Lcom/android/bluetooth/gatt/ScanClient;->clientIf:I

    invoke-virtual {v6, v7}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->getById(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v11

    .line 660
    .local v11, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattServerCallback;>.App;"
    if-eqz v11, :cond_0

    .line 662
    :try_start_1
    iget-object v6, v11, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v6, Landroid/bluetooth/IBluetoothGattServerCallback;

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-interface {v6, v0, v1, v2}, Landroid/bluetooth/IBluetoothGattServerCallback;->onScanResult(Ljava/lang/String;I[B)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 663
    :catch_1
    move-exception v14

    .line 664
    .restart local v14    # "e":Landroid/os/RemoteException;
    const-string/jumbo v6, "BtGatt.GattService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    iget v7, v12, Lcom/android/bluetooth/gatt/ScanClient;->clientIf:I

    invoke-virtual {v6, v7}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->remove(I)V

    .line 666
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/gatt/GattService;->mScanManager:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-virtual {v6, v12}, Lcom/android/bluetooth/gatt/ScanManager;->stopScan(Lcom/android/bluetooth/gatt/ScanClient;)V

    goto/16 :goto_0

    .line 616
    .end local v11    # "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattServerCallback;>.App;"
    .end local v12    # "client":Lcom/android/bluetooth/gatt/ScanClient;
    .end local v14    # "e":Landroid/os/RemoteException;
    :cond_6
    return-void
.end method

.method onSearchCompleted(II)V
    .locals 3
    .param p1, "connId"    # I
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 742
    const-string/jumbo v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSearchCompleted() - connId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/gatt/GattService;->continueSearch(II)V

    .line 741
    return-void
.end method

.method onSearchResult(IIIJJ)V
    .locals 16
    .param p1, "connId"    # I
    .param p2, "srvcType"    # I
    .param p3, "srvcInstId"    # I
    .param p4, "srvcUuidLsb"    # J
    .param p6, "srvcUuidMsb"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 750
    new-instance v14, Ljava/util/UUID;

    move-wide/from16 v0, p6

    move-wide/from16 v2, p4

    invoke-direct {v14, v0, v1, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    .line 751
    .local v14, "uuid":Ljava/util/UUID;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->addressByConnId(I)Ljava/lang/String;

    move-result-object v12

    .line 755
    .local v12, "address":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/gatt/GattService;->mSearchQueue:Lcom/android/bluetooth/gatt/SearchQueue;

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    invoke-virtual/range {v4 .. v11}, Lcom/android/bluetooth/gatt/SearchQueue;->add(IIIJJ)V

    .line 757
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getByConnId(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v13

    .line 758
    .local v13, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattCallback;>.App;"
    if-eqz v13, :cond_0

    .line 759
    iget-object v4, v13, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v4, Landroid/bluetooth/IBluetoothGattCallback;

    .line 760
    new-instance v5, Landroid/os/ParcelUuid;

    invoke-direct {v5, v14}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    .line 759
    move/from16 v0, p2

    move/from16 v1, p3

    invoke-interface {v4, v12, v0, v1, v5}, Landroid/bluetooth/IBluetoothGattCallback;->onGetService(Ljava/lang/String;IILandroid/os/ParcelUuid;)V

    .line 749
    :cond_0
    return-void
.end method

.method onServerCongestion(IZ)V
    .locals 5
    .param p1, "connId"    # I
    .param p2, "congested"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1958
    const-string/jumbo v2, "BtGatt.GattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onServerCongestion() - connId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", congested="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1960
    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->getByConnId(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v0

    .line 1961
    .local v0, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattServerCallback;>.App;"
    if-nez v0, :cond_0

    return-void

    .line 1963
    :cond_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->isCongested:Ljava/lang/Boolean;

    .line 1964
    :goto_0
    iget-object v2, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->isCongested:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1965
    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/ContextMap$App;->popQueuedCallback()Lcom/android/bluetooth/gatt/CallbackInfo;

    move-result-object v1

    .line 1966
    .local v1, "callbackInfo":Lcom/android/bluetooth/gatt/CallbackInfo;
    if-nez v1, :cond_1

    return-void

    .line 1967
    :cond_1
    iget-object v2, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/IBluetoothGattServerCallback;

    iget-object v3, v1, Lcom/android/bluetooth/gatt/CallbackInfo;->address:Ljava/lang/String;

    iget v4, v1, Lcom/android/bluetooth/gatt/CallbackInfo;->status:I

    invoke-interface {v2, v3, v4}, Landroid/bluetooth/IBluetoothGattServerCallback;->onNotificationSent(Ljava/lang/String;I)V

    goto :goto_0

    .line 1957
    .end local v1    # "callbackInfo":Lcom/android/bluetooth/gatt/CallbackInfo;
    :cond_2
    return-void
.end method

.method onServerRegistered(IIJJ)V
    .locals 5
    .param p1, "status"    # I
    .param p2, "serverIf"    # I
    .param p3, "uuidLsb"    # J
    .param p5, "uuidMsb"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1734
    new-instance v1, Ljava/util/UUID;

    invoke-direct {v1, p5, p6, p3, p4}, Ljava/util/UUID;-><init>(JJ)V

    .line 1735
    .local v1, "uuid":Ljava/util/UUID;
    const-string/jumbo v2, "BtGatt.GattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onServerRegistered() - UUID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", serverIf="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1736
    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v2, v1}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->getByUuid(Ljava/util/UUID;)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v0

    .line 1737
    .local v0, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattServerCallback;>.App;"
    if-eqz v0, :cond_0

    .line 1738
    iput p2, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->id:I

    .line 1739
    new-instance v2, Lcom/android/bluetooth/gatt/GattService$ServerDeathRecipient;

    invoke-direct {v2, p0, p2}, Lcom/android/bluetooth/gatt/GattService$ServerDeathRecipient;-><init>(Lcom/android/bluetooth/gatt/GattService;I)V

    invoke-virtual {v0, v2}, Lcom/android/bluetooth/gatt/ContextMap$App;->linkToDeath(Landroid/os/IBinder$DeathRecipient;)V

    .line 1740
    iget-object v2, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/IBluetoothGattServerCallback;

    invoke-interface {v2, p1, p2}, Landroid/bluetooth/IBluetoothGattServerCallback;->onServerRegistered(II)V

    .line 1732
    :cond_0
    return-void
.end method

.method onServiceAdded(IIIIJJI)V
    .locals 9
    .param p1, "status"    # I
    .param p2, "serverIf"    # I
    .param p3, "srvcType"    # I
    .param p4, "srvcInstId"    # I
    .param p5, "srvcUuidLsb"    # J
    .param p7, "srvcUuidMsb"    # J
    .param p9, "srvcHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1747
    new-instance v5, Ljava/util/UUID;

    move-wide/from16 v0, p7

    invoke-direct {v5, v0, v1, p5, p6}, Ljava/util/UUID;-><init>(JJ)V

    .line 1748
    .local v5, "uuid":Ljava/util/UUID;
    const-string/jumbo v2, "BtGatt.GattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onServiceAdded() UUID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1749
    const-string/jumbo v4, ", handle="

    .line 1748
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p9

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1750
    if-nez p1, :cond_0

    .line 1751
    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    .line 1752
    iget-object v3, p0, Lcom/android/bluetooth/gatt/GattService;->mAdvertisingServiceUuids:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v8

    move v3, p2

    move/from16 v4, p9

    move v6, p3

    move v7, p4

    .line 1751
    invoke-virtual/range {v2 .. v8}, Lcom/android/bluetooth/gatt/HandleMap;->addService(IILjava/util/UUID;IIZ)V

    .line 1755
    :cond_0
    move/from16 v0, p9

    invoke-direct {p0, p2, p1, v0}, Lcom/android/bluetooth/gatt/GattService;->continueServiceDeclaration(III)V

    .line 1746
    return-void
.end method

.method onServiceDeleted(III)V
    .locals 3
    .param p1, "status"    # I
    .param p2, "serverIf"    # I
    .param p3, "srvcHandle"    # I

    .prologue
    .line 1807
    const-string/jumbo v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceDeleted() srvcHandle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1808
    const-string/jumbo v2, ", status="

    .line 1807
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1809
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    invoke-virtual {v0, p2, p3}, Lcom/android/bluetooth/gatt/HandleMap;->deleteService(II)V

    .line 1806
    return-void
.end method

.method onServiceStarted(III)V
    .locals 3
    .param p1, "status"    # I
    .param p2, "serverIf"    # I
    .param p3, "srvcHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1791
    const-string/jumbo v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceStarted() srvcHandle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1792
    const-string/jumbo v2, ", status="

    .line 1791
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1793
    if-nez p1, :cond_0

    .line 1794
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, p3, v1}, Lcom/android/bluetooth/gatt/HandleMap;->setStarted(IIZ)V

    .line 1790
    :cond_0
    return-void
.end method

.method onServiceStopped(III)V
    .locals 4
    .param p1, "status"    # I
    .param p2, "serverIf"    # I
    .param p3, "srvcHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1799
    const-string/jumbo v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceStopped() srvcHandle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1800
    const-string/jumbo v2, ", status="

    .line 1799
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1801
    if-nez p1, :cond_0

    .line 1802
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    invoke-virtual {v0, p2, p3, v3}, Lcom/android/bluetooth/gatt/HandleMap;->setStarted(IIZ)V

    .line 1803
    :cond_0
    invoke-direct {p0, p2, p1}, Lcom/android/bluetooth/gatt/GattService;->stopNextService(II)V

    .line 1798
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 226
    invoke-static {p0, p1}, Lcom/android/bluetooth/gatt/GattDebugUtils;->handleDebugAction(Lcom/android/bluetooth/gatt/GattService;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    const/4 v0, 0x2

    return v0

    .line 229
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/bluetooth/btservice/ProfileService;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method

.method onTrackAdvFoundLost(Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;)V
    .locals 13
    .param p1, "trackingInfo"    # Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1211
    const-string/jumbo v2, "BtGatt.GattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onTrackAdvFoundLost() - clientIf= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->getClientIf()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1212
    const-string/jumbo v4, " address = "

    .line 1211
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1212
    invoke-virtual {p1}, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 1211
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1213
    const-string/jumbo v4, " adv_state = "

    .line 1211
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1213
    invoke-virtual {p1}, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->getAdvState()I

    move-result v4

    .line 1211
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {p1}, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->getClientIf()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getById(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v7

    .line 1216
    .local v7, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattCallback;>.App;"
    if-eqz v7, :cond_0

    iget-object v2, v7, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    if-nez v2, :cond_1

    .line 1217
    :cond_0
    const-string/jumbo v2, "BtGatt.GattService"

    const-string/jumbo v3, "app or callback is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    return-void

    .line 1221
    :cond_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    .line 1222
    invoke-virtual {p1}, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 1221
    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 1223
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p1}, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->getAdvState()I

    move-result v6

    .line 1224
    .local v6, "advertiserState":I
    new-instance v0, Landroid/bluetooth/le/ScanResult;

    .line 1225
    invoke-virtual {p1}, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->getResult()[B

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/le/ScanRecord;->parseFromBytes([B)Landroid/bluetooth/le/ScanRecord;

    move-result-object v2

    .line 1226
    invoke-virtual {p1}, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->getRSSIValue()I

    move-result v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v4

    .line 1224
    invoke-direct/range {v0 .. v5}, Landroid/bluetooth/le/ScanResult;-><init>(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/le/ScanRecord;IJ)V

    .line 1228
    .local v0, "result":Landroid/bluetooth/le/ScanResult;
    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mScanManager:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-virtual {v2}, Lcom/android/bluetooth/gatt/ScanManager;->getRegularScanQueue()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "client$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/bluetooth/gatt/ScanClient;

    .line 1229
    .local v8, "client":Lcom/android/bluetooth/gatt/ScanClient;
    iget v2, v8, Lcom/android/bluetooth/gatt/ScanClient;->clientIf:I

    invoke-virtual {p1}, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->getClientIf()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 1230
    iget-object v10, v8, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    .line 1231
    .local v10, "settings":Landroid/bluetooth/le/ScanSettings;
    if-nez v6, :cond_3

    .line 1232
    invoke-virtual {v10}, Landroid/bluetooth/le/ScanSettings;->getCallbackType()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_3

    .line 1234
    iget-object v2, v7, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/IBluetoothGattCallback;

    invoke-interface {v2, v12, v0}, Landroid/bluetooth/IBluetoothGattCallback;->onFoundOrLost(ZLandroid/bluetooth/le/ScanResult;)V

    goto :goto_0

    .line 1235
    :cond_3
    if-ne v6, v12, :cond_4

    .line 1236
    invoke-virtual {v10}, Landroid/bluetooth/le/ScanSettings;->getCallbackType()I

    move-result v2

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_4

    .line 1238
    iget-object v2, v7, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/IBluetoothGattCallback;

    invoke-interface {v2, v11, v0}, Landroid/bluetooth/IBluetoothGattCallback;->onFoundOrLost(ZLandroid/bluetooth/le/ScanResult;)V

    goto :goto_0

    .line 1240
    :cond_4
    const-string/jumbo v2, "BtGatt.GattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Not reporting onlost/onfound : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1241
    const-string/jumbo v4, " clientIf = "

    .line 1240
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1241
    iget v4, v8, Lcom/android/bluetooth/gatt/ScanClient;->clientIf:I

    .line 1240
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1242
    const-string/jumbo v4, " callbackType "

    .line 1240
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1242
    invoke-virtual {v10}, Landroid/bluetooth/le/ScanSettings;->getCallbackType()I

    move-result v4

    .line 1240
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1210
    .end local v8    # "client":Lcom/android/bluetooth/gatt/ScanClient;
    .end local v10    # "settings":Landroid/bluetooth/le/ScanSettings;
    :cond_5
    return-void
.end method

.method onWriteCharacteristic(IIIIJJIJJ)V
    .locals 15
    .param p1, "connId"    # I
    .param p2, "status"    # I
    .param p3, "srvcType"    # I
    .param p4, "srvcInstId"    # I
    .param p5, "srvcUuidLsb"    # J
    .param p7, "srvcUuidMsb"    # J
    .param p9, "charInstId"    # I
    .param p10, "charUuidLsb"    # J
    .param p12, "charUuidMsb"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 925
    new-instance v14, Ljava/util/UUID;

    move-wide/from16 v0, p7

    move-wide/from16 v2, p5

    invoke-direct {v14, v0, v1, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    .line 926
    .local v14, "srvcUuid":Ljava/util/UUID;
    new-instance v13, Ljava/util/UUID;

    move-wide/from16 v0, p12

    move-wide/from16 v2, p10

    invoke-direct {v13, v0, v1, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    .line 927
    .local v13, "charUuid":Ljava/util/UUID;
    iget-object v6, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->addressByConnId(I)Ljava/lang/String;

    move-result-object v5

    .line 932
    .local v5, "address":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getByConnId(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v12

    .line 933
    .local v12, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattCallback;>.App;"
    if-nez v12, :cond_0

    return-void

    .line 935
    :cond_0
    iget-object v6, v12, Lcom/android/bluetooth/gatt/ContextMap$App;->isCongested:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_1

    .line 936
    iget-object v4, v12, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v4, Landroid/bluetooth/IBluetoothGattCallback;

    .line 937
    new-instance v9, Landroid/os/ParcelUuid;

    invoke-direct {v9, v14}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    .line 938
    new-instance v11, Landroid/os/ParcelUuid;

    invoke-direct {v11, v13}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v10, p9

    .line 936
    invoke-interface/range {v4 .. v11}, Landroid/bluetooth/IBluetoothGattCallback;->onCharacteristicWrite(Ljava/lang/String;IIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;)V

    .line 923
    :goto_0
    return-void

    .line 940
    :cond_1
    const/16 v6, 0x8f

    move/from16 v0, p2

    if-ne v0, v6, :cond_2

    .line 941
    const/16 p2, 0x0

    .line 943
    :cond_2
    new-instance v4, Lcom/android/bluetooth/gatt/CallbackInfo;

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move-object v9, v14

    move/from16 v10, p9

    move-object v11, v13

    invoke-direct/range {v4 .. v11}, Lcom/android/bluetooth/gatt/CallbackInfo;-><init>(Ljava/lang/String;IIILjava/util/UUID;ILjava/util/UUID;)V

    .line 945
    .local v4, "callbackInfo":Lcom/android/bluetooth/gatt/CallbackInfo;
    invoke-virtual {v12, v4}, Lcom/android/bluetooth/gatt/ContextMap$App;->queueCallback(Lcom/android/bluetooth/gatt/CallbackInfo;)V

    goto :goto_0
.end method

.method onWriteDescriptor(IIIIJJIJJIJJ)V
    .locals 19
    .param p1, "connId"    # I
    .param p2, "status"    # I
    .param p3, "srvcType"    # I
    .param p4, "srvcInstId"    # I
    .param p5, "srvcUuidLsb"    # J
    .param p7, "srvcUuidMsb"    # J
    .param p9, "charInstId"    # I
    .param p10, "charUuidLsb"    # J
    .param p12, "charUuidMsb"    # J
    .param p14, "descrInstId"    # I
    .param p15, "descrUuidLsb"    # J
    .param p17, "descrUuidMsb"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 988
    new-instance v18, Ljava/util/UUID;

    move-object/from16 v0, v18

    move-wide/from16 v1, p7

    move-wide/from16 v3, p5

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    .line 989
    .local v18, "srvcUuid":Ljava/util/UUID;
    new-instance v16, Ljava/util/UUID;

    move-object/from16 v0, v16

    move-wide/from16 v1, p12

    move-wide/from16 v3, p10

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    .line 990
    .local v16, "charUuid":Ljava/util/UUID;
    new-instance v17, Ljava/util/UUID;

    move-object/from16 v0, v17

    move-wide/from16 v1, p17

    move-wide/from16 v3, p15

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    .line 991
    .local v17, "descrUuid":Ljava/util/UUID;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->addressByConnId(I)Ljava/lang/String;

    move-result-object v6

    .line 996
    .local v6, "address":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getByConnId(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v15

    .line 997
    .local v15, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattCallback;>.App;"
    if-eqz v15, :cond_0

    .line 998
    iget-object v5, v15, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v5, Landroid/bluetooth/IBluetoothGattCallback;

    .line 999
    new-instance v10, Landroid/os/ParcelUuid;

    move-object/from16 v0, v18

    invoke-direct {v10, v0}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    .line 1000
    new-instance v12, Landroid/os/ParcelUuid;

    move-object/from16 v0, v16

    invoke-direct {v12, v0}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    .line 1001
    new-instance v14, Landroid/os/ParcelUuid;

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v11, p9

    move/from16 v13, p14

    .line 998
    invoke-interface/range {v5 .. v14}, Landroid/bluetooth/IBluetoothGattCallback;->onDescriptorWrite(Ljava/lang/String;IIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;)V

    .line 986
    :cond_0
    return-void
.end method

.method parseTimestampNanos([B)J
    .locals 6
    .param p1, "data"    # [B

    .prologue
    .line 1132
    invoke-static {p1}, Lcom/android/bluetooth/util/NumberUtils;->littleEndianByteArrayToInt([B)I

    move-result v2

    int-to-long v0, v2

    .line 1134
    .local v0, "timestampUnit":J
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x32

    mul-long/2addr v4, v0

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    return-wide v2
.end method

.method readCharacteristic(ILjava/lang/String;IILjava/util/UUID;ILjava/util/UUID;I)V
    .locals 17
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "srvcType"    # I
    .param p4, "srvcInstanceId"    # I
    .param p5, "srvcUuid"    # Ljava/util/UUID;
    .param p6, "charInstanceId"    # I
    .param p7, "charUuid"    # Ljava/util/UUID;
    .param p8, "authReq"    # I

    .prologue
    .line 1550
    const-string/jumbo v2, "android.permission.BLUETOOTH"

    const-string/jumbo v3, "Need BLUETOOTH permission"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1551
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-direct {v0, v1}, Lcom/android/bluetooth/gatt/GattService;->isHidUuid(Ljava/util/UUID;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/gatt/GattService;->enforcePrivilegedPermission()V

    .line 1555
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    move/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->connIdByAddress(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    .line 1556
    .local v16, "connId":Ljava/lang/Integer;
    if-eqz v16, :cond_1

    .line 1557
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1558
    invoke-virtual/range {p5 .. p5}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v6

    .line 1559
    invoke-virtual/range {p5 .. p5}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v8

    .line 1560
    invoke-virtual/range {p7 .. p7}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v11

    invoke-virtual/range {p7 .. p7}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v13

    move-object/from16 v2, p0

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v10, p6

    move/from16 v15, p8

    .line 1557
    invoke-direct/range {v2 .. v15}, Lcom/android/bluetooth/gatt/GattService;->gattClientReadCharacteristicNative(IIIJJIJJI)V

    .line 1549
    :goto_0
    return-void

    .line 1563
    :cond_1
    const-string/jumbo v2, "BtGatt.GattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "readCharacteristic() - No connection for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method readDescriptor(ILjava/lang/String;IILjava/util/UUID;ILjava/util/UUID;ILjava/util/UUID;I)V
    .locals 22
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "srvcType"    # I
    .param p4, "srvcInstanceId"    # I
    .param p5, "srvcUuid"    # Ljava/util/UUID;
    .param p6, "charInstanceId"    # I
    .param p7, "charUuid"    # Ljava/util/UUID;
    .param p8, "descrInstanceId"    # I
    .param p9, "descrUuid"    # Ljava/util/UUID;
    .param p10, "authReq"    # I

    .prologue
    .line 1593
    const-string/jumbo v2, "android.permission.BLUETOOTH"

    const-string/jumbo v3, "Need BLUETOOTH permission"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1594
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-direct {v0, v1}, Lcom/android/bluetooth/gatt/GattService;->isHidUuid(Ljava/util/UUID;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/gatt/GattService;->enforcePrivilegedPermission()V

    .line 1598
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    move/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->connIdByAddress(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v21

    .line 1599
    .local v21, "connId":Ljava/lang/Integer;
    if-eqz v21, :cond_1

    .line 1600
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1602
    invoke-virtual/range {p5 .. p5}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v6

    invoke-virtual/range {p5 .. p5}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v8

    .line 1604
    invoke-virtual/range {p7 .. p7}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v11

    invoke-virtual/range {p7 .. p7}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v13

    .line 1606
    invoke-virtual/range {p9 .. p9}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v16

    invoke-virtual/range {p9 .. p9}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v18

    move-object/from16 v2, p0

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v10, p6

    move/from16 v15, p8

    move/from16 v20, p10

    .line 1600
    invoke-direct/range {v2 .. v20}, Lcom/android/bluetooth/gatt/GattService;->gattClientReadDescriptorNative(IIIJJIJJIJJI)V

    .line 1592
    :goto_0
    return-void

    .line 1609
    :cond_1
    const-string/jumbo v2, "BtGatt.GattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "readDescriptor() - No connection for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method readRemoteRssi(ILjava/lang/String;)V
    .locals 3
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 1676
    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1678
    const-string/jumbo v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "readRemoteRssi() - address="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1679
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/gatt/GattService;->gattClientReadRemoteRssiNative(ILjava/lang/String;)V

    .line 1675
    return-void
.end method

.method refreshDevice(ILjava/lang/String;)V
    .locals 3
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 1529
    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1531
    const-string/jumbo v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "refreshDevice() - address="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1532
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/gatt/GattService;->gattClientRefreshNative(ILjava/lang/String;)V

    .line 1528
    return-void
.end method

.method registerClient(Ljava/util/UUID;Landroid/bluetooth/IBluetoothGattCallback;)V
    .locals 4
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "callback"    # Landroid/bluetooth/IBluetoothGattCallback;

    .prologue
    .line 1460
    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1462
    const-string/jumbo v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerClient() - UUID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->add(Ljava/util/UUID;Ljava/lang/Object;)V

    .line 1464
    invoke-virtual {p1}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v0

    .line 1465
    invoke-virtual {p1}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v2

    .line 1464
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/bluetooth/gatt/GattService;->gattClientRegisterAppNative(JJ)V

    .line 1459
    return-void
.end method

.method registerForNotification(ILjava/lang/String;IILjava/util/UUID;ILjava/util/UUID;Z)V
    .locals 18
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "srvcType"    # I
    .param p4, "srvcInstanceId"    # I
    .param p5, "srvcUuid"    # Ljava/util/UUID;
    .param p6, "charInstanceId"    # I
    .param p7, "charUuid"    # Ljava/util/UUID;
    .param p8, "enable"    # Z

    .prologue
    .line 1658
    const-string/jumbo v2, "android.permission.BLUETOOTH"

    const-string/jumbo v3, "Need BLUETOOTH permission"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1659
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-direct {v0, v1}, Lcom/android/bluetooth/gatt/GattService;->isHidUuid(Ljava/util/UUID;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/gatt/GattService;->enforcePrivilegedPermission()V

    .line 1661
    :cond_0
    const-string/jumbo v2, "BtGatt.GattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerForNotification() - address="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " enable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1663
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    move/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->connIdByAddress(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    .line 1664
    .local v17, "connId":Ljava/lang/Integer;
    if-eqz v17, :cond_1

    .line 1666
    invoke-virtual/range {p5 .. p5}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v7

    .line 1667
    invoke-virtual/range {p5 .. p5}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v9

    .line 1668
    invoke-virtual/range {p7 .. p7}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v12

    invoke-virtual/range {p7 .. p7}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v14

    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v11, p6

    move/from16 v16, p8

    .line 1665
    invoke-direct/range {v2 .. v16}, Lcom/android/bluetooth/gatt/GattService;->gattClientRegisterForNotificationsNative(ILjava/lang/String;IIJJIJJZ)V

    .line 1657
    :goto_0
    return-void

    .line 1671
    :cond_1
    const-string/jumbo v2, "BtGatt.GattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerForNotification() - No connection for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method registerServer(Ljava/util/UUID;Landroid/bluetooth/IBluetoothGattServerCallback;)V
    .locals 4
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "callback"    # Landroid/bluetooth/IBluetoothGattServerCallback;

    .prologue
    .line 1988
    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1990
    const-string/jumbo v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerServer() - UUID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1991
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->add(Ljava/util/UUID;Ljava/lang/Object;)V

    .line 1992
    invoke-virtual {p1}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v0

    .line 1993
    invoke-virtual {p1}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v2

    .line 1992
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/bluetooth/gatt/GattService;->gattServerRegisterAppNative(JJ)V

    .line 1987
    return-void
.end method

.method removeService(IIILjava/util/UUID;)V
    .locals 4
    .param p1, "serverIf"    # I
    .param p2, "srvcType"    # I
    .param p3, "srvcInstanceId"    # I
    .param p4, "srvcUuid"    # Ljava/util/UUID;

    .prologue
    .line 2072
    const-string/jumbo v1, "android.permission.BLUETOOTH"

    const-string/jumbo v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2074
    const-string/jumbo v1, "BtGatt.GattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeService() - uuid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2076
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    invoke-virtual {v1, p4, p2, p3}, Lcom/android/bluetooth/gatt/HandleMap;->getServiceHandle(Ljava/util/UUID;II)I

    move-result v0

    .line 2077
    .local v0, "srvcHandle":I
    if-nez v0, :cond_0

    return-void

    .line 2078
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/android/bluetooth/gatt/GattService;->gattServerDeleteServiceNative(II)V

    .line 2071
    return-void
.end method

.method sendNotification(ILjava/lang/String;IILjava/util/UUID;ILjava/util/UUID;Z[B)V
    .locals 5
    .param p1, "serverIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "srvcType"    # I
    .param p4, "srvcInstanceId"    # I
    .param p5, "srvcUuid"    # Ljava/util/UUID;
    .param p6, "charInstanceId"    # I
    .param p7, "charUuid"    # Ljava/util/UUID;
    .param p8, "confirm"    # Z
    .param p9, "value"    # [B

    .prologue
    .line 2108
    const-string/jumbo v3, "android.permission.BLUETOOTH"

    const-string/jumbo v4, "Need BLUETOOTH permission"

    invoke-virtual {p0, v3, v4}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2112
    iget-object v3, p0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    invoke-virtual {v3, p5, p3, p4}, Lcom/android/bluetooth/gatt/HandleMap;->getServiceHandle(Ljava/util/UUID;II)I

    move-result v2

    .line 2113
    .local v2, "srvcHandle":I
    if-nez v2, :cond_0

    return-void

    .line 2115
    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    invoke-virtual {v3, v2, p7, p6}, Lcom/android/bluetooth/gatt/HandleMap;->getCharacteristicHandle(ILjava/util/UUID;I)I

    move-result v0

    .line 2116
    .local v0, "charHandle":I
    if-nez v0, :cond_1

    return-void

    .line 2118
    :cond_1
    iget-object v3, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v3, p1, p2}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->connIdByAddress(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2119
    .local v1, "connId":I
    if-nez v1, :cond_2

    return-void

    .line 2121
    :cond_2
    if-eqz p8, :cond_3

    .line 2122
    invoke-direct {p0, p1, v0, v1, p9}, Lcom/android/bluetooth/gatt/GattService;->gattServerSendIndicationNative(III[B)V

    .line 2107
    :goto_0
    return-void

    .line 2124
    :cond_3
    invoke-direct {p0, p1, v0, v1, p9}, Lcom/android/bluetooth/gatt/GattService;->gattServerSendNotificationNative(III[B)V

    goto :goto_0
.end method

.method sendResponse(ILjava/lang/String;III[B)V
    .locals 10
    .param p1, "serverIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "requestId"    # I
    .param p4, "status"    # I
    .param p5, "offset"    # I
    .param p6, "value"    # [B

    .prologue
    .line 2090
    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2094
    const/4 v5, 0x0

    .line 2095
    .local v5, "handle":I
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    invoke-virtual {v0, p3}, Lcom/android/bluetooth/gatt/HandleMap;->getByRequestId(I)Lcom/android/bluetooth/gatt/HandleMap$Entry;

    move-result-object v9

    .line 2096
    .local v9, "entry":Lcom/android/bluetooth/gatt/HandleMap$Entry;
    if-eqz v9, :cond_0

    iget v5, v9, Lcom/android/bluetooth/gatt/HandleMap$Entry;->handle:I

    .line 2098
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->connIdByAddress(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2099
    .local v2, "connId":I
    int-to-byte v4, p4

    .line 2100
    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v3, p3

    move v6, p5

    move-object/from16 v7, p6

    .line 2099
    invoke-direct/range {v0 .. v8}, Lcom/android/bluetooth/gatt/GattService;->gattServerSendResponseNative(IIIIII[BI)V

    .line 2101
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    invoke-virtual {v0, p3}, Lcom/android/bluetooth/gatt/HandleMap;->deleteRequest(I)V

    .line 2089
    return-void
.end method

.method serverConnect(ILjava/lang/String;ZI)V
    .locals 3
    .param p1, "serverIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "isDirect"    # Z
    .param p4, "transport"    # I

    .prologue
    .line 2008
    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2010
    const-string/jumbo v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "serverConnect() - address="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2011
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/bluetooth/gatt/GattService;->gattServerConnectNative(ILjava/lang/String;ZI)V

    .line 2007
    return-void
.end method

.method serverDisconnect(ILjava/lang/String;)V
    .locals 4
    .param p1, "serverIf"    # I
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 2015
    const-string/jumbo v1, "android.permission.BLUETOOTH"

    const-string/jumbo v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2017
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v1, p1, p2}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->connIdByAddress(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 2018
    .local v0, "connId":Ljava/lang/Integer;
    const-string/jumbo v1, "BtGatt.GattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "serverDisconnect() - address="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", connId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2020
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    invoke-direct {p0, p1, p2, v1}, Lcom/android/bluetooth/gatt/GattService;->gattServerDisconnectNative(ILjava/lang/String;I)V

    .line 2014
    return-void

    .line 2020
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected start()Z
    .locals 2

    .prologue
    .line 179
    const-string/jumbo v0, "BtGatt.GattService"

    const-string/jumbo v1, "start()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->initializeNative()V

    .line 181
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/gatt/GattService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mAppOps:Landroid/app/AppOpsManager;

    .line 182
    new-instance v0, Lcom/android/bluetooth/gatt/AdvertiseManager;

    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/gatt/AdvertiseManager;-><init>(Lcom/android/bluetooth/gatt/GattService;Lcom/android/bluetooth/btservice/AdapterService;)V

    iput-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mAdvertiseManager:Lcom/android/bluetooth/gatt/AdvertiseManager;

    .line 183
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mAdvertiseManager:Lcom/android/bluetooth/gatt/AdvertiseManager;

    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/AdvertiseManager;->start()V

    .line 185
    new-instance v0, Lcom/android/bluetooth/gatt/ScanManager;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/gatt/ScanManager;-><init>(Lcom/android/bluetooth/gatt/GattService;)V

    iput-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mScanManager:Lcom/android/bluetooth/gatt/ScanManager;

    .line 186
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mScanManager:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/ScanManager;->start()V

    .line 188
    const/4 v0, 0x1

    return v0
.end method

.method startMultiAdvertising(ILandroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseSettings;)V
    .locals 2
    .param p1, "clientIf"    # I
    .param p2, "advertiseData"    # Landroid/bluetooth/le/AdvertiseData;
    .param p3, "scanResponse"    # Landroid/bluetooth/le/AdvertiseData;
    .param p4, "settings"    # Landroid/bluetooth/le/AdvertiseSettings;

    .prologue
    .line 1494
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->enforceAdminPermission()V

    .line 1495
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mAdvertiseManager:Lcom/android/bluetooth/gatt/AdvertiseManager;

    new-instance v1, Lcom/android/bluetooth/gatt/AdvertiseClient;

    invoke-direct {v1, p1, p4, p2, p3}, Lcom/android/bluetooth/gatt/AdvertiseClient;-><init>(ILandroid/bluetooth/le/AdvertiseSettings;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;)V

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/gatt/AdvertiseManager;->startAdvertising(Lcom/android/bluetooth/gatt/AdvertiseClient;)V

    .line 1493
    return-void
.end method

.method startScan(IZLandroid/bluetooth/le/ScanSettings;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 6
    .param p1, "appIf"    # I
    .param p2, "isServer"    # Z
    .param p3, "settings"    # Landroid/bluetooth/le/ScanSettings;
    .param p6, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Landroid/bluetooth/le/ScanSettings;",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/le/ResultStorageDescriptor;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1410
    .local p4, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    .local p5, "storages":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Landroid/bluetooth/le/ResultStorageDescriptor;>;>;"
    const-string/jumbo v1, "BtGatt.GattService"

    const-string/jumbo v2, "start scan with filters"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1411
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->enforceAdminPermission()V

    .line 1412
    invoke-direct {p0, p3}, Lcom/android/bluetooth/gatt/GattService;->needsPrivilegedPermissionForScan(Landroid/bluetooth/le/ScanSettings;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1413
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->enforcePrivilegedPermission()V

    .line 1415
    :cond_0
    new-instance v0, Lcom/android/bluetooth/gatt/ScanClient;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/gatt/ScanClient;-><init>(IZLandroid/bluetooth/le/ScanSettings;Ljava/util/List;Ljava/util/List;)V

    .line 1416
    .local v0, "scanClient":Lcom/android/bluetooth/gatt/ScanClient;
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {p0, v1, p6}, Lcom/android/bluetooth/Utils;->checkCallerHasLocationPermission(Landroid/content/Context;Landroid/app/AppOpsManager;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/bluetooth/gatt/ScanClient;->hasLocationPermission:Z

    .line 1418
    invoke-static {p0}, Lcom/android/bluetooth/Utils;->checkCallerHasPeersMacAddressPermission(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/bluetooth/gatt/ScanClient;->hasPeersMacAddressPermission:Z

    .line 1420
    invoke-static {p0, p6}, Lcom/android/bluetooth/Utils;->isLegacyForegroundApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/bluetooth/gatt/ScanClient;->legacyForegroundApp:Z

    .line 1421
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mScanManager:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/gatt/ScanManager;->startScan(Lcom/android/bluetooth/gatt/ScanClient;)V

    .line 1409
    return-void
.end method

.method protected stop()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 192
    const-string/jumbo v0, "BtGatt.GattService"

    const-string/jumbo v1, "stop()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->clear()V

    .line 194
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->clear()V

    .line 195
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mSearchQueue:Lcom/android/bluetooth/gatt/SearchQueue;

    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/SearchQueue;->clear()V

    .line 196
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/HandleMap;->clear()V

    .line 197
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mServiceDeclarations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 198
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mReliableQueue:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 199
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mAdvertiseManager:Lcom/android/bluetooth/gatt/AdvertiseManager;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mAdvertiseManager:Lcom/android/bluetooth/gatt/AdvertiseManager;

    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/AdvertiseManager;->cleanup()V

    .line 201
    iput-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mAdvertiseManager:Lcom/android/bluetooth/gatt/AdvertiseManager;

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mScanManager:Lcom/android/bluetooth/gatt/ScanManager;

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mScanManager:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/ScanManager;->cleanup()V

    .line 205
    iput-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mScanManager:Lcom/android/bluetooth/gatt/ScanManager;

    .line 207
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method stopMultiAdvertising(Lcom/android/bluetooth/gatt/AdvertiseClient;)V
    .locals 1
    .param p1, "client"    # Lcom/android/bluetooth/gatt/AdvertiseClient;

    .prologue
    .line 1500
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->enforceAdminPermission()V

    .line 1501
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mAdvertiseManager:Lcom/android/bluetooth/gatt/AdvertiseManager;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/AdvertiseManager;->stopAdvertising(Lcom/android/bluetooth/gatt/AdvertiseClient;)V

    .line 1499
    return-void
.end method

.method stopScan(Lcom/android/bluetooth/gatt/ScanClient;)V
    .locals 4
    .param p1, "client"    # Lcom/android/bluetooth/gatt/ScanClient;

    .prologue
    .line 1431
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->enforceAdminPermission()V

    .line 1432
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mScanManager:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-virtual {v1}, Lcom/android/bluetooth/gatt/ScanManager;->getBatchScanQueue()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    .line 1433
    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mScanManager:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-virtual {v2}, Lcom/android/bluetooth/gatt/ScanManager;->getRegularScanQueue()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    .line 1432
    add-int v0, v1, v2

    .line 1434
    .local v0, "scanQueueSize":I
    const-string/jumbo v1, "BtGatt.GattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopScan() - queue size ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1435
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mScanManager:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/gatt/ScanManager;->stopScan(Lcom/android/bluetooth/gatt/ScanClient;)V

    .line 1430
    return-void
.end method

.method unregAll()V
    .locals 5

    .prologue
    .line 1449
    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    iget-object v2, v2, Lcom/android/bluetooth/gatt/GattService$ClientMap;->mApps:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "app$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/ContextMap$App;

    .line 1450
    .local v0, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattCallback;>.App;"
    const-string/jumbo v2, "BtGatt.GattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unreg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    iget v2, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->id:I

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/gatt/GattService;->unregisterClient(I)V

    goto :goto_0

    .line 1448
    .end local v0    # "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattCallback;>.App;"
    :cond_0
    return-void
.end method

.method unregisterClient(I)V
    .locals 3
    .param p1, "clientIf"    # I

    .prologue
    .line 1469
    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1471
    const-string/jumbo v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisterClient() - clientIf="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1472
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->remove(I)V

    .line 1473
    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/GattService;->gattClientUnregisterAppNative(I)V

    .line 1468
    return-void
.end method

.method unregisterServer(I)V
    .locals 3
    .param p1, "serverIf"    # I

    .prologue
    .line 1997
    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1999
    const-string/jumbo v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisterServer() - serverIf="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2001
    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/GattService;->deleteServices(I)V

    .line 2003
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->remove(I)V

    .line 2004
    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/GattService;->gattServerUnregisterAppNative(I)V

    .line 1996
    return-void
.end method

.method writeCharacteristic(ILjava/lang/String;IILjava/util/UUID;ILjava/util/UUID;II[B)V
    .locals 19
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "srvcType"    # I
    .param p4, "srvcInstanceId"    # I
    .param p5, "srvcUuid"    # Ljava/util/UUID;
    .param p6, "charInstanceId"    # I
    .param p7, "charUuid"    # Ljava/util/UUID;
    .param p8, "writeType"    # I
    .param p9, "authReq"    # I
    .param p10, "value"    # [B

    .prologue
    .line 1570
    const-string/jumbo v2, "android.permission.BLUETOOTH"

    const-string/jumbo v3, "Need BLUETOOTH permission"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1571
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-direct {v0, v1}, Lcom/android/bluetooth/gatt/GattService;->isHidUuid(Ljava/util/UUID;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/gatt/GattService;->enforcePrivilegedPermission()V

    .line 1575
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/gatt/GattService;->mReliableQueue:Ljava/util/Set;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 p8, 0x3

    .line 1577
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    move/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->connIdByAddress(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    .line 1578
    .local v18, "connId":Ljava/lang/Integer;
    if-eqz v18, :cond_2

    .line 1579
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1580
    invoke-virtual/range {p5 .. p5}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v6

    .line 1581
    invoke-virtual/range {p5 .. p5}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v8

    .line 1582
    invoke-virtual/range {p7 .. p7}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v11

    invoke-virtual/range {p7 .. p7}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v13

    move-object/from16 v2, p0

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v10, p6

    move/from16 v15, p8

    move/from16 v16, p9

    move-object/from16 v17, p10

    .line 1579
    invoke-direct/range {v2 .. v17}, Lcom/android/bluetooth/gatt/GattService;->gattClientWriteCharacteristicNative(IIIJJIJJII[B)V

    .line 1569
    :goto_0
    return-void

    .line 1585
    :cond_2
    const-string/jumbo v2, "BtGatt.GattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "writeCharacteristic() - No connection for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method writeDescriptor(ILjava/lang/String;IILjava/util/UUID;ILjava/util/UUID;ILjava/util/UUID;II[B)V
    .locals 24
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "srvcType"    # I
    .param p4, "srvcInstanceId"    # I
    .param p5, "srvcUuid"    # Ljava/util/UUID;
    .param p6, "charInstanceId"    # I
    .param p7, "charUuid"    # Ljava/util/UUID;
    .param p8, "descrInstanceId"    # I
    .param p9, "descrUuid"    # Ljava/util/UUID;
    .param p10, "writeType"    # I
    .param p11, "authReq"    # I
    .param p12, "value"    # [B

    .prologue
    .line 1617
    const-string/jumbo v2, "android.permission.BLUETOOTH"

    const-string/jumbo v3, "Need BLUETOOTH permission"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1618
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-direct {v0, v1}, Lcom/android/bluetooth/gatt/GattService;->isHidUuid(Ljava/util/UUID;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/gatt/GattService;->enforcePrivilegedPermission()V

    .line 1622
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    move/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->connIdByAddress(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v23

    .line 1623
    .local v23, "connId":Ljava/lang/Integer;
    if-eqz v23, :cond_1

    .line 1624
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1626
    invoke-virtual/range {p5 .. p5}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v6

    invoke-virtual/range {p5 .. p5}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v8

    .line 1628
    invoke-virtual/range {p7 .. p7}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v11

    invoke-virtual/range {p7 .. p7}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v13

    .line 1630
    invoke-virtual/range {p9 .. p9}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v16

    invoke-virtual/range {p9 .. p9}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v18

    move-object/from16 v2, p0

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v10, p6

    move/from16 v15, p8

    move/from16 v20, p10

    move/from16 v21, p11

    move-object/from16 v22, p12

    .line 1624
    invoke-direct/range {v2 .. v22}, Lcom/android/bluetooth/gatt/GattService;->gattClientWriteDescriptorNative(IIIJJIJJIJJII[B)V

    .line 1616
    :goto_0
    return-void

    .line 1633
    :cond_1
    const-string/jumbo v2, "BtGatt.GattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "writeDescriptor() - No connection for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
