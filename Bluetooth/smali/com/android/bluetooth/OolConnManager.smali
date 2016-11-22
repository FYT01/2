.class public Lcom/android/bluetooth/OolConnManager;
.super Ljava/lang/Object;
.source "OolConnManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OolConnManager"

.field static channel:I

.field static mAddress:Ljava/lang/String;

.field static sdpDone:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    sput v0, Lcom/android/bluetooth/OolConnManager;->channel:I

    .line 41
    sput-boolean v0, Lcom/android/bluetooth/OolConnManager;->sdpDone:Z

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CreateL2capConnection(Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;
    .locals 4
    .param p0, "remBtDev"    # Landroid/bluetooth/BluetoothDevice;
    .param p1, "uuid"    # Ljava/util/UUID;

    .prologue
    .line 46
    const-string/jumbo v1, "OolConnManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "createL2cConnection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :try_start_0
    sget v1, Lcom/android/bluetooth/OolConnManager;->channel:I

    invoke-virtual {p0, v1}, Landroid/bluetooth/BluetoothDevice;->createL2capSocket(I)Landroid/bluetooth/BluetoothSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v1, "OolConnManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "BtSocket Connect error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getL2cPSM(Landroid/bluetooth/BluetoothDevice;)I
    .locals 6
    .param p0, "remBtDev"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 67
    const/4 v2, 0x0

    .line 68
    .local v2, "waitCount":I
    const/4 v0, -0x1

    .line 69
    .local v0, "channelNo":I
    :goto_0
    sget-boolean v3, Lcom/android/bluetooth/OolConnManager;->sdpDone:Z

    if-nez v3, :cond_0

    const/16 v3, 0x64

    if-ge v2, v3, :cond_0

    .line 71
    const-wide/16 v4, 0x64

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 72
    :catch_0
    move-exception v1

    .line 73
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v3, "OolConnManager"

    const-string/jumbo v4, "Interrupted"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 77
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_0
    const/4 v2, 0x0

    .line 78
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/bluetooth/OolConnManager;->sdpDone:Z

    .line 80
    const-string/jumbo v3, "OolConnManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "returning l2c channel as "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/bluetooth/OolConnManager;->channel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    sget v0, Lcom/android/bluetooth/OolConnManager;->channel:I

    .line 82
    const/4 v3, -0x1

    sput v3, Lcom/android/bluetooth/OolConnManager;->channel:I

    .line 83
    return v0
.end method

.method public static saveOppSdpRecord(Landroid/bluetooth/SdpOppOpsRecord;Landroid/bluetooth/BluetoothDevice;)V
    .locals 3
    .param p0, "sdpRec"    # Landroid/bluetooth/SdpOppOpsRecord;
    .param p1, "btDevice"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 88
    const-string/jumbo v0, "OolConnManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "saveOppSdpRecord"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    sget-object v0, Lcom/android/bluetooth/OolConnManager;->mAddress:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/bluetooth/OolConnManager;->mAddress:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/bluetooth/SdpOppOpsRecord;->getL2capPsm()I

    move-result v0

    :goto_0
    sput v0, Lcom/android/bluetooth/OolConnManager;->channel:I

    .line 91
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/bluetooth/OolConnManager;->sdpDone:Z

    .line 92
    const-string/jumbo v0, "OolConnManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "saveOppSdpRecord channel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/bluetooth/OolConnManager;->channel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_0
    return-void

    .line 90
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static setSdpInitiatedAddress(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3
    .param p0, "remBtDev"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v0, 0x0

    .line 57
    if-eqz p0, :cond_0

    .line 58
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/OolConnManager;->mAddress:Ljava/lang/String;

    .line 61
    :goto_0
    const-string/jumbo v0, "OolConnManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSdpInitiatedAddress "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/bluetooth/OolConnManager;->mAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    return-void

    .line 60
    :cond_0
    sput-object v0, Lcom/android/bluetooth/OolConnManager;->mAddress:Ljava/lang/String;

    goto :goto_0
.end method
