.class Lcom/android/bluetooth/a2dp/A2dpSinkService$BluetoothA2dpSinkBinder;
.super Landroid/bluetooth/IBluetoothA2dpSink$Stub;
.source "A2dpSinkService.java"

# interfaces
.implements Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/a2dp/A2dpSinkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BluetoothA2dpSinkBinder"
.end annotation


# instance fields
.field private mService:Lcom/android/bluetooth/a2dp/A2dpSinkService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/a2dp/A2dpSinkService;)V
    .locals 0
    .param p1, "svc"    # Lcom/android/bluetooth/a2dp/A2dpSinkService;

    .prologue
    .line 199
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothA2dpSink$Stub;-><init>()V

    .line 200
    iput-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkService$BluetoothA2dpSinkBinder;->mService:Lcom/android/bluetooth/a2dp/A2dpSinkService;

    .line 199
    return-void
.end method

.method private getService()Lcom/android/bluetooth/a2dp/A2dpSinkService;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 188
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    const-string/jumbo v0, "A2dpSinkService"

    const-string/jumbo v1, "A2dp call not allowed for non-active user"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    return-object v2

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkService$BluetoothA2dpSinkBinder;->mService:Lcom/android/bluetooth/a2dp/A2dpSinkService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkService$BluetoothA2dpSinkBinder;->mService:Lcom/android/bluetooth/a2dp/A2dpSinkService;

    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpSinkService;->-wrap0(Lcom/android/bluetooth/a2dp/A2dpSinkService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkService$BluetoothA2dpSinkBinder;->mService:Lcom/android/bluetooth/a2dp/A2dpSinkService;

    return-object v0

    .line 196
    :cond_1
    return-object v2
.end method


# virtual methods
.method public cleanup()Z
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkService$BluetoothA2dpSinkBinder;->mService:Lcom/android/bluetooth/a2dp/A2dpSinkService;

    .line 205
    const/4 v0, 0x1

    return v0
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/A2dpSinkService$BluetoothA2dpSinkBinder;->getService()Lcom/android/bluetooth/a2dp/A2dpSinkService;

    move-result-object v0

    .line 210
    .local v0, "service":Lcom/android/bluetooth/a2dp/A2dpSinkService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 211
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkService;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    return v1
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 215
    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/A2dpSinkService$BluetoothA2dpSinkBinder;->getService()Lcom/android/bluetooth/a2dp/A2dpSinkService;

    move-result-object v0

    .line 216
    .local v0, "service":Lcom/android/bluetooth/a2dp/A2dpSinkService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 217
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkService;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    return v1
.end method

.method public getAudioConfig(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothAudioConfig;
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v1, 0x0

    .line 257
    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/A2dpSinkService$BluetoothA2dpSinkBinder;->getService()Lcom/android/bluetooth/a2dp/A2dpSinkService;

    move-result-object v0

    .line 258
    .local v0, "service":Lcom/android/bluetooth/a2dp/A2dpSinkService;
    if-nez v0, :cond_0

    return-object v1

    .line 259
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkService;->getAudioConfig(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothAudioConfig;

    move-result-object v1

    return-object v1
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
    .line 221
    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/A2dpSinkService$BluetoothA2dpSinkBinder;->getService()Lcom/android/bluetooth/a2dp/A2dpSinkService;

    move-result-object v0

    .line 222
    .local v0, "service":Lcom/android/bluetooth/a2dp/A2dpSinkService;
    if-nez v0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    return-object v1

    .line 223
    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/a2dp/A2dpSinkService;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 233
    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/A2dpSinkService$BluetoothA2dpSinkBinder;->getService()Lcom/android/bluetooth/a2dp/A2dpSinkService;

    move-result-object v0

    .line 234
    .local v0, "service":Lcom/android/bluetooth/a2dp/A2dpSinkService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 235
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

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
    .line 227
    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/A2dpSinkService$BluetoothA2dpSinkBinder;->getService()Lcom/android/bluetooth/a2dp/A2dpSinkService;

    move-result-object v0

    .line 228
    .local v0, "service":Lcom/android/bluetooth/a2dp/A2dpSinkService;
    if-nez v0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    return-object v1

    .line 229
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkService;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getPriority(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 251
    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/A2dpSinkService$BluetoothA2dpSinkBinder;->getService()Lcom/android/bluetooth/a2dp/A2dpSinkService;

    move-result-object v0

    .line 252
    .local v0, "service":Lcom/android/bluetooth/a2dp/A2dpSinkService;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    return v1

    .line 253
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    return v1
.end method

.method public isA2dpPlaying(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 239
    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/A2dpSinkService$BluetoothA2dpSinkBinder;->getService()Lcom/android/bluetooth/a2dp/A2dpSinkService;

    move-result-object v0

    .line 240
    .local v0, "service":Lcom/android/bluetooth/a2dp/A2dpSinkService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 241
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkService;->isA2dpPlaying(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    return v1
.end method

.method public setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "priority"    # I

    .prologue
    .line 245
    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/A2dpSinkService$BluetoothA2dpSinkBinder;->getService()Lcom/android/bluetooth/a2dp/A2dpSinkService;

    move-result-object v0

    .line 246
    .local v0, "service":Lcom/android/bluetooth/a2dp/A2dpSinkService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 247
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/a2dp/A2dpSinkService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v1

    return v1
.end method
