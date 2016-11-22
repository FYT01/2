.class Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;
.super Landroid/bluetooth/IBluetoothHeadset$Stub;
.source "HeadsetService.java"

# interfaces
.implements Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/hfp/HeadsetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BluetoothHeadsetBinder"
.end annotation


# instance fields
.field private mService:Lcom/android/bluetooth/hfp/HeadsetService;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/hfp/HeadsetService;)V
    .locals 0
    .param p1, "svc"    # Lcom/android/bluetooth/hfp/HeadsetService;

    .prologue
    .line 137
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothHeadset$Stub;-><init>()V

    .line 138
    iput-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->mService:Lcom/android/bluetooth/hfp/HeadsetService;

    .line 137
    return-void
.end method

.method private getService()Lcom/android/bluetooth/hfp/HeadsetService;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 146
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->mService:Lcom/android/bluetooth/hfp/HeadsetService;

    invoke-static {v0}, Lcom/android/bluetooth/Utils;->checkCallerAllowManagedProfiles(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    const-string/jumbo v0, "HeadsetService"

    const-string/jumbo v1, "Headset call not allowed for non-active user"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    return-object v2

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->mService:Lcom/android/bluetooth/hfp/HeadsetService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->mService:Lcom/android/bluetooth/hfp/HeadsetService;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetService;->-wrap0(Lcom/android/bluetooth/hfp/HeadsetService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->mService:Lcom/android/bluetooth/hfp/HeadsetService;

    return-object v0

    .line 154
    :cond_1
    return-object v2
.end method


# virtual methods
.method public acceptIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 233
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->getService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    .line 234
    .local v0, "service":Lcom/android/bluetooth/hfp/HeadsetService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 235
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->acceptIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    return v1
.end method

.method public clccResponse(IIIIZLjava/lang/String;I)V
    .locals 8
    .param p1, "index"    # I
    .param p2, "direction"    # I
    .param p3, "status"    # I
    .param p4, "mode"    # I
    .param p5, "mpty"    # Z
    .param p6, "number"    # Ljava/lang/String;
    .param p7, "type"    # I

    .prologue
    .line 298
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->getService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    .line 299
    .local v0, "service":Lcom/android/bluetooth/hfp/HeadsetService;
    if-nez v0, :cond_0

    return-void

    :cond_0
    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move v7, p7

    .line 300
    invoke-static/range {v0 .. v7}, Lcom/android/bluetooth/hfp/HeadsetService;->-wrap3(Lcom/android/bluetooth/hfp/HeadsetService;IIIIZLjava/lang/String;I)V

    .line 297
    return-void
.end method

.method public cleanup()Z
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->mService:Lcom/android/bluetooth/hfp/HeadsetService;

    .line 142
    const/4 v0, 0x1

    return v0
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->getService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    .line 159
    .local v0, "service":Lcom/android/bluetooth/hfp/HeadsetService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 160
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    return v1
.end method

.method public connectAudio()Z
    .locals 2

    .prologue
    .line 251
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->getService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    .line 252
    .local v0, "service":Lcom/android/bluetooth/hfp/HeadsetService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 253
    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetService;->connectAudio()Z

    move-result v1

    return v1
.end method

.method public disableWBS()Z
    .locals 2

    .prologue
    .line 320
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->getService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    .line 321
    .local v0, "service":Lcom/android/bluetooth/hfp/HeadsetService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 322
    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetService;->disableWBS()Z

    move-result v1

    return v1
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->getService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    .line 165
    .local v0, "service":Lcom/android/bluetooth/hfp/HeadsetService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 167
    :cond_0
    invoke-static {}, Lcom/android/bluetooth/hfp/HeadsetService;->-get0()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "HeadsetService"

    const-string/jumbo v2, "disconnect in HeadsetService"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    return v1
.end method

.method public disconnectAudio()Z
    .locals 2

    .prologue
    .line 257
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->getService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    .line 258
    .local v0, "service":Lcom/android/bluetooth/hfp/HeadsetService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 259
    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetService;->disconnectAudio()Z

    move-result v1

    return v1
.end method

.method public enableWBS()Z
    .locals 2

    .prologue
    .line 314
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->getService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    .line 315
    .local v0, "service":Lcom/android/bluetooth/hfp/HeadsetService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 316
    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetService;->enableWBS()Z

    move-result v1

    return v1
.end method

.method public getAudioRouteAllowed()Z
    .locals 2

    .prologue
    .line 269
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->getService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    .line 270
    .local v0, "service":Lcom/android/bluetooth/hfp/HeadsetService;
    if-eqz v0, :cond_0

    .line 271
    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetService;->getAudioRouteAllowed()Z

    move-result v1

    return v1

    .line 274
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public getAudioState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 245
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->getService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    .line 246
    .local v0, "service":Lcom/android/bluetooth/hfp/HeadsetService;
    if-nez v0, :cond_0

    const/16 v1, 0xa

    return v1

    .line 247
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    return v1
.end method

.method public getBatteryUsageHint(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 227
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->getService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    .line 228
    .local v0, "service":Lcom/android/bluetooth/hfp/HeadsetService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 229
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->getBatteryUsageHint(Landroid/bluetooth/BluetoothDevice;)I

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
    .line 173
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->getService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    .line 174
    .local v0, "service":Lcom/android/bluetooth/hfp/HeadsetService;
    if-nez v0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    return-object v1

    .line 175
    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetService;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 185
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->getService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    .line 186
    .local v0, "service":Lcom/android/bluetooth/hfp/HeadsetService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 187
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

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
    .line 179
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->getService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    .line 180
    .local v0, "service":Lcom/android/bluetooth/hfp/HeadsetService;
    if-nez v0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    return-object v1

    .line 181
    :cond_0
    invoke-static {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->-wrap2(Lcom/android/bluetooth/hfp/HeadsetService;[I)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getPriority(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 197
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->getService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    .line 198
    .local v0, "service":Lcom/android/bluetooth/hfp/HeadsetService;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    return v1

    .line 199
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    return v1
.end method

.method public isAudioConnected(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 221
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->getService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    .line 222
    .local v0, "service":Lcom/android/bluetooth/hfp/HeadsetService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 223
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->isAudioConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    return v1
.end method

.method public isAudioOn()Z
    .locals 2

    .prologue
    .line 215
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->getService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    .line 216
    .local v0, "service":Lcom/android/bluetooth/hfp/HeadsetService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 217
    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetService;->isAudioOn()Z

    move-result v1

    return v1
.end method

.method public phoneStateChanged(IIILjava/lang/String;I)V
    .locals 6
    .param p1, "numActive"    # I
    .param p2, "numHeld"    # I
    .param p3, "callState"    # I
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "type"    # I

    .prologue
    .line 291
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->getService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    .line 292
    .local v0, "service":Lcom/android/bluetooth/hfp/HeadsetService;
    if-nez v0, :cond_0

    return-void

    :cond_0
    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    .line 293
    invoke-static/range {v0 .. v5}, Lcom/android/bluetooth/hfp/HeadsetService;->-wrap4(Lcom/android/bluetooth/hfp/HeadsetService;IIILjava/lang/String;I)V

    .line 290
    return-void
.end method

.method public rejectIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 239
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->getService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    .line 240
    .local v0, "service":Lcom/android/bluetooth/hfp/HeadsetService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 241
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->rejectIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    return v1
.end method

.method public sendVendorSpecificResultCode(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "command"    # Ljava/lang/String;
    .param p3, "arg"    # Ljava/lang/String;

    .prologue
    .line 306
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->getService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    .line 307
    .local v0, "service":Lcom/android/bluetooth/hfp/HeadsetService;
    if-nez v0, :cond_0

    .line 308
    const/4 v1, 0x0

    return v1

    .line 310
    :cond_0
    invoke-static {v0, p1, p2, p3}, Lcom/android/bluetooth/hfp/HeadsetService;->-wrap1(Lcom/android/bluetooth/hfp/HeadsetService;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public setAudioRouteAllowed(Z)V
    .locals 1
    .param p1, "allowed"    # Z

    .prologue
    .line 263
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->getService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    .line 264
    .local v0, "service":Lcom/android/bluetooth/hfp/HeadsetService;
    if-nez v0, :cond_0

    return-void

    .line 265
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->setAudioRouteAllowed(Z)V

    .line 262
    return-void
.end method

.method public setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "priority"    # I

    .prologue
    .line 191
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->getService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    .line 192
    .local v0, "service":Lcom/android/bluetooth/hfp/HeadsetService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 193
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/hfp/HeadsetService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v1

    return v1
.end method

.method public startScoUsingVirtualVoiceCall(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 278
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->getService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    .line 279
    .local v0, "service":Lcom/android/bluetooth/hfp/HeadsetService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 280
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->startScoUsingVirtualVoiceCall(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    return v1
.end method

.method public startVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 203
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->getService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    .line 204
    .local v0, "service":Lcom/android/bluetooth/hfp/HeadsetService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 205
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->startVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    return v1
.end method

.method public stopScoUsingVirtualVoiceCall(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 284
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->getService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    .line 285
    .local v0, "service":Lcom/android/bluetooth/hfp/HeadsetService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 286
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->stopScoUsingVirtualVoiceCall(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    return v1
.end method

.method public stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->getService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    .line 210
    .local v0, "service":Lcom/android/bluetooth/hfp/HeadsetService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 211
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    return v1
.end method
