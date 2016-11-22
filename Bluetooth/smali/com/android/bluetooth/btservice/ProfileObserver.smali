.class public Lcom/android/bluetooth/btservice/ProfileObserver;
.super Landroid/database/ContentObserver;
.source "ProfileObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/btservice/ProfileObserver$AdapterStateObserver;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mService:Lcom/android/bluetooth/btservice/AdapterService;

.field private mStateObserver:Lcom/android/bluetooth/btservice/ProfileObserver$AdapterStateObserver;


# direct methods
.method static synthetic -wrap0(Lcom/android/bluetooth/btservice/ProfileObserver;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/btservice/ProfileObserver;->onBluetoothOff()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/bluetooth/btservice/AdapterService;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/bluetooth/btservice/AdapterService;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 22
    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 23
    iput-object p1, p0, Lcom/android/bluetooth/btservice/ProfileObserver;->mContext:Landroid/content/Context;

    .line 24
    iput-object p2, p0, Lcom/android/bluetooth/btservice/ProfileObserver;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    .line 25
    new-instance v0, Lcom/android/bluetooth/btservice/ProfileObserver$AdapterStateObserver;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/btservice/ProfileObserver$AdapterStateObserver;-><init>(Lcom/android/bluetooth/btservice/ProfileObserver;)V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/ProfileObserver;->mStateObserver:Lcom/android/bluetooth/btservice/ProfileObserver$AdapterStateObserver;

    .line 21
    return-void
.end method

.method private onBluetoothOff()V
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/bluetooth/btservice/ProfileObserver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/bluetooth/btservice/ProfileObserver;->mStateObserver:Lcom/android/bluetooth/btservice/ProfileObserver$AdapterStateObserver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 36
    iget-object v0, p0, Lcom/android/bluetooth/btservice/ProfileObserver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/bluetooth/btservice/Config;->init(Landroid/content/Context;)V

    .line 37
    iget-object v0, p0, Lcom/android/bluetooth/btservice/ProfileObserver;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->enable()Z

    .line 34
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/bluetooth/btservice/ProfileObserver;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/android/bluetooth/btservice/ProfileObserver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/bluetooth/btservice/ProfileObserver;->mStateObserver:Lcom/android/bluetooth/btservice/ProfileObserver$AdapterStateObserver;

    .line 48
    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 49
    iget-object v0, p0, Lcom/android/bluetooth/btservice/ProfileObserver;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->disable()Z

    .line 45
    :cond_0
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/bluetooth/btservice/ProfileObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 30
    const-string/jumbo v1, "bluetooth_disabled_profiles"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    .line 29
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 28
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/bluetooth/btservice/ProfileObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 40
    return-void
.end method
