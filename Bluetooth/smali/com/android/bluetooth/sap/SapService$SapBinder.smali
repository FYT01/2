.class Lcom/android/bluetooth/sap/SapService$SapBinder;
.super Landroid/bluetooth/IBluetoothSap$Stub;
.source "SapService.java"

# interfaces
.implements Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/sap/SapService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SapBinder"
.end annotation


# instance fields
.field private mService:Lcom/android/bluetooth/sap/SapService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/sap/SapService;)V
    .locals 2
    .param p1, "service"    # Lcom/android/bluetooth/sap/SapService;

    .prologue
    .line 886
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothSap$Stub;-><init>()V

    .line 887
    sget-boolean v0, Lcom/android/bluetooth/sap/SapService;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SapService"

    const-string/jumbo v1, "SapBinder()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    :cond_0
    iput-object p1, p0, Lcom/android/bluetooth/sap/SapService$SapBinder;->mService:Lcom/android/bluetooth/sap/SapService;

    .line 886
    return-void
.end method

.method private getService()Lcom/android/bluetooth/sap/SapService;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 874
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v0

    if-nez v0, :cond_0

    .line 875
    const-string/jumbo v0, "SapService"

    const-string/jumbo v1, "call not allowed for non-active user"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    return-object v2

    .line 879
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/sap/SapService$SapBinder;->mService:Lcom/android/bluetooth/sap/SapService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/sap/SapService$SapBinder;->mService:Lcom/android/bluetooth/sap/SapService;

    invoke-static {v0}, Lcom/android/bluetooth/sap/SapService;->-wrap1(Lcom/android/bluetooth/sap/SapService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 880
    iget-object v0, p0, Lcom/android/bluetooth/sap/SapService$SapBinder;->mService:Lcom/android/bluetooth/sap/SapService;

    const-string/jumbo v1, "android.permission.BLUETOOTH"

    const-string/jumbo v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Lcom/android/bluetooth/sap/SapService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    iget-object v0, p0, Lcom/android/bluetooth/sap/SapService$SapBinder;->mService:Lcom/android/bluetooth/sap/SapService;

    return-object v0

    .line 883
    :cond_1
    return-object v2
.end method


# virtual methods
.method public cleanup()Z
    .locals 1

    .prologue
    .line 892
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/sap/SapService$SapBinder;->mService:Lcom/android/bluetooth/sap/SapService;

    .line 893
    const/4 v0, 0x1

    return v0
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v3, 0x0

    .line 920
    sget-boolean v1, Lcom/android/bluetooth/sap/SapService;->VERBOSE:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SapService"

    const-string/jumbo v2, "connect()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapService$SapBinder;->getService()Lcom/android/bluetooth/sap/SapService;

    move-result-object v0

    .line 922
    .local v0, "service":Lcom/android/bluetooth/sap/SapService;
    if-nez v0, :cond_1

    return v3

    .line 923
    :cond_1
    return v3
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 927
    sget-boolean v1, Lcom/android/bluetooth/sap/SapService;->VERBOSE:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SapService"

    const-string/jumbo v2, "disconnect()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapService$SapBinder;->getService()Lcom/android/bluetooth/sap/SapService;

    move-result-object v0

    .line 929
    .local v0, "service":Lcom/android/bluetooth/sap/SapService;
    if-nez v0, :cond_1

    const/4 v1, 0x0

    return v1

    .line 930
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/sap/SapService;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    return v1
.end method

.method public getClient()Landroid/bluetooth/BluetoothDevice;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 904
    sget-boolean v1, Lcom/android/bluetooth/sap/SapService;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SapService"

    const-string/jumbo v2, "getClient()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapService$SapBinder;->getService()Lcom/android/bluetooth/sap/SapService;

    move-result-object v0

    .line 906
    .local v0, "service":Lcom/android/bluetooth/sap/SapService;
    if-nez v0, :cond_1

    return-object v3

    .line 907
    :cond_1
    sget-boolean v1, Lcom/android/bluetooth/sap/SapService;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "SapService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getClient() - returning "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/bluetooth/sap/SapService;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    :cond_2
    invoke-virtual {v0}, Lcom/android/bluetooth/sap/SapService;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

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
    .line 934
    sget-boolean v1, Lcom/android/bluetooth/sap/SapService;->VERBOSE:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SapService"

    const-string/jumbo v2, "getConnectedDevices()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapService$SapBinder;->getService()Lcom/android/bluetooth/sap/SapService;

    move-result-object v0

    .line 936
    .local v0, "service":Lcom/android/bluetooth/sap/SapService;
    if-nez v0, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    return-object v1

    .line 937
    :cond_1
    invoke-virtual {v0}, Lcom/android/bluetooth/sap/SapService;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 948
    sget-boolean v1, Lcom/android/bluetooth/sap/SapService;->VERBOSE:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SapService"

    const-string/jumbo v2, "getConnectionState()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapService$SapBinder;->getService()Lcom/android/bluetooth/sap/SapService;

    move-result-object v0

    .line 950
    .local v0, "service":Lcom/android/bluetooth/sap/SapService;
    if-nez v0, :cond_1

    const/4 v1, 0x0

    return v1

    .line 951
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/sap/SapService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

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
    .line 941
    sget-boolean v1, Lcom/android/bluetooth/sap/SapService;->VERBOSE:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SapService"

    const-string/jumbo v2, "getDevicesMatchingConnectionStates()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapService$SapBinder;->getService()Lcom/android/bluetooth/sap/SapService;

    move-result-object v0

    .line 943
    .local v0, "service":Lcom/android/bluetooth/sap/SapService;
    if-nez v0, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    return-object v1

    .line 944
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/sap/SapService;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getPriority(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 961
    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapService$SapBinder;->getService()Lcom/android/bluetooth/sap/SapService;

    move-result-object v0

    .line 962
    .local v0, "service":Lcom/android/bluetooth/sap/SapService;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    return v1

    .line 963
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/sap/SapService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    return v1
.end method

.method public getState()I
    .locals 3

    .prologue
    .line 897
    sget-boolean v1, Lcom/android/bluetooth/sap/SapService;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SapService"

    const-string/jumbo v2, "getState()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapService$SapBinder;->getService()Lcom/android/bluetooth/sap/SapService;

    move-result-object v0

    .line 899
    .local v0, "service":Lcom/android/bluetooth/sap/SapService;
    if-nez v0, :cond_1

    const/4 v1, 0x0

    return v1

    .line 900
    :cond_1
    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapService$SapBinder;->getService()Lcom/android/bluetooth/sap/SapService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/bluetooth/sap/SapService;->getState()I

    move-result v1

    return v1
.end method

.method public isConnected(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v1, 0x0

    .line 912
    sget-boolean v2, Lcom/android/bluetooth/sap/SapService;->VERBOSE:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "SapService"

    const-string/jumbo v3, "isConnected()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapService$SapBinder;->getService()Lcom/android/bluetooth/sap/SapService;

    move-result-object v0

    .line 914
    .local v0, "service":Lcom/android/bluetooth/sap/SapService;
    if-nez v0, :cond_1

    return v1

    .line 915
    :cond_1
    invoke-virtual {v0}, Lcom/android/bluetooth/sap/SapService;->getState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 916
    invoke-virtual {v0}, Lcom/android/bluetooth/sap/SapService;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 915
    :cond_2
    return v1
.end method

.method public setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "priority"    # I

    .prologue
    .line 955
    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapService$SapBinder;->getService()Lcom/android/bluetooth/sap/SapService;

    move-result-object v0

    .line 956
    .local v0, "service":Lcom/android/bluetooth/sap/SapService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 957
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/sap/SapService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v1

    return v1
.end method
