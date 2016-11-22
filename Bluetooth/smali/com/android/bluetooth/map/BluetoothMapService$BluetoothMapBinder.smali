.class Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapBinder;
.super Landroid/bluetooth/IBluetoothMap$Stub;
.source "BluetoothMapService.java"

# interfaces
.implements Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMapService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BluetoothMapBinder"
.end annotation


# instance fields
.field private mService:Lcom/android/bluetooth/map/BluetoothMapService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/map/BluetoothMapService;)V
    .locals 2
    .param p1, "service"    # Lcom/android/bluetooth/map/BluetoothMapService;

    .prologue
    .line 1181
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothMap$Stub;-><init>()V

    .line 1182
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BluetoothMapService"

    const-string/jumbo v1, "BluetoothMapBinder()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    :cond_0
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapBinder;->mService:Lcom/android/bluetooth/map/BluetoothMapService;

    .line 1181
    return-void
.end method

.method private getService()Lcom/android/bluetooth/map/BluetoothMapService;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1169
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1170
    const-string/jumbo v0, "BluetoothMapService"

    const-string/jumbo v1, "MAP call not allowed for non-active user"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    return-object v2

    .line 1174
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapBinder;->mService:Lcom/android/bluetooth/map/BluetoothMapService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapBinder;->mService:Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-static {v0}, Lcom/android/bluetooth/map/BluetoothMapService;->-wrap0(Lcom/android/bluetooth/map/BluetoothMapService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1175
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapBinder;->mService:Lcom/android/bluetooth/map/BluetoothMapService;

    const-string/jumbo v1, "android.permission.BLUETOOTH"

    const-string/jumbo v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMapService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1176
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapBinder;->mService:Lcom/android/bluetooth/map/BluetoothMapService;

    return-object v0

    .line 1178
    :cond_1
    return-object v2
.end method


# virtual methods
.method public cleanup()Z
    .locals 1

    .prologue
    .line 1187
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapBinder;->mService:Lcom/android/bluetooth/map/BluetoothMapService;

    .line 1188
    const/4 v0, 0x1

    return v0
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v3, 0x0

    .line 1215
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "BluetoothMapService"

    const-string/jumbo v2, "connect()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapBinder;->getService()Lcom/android/bluetooth/map/BluetoothMapService;

    move-result-object v0

    .line 1217
    .local v0, "service":Lcom/android/bluetooth/map/BluetoothMapService;
    if-nez v0, :cond_1

    return v3

    .line 1218
    :cond_1
    return v3
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 1222
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "BluetoothMapService"

    const-string/jumbo v2, "disconnect()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapBinder;->getService()Lcom/android/bluetooth/map/BluetoothMapService;

    move-result-object v0

    .line 1224
    .local v0, "service":Lcom/android/bluetooth/map/BluetoothMapService;
    if-nez v0, :cond_1

    const/4 v1, 0x0

    return v1

    .line 1225
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/map/BluetoothMapService;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    return v1
.end method

.method public getClient()Landroid/bluetooth/BluetoothDevice;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1199
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "BluetoothMapService"

    const-string/jumbo v2, "getClient()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapBinder;->getService()Lcom/android/bluetooth/map/BluetoothMapService;

    move-result-object v0

    .line 1201
    .local v0, "service":Lcom/android/bluetooth/map/BluetoothMapService;
    if-nez v0, :cond_1

    return-object v3

    .line 1202
    :cond_1
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "BluetoothMapService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getClient() - returning "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapService;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    :cond_2
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapService;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

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
    .line 1229
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "BluetoothMapService"

    const-string/jumbo v2, "getConnectedDevices()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapBinder;->getService()Lcom/android/bluetooth/map/BluetoothMapService;

    move-result-object v0

    .line 1231
    .local v0, "service":Lcom/android/bluetooth/map/BluetoothMapService;
    if-nez v0, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    return-object v1

    .line 1232
    :cond_1
    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapService;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 1243
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "BluetoothMapService"

    const-string/jumbo v2, "getConnectionState()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapBinder;->getService()Lcom/android/bluetooth/map/BluetoothMapService;

    move-result-object v0

    .line 1245
    .local v0, "service":Lcom/android/bluetooth/map/BluetoothMapService;
    if-nez v0, :cond_1

    const/4 v1, 0x0

    return v1

    .line 1246
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/map/BluetoothMapService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

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
    .line 1236
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "BluetoothMapService"

    const-string/jumbo v2, "getDevicesMatchingConnectionStates()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapBinder;->getService()Lcom/android/bluetooth/map/BluetoothMapService;

    move-result-object v0

    .line 1238
    .local v0, "service":Lcom/android/bluetooth/map/BluetoothMapService;
    if-nez v0, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    return-object v1

    .line 1239
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/map/BluetoothMapService;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getPriority(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 1256
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapBinder;->getService()Lcom/android/bluetooth/map/BluetoothMapService;

    move-result-object v0

    .line 1257
    .local v0, "service":Lcom/android/bluetooth/map/BluetoothMapService;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    return v1

    .line 1258
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/map/BluetoothMapService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    return v1
.end method

.method public getState()I
    .locals 3

    .prologue
    .line 1192
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "BluetoothMapService"

    const-string/jumbo v2, "getState()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapBinder;->getService()Lcom/android/bluetooth/map/BluetoothMapService;

    move-result-object v0

    .line 1194
    .local v0, "service":Lcom/android/bluetooth/map/BluetoothMapService;
    if-nez v0, :cond_1

    const/4 v1, 0x0

    return v1

    .line 1195
    :cond_1
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapBinder;->getService()Lcom/android/bluetooth/map/BluetoothMapService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapService;->getState()I

    move-result v1

    return v1
.end method

.method public isConnected(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v1, 0x0

    .line 1207
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "BluetoothMapService"

    const-string/jumbo v3, "isConnected()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapBinder;->getService()Lcom/android/bluetooth/map/BluetoothMapService;

    move-result-object v0

    .line 1209
    .local v0, "service":Lcom/android/bluetooth/map/BluetoothMapService;
    if-nez v0, :cond_1

    return v1

    .line 1210
    :cond_1
    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapService;->getState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 1211
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapService;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1210
    :cond_2
    return v1
.end method

.method public setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "priority"    # I

    .prologue
    .line 1250
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapBinder;->getService()Lcom/android/bluetooth/map/BluetoothMapService;

    move-result-object v0

    .line 1251
    .local v0, "service":Lcom/android/bluetooth/map/BluetoothMapService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 1252
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMapService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v1

    return v1
.end method
