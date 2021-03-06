.class Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceDeathRecipient;
.super Ljava/lang/Object;
.source "HidDevService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/hid/HidDevService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BluetoothHidDeviceDeathRecipient"
.end annotation


# instance fields
.field private mAppConfig:Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;

.field private mService:Lcom/android/bluetooth/hid/HidDevService;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/hid/HidDevService;Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;)V
    .locals 0
    .param p1, "service"    # Lcom/android/bluetooth/hid/HidDevService;
    .param p2, "config"    # Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;

    .prologue
    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    iput-object p1, p0, Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceDeathRecipient;->mService:Lcom/android/bluetooth/hid/HidDevService;

    .line 218
    iput-object p2, p0, Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceDeathRecipient;->mAppConfig:Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;

    .line 216
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 223
    invoke-static {}, Lcom/android/bluetooth/hid/HidDevService;->-get1()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Binder died, need to unregister app :("

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceDeathRecipient;->mService:Lcom/android/bluetooth/hid/HidDevService;

    iget-object v1, p0, Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceDeathRecipient;->mAppConfig:Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/hid/HidDevService;->unregisterApp(Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;)Z

    .line 222
    return-void
.end method

.method public cleanup()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 228
    iput-object v0, p0, Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceDeathRecipient;->mService:Lcom/android/bluetooth/hid/HidDevService;

    .line 229
    iput-object v0, p0, Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceDeathRecipient;->mAppConfig:Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;

    .line 227
    return-void
.end method
