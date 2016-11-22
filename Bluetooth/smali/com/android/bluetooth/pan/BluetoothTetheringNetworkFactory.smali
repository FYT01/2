.class public Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;
.super Landroid/net/NetworkFactory;
.source "BluetoothTetheringNetworkFactory.java"


# static fields
.field private static final NETWORK_SCORE:I = 0x45

.field private static final NETWORK_TYPE:Ljava/lang/String; = "Bluetooth Tethering"

.field private static final TAG:Ljava/lang/String; = "BluetoothTetheringNetworkFactory"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mNetworkAgent:Landroid/net/NetworkAgent;

.field private final mNetworkCapabilities:Landroid/net/NetworkCapabilities;

.field private final mNetworkInfo:Landroid/net/NetworkInfo;

.field private final mPanService:Lcom/android/bluetooth/pan/PanService;


# direct methods
.method static synthetic -get0(Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;)Landroid/net/LinkProperties;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mLinkProperties:Landroid/net/LinkProperties;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;)Landroid/net/NetworkCapabilities;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;)Landroid/net/NetworkInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mLinkProperties:Landroid/net/LinkProperties;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;Landroid/net/NetworkAgent;)Landroid/net/NetworkAgent;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mNetworkAgent:Landroid/net/NetworkAgent;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->onCancelRequest()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/bluetooth/pan/PanService;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "panService"    # Lcom/android/bluetooth/pan/PanService;

    .prologue
    .line 63
    const-string/jumbo v0, "Bluetooth Tethering"

    new-instance v1, Landroid/net/NetworkCapabilities;

    invoke-direct {v1}, Landroid/net/NetworkCapabilities;-><init>()V

    invoke-direct {p0, p2, p1, v0, v1}, Landroid/net/NetworkFactory;-><init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkCapabilities;)V

    .line 65
    iput-object p1, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mContext:Landroid/content/Context;

    .line 66
    iput-object p3, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mPanService:Lcom/android/bluetooth/pan/PanService;

    .line 68
    new-instance v0, Landroid/net/NetworkInfo;

    const-string/jumbo v1, "Bluetooth Tethering"

    const-string/jumbo v2, ""

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 69
    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mLinkProperties:Landroid/net/LinkProperties;

    .line 70
    new-instance v0, Landroid/net/NetworkCapabilities;

    invoke-direct {v0}, Landroid/net/NetworkCapabilities;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 71
    invoke-direct {p0}, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->initNetworkCapabilities()V

    .line 72
    iget-object v0, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->setCapabilityFilter(Landroid/net/NetworkCapabilities;)V

    .line 62
    return-void
.end method

.method private initNetworkCapabilities()V
    .locals 3

    .prologue
    const/16 v2, 0x5dc0

    .line 183
    iget-object v0, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    .line 184
    iget-object v0, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 185
    iget-object v0, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 188
    iget-object v0, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->setLinkUpstreamBandwidthKbps(I)V

    .line 189
    iget-object v0, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->setLinkDownstreamBandwidthKbps(I)V

    .line 182
    return-void
.end method

.method private declared-synchronized onCancelRequest()V
    .locals 6

    .prologue
    monitor-enter p0

    .line 136
    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v2}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 137
    iget-object v2, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v2}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/NetworkUtils;->stopDhcp(Ljava/lang/String;)Z

    .line 139
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v2}, Landroid/net/LinkProperties;->clear()V

    .line 140
    iget-object v2, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mNetworkInfo:Landroid/net/NetworkInfo;

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v2, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mNetworkAgent:Landroid/net/NetworkAgent;

    if-eqz v2, :cond_1

    .line 142
    iget-object v2, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mNetworkAgent:Landroid/net/NetworkAgent;

    iget-object v3, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2, v3}, Landroid/net/NetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    .line 143
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mNetworkAgent:Landroid/net/NetworkAgent;

    .line 145
    :cond_1
    iget-object v2, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mPanService:Lcom/android/bluetooth/pan/PanService;

    invoke-virtual {v2}, Lcom/android/bluetooth/pan/PanService;->getConnectedDevices()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "device$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 146
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v2, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mPanService:Lcom/android/bluetooth/pan/PanService;

    invoke-virtual {v2, v0}, Lcom/android/bluetooth/pan/PanService;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "device$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .restart local v1    # "device$iterator":Ljava/util/Iterator;
    :cond_2
    monitor-exit p0

    .line 135
    return-void
.end method


# virtual methods
.method protected startNetwork()V
    .locals 2

    .prologue
    .line 81
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$1;

    invoke-direct {v1, p0}, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$1;-><init>(Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 124
    .local v0, "dhcpThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 79
    return-void
.end method

.method public startReverseTether(Ljava/lang/String;)V
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 153
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    :cond_0
    const-string/jumbo v0, "BluetoothTetheringNetworkFactory"

    const-string/jumbo v1, "attempted to reverse tether with empty interface"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    return-void

    .line 157
    :cond_1
    monitor-enter p0

    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 159
    const-string/jumbo v0, "BluetoothTetheringNetworkFactory"

    const-string/jumbo v1, "attempted to reverse tether while already in process"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 160
    return-void

    .line 162
    :cond_2
    :try_start_1
    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mLinkProperties:Landroid/net/LinkProperties;

    .line 163
    iget-object v0, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, p1}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p0}, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->register()V

    .line 166
    const/16 v0, 0x45

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->setScoreFilter(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 152
    return-void

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected stopNetwork()V
    .locals 0

    .prologue
    .line 130
    return-void
.end method

.method public declared-synchronized stopReverseTether()V
    .locals 2

    .prologue
    monitor-enter p0

    .line 173
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    const-string/jumbo v0, "BluetoothTetheringNetworkFactory"

    const-string/jumbo v1, "attempted to stop reverse tether with nothing tethered"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 175
    return-void

    .line 177
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->onCancelRequest()V

    .line 178
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->setScoreFilter(I)V

    .line 179
    invoke-virtual {p0}, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->unregister()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 172
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
