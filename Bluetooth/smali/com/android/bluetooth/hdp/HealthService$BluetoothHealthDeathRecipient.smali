.class Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthDeathRecipient;
.super Ljava/lang/Object;
.source "HealthService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/hdp/HealthService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BluetoothHealthDeathRecipient"
.end annotation


# instance fields
.field private mConfig:Landroid/bluetooth/BluetoothHealthAppConfiguration;

.field private mService:Lcom/android/bluetooth/hdp/HealthService;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/hdp/HealthService;Landroid/bluetooth/BluetoothHealthAppConfiguration;)V
    .locals 0
    .param p1, "service"    # Lcom/android/bluetooth/hdp/HealthService;
    .param p2, "config"    # Landroid/bluetooth/BluetoothHealthAppConfiguration;

    .prologue
    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    iput-object p1, p0, Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthDeathRecipient;->mService:Lcom/android/bluetooth/hdp/HealthService;

    .line 316
    iput-object p2, p0, Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthDeathRecipient;->mConfig:Landroid/bluetooth/BluetoothHealthAppConfiguration;

    .line 314
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 320
    const-string/jumbo v0, "HealthService"

    const-string/jumbo v1, "Binder is dead."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object v0, p0, Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthDeathRecipient;->mService:Lcom/android/bluetooth/hdp/HealthService;

    iget-object v1, p0, Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthDeathRecipient;->mConfig:Landroid/bluetooth/BluetoothHealthAppConfiguration;

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/hdp/HealthService;->unregisterAppConfiguration(Landroid/bluetooth/BluetoothHealthAppConfiguration;)Z

    .line 319
    return-void
.end method

.method public cleanup()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 325
    iput-object v0, p0, Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthDeathRecipient;->mService:Lcom/android/bluetooth/hdp/HealthService;

    .line 326
    iput-object v0, p0, Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthDeathRecipient;->mConfig:Landroid/bluetooth/BluetoothHealthAppConfiguration;

    .line 324
    return-void
.end method
