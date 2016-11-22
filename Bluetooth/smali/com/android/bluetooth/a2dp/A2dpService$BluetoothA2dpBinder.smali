.class Lcom/android/bluetooth/a2dp/A2dpService$BluetoothA2dpBinder;
.super Landroid/bluetooth/IBluetoothA2dp$Stub;
.source "A2dpService.java"

# interfaces
.implements Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/a2dp/A2dpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BluetoothA2dpBinder"
.end annotation


# instance fields
.field private mService:Lcom/android/bluetooth/a2dp/A2dpService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/a2dp/A2dpService;)V
    .locals 0
    .param p1, "svc"    # Lcom/android/bluetooth/a2dp/A2dpService;

    .prologue
    .line 300
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothA2dp$Stub;-><init>()V

    .line 301
    iput-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpService$BluetoothA2dpBinder;->mService:Lcom/android/bluetooth/a2dp/A2dpService;

    .line 300
    return-void
.end method

.method private getService()Lcom/android/bluetooth/a2dp/A2dpService;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 289
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v0

    if-nez v0, :cond_0

    .line 290
    const-string/jumbo v0, "A2dpService"

    const-string/jumbo v1, "A2dp call not allowed for non-active user"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    return-object v2

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService$BluetoothA2dpBinder;->mService:Lcom/android/bluetooth/a2dp/A2dpService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService$BluetoothA2dpBinder;->mService:Lcom/android/bluetooth/a2dp/A2dpService;

    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpService;->-wrap0(Lcom/android/bluetooth/a2dp/A2dpService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 295
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService$BluetoothA2dpBinder;->mService:Lcom/android/bluetooth/a2dp/A2dpService;

    return-object v0

    .line 297
    :cond_1
    return-object v2
.end method


# virtual methods
.method public adjustAvrcpAbsoluteVolume(I)V
    .locals 1
    .param p1, "direction"    # I

    .prologue
    .line 363
    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/A2dpService$BluetoothA2dpBinder;->getService()Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v0

    .line 364
    .local v0, "service":Lcom/android/bluetooth/a2dp/A2dpService;
    if-nez v0, :cond_0

    return-void

    .line 365
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dp/A2dpService;->adjustAvrcpAbsoluteVolume(I)V

    .line 362
    return-void
.end method

.method public cleanup()Z
    .locals 1

    .prologue
    .line 305
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService$BluetoothA2dpBinder;->mService:Lcom/android/bluetooth/a2dp/A2dpService;

    .line 306
    const/4 v0, 0x1

    return v0
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v3, 0x0

    .line 310
    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/A2dpService$BluetoothA2dpBinder;->getService()Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v0

    .line 311
    .local v0, "service":Lcom/android/bluetooth/a2dp/A2dpService;
    if-nez v0, :cond_0

    return v3

    .line 313
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dp/A2dpService;->isMulticastOngoing(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 314
    const-string/jumbo v1, "A2dpService"

    const-string/jumbo v2, "A2dp Multicast is Ongoing, ignore Connection Request"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    return v3

    .line 317
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dp/A2dpService;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    return v1
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 321
    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/A2dpService$BluetoothA2dpBinder;->getService()Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v0

    .line 322
    .local v0, "service":Lcom/android/bluetooth/a2dp/A2dpService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 323
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dp/A2dpService;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    return v1
.end method

.method public getConnectedDevices()Ljava/util/List;
    .locals 3
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
    .line 327
    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/A2dpService$BluetoothA2dpBinder;->getService()Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v0

    .line 328
    .local v0, "service":Lcom/android/bluetooth/a2dp/A2dpService;
    if-nez v0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    return-object v1

    .line 329
    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/a2dp/A2dpService;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 339
    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/A2dpService$BluetoothA2dpBinder;->getService()Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v0

    .line 340
    .local v0, "service":Lcom/android/bluetooth/a2dp/A2dpService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 341
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dp/A2dpService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    return v1
.end method

.method public getDevicesMatchingConnectionStates([I)Ljava/util/List;
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
    .line 333
    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/A2dpService$BluetoothA2dpBinder;->getService()Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v0

    .line 334
    .local v0, "service":Lcom/android/bluetooth/a2dp/A2dpService;
    if-nez v0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    return-object v1

    .line 335
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dp/A2dpService;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getPriority(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 351
    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/A2dpService$BluetoothA2dpBinder;->getService()Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v0

    .line 352
    .local v0, "service":Lcom/android/bluetooth/a2dp/A2dpService;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    return v1

    .line 353
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dp/A2dpService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    return v1
.end method

.method public isA2dpPlaying(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 375
    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/A2dpService$BluetoothA2dpBinder;->getService()Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v0

    .line 376
    .local v0, "service":Lcom/android/bluetooth/a2dp/A2dpService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 377
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dp/A2dpService;->isA2dpPlaying(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    return v1
.end method

.method public isAvrcpAbsoluteVolumeSupported()Z
    .locals 2

    .prologue
    .line 357
    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/A2dpService$BluetoothA2dpBinder;->getService()Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v0

    .line 358
    .local v0, "service":Lcom/android/bluetooth/a2dp/A2dpService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 359
    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/a2dp/A2dpService;->isAvrcpAbsoluteVolumeSupported()Z

    move-result v1

    return v1
.end method

.method public setAvrcpAbsoluteVolume(I)V
    .locals 1
    .param p1, "volume"    # I

    .prologue
    .line 369
    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/A2dpService$BluetoothA2dpBinder;->getService()Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v0

    .line 370
    .local v0, "service":Lcom/android/bluetooth/a2dp/A2dpService;
    if-nez v0, :cond_0

    return-void

    .line 371
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dp/A2dpService;->setAvrcpAbsoluteVolume(I)V

    .line 368
    return-void
.end method

.method public setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "priority"    # I

    .prologue
    .line 345
    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/A2dpService$BluetoothA2dpBinder;->getService()Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v0

    .line 346
    .local v0, "service":Lcom/android/bluetooth/a2dp/A2dpService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 347
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/a2dp/A2dpService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v1

    return v1
.end method
