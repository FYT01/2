.class public Lcom/android/bluetooth/a2dp/A2dpSinkService;
.super Lcom/android/bluetooth/btservice/ProfileService;
.source "A2dpSinkService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/a2dp/A2dpSinkService$BluetoothA2dpSinkBinder;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "A2dpSinkService"

.field private static sA2dpSinkService:Lcom/android/bluetooth/a2dp/A2dpSinkService;


# instance fields
.field private mStateMachine:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;


# direct methods
.method static synthetic -wrap0(Lcom/android/bluetooth/a2dp/A2dpSinkService;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/bluetooth/a2dp/A2dpSinkService;->isAvailable()Z

    move-result v0

    return v0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/ProfileService;-><init>()V

    return-void
.end method

.method private static declared-synchronized clearA2dpSinkService()V
    .locals 2

    .prologue
    const-class v0, Lcom/android/bluetooth/a2dp/A2dpSinkService;

    monitor-enter v0

    .line 102
    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/android/bluetooth/a2dp/A2dpSinkService;->sA2dpSinkService:Lcom/android/bluetooth/a2dp/A2dpSinkService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 101
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getA2dpSinkService()Lcom/android/bluetooth/a2dp/A2dpSinkService;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-class v1, Lcom/android/bluetooth/a2dp/A2dpSinkService;

    monitor-enter v1

    .line 72
    :try_start_0
    sget-object v0, Lcom/android/bluetooth/a2dp/A2dpSinkService;->sA2dpSinkService:Lcom/android/bluetooth/a2dp/A2dpSinkService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/bluetooth/a2dp/A2dpSinkService;->sA2dpSinkService:Lcom/android/bluetooth/a2dp/A2dpSinkService;

    invoke-virtual {v0}, Lcom/android/bluetooth/a2dp/A2dpSinkService;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    const-string/jumbo v0, "A2dpSinkService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getA2dpSinkService(): returning "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/bluetooth/a2dp/A2dpSinkService;->sA2dpSinkService:Lcom/android/bluetooth/a2dp/A2dpSinkService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    sget-object v0, Lcom/android/bluetooth/a2dp/A2dpSinkService;->sA2dpSinkService:Lcom/android/bluetooth/a2dp/A2dpSinkService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 77
    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/bluetooth/a2dp/A2dpSinkService;->sA2dpSinkService:Lcom/android/bluetooth/a2dp/A2dpSinkService;

    if-nez v0, :cond_2

    .line 78
    const-string/jumbo v0, "A2dpSinkService"

    const-string/jumbo v2, "getA2dpSinkService(): service is NULL"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v1

    .line 83
    return-object v3

    .line 79
    :cond_2
    :try_start_2
    sget-object v0, Lcom/android/bluetooth/a2dp/A2dpSinkService;->sA2dpSinkService:Lcom/android/bluetooth/a2dp/A2dpSinkService;

    invoke-virtual {v0}, Lcom/android/bluetooth/a2dp/A2dpSinkService;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 80
    const-string/jumbo v0, "A2dpSinkService"

    const-string/jumbo v2, "getA2dpSinkService(): service is not available"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized setA2dpSinkService(Lcom/android/bluetooth/a2dp/A2dpSinkService;)V
    .locals 4
    .param p0, "instance"    # Lcom/android/bluetooth/a2dp/A2dpSinkService;

    .prologue
    const-class v1, Lcom/android/bluetooth/a2dp/A2dpSinkService;

    monitor-enter v1

    .line 87
    if-eqz p0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/bluetooth/a2dp/A2dpSinkService;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    const-string/jumbo v0, "A2dpSinkService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setA2dpSinkService(): set to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/bluetooth/a2dp/A2dpSinkService;->sA2dpSinkService:Lcom/android/bluetooth/a2dp/A2dpSinkService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    sput-object p0, Lcom/android/bluetooth/a2dp/A2dpSinkService;->sA2dpSinkService:Lcom/android/bluetooth/a2dp/A2dpSinkService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v1

    .line 86
    return-void

    .line 92
    :cond_1
    :try_start_1
    sget-object v0, Lcom/android/bluetooth/a2dp/A2dpSinkService;->sA2dpSinkService:Lcom/android/bluetooth/a2dp/A2dpSinkService;

    if-nez v0, :cond_2

    .line 93
    const-string/jumbo v0, "A2dpSinkService"

    const-string/jumbo v2, "setA2dpSinkService(): service not available"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 94
    :cond_2
    :try_start_2
    sget-object v0, Lcom/android/bluetooth/a2dp/A2dpSinkService;->sA2dpSinkService:Lcom/android/bluetooth/a2dp/A2dpSinkService;

    invoke-virtual {v0}, Lcom/android/bluetooth/a2dp/A2dpSinkService;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    const-string/jumbo v0, "A2dpSinkService"

    const-string/jumbo v2, "setA2dpSinkService(): service is cleaning up"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method protected cleanup()Z
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkService;->mStateMachine:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkService;->mStateMachine:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-virtual {v0}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->cleanup()V

    .line 65
    :cond_0
    invoke-static {}, Lcom/android/bluetooth/a2dp/A2dpSinkService;->clearA2dpSinkService()V

    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v3, 0x1

    .line 106
    const-string/jumbo v1, "android.permission.BLUETOOTH_ADMIN"

    .line 107
    const-string/jumbo v2, "Need BLUETOOTH ADMIN permission"

    .line 106
    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/a2dp/A2dpSinkService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkService;->mStateMachine:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 110
    .local v0, "connectionState":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 111
    if-ne v0, v3, :cond_1

    .line 112
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 115
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkService;->mStateMachine:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-virtual {v1, v3, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 116
    return v3
.end method

.method disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 120
    const-string/jumbo v1, "android.permission.BLUETOOTH_ADMIN"

    .line 121
    const-string/jumbo v2, "Need BLUETOOTH ADMIN permission"

    .line 120
    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/a2dp/A2dpSinkService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkService;->mStateMachine:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 123
    .local v0, "connectionState":I
    if-eq v0, v4, :cond_0

    .line 124
    if-eq v0, v3, :cond_0

    .line 125
    const/4 v1, 0x0

    return v1

    .line 128
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkService;->mStateMachine:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-virtual {v1, v4, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 129
    return v3
.end method

.method public dump(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 265
    invoke-super {p0, p1}, Lcom/android/bluetooth/btservice/ProfileService;->dump(Ljava/lang/StringBuilder;)V

    .line 266
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkService;->mStateMachine:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkService;->mStateMachine:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->dump(Ljava/lang/StringBuilder;)V

    .line 264
    :cond_0
    return-void
.end method

.method getAudioConfig(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothAudioConfig;
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 178
    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/a2dp/A2dpSinkService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkService;->mStateMachine:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->getAudioConfig(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothAudioConfig;

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
    .line 133
    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/a2dp/A2dpSinkService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkService;->mStateMachine:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-virtual {v0}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 143
    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/a2dp/A2dpSinkService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkService;->mStateMachine:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

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
    .line 138
    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/a2dp/A2dpSinkService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkService;->mStateMachine:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    const-string/jumbo v0, "A2dpSinkService"

    return-object v0
.end method

.method public getPriority(Landroid/bluetooth/BluetoothDevice;)I
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 158
    const-string/jumbo v1, "android.permission.BLUETOOTH_ADMIN"

    .line 159
    const-string/jumbo v2, "Need BLUETOOTH_ADMIN permission"

    .line 158
    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/a2dp/A2dpSinkService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-virtual {p0}, Lcom/android/bluetooth/a2dp/A2dpSinkService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 161
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/Settings$Global;->getBluetoothA2dpSrcPriorityKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 162
    const/4 v3, -0x1

    .line 160
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 163
    .local v0, "priority":I
    return v0
.end method

.method public informAvrcpStatePlaying(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkService;->mStateMachine:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkService;->mStateMachine:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->informAvrcpStatePlaying(Landroid/bluetooth/BluetoothDevice;)V

    .line 166
    :cond_0
    return-void
.end method

.method protected initBinder()Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lcom/android/bluetooth/a2dp/A2dpSinkService$BluetoothA2dpSinkBinder;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/a2dp/A2dpSinkService$BluetoothA2dpSinkBinder;-><init>(Lcom/android/bluetooth/a2dp/A2dpSinkService;)V

    return-object v0
.end method

.method declared-synchronized isA2dpPlaying(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    monitor-enter p0

    .line 171
    :try_start_0
    const-string/jumbo v0, "android.permission.BLUETOOTH"

    .line 172
    const-string/jumbo v1, "Need BLUETOOTH permission"

    .line 171
    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/a2dp/A2dpSinkService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string/jumbo v0, "A2dpSinkService"

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

    .line 174
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkService;->mStateMachine:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->isPlaying(Landroid/bluetooth/BluetoothDevice;)Z
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

.method public setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "priority"    # I

    .prologue
    .line 148
    const-string/jumbo v0, "android.permission.BLUETOOTH_ADMIN"

    .line 149
    const-string/jumbo v1, "Need BLUETOOTH_ADMIN permission"

    .line 148
    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/a2dp/A2dpSinkService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Lcom/android/bluetooth/a2dp/A2dpSinkService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 151
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Settings$Global;->getBluetoothA2dpSrcPriorityKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 150
    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 153
    const-string/jumbo v0, "A2dpSinkService"

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

    .line 154
    const/4 v0, 0x1

    return v0
.end method

.method protected start()Z
    .locals 1

    .prologue
    .line 51
    invoke-static {p0, p0}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->make(Lcom/android/bluetooth/a2dp/A2dpSinkService;Landroid/content/Context;)Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkService;->mStateMachine:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    .line 52
    invoke-static {p0}, Lcom/android/bluetooth/a2dp/A2dpSinkService;->setA2dpSinkService(Lcom/android/bluetooth/a2dp/A2dpSinkService;)V

    .line 53
    const/4 v0, 0x1

    return v0
.end method

.method protected stop()Z
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkService;->mStateMachine:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-virtual {v0}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->doQuit()V

    .line 58
    const/4 v0, 0x1

    return v0
.end method
