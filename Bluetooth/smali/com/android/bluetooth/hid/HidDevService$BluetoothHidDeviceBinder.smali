.class Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceBinder;
.super Landroid/bluetooth/IBluetoothHidDevice$Stub;
.source "HidDevService.java"

# interfaces
.implements Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/hid/HidDevService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BluetoothHidDeviceBinder"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mService:Lcom/android/bluetooth/hid/HidDevService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 235
    const-class v0, Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceBinder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceBinder;->TAG:Ljava/lang/String;

    .line 233
    return-void
.end method

.method public constructor <init>(Lcom/android/bluetooth/hid/HidDevService;)V
    .locals 0
    .param p1, "service"    # Lcom/android/bluetooth/hid/HidDevService;

    .prologue
    .line 239
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothHidDevice$Stub;-><init>()V

    .line 240
    iput-object p1, p0, Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceBinder;->mService:Lcom/android/bluetooth/hid/HidDevService;

    .line 239
    return-void
.end method

.method private getService()Lcom/android/bluetooth/hid/HidDevService;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 250
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v0

    if-nez v0, :cond_0

    .line 251
    sget-object v0, Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceBinder;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "HidDevice call not allowed for non-active user"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    return-object v2

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceBinder;->mService:Lcom/android/bluetooth/hid/HidDevService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceBinder;->mService:Lcom/android/bluetooth/hid/HidDevService;

    invoke-static {v0}, Lcom/android/bluetooth/hid/HidDevService;->-wrap1(Lcom/android/bluetooth/hid/HidDevService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 256
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceBinder;->mService:Lcom/android/bluetooth/hid/HidDevService;

    return-object v0

    .line 259
    :cond_1
    return-object v2
.end method


# virtual methods
.method public cleanup()Z
    .locals 1

    .prologue
    .line 245
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceBinder;->mService:Lcom/android/bluetooth/hid/HidDevService;

    .line 246
    const/4 v0, 0x1

    return v0
.end method

.method public connect()Z
    .locals 3

    .prologue
    .line 326
    invoke-static {}, Lcom/android/bluetooth/hid/HidDevService;->-get0()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceBinder;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "connect()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceBinder;->getService()Lcom/android/bluetooth/hid/HidDevService;

    move-result-object v0

    .line 329
    .local v0, "service":Lcom/android/bluetooth/hid/HidDevService;
    if-nez v0, :cond_1

    .line 330
    const/4 v1, 0x0

    return v1

    .line 333
    :cond_1
    invoke-virtual {v0}, Lcom/android/bluetooth/hid/HidDevService;->connect()Z

    move-result v1

    return v1
.end method

.method public disconnect()Z
    .locals 3

    .prologue
    .line 338
    invoke-static {}, Lcom/android/bluetooth/hid/HidDevService;->-get0()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceBinder;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "disconnect()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceBinder;->getService()Lcom/android/bluetooth/hid/HidDevService;

    move-result-object v0

    .line 341
    .local v0, "service":Lcom/android/bluetooth/hid/HidDevService;
    if-nez v0, :cond_1

    .line 342
    const/4 v1, 0x0

    return v1

    .line 345
    :cond_1
    invoke-virtual {v0}, Lcom/android/bluetooth/hid/HidDevService;->disconnect()Z

    move-result v1

    return v1
.end method

.method public registerApp(Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;Landroid/bluetooth/IBluetoothHidDeviceCallback;)Z
    .locals 6
    .param p1, "config"    # Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;
    .param p2, "sdp"    # Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;
    .param p3, "inQos"    # Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;
    .param p4, "outQos"    # Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;
    .param p5, "callback"    # Landroid/bluetooth/IBluetoothHidDeviceCallback;

    .prologue
    .line 266
    invoke-static {}, Lcom/android/bluetooth/hid/HidDevService;->-get0()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceBinder;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "unregisterApp()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceBinder;->getService()Lcom/android/bluetooth/hid/HidDevService;

    move-result-object v0

    .line 269
    .local v0, "service":Lcom/android/bluetooth/hid/HidDevService;
    if-nez v0, :cond_1

    .line 270
    const/4 v1, 0x0

    return v1

    :cond_1
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 273
    invoke-virtual/range {v0 .. v5}, Lcom/android/bluetooth/hid/HidDevService;->registerApp(Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;Landroid/bluetooth/IBluetoothHidDeviceCallback;)Z

    move-result v1

    return v1
.end method

.method public replyReport(BB[B)Z
    .locals 4
    .param p1, "type"    # B
    .param p2, "id"    # B
    .param p3, "data"    # [B

    .prologue
    .line 302
    invoke-static {}, Lcom/android/bluetooth/hid/HidDevService;->-get0()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceBinder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "replyReport(): type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceBinder;->getService()Lcom/android/bluetooth/hid/HidDevService;

    move-result-object v0

    .line 305
    .local v0, "service":Lcom/android/bluetooth/hid/HidDevService;
    if-nez v0, :cond_1

    .line 306
    const/4 v1, 0x0

    return v1

    .line 309
    :cond_1
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/bluetooth/hid/HidDevService;->replyReport(BB[B)Z

    move-result v1

    return v1
.end method

.method public reportError(B)Z
    .locals 4
    .param p1, "error"    # B

    .prologue
    .line 350
    invoke-static {}, Lcom/android/bluetooth/hid/HidDevService;->-get0()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceBinder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reportError(), error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceBinder;->getService()Lcom/android/bluetooth/hid/HidDevService;

    move-result-object v0

    .line 353
    .local v0, "service":Lcom/android/bluetooth/hid/HidDevService;
    if-nez v0, :cond_1

    .line 354
    const/4 v1, 0x0

    return v1

    .line 357
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hid/HidDevService;->reportError(B)Z

    move-result v1

    return v1
.end method

.method public sendReport(I[B)Z
    .locals 4
    .param p1, "id"    # I
    .param p2, "data"    # [B

    .prologue
    .line 290
    invoke-static {}, Lcom/android/bluetooth/hid/HidDevService;->-get0()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceBinder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendReport(): id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceBinder;->getService()Lcom/android/bluetooth/hid/HidDevService;

    move-result-object v0

    .line 293
    .local v0, "service":Lcom/android/bluetooth/hid/HidDevService;
    if-nez v0, :cond_1

    .line 294
    const/4 v1, 0x0

    return v1

    .line 297
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/hid/HidDevService;->sendReport(I[B)Z

    move-result v1

    return v1
.end method

.method public unplug()Z
    .locals 3

    .prologue
    .line 314
    invoke-static {}, Lcom/android/bluetooth/hid/HidDevService;->-get0()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceBinder;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "unplug()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceBinder;->getService()Lcom/android/bluetooth/hid/HidDevService;

    move-result-object v0

    .line 317
    .local v0, "service":Lcom/android/bluetooth/hid/HidDevService;
    if-nez v0, :cond_1

    .line 318
    const/4 v1, 0x0

    return v1

    .line 321
    :cond_1
    invoke-virtual {v0}, Lcom/android/bluetooth/hid/HidDevService;->unplug()Z

    move-result v1

    return v1
.end method

.method public unregisterApp(Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;)Z
    .locals 3
    .param p1, "config"    # Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;

    .prologue
    .line 278
    invoke-static {}, Lcom/android/bluetooth/hid/HidDevService;->-get0()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceBinder;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "unregisterApp()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceBinder;->getService()Lcom/android/bluetooth/hid/HidDevService;

    move-result-object v0

    .line 281
    .local v0, "service":Lcom/android/bluetooth/hid/HidDevService;
    if-nez v0, :cond_1

    .line 282
    const/4 v1, 0x0

    return v1

    .line 285
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hid/HidDevService;->unregisterApp(Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;)Z

    move-result v1

    return v1
.end method
