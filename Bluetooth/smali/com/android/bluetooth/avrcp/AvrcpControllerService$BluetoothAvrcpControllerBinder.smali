.class Lcom/android/bluetooth/avrcp/AvrcpControllerService$BluetoothAvrcpControllerBinder;
.super Landroid/bluetooth/IBluetoothAvrcpController$Stub;
.source "AvrcpControllerService.java"

# interfaces
.implements Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/avrcp/AvrcpControllerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BluetoothAvrcpControllerBinder"
.end annotation


# instance fields
.field private mService:Lcom/android/bluetooth/avrcp/AvrcpControllerService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/avrcp/AvrcpControllerService;)V
    .locals 0
    .param p1, "svc"    # Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    .prologue
    .line 871
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothAvrcpController$Stub;-><init>()V

    .line 872
    iput-object p1, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$BluetoothAvrcpControllerBinder;->mService:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    .line 871
    return-void
.end method

.method private getService()Lcom/android/bluetooth/avrcp/AvrcpControllerService;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 860
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v0

    if-nez v0, :cond_0

    .line 861
    const-string/jumbo v0, "AvrcpControllerService"

    const-string/jumbo v1, "AVRCP call not allowed for non-active user"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    return-object v2

    .line 865
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$BluetoothAvrcpControllerBinder;->mService:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$BluetoothAvrcpControllerBinder;->mService:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->-wrap0(Lcom/android/bluetooth/avrcp/AvrcpControllerService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 866
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$BluetoothAvrcpControllerBinder;->mService:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    return-object v0

    .line 868
    :cond_1
    return-object v2
.end method


# virtual methods
.method public cleanup()Z
    .locals 1

    .prologue
    .line 876
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$BluetoothAvrcpControllerBinder;->mService:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    .line 877
    const/4 v0, 0x1

    return v0
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
    .line 881
    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$BluetoothAvrcpControllerBinder;->getService()Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-result-object v0

    .line 882
    .local v0, "service":Lcom/android/bluetooth/avrcp/AvrcpControllerService;
    if-nez v0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    return-object v1

    .line 883
    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 893
    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$BluetoothAvrcpControllerBinder;->getService()Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-result-object v0

    .line 894
    .local v0, "service":Lcom/android/bluetooth/avrcp/AvrcpControllerService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 895
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

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
    .line 887
    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$BluetoothAvrcpControllerBinder;->getService()Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-result-object v0

    .line 888
    .local v0, "service":Lcom/android/bluetooth/avrcp/AvrcpControllerService;
    if-nez v0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    return-object v1

    .line 889
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getMetaData([I)V
    .locals 4
    .param p1, "attributeIds"    # [I

    .prologue
    .line 906
    const-string/jumbo v1, "AvrcpControllerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Binder Call: num getMetaData ID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$BluetoothAvrcpControllerBinder;->getService()Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-result-object v0

    .line 908
    .local v0, "service":Lcom/android/bluetooth/avrcp/AvrcpControllerService;
    if-nez v0, :cond_0

    return-void

    .line 909
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->getMetaData([I)V

    .line 905
    return-void
.end method

.method public getPlayStatus([I)V
    .locals 4
    .param p1, "playStatusIds"    # [I

    .prologue
    .line 912
    const-string/jumbo v1, "AvrcpControllerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Binder Call: num getPlayStatus ID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$BluetoothAvrcpControllerBinder;->getService()Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-result-object v0

    .line 914
    .local v0, "service":Lcom/android/bluetooth/avrcp/AvrcpControllerService;
    if-nez v0, :cond_0

    return-void

    .line 915
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->getPlayStatus([I)V

    .line 911
    return-void
.end method

.method public getPlayerApplicationSetting()V
    .locals 3

    .prologue
    .line 918
    const-string/jumbo v1, "AvrcpControllerService"

    const-string/jumbo v2, "Binder Call: getPlayerApplicationSetting "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$BluetoothAvrcpControllerBinder;->getService()Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-result-object v0

    .line 920
    .local v0, "service":Lcom/android/bluetooth/avrcp/AvrcpControllerService;
    if-nez v0, :cond_0

    return-void

    .line 921
    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->getPlayerApplicationSetting()V

    .line 917
    return-void
.end method

.method public getSupportedFeatures(Landroid/bluetooth/BluetoothDevice;)I
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 937
    const-string/jumbo v1, "AvrcpControllerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Binder Call: getSupportedFeatures Dev = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$BluetoothAvrcpControllerBinder;->getService()Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-result-object v0

    .line 939
    .local v0, "service":Lcom/android/bluetooth/avrcp/AvrcpControllerService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 940
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->getSupportedFeatures(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    return v1
.end method

.method public getSupportedPlayerAppSetting(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothAvrcpInfo;
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v4, 0x0

    .line 931
    const-string/jumbo v1, "AvrcpControllerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Binder Call: getSupportedPlayerAppSetting Dev = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$BluetoothAvrcpControllerBinder;->getService()Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-result-object v0

    .line 933
    .local v0, "service":Lcom/android/bluetooth/avrcp/AvrcpControllerService;
    if-nez v0, :cond_0

    return-object v4

    .line 934
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->getSupportedPlayerAppSetting(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothAvrcpInfo;

    move-result-object v1

    return-object v1
.end method

.method public sendPassThroughCmd(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "keyCode"    # I
    .param p3, "keyState"    # I

    .prologue
    .line 899
    const-string/jumbo v1, "AvrcpControllerService"

    const-string/jumbo v2, "Binder Call: sendPassThroughCmd"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$BluetoothAvrcpControllerBinder;->getService()Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-result-object v0

    .line 901
    .local v0, "service":Lcom/android/bluetooth/avrcp/AvrcpControllerService;
    if-nez v0, :cond_0

    return-void

    .line 902
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->sendPassThroughCmd(Landroid/bluetooth/BluetoothDevice;II)V

    .line 898
    return-void
.end method

.method public setPlayerApplicationSetting(II)V
    .locals 4
    .param p1, "attributeId"    # I
    .param p2, "attributeVal"    # I

    .prologue
    .line 924
    const-string/jumbo v1, "AvrcpControllerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Binder Call: setPlayerApplicationSetting ID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 925
    const-string/jumbo v3, " attributeVal ="

    .line 924
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$BluetoothAvrcpControllerBinder;->getService()Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-result-object v0

    .line 927
    .local v0, "service":Lcom/android/bluetooth/avrcp/AvrcpControllerService;
    if-nez v0, :cond_0

    return-void

    .line 928
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->setPlayerApplicationSetting(II)V

    .line 923
    return-void
.end method
