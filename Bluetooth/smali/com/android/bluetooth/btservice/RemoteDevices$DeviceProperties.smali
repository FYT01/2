.class Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;
.super Ljava/lang/Object;
.source "RemoteDevices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/btservice/RemoteDevices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DeviceProperties"
.end annotation


# instance fields
.field private mAddress:[B

.field private mAlias:Ljava/lang/String;

.field private mBluetoothClass:I

.field private mBondState:I

.field private mDeviceType:I

.field private mName:Ljava/lang/String;

.field private mRssi:S

.field private mUuids:[Landroid/os/ParcelUuid;

.field final synthetic this$0:Lcom/android/bluetooth/btservice/RemoteDevices;


# direct methods
.method static synthetic -get0(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mAlias:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mBluetoothClass:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)S
    .locals 1

    iget-short v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mRssi:S

    return v0
.end method

.method static synthetic -get4(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)[Landroid/os/ParcelUuid;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mUuids:[Landroid/os/ParcelUuid;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;[B)[B
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mAddress:[B

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mAlias:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;I)I
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mBluetoothClass:I

    return p1
.end method

.method static synthetic -set3(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;I)I
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mDeviceType:I

    return p1
.end method

.method static synthetic -set4(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set5(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;S)S
    .locals 0

    iput-short p1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mRssi:S

    return p1
.end method

.method static synthetic -set6(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;[Landroid/os/ParcelUuid;)[Landroid/os/ParcelUuid;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mUuids:[Landroid/os/ParcelUuid;

    return-object p1
.end method

.method constructor <init>(Lcom/android/bluetooth/btservice/RemoteDevices;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/bluetooth/btservice/RemoteDevices;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->this$0:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mBondState:I

    .line 117
    return-void
.end method


# virtual methods
.method getAddress()[B
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->this$0:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-static {v0}, Lcom/android/bluetooth/btservice/RemoteDevices;->-get1(Lcom/android/bluetooth/btservice/RemoteDevices;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 153
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mAddress:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 152
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method getAlias()Ljava/lang/String;
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->this$0:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-static {v0}, Lcom/android/bluetooth/btservice/RemoteDevices;->-get1(Lcom/android/bluetooth/btservice/RemoteDevices;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 180
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mAlias:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 179
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method getBluetoothClass()I
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->this$0:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-static {v0}, Lcom/android/bluetooth/btservice/RemoteDevices;->-get1(Lcom/android/bluetooth/btservice/RemoteDevices;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 135
    :try_start_0
    iget v1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mBluetoothClass:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 134
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method getBondState()I
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->this$0:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-static {v0}, Lcom/android/bluetooth/btservice/RemoteDevices;->-get1(Lcom/android/bluetooth/btservice/RemoteDevices;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 221
    :try_start_0
    iget v1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mBondState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 220
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method getDeviceType()I
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->this$0:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-static {v0}, Lcom/android/bluetooth/btservice/RemoteDevices;->-get1(Lcom/android/bluetooth/btservice/RemoteDevices;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 171
    :try_start_0
    iget v1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mDeviceType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 170
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->this$0:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-static {v0}, Lcom/android/bluetooth/btservice/RemoteDevices;->-get1(Lcom/android/bluetooth/btservice/RemoteDevices;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 126
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 125
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method getRssi()S
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->this$0:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-static {v0}, Lcom/android/bluetooth/btservice/RemoteDevices;->-get1(Lcom/android/bluetooth/btservice/RemoteDevices;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 162
    :try_start_0
    iget-short v1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mRssi:S
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 161
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method getUuids()[Landroid/os/ParcelUuid;
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->this$0:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-static {v0}, Lcom/android/bluetooth/btservice/RemoteDevices;->-get1(Lcom/android/bluetooth/btservice/RemoteDevices;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 144
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mUuids:[Landroid/os/ParcelUuid;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 143
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method setAlias(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "mAlias"    # Ljava/lang/String;

    .prologue
    .line 188
    iget-object v1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->this$0:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-static {v1}, Lcom/android/bluetooth/btservice/RemoteDevices;->-get1(Lcom/android/bluetooth/btservice/RemoteDevices;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 189
    :try_start_0
    iput-object p2, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mAlias:Ljava/lang/String;

    .line 190
    invoke-static {}, Lcom/android/bluetooth/btservice/RemoteDevices;->-get0()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v1

    iget-object v3, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mAddress:[B

    .line 191
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/16 v5, 0xa

    .line 190
    invoke-virtual {v1, v3, v5, v4}, Lcom/android/bluetooth/btservice/AdapterService;->setDevicePropertyNative([BI[B)Z

    .line 192
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.bluetooth.device.action.ALIAS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 193
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 194
    const-string/jumbo v1, "android.bluetooth.device.extra.NAME"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    invoke-static {}, Lcom/android/bluetooth/btservice/RemoteDevices;->-get0()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v1

    const-string/jumbo v3, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v3}, Lcom/android/bluetooth/btservice/AdapterService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 187
    return-void

    .line 188
    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method setBondState(I)V
    .locals 2
    .param p1, "mBondState"    # I

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->this$0:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-static {v0}, Lcom/android/bluetooth/btservice/RemoteDevices;->-get1(Lcom/android/bluetooth/btservice/RemoteDevices;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 204
    :try_start_0
    iput p1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mBondState:I

    .line 205
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 211
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mUuids:[Landroid/os/ParcelUuid;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 202
    return-void

    .line 203
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
