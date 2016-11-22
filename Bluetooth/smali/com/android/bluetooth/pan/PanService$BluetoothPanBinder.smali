.class Lcom/android/bluetooth/pan/PanService$BluetoothPanBinder;
.super Landroid/bluetooth/IBluetoothPan$Stub;
.source "PanService.java"

# interfaces
.implements Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/pan/PanService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BluetoothPanBinder"
.end annotation


# instance fields
.field private mService:Lcom/android/bluetooth/pan/PanService;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/pan/PanService;)V
    .locals 0
    .param p1, "svc"    # Lcom/android/bluetooth/pan/PanService;

    .prologue
    .line 197
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothPan$Stub;-><init>()V

    .line 198
    iput-object p1, p0, Lcom/android/bluetooth/pan/PanService$BluetoothPanBinder;->mService:Lcom/android/bluetooth/pan/PanService;

    .line 197
    return-void
.end method

.method private getService()Lcom/android/bluetooth/pan/PanService;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 205
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    const-string/jumbo v0, "PanService"

    const-string/jumbo v1, "Pan call not allowed for non-active user"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    return-object v2

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService$BluetoothPanBinder;->mService:Lcom/android/bluetooth/pan/PanService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService$BluetoothPanBinder;->mService:Lcom/android/bluetooth/pan/PanService;

    invoke-static {v0}, Lcom/android/bluetooth/pan/PanService;->-wrap3(Lcom/android/bluetooth/pan/PanService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService$BluetoothPanBinder;->mService:Lcom/android/bluetooth/pan/PanService;

    return-object v0

    .line 213
    :cond_1
    return-object v2
.end method

.method private isPanNapOn()Z
    .locals 2

    .prologue
    .line 231
    invoke-direct {p0}, Lcom/android/bluetooth/pan/PanService$BluetoothPanBinder;->getService()Lcom/android/bluetooth/pan/PanService;

    move-result-object v0

    .line 232
    .local v0, "service":Lcom/android/bluetooth/pan/PanService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 233
    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/pan/PanService;->isPanNapOn()Z

    move-result v1

    return v1
.end method

.method private isPanUOn()Z
    .locals 3

    .prologue
    .line 236
    invoke-static {}, Lcom/android/bluetooth/pan/PanService;->-get0()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "PanService"

    const-string/jumbo v2, "isTetheringOn call getPanLocalRoleNative"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/pan/PanService$BluetoothPanBinder;->getService()Lcom/android/bluetooth/pan/PanService;

    move-result-object v0

    .line 238
    .local v0, "service":Lcom/android/bluetooth/pan/PanService;
    if-nez v0, :cond_1

    const/4 v1, 0x0

    return v1

    .line 239
    :cond_1
    invoke-virtual {v0}, Lcom/android/bluetooth/pan/PanService;->isPanUOn()Z

    move-result v1

    return v1
.end method


# virtual methods
.method public cleanup()Z
    .locals 1

    .prologue
    .line 201
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/pan/PanService$BluetoothPanBinder;->mService:Lcom/android/bluetooth/pan/PanService;

    .line 202
    const/4 v0, 0x1

    return v0
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/android/bluetooth/pan/PanService$BluetoothPanBinder;->getService()Lcom/android/bluetooth/pan/PanService;

    move-result-object v0

    .line 217
    .local v0, "service":Lcom/android/bluetooth/pan/PanService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 218
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/pan/PanService;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    return v1
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 221
    invoke-direct {p0}, Lcom/android/bluetooth/pan/PanService$BluetoothPanBinder;->getService()Lcom/android/bluetooth/pan/PanService;

    move-result-object v0

    .line 222
    .local v0, "service":Lcom/android/bluetooth/pan/PanService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 223
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/pan/PanService;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

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
    .line 255
    invoke-direct {p0}, Lcom/android/bluetooth/pan/PanService$BluetoothPanBinder;->getService()Lcom/android/bluetooth/pan/PanService;

    move-result-object v0

    .line 256
    .local v0, "service":Lcom/android/bluetooth/pan/PanService;
    if-nez v0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    return-object v1

    .line 257
    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/pan/PanService;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/android/bluetooth/pan/PanService$BluetoothPanBinder;->getService()Lcom/android/bluetooth/pan/PanService;

    move-result-object v0

    .line 227
    .local v0, "service":Lcom/android/bluetooth/pan/PanService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 228
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/pan/PanService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

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
    .line 261
    invoke-direct {p0}, Lcom/android/bluetooth/pan/PanService$BluetoothPanBinder;->getService()Lcom/android/bluetooth/pan/PanService;

    move-result-object v0

    .line 262
    .local v0, "service":Lcom/android/bluetooth/pan/PanService;
    if-nez v0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    return-object v1

    .line 263
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/pan/PanService;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public isTetheringOn()Z
    .locals 2

    .prologue
    .line 243
    invoke-direct {p0}, Lcom/android/bluetooth/pan/PanService$BluetoothPanBinder;->getService()Lcom/android/bluetooth/pan/PanService;

    move-result-object v0

    .line 244
    .local v0, "service":Lcom/android/bluetooth/pan/PanService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 245
    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/pan/PanService;->isTetheringOn()Z

    move-result v1

    return v1
.end method

.method public setBluetoothTethering(Z)V
    .locals 4
    .param p1, "value"    # Z

    .prologue
    .line 248
    invoke-direct {p0}, Lcom/android/bluetooth/pan/PanService$BluetoothPanBinder;->getService()Lcom/android/bluetooth/pan/PanService;

    move-result-object v0

    .line 249
    .local v0, "service":Lcom/android/bluetooth/pan/PanService;
    if-nez v0, :cond_0

    return-void

    .line 250
    :cond_0
    const-string/jumbo v1, "PanService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setBluetoothTethering: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mTetherOn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/android/bluetooth/pan/PanService;->-get2(Lcom/android/bluetooth/pan/PanService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/pan/PanService;->setBluetoothTethering(Z)V

    .line 247
    return-void
.end method
