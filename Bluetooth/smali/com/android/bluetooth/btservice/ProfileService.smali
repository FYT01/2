.class public abstract Lcom/android/bluetooth/btservice/ProfileService;
.super Landroid/app/Service;
.source "ProfileService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;
    }
.end annotation


# static fields
.field public static final BLUETOOTH_ADMIN_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH_ADMIN"

.field public static final BLUETOOTH_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH"

.field public static final BLUETOOTH_PRIVILEGED:Ljava/lang/String; = "android.permission.BLUETOOTH_PRIVILEGED"

.field private static final DBG:Z = false

.field private static final PROFILE_SERVICE_MODE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "BluetoothProfileService"

.field private static sReferenceCount:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

.field protected mBinder:Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;

.field private mCleaningUp:Z

.field protected mName:Ljava/lang/String;

.field protected mStartError:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/bluetooth/btservice/ProfileService;->sReferenceCount:Ljava/util/HashMap;

    .line 33
    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 75
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 55
    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mStartError:Z

    .line 56
    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mCleaningUp:Z

    .line 76
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/ProfileService;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mName:Ljava/lang/String;

    .line 75
    return-void
.end method

.method private doStart(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mName:Ljava/lang/String;

    const-string/jumbo v1, "Error starting profile. BluetoothAdapter is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :goto_0
    return-void

    .line 203
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/ProfileService;->start()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mStartError:Z

    .line 204
    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mStartError:Z

    if-nez v0, :cond_2

    .line 205
    iget-object v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mName:Ljava/lang/String;

    const-string/jumbo v1, " profile started successfully"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/ProfileService;->notifyProfileServiceStateChanged(I)V

    goto :goto_0

    .line 203
    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    .line 208
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mName:Ljava/lang/String;

    const-string/jumbo v1, "Error starting profile. BluetoothAdapter is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private doStop(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/ProfileService;->stop()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/ProfileService;->stopSelf()V

    .line 217
    iget-object v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mName:Ljava/lang/String;

    const-string/jumbo v1, " profile stopped successfully"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/ProfileService;->notifyProfileServiceStateChanged(I)V

    .line 213
    :goto_0
    return-void

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mName:Ljava/lang/String;

    const-string/jumbo v1, "Unable to stop profile"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static println(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 1
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 172
    const-string/jumbo v0, "  "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    const-string/jumbo v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    return-void
.end method


# virtual methods
.method protected cleanup()Z
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x1

    return v0
.end method

.method public dump(Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 167
    const-string/jumbo v0, "\nProfile: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/btservice/ProfileService;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    return-void
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 91
    return-void
.end method

.method protected getDevice([B)Landroid/bluetooth/BluetoothDevice;
    .locals 2
    .param p1, "address"    # [B

    .prologue
    const/4 v1, 0x0

    .line 239
    iget-object v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0

    .line 242
    :cond_0
    return-object v1
.end method

.method protected getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/ProfileService;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract initBinder()Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;
.end method

.method protected isAvailable()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 65
    iget-boolean v1, p0, Lcom/android/bluetooth/btservice/ProfileService;->mStartError:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/bluetooth/btservice/ProfileService;->mCleaningUp:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    return-void
.end method

.method public notifyProfileConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;III)V
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "profileId"    # I
    .param p3, "newState"    # I
    .param p4, "prevState"    # I

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/bluetooth/btservice/AdapterService;->onProfileConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;III)V

    .line 232
    :cond_0
    return-void
.end method

.method protected notifyProfileServiceStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/ProfileService;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/bluetooth/btservice/AdapterService;->onProfileServiceStateChanged(Ljava/lang/String;I)V

    .line 224
    :cond_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mBinder:Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 109
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 110
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 111
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/ProfileService;->initBinder()Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mBinder:Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;

    .line 107
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 180
    iget-object v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v0, p0}, Lcom/android/bluetooth/btservice/AdapterService;->removeProfile(Lcom/android/bluetooth/btservice/ProfileService;)V

    .line 182
    :cond_0
    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mCleaningUp:Z

    if-eqz v0, :cond_2

    .line 193
    :cond_1
    :goto_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 194
    iput-object v1, p0, Lcom/android/bluetooth/btservice/ProfileService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 178
    return-void

    .line 186
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mCleaningUp:Z

    .line 187
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/ProfileService;->cleanup()Z

    .line 188
    iget-object v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mBinder:Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;

    if-eqz v0, :cond_1

    .line 189
    iget-object v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mBinder:Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;

    invoke-interface {v0}, Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;->cleanup()Z

    .line 190
    iput-object v1, p0, Lcom/android/bluetooth/btservice/ProfileService;->mBinder:Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v4, 0x2

    .line 116
    iget-object v2, p0, Lcom/android/bluetooth/btservice/ProfileService;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    if-nez v2, :cond_0

    .line 117
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/bluetooth/btservice/ProfileService;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    .line 118
    :cond_0
    iget-boolean v2, p0, Lcom/android/bluetooth/btservice/ProfileService;->mStartError:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/bluetooth/btservice/ProfileService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v2, :cond_2

    .line 119
    :cond_1
    iget-object v2, p0, Lcom/android/bluetooth/btservice/ProfileService;->mName:Ljava/lang/String;

    const-string/jumbo v3, "Stopping profile service: device does not have BT"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/ProfileService;->doStop(Landroid/content/Intent;)V

    .line 121
    return v4

    .line 124
    :cond_2
    const-string/jumbo v2, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/btservice/ProfileService;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_3

    .line 125
    iget-object v2, p0, Lcom/android/bluetooth/btservice/ProfileService;->mName:Ljava/lang/String;

    const-string/jumbo v3, "Permission denied!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    return v4

    .line 129
    :cond_3
    if-nez p1, :cond_4

    .line 130
    iget-object v2, p0, Lcom/android/bluetooth/btservice/ProfileService;->mName:Ljava/lang/String;

    const-string/jumbo v3, "Restarting profile service..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    return v4

    .line 133
    :cond_4
    const-string/jumbo v2, "action"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "com.android.bluetooth.btservice.action.STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 135
    const-string/jumbo v2, "android.bluetooth.adapter.extra.STATE"

    const/high16 v3, -0x80000000

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 136
    .local v1, "state":I
    const/16 v2, 0xa

    if-ne v1, v2, :cond_6

    .line 137
    iget-object v2, p0, Lcom/android/bluetooth/btservice/ProfileService;->mName:Ljava/lang/String;

    const-string/jumbo v3, "Received stop request...Stopping profile..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/ProfileService;->doStop(Landroid/content/Intent;)V

    .line 152
    .end local v1    # "state":I
    :cond_5
    :goto_0
    return v4

    .line 139
    .restart local v1    # "state":I
    :cond_6
    const/16 v2, 0xc

    if-ne v1, v2, :cond_5

    .line 140
    iget-object v2, p0, Lcom/android/bluetooth/btservice/ProfileService;->mName:Ljava/lang/String;

    const-string/jumbo v3, "Received start request. Starting profile..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/bluetooth/btservice/ProfileService;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    .line 142
    iget-object v2, p0, Lcom/android/bluetooth/btservice/ProfileService;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    if-eqz v2, :cond_7

    .line 143
    iget-object v2, p0, Lcom/android/bluetooth/btservice/ProfileService;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v2, p0}, Lcom/android/bluetooth/btservice/AdapterService;->addProfile(Lcom/android/bluetooth/btservice/ProfileService;)V

    .line 148
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/ProfileService;->doStart(Landroid/content/Intent;)V

    goto :goto_0

    .line 145
    :cond_7
    const-string/jumbo v2, "BluetoothProfileService"

    const-string/jumbo v3, "onStart, null mAdapterService, this should never happen "

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 162
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method protected abstract start()Z
.end method

.method protected abstract stop()Z
.end method
