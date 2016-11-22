.class Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;
.super Landroid/bluetooth/IBluetoothHeadsetClient$Stub;
.source "HeadsetClientService.java"

# interfaces
.implements Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/hfpclient/HeadsetClientService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BluetoothHeadsetClientBinder"
.end annotation


# instance fields
.field private mService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/hfpclient/HeadsetClientService;)V
    .locals 0
    .param p1, "svc"    # Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    .prologue
    .line 126
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;-><init>()V

    .line 127
    iput-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->mService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    .line 126
    return-void
.end method

.method private getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 137
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    const-string/jumbo v0, "HeadsetClientService"

    const-string/jumbo v1, "HeadsetClient call not allowed for non-active user"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return-object v2

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->mService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->mService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->-wrap0(Lcom/android/bluetooth/hfpclient/HeadsetClientService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->mService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    return-object v0

    .line 145
    :cond_1
    return-object v2
.end method


# virtual methods
.method public acceptCall(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "flag"    # I

    .prologue
    .line 294
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    .line 295
    .local v0, "service":Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    if-nez v0, :cond_0

    .line 296
    const/4 v1, 0x0

    return v1

    .line 298
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->acceptCall(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v1

    return v1
.end method

.method public acceptIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 231
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    .line 232
    .local v0, "service":Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    if-nez v0, :cond_0

    .line 233
    const/4 v1, 0x0

    return v1

    .line 235
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->acceptIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    return v1
.end method

.method public cleanup()Z
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->mService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    .line 133
    const/4 v0, 0x1

    return v0
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    .line 151
    .local v0, "service":Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    if-nez v0, :cond_0

    .line 152
    const/4 v1, 0x0

    return v1

    .line 154
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    return v1
.end method

.method public connectAudio()Z
    .locals 2

    .prologue
    .line 276
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    .line 277
    .local v0, "service":Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    if-nez v0, :cond_0

    .line 278
    const/4 v1, 0x0

    return v1

    .line 280
    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->connectAudio()Z

    move-result v1

    return v1
.end method

.method public dial(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 357
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    .line 358
    .local v0, "service":Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    if-nez v0, :cond_0

    .line 359
    const/4 v1, 0x0

    return v1

    .line 361
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->dial(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public dialMemory(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "location"    # I

    .prologue
    .line 366
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    .line 367
    .local v0, "service":Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    if-nez v0, :cond_0

    .line 368
    const/4 v1, 0x0

    return v1

    .line 370
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->dialMemory(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v1

    return v1
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    .line 160
    .local v0, "service":Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    if-nez v0, :cond_0

    .line 161
    const/4 v1, 0x0

    return v1

    .line 163
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    return v1
.end method

.method public disconnectAudio()Z
    .locals 2

    .prologue
    .line 285
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    .line 286
    .local v0, "service":Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    if-nez v0, :cond_0

    .line 287
    const/4 v1, 0x0

    return v1

    .line 289
    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->disconnectAudio()Z

    move-result v1

    return v1
.end method

.method public enterPrivateMode(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "index"    # I

    .prologue
    .line 339
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    .line 340
    .local v0, "service":Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    if-nez v0, :cond_0

    .line 341
    const/4 v1, 0x0

    return v1

    .line 343
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->enterPrivateMode(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v1

    return v1
.end method

.method public explicitCallTransfer(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 330
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    .line 331
    .local v0, "service":Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    if-nez v0, :cond_0

    .line 332
    const/4 v1, 0x0

    return v1

    .line 334
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->explicitCallTransfer(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    return v1
.end method

.method public getAudioRouteAllowed()Z
    .locals 2

    .prologue
    .line 266
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    .line 267
    .local v0, "service":Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    if-eqz v0, :cond_0

    .line 268
    invoke-virtual {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getAudioRouteAllowed()Z

    move-result v1

    return v1

    .line 271
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public getAudioState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 249
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    .line 250
    .local v0, "service":Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    if-nez v0, :cond_0

    .line 251
    const/4 v1, 0x0

    return v1

    .line 253
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

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
    .line 168
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    .line 169
    .local v0, "service":Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    if-nez v0, :cond_0

    .line 170
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    return-object v1

    .line 172
    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    .line 187
    .local v0, "service":Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    if-nez v0, :cond_0

    .line 188
    const/4 v1, 0x0

    return v1

    .line 190
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    return v1
.end method

.method public getCurrentAgEvents(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v1, 0x0

    .line 402
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    .line 403
    .local v0, "service":Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    if-nez v0, :cond_0

    .line 404
    return-object v1

    .line 406
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getCurrentAgEvents(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;

    move-result-object v1

    return-object v1
.end method

.method public getCurrentAgFeatures(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v1, 0x0

    .line 411
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    .line 412
    .local v0, "service":Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    if-nez v0, :cond_0

    .line 413
    return-object v1

    .line 415
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getCurrentAgFeatures(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;

    move-result-object v1

    return-object v1
.end method

.method public getCurrentCalls(Landroid/bluetooth/BluetoothDevice;)Ljava/util/List;
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothDevice;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothHeadsetClientCall;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 375
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    .line 376
    .local v0, "service":Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    if-nez v0, :cond_0

    .line 377
    return-object v1

    .line 379
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getCurrentCalls(Landroid/bluetooth/BluetoothDevice;)Ljava/util/List;

    move-result-object v1

    return-object v1
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
    .line 177
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    .line 178
    .local v0, "service":Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    if-nez v0, :cond_0

    .line 179
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    return-object v1

    .line 181
    :cond_0
    invoke-static {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->-wrap1(Lcom/android/bluetooth/hfpclient/HeadsetClientService;[I)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getLastVoiceTagNumber(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 393
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    .line 394
    .local v0, "service":Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    if-nez v0, :cond_0

    .line 395
    const/4 v1, 0x0

    return v1

    .line 397
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getLastVoiceTagNumber(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    return v1
.end method

.method public getPriority(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 204
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    .line 205
    .local v0, "service":Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    if-nez v0, :cond_0

    .line 206
    const/4 v1, -0x1

    return v1

    .line 208
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    return v1
.end method

.method public holdCall(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 312
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    .line 313
    .local v0, "service":Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    if-nez v0, :cond_0

    .line 314
    const/4 v1, 0x0

    return v1

    .line 316
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->holdCall(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    return v1
.end method

.method public redial(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 348
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    .line 349
    .local v0, "service":Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    if-nez v0, :cond_0

    .line 350
    const/4 v1, 0x0

    return v1

    .line 352
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->redial(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    return v1
.end method

.method public rejectCall(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 303
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    .line 304
    .local v0, "service":Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    if-nez v0, :cond_0

    .line 305
    const/4 v1, 0x0

    return v1

    .line 307
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->rejectCall(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    return v1
.end method

.method public rejectIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 240
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    .line 241
    .local v0, "service":Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    if-nez v0, :cond_0

    .line 242
    const/4 v1, 0x0

    return v1

    .line 244
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->rejectIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    return v1
.end method

.method public sendDTMF(Landroid/bluetooth/BluetoothDevice;B)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "code"    # B

    .prologue
    .line 384
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    .line 385
    .local v0, "service":Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    if-nez v0, :cond_0

    .line 386
    const/4 v1, 0x0

    return v1

    .line 388
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->sendDTMF(Landroid/bluetooth/BluetoothDevice;B)Z

    move-result v1

    return v1
.end method

.method public setAudioRouteAllowed(Z)V
    .locals 1
    .param p1, "allowed"    # Z

    .prologue
    .line 258
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    .line 259
    .local v0, "service":Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    if-eqz v0, :cond_0

    .line 260
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->setAudioRouteAllowed(Z)V

    .line 257
    :cond_0
    return-void
.end method

.method public setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "priority"    # I

    .prologue
    .line 195
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    .line 196
    .local v0, "service":Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    if-nez v0, :cond_0

    .line 197
    const/4 v1, 0x0

    return v1

    .line 199
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v1

    return v1
.end method

.method public startVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 213
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    .line 214
    .local v0, "service":Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    if-nez v0, :cond_0

    .line 215
    const/4 v1, 0x0

    return v1

    .line 217
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->startVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    return v1
.end method

.method public stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 222
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    .line 223
    .local v0, "service":Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    if-nez v0, :cond_0

    .line 224
    const/4 v1, 0x0

    return v1

    .line 226
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    return v1
.end method

.method public terminateCall(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "index"    # I

    .prologue
    .line 321
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    .line 322
    .local v0, "service":Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    if-nez v0, :cond_0

    .line 323
    const/4 v1, 0x0

    return v1

    .line 325
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->terminateCall(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v1

    return v1
.end method
