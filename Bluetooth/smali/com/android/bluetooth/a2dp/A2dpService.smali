.class public Lcom/android/bluetooth/a2dp/A2dpService;
.super Lcom/android/bluetooth/btservice/ProfileService;
.source "A2dpService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/a2dp/A2dpService$BluetoothA2dpBinder;
    }
.end annotation


# static fields
.field static final A2DP_SOURCE_SINK_UUIDS:[Landroid/os/ParcelUuid;

.field static final A2DP_SOURCE_UUID:[Landroid/os/ParcelUuid;

.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "A2dpService"

.field private static sAd2dpService:Lcom/android/bluetooth/a2dp/A2dpService;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mAvrcp:Lcom/android/bluetooth/avrcp/Avrcp;

.field private mStateMachine:Lcom/android/bluetooth/a2dp/A2dpStateMachine;


# direct methods
.method static synthetic -wrap0(Lcom/android/bluetooth/a2dp/A2dpService;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/bluetooth/a2dp/A2dpService;->isAvailable()Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 53
    new-array v0, v3, [Landroid/os/ParcelUuid;

    .line 54
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->AudioSource:Landroid/os/ParcelUuid;

    aput-object v1, v0, v2

    .line 53
    sput-object v0, Lcom/android/bluetooth/a2dp/A2dpService;->A2DP_SOURCE_UUID:[Landroid/os/ParcelUuid;

    .line 56
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/os/ParcelUuid;

    .line 57
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->AudioSource:Landroid/os/ParcelUuid;

    aput-object v1, v0, v2

    .line 58
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->AudioSink:Landroid/os/ParcelUuid;

    aput-object v1, v0, v3

    .line 56
    sput-object v0, Lcom/android/bluetooth/a2dp/A2dpService;->A2DP_SOURCE_SINK_UUIDS:[Landroid/os/ParcelUuid;

    .line 45
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/ProfileService;-><init>()V

    return-void
.end method

.method private static declared-synchronized clearA2dpService()V
    .locals 2

    .prologue
    const-class v0, Lcom/android/bluetooth/a2dp/A2dpService;

    monitor-enter v0

    .line 150
    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/android/bluetooth/a2dp/A2dpService;->sAd2dpService:Lcom/android/bluetooth/a2dp/A2dpService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 149
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getA2dpService()Lcom/android/bluetooth/a2dp/A2dpService;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-class v1, Lcom/android/bluetooth/a2dp/A2dpService;

    monitor-enter v1

    .line 120
    :try_start_0
    sget-object v0, Lcom/android/bluetooth/a2dp/A2dpService;->sAd2dpService:Lcom/android/bluetooth/a2dp/A2dpService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/bluetooth/a2dp/A2dpService;->sAd2dpService:Lcom/android/bluetooth/a2dp/A2dpService;

    invoke-virtual {v0}, Lcom/android/bluetooth/a2dp/A2dpService;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    const-string/jumbo v0, "A2dpService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getA2DPService(): returning "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/bluetooth/a2dp/A2dpService;->sAd2dpService:Lcom/android/bluetooth/a2dp/A2dpService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    sget-object v0, Lcom/android/bluetooth/a2dp/A2dpService;->sAd2dpService:Lcom/android/bluetooth/a2dp/A2dpService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 125
    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/bluetooth/a2dp/A2dpService;->sAd2dpService:Lcom/android/bluetooth/a2dp/A2dpService;

    if-nez v0, :cond_2

    .line 126
    const-string/jumbo v0, "A2dpService"

    const-string/jumbo v2, "getA2dpService(): service is NULL"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v1

    .line 131
    return-object v3

    .line 127
    :cond_2
    :try_start_2
    sget-object v0, Lcom/android/bluetooth/a2dp/A2dpService;->sAd2dpService:Lcom/android/bluetooth/a2dp/A2dpService;

    invoke-virtual {v0}, Lcom/android/bluetooth/a2dp/A2dpService;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 128
    const-string/jumbo v0, "A2dpService"

    const-string/jumbo v2, "getA2dpService(): service is not available"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized setA2dpService(Lcom/android/bluetooth/a2dp/A2dpService;)V
    .locals 4
    .param p0, "instance"    # Lcom/android/bluetooth/a2dp/A2dpService;

    .prologue
    const-class v1, Lcom/android/bluetooth/a2dp/A2dpService;

    monitor-enter v1

    .line 135
    if-eqz p0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/bluetooth/a2dp/A2dpService;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    const-string/jumbo v0, "A2dpService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setA2dpService(): set to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/bluetooth/a2dp/A2dpService;->sAd2dpService:Lcom/android/bluetooth/a2dp/A2dpService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    sput-object p0, Lcom/android/bluetooth/a2dp/A2dpService;->sAd2dpService:Lcom/android/bluetooth/a2dp/A2dpService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v1

    .line 134
    return-void

    .line 140
    :cond_1
    :try_start_1
    sget-object v0, Lcom/android/bluetooth/a2dp/A2dpService;->sAd2dpService:Lcom/android/bluetooth/a2dp/A2dpService;

    if-nez v0, :cond_2

    .line 141
    const-string/jumbo v0, "A2dpService"

    const-string/jumbo v2, "setA2dpService(): service not available"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 142
    :cond_2
    :try_start_2
    sget-object v0, Lcom/android/bluetooth/a2dp/A2dpService;->sAd2dpService:Lcom/android/bluetooth/a2dp/A2dpService;

    invoke-virtual {v0}, Lcom/android/bluetooth/a2dp/A2dpService;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    const-string/jumbo v0, "A2dpService"

    const-string/jumbo v2, "setA2dpService(): service is cleaning up"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public adjustAvrcpAbsoluteVolume(I)V
    .locals 1
    .param p1, "direction"    # I

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mAvrcp:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/avrcp/Avrcp;->adjustVolume(I)V

    .line 229
    return-void
.end method

.method protected cleanup()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 106
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStateMachine:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStateMachine:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-virtual {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->cleanup()V

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mAvrcp:Lcom/android/bluetooth/avrcp/Avrcp;

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mAvrcp:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcp/Avrcp;->cleanup()V

    .line 111
    iput-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mAvrcp:Lcom/android/bluetooth/avrcp/Avrcp;

    .line 113
    :cond_1
    invoke-static {}, Lcom/android/bluetooth/a2dp/A2dpService;->clearA2dpService()V

    .line 114
    const/4 v0, 0x1

    return v0
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 154
    const-string/jumbo v2, "android.permission.BLUETOOTH_ADMIN"

    .line 155
    const-string/jumbo v3, "Need BLUETOOTH ADMIN permission"

    .line 154
    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/a2dp/A2dpService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    if-nez v2, :cond_0

    .line 158
    return v4

    .line 160
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v1

    .line 161
    .local v1, "featureUuids":[Landroid/os/ParcelUuid;
    sget-object v2, Lcom/android/bluetooth/a2dp/A2dpService;->A2DP_SOURCE_UUID:[Landroid/os/ParcelUuid;

    invoke-static {v1, v2}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 162
    sget-object v2, Lcom/android/bluetooth/a2dp/A2dpService;->A2DP_SOURCE_SINK_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {v1, v2}, Landroid/bluetooth/BluetoothUuid;->containsAllUuids([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 167
    :cond_1
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStateMachine:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 168
    .local v0, "connectionState":I
    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    .line 169
    if-ne v0, v5, :cond_4

    .line 170
    :cond_2
    return v4

    .line 163
    .end local v0    # "connectionState":I
    :cond_3
    const-string/jumbo v2, "A2dpService"

    const-string/jumbo v3, "Remote does not have A2dp Sink UUID"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    return v4

    .line 173
    .restart local v0    # "connectionState":I
    :cond_4
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStateMachine:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-virtual {v2, v5, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 174
    return v5
.end method

.method disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 178
    const-string/jumbo v1, "android.permission.BLUETOOTH_ADMIN"

    .line 179
    const-string/jumbo v2, "Need BLUETOOTH ADMIN permission"

    .line 178
    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/a2dp/A2dpService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStateMachine:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 181
    .local v0, "connectionState":I
    if-eq v0, v4, :cond_0

    .line 182
    if-eq v0, v3, :cond_0

    .line 183
    const/4 v1, 0x0

    return v1

    .line 186
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStateMachine:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-virtual {v1, v4, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 187
    return v3
.end method

.method public dump(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 383
    invoke-super {p0, p1}, Lcom/android/bluetooth/btservice/ProfileService;->dump(Ljava/lang/StringBuilder;)V

    .line 384
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStateMachine:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStateMachine:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->dump(Ljava/lang/StringBuilder;)V

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mAvrcp:Lcom/android/bluetooth/avrcp/Avrcp;

    if-eqz v0, :cond_1

    .line 388
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mAvrcp:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/avrcp/Avrcp;->dump(Ljava/lang/StringBuilder;)V

    .line 382
    :cond_1
    return-void
.end method

.method public getA2dpPlayingDevice()Ljava/util/List;
    .locals 1
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
    .line 242
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStateMachine:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-virtual {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getPlayingDevice()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getConnectedDevices()Ljava/util/List;
    .locals 2
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
    .line 191
    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/a2dp/A2dpService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStateMachine:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-virtual {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 201
    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/a2dp/A2dpService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStateMachine:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    return v0
.end method

.method getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 2
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
    .line 196
    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/a2dp/A2dpService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStateMachine:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    const-string/jumbo v0, "A2dpService"

    return-object v0
.end method

.method public getPriority(Landroid/bluetooth/BluetoothDevice;)I
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 216
    const-string/jumbo v1, "android.permission.BLUETOOTH_ADMIN"

    .line 217
    const-string/jumbo v2, "Need BLUETOOTH_ADMIN permission"

    .line 216
    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/a2dp/A2dpService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-virtual {p0}, Lcom/android/bluetooth/a2dp/A2dpService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 219
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/Settings$Global;->getBluetoothA2dpSinkPriorityKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 220
    const/4 v3, -0x1

    .line 218
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 221
    .local v0, "priority":I
    return v0
.end method

.method protected initBinder()Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;
    .locals 1

    .prologue
    .line 66
    new-instance v0, Lcom/android/bluetooth/a2dp/A2dpService$BluetoothA2dpBinder;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/a2dp/A2dpService$BluetoothA2dpBinder;-><init>(Lcom/android/bluetooth/a2dp/A2dpService;)V

    return-object v0
.end method

.method declared-synchronized isA2dpPlaying(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    monitor-enter p0

    .line 277
    :try_start_0
    const-string/jumbo v0, "android.permission.BLUETOOTH"

    .line 278
    const-string/jumbo v1, "Need BLUETOOTH permission"

    .line 277
    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/a2dp/A2dpService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const-string/jumbo v0, "A2dpService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isA2dpPlaying("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStateMachine:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->isPlaying(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isAvrcpAbsoluteVolumeSupported()Z
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mAvrcp:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcp/Avrcp;->isAbsoluteVolumeSupported()Z

    move-result v0

    return v0
.end method

.method public isMulticastEnabled()Z
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStateMachine:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-virtual {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->isMulticastEnabled()Z

    move-result v0

    return v0
.end method

.method public isMulticastFeatureEnabled()Z
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStateMachine:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-virtual {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->isMulticastFeatureEnabled()Z

    move-result v0

    return v0
.end method

.method public isMulticastOngoing(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 256
    const-string/jumbo v0, "A2dpService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "audio isMusicActive is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    if-nez p1, :cond_1

    .line 260
    invoke-virtual {p0}, Lcom/android/bluetooth/a2dp/A2dpService;->getA2dpPlayingDevice()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v5, :cond_0

    .line 261
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    .line 260
    if-eqz v0, :cond_0

    .line 262
    return v4

    .line 264
    :cond_0
    return v3

    .line 267
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/a2dp/A2dpService;->getA2dpPlayingDevice()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v5, :cond_2

    .line 268
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    .line 267
    if-eqz v0, :cond_2

    .line 269
    invoke-virtual {p0}, Lcom/android/bluetooth/a2dp/A2dpService;->getA2dpPlayingDevice()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 272
    :cond_2
    return v3

    .line 270
    :cond_3
    return v4
.end method

.method public setAvrcpAbsoluteVolume(I)V
    .locals 1
    .param p1, "volume"    # I

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mAvrcp:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/avrcp/Avrcp;->setAbsoluteVolume(I)V

    .line 233
    return-void
.end method

.method public setAvrcpAudioState(ILandroid/bluetooth/BluetoothDevice;)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mAvrcp:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/avrcp/Avrcp;->setA2dpAudioState(ILandroid/bluetooth/BluetoothDevice;)V

    .line 237
    return-void
.end method

.method public setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "priority"    # I

    .prologue
    .line 206
    const-string/jumbo v0, "android.permission.BLUETOOTH_ADMIN"

    .line 207
    const-string/jumbo v1, "Need BLUETOOTH_ADMIN permission"

    .line 206
    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/a2dp/A2dpService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0}, Lcom/android/bluetooth/a2dp/A2dpService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 209
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Settings$Global;->getBluetoothA2dpSinkPriorityKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 208
    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 211
    const-string/jumbo v0, "A2dpService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Saved priority "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    const/4 v0, 0x1

    return v0
.end method

.method protected start()Z
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 70
    const/4 v2, 0x1

    .line 71
    .local v2, "maxConnections":I
    const/4 v3, 0x0

    .line 73
    .local v3, "multiCastState":I
    const-string/jumbo v4, "persist.bt.max.a2dp.connections"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 75
    .local v1, "maxA2dpConnection":I
    const-string/jumbo v4, "persist.bt.enable.multicast"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 76
    .local v0, "a2dpMultiCastState":I
    if-ne v0, v6, :cond_0

    .line 77
    move v3, v0

    .line 78
    :cond_0
    if-ne v1, v7, :cond_1

    .line 79
    move v2, v1

    .line 81
    :cond_1
    if-ne v3, v6, :cond_2

    if-eq v2, v7, :cond_2

    .line 82
    const-string/jumbo v4, "A2dpService"

    const-string/jumbo v5, "Enable soft handsoff as multicast is enabled"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const/4 v2, 0x2

    .line 85
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "maxA2dpConnections = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/bluetooth/a2dp/A2dpService;->log(Ljava/lang/String;)V

    .line 86
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "multiCastState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/bluetooth/a2dp/A2dpService;->log(Ljava/lang/String;)V

    .line 87
    invoke-static {p0, p0, v2}, Lcom/android/bluetooth/avrcp/Avrcp;->make(Landroid/content/Context;Lcom/android/bluetooth/a2dp/A2dpService;I)Lcom/android/bluetooth/avrcp/Avrcp;

    move-result-object v4

    iput-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mAvrcp:Lcom/android/bluetooth/avrcp/Avrcp;

    .line 88
    invoke-static {p0, p0, v2, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->make(Lcom/android/bluetooth/a2dp/A2dpService;Landroid/content/Context;II)Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    move-result-object v4

    iput-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStateMachine:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    .line 90
    invoke-static {p0}, Lcom/android/bluetooth/a2dp/A2dpService;->setA2dpService(Lcom/android/bluetooth/a2dp/A2dpService;)V

    .line 91
    const-string/jumbo v4, "audio"

    invoke-virtual {p0, v4}, Lcom/android/bluetooth/a2dp/A2dpService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    iput-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mAudioManager:Landroid/media/AudioManager;

    .line 92
    return v6
.end method

.method protected stop()Z
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStateMachine:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStateMachine:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-virtual {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->doQuit()V

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mAvrcp:Lcom/android/bluetooth/avrcp/Avrcp;

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mAvrcp:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcp/Avrcp;->doQuit()V

    .line 102
    :cond_1
    const/4 v0, 0x1

    return v0
.end method
