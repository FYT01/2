.class Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$1;
.super Ljava/lang/Object;
.source "BluetoothTetheringNetworkFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->startNetwork()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$1;->this$0:Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 84
    iget-object v1, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$1;->this$0:Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;

    monitor-enter v1

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$1;->this$0:Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;

    invoke-static {v0}, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->-get1(Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;)Landroid/net/LinkProperties;

    move-result-object v10

    .line 86
    .local v10, "linkProperties":Landroid/net/LinkProperties;
    invoke-virtual {v10}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 87
    const-string/jumbo v0, "BluetoothTetheringNetworkFactory"

    const-string/jumbo v2, "attempted to reverse tether without interface name"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 88
    return-void

    .line 90
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$1;->this$0:Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "dhcpThread(+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 91
    const-string/jumbo v3, "): mNetworkInfo="

    .line 90
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 91
    iget-object v3, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$1;->this$0:Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;

    invoke-static {v3}, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->-get3(Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 90
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->-wrap0(Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 94
    new-instance v9, Landroid/net/DhcpResults;

    invoke-direct {v9}, Landroid/net/DhcpResults;-><init>()V

    .line 100
    .local v9, "dhcpResults":Landroid/net/DhcpResults;
    invoke-virtual {v10}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v9}, Landroid/net/NetworkUtils;->runDhcp(Ljava/lang/String;Landroid/net/DhcpResults;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 101
    const-string/jumbo v0, "BluetoothTetheringNetworkFactory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DHCP request error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/net/NetworkUtils;->getDhcpError()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v1, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$1;->this$0:Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;

    monitor-enter v1

    .line 103
    :try_start_2
    iget-object v0, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$1;->this$0:Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->setScoreFilter(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    .line 105
    return-void

    .line 84
    .end local v9    # "dhcpResults":Landroid/net/DhcpResults;
    .end local v10    # "linkProperties":Landroid/net/LinkProperties;
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 102
    .restart local v9    # "dhcpResults":Landroid/net/DhcpResults;
    .restart local v10    # "linkProperties":Landroid/net/LinkProperties;
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 108
    :cond_1
    iget-object v11, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$1;->this$0:Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;

    monitor-enter v11

    .line 109
    :try_start_3
    iget-object v0, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$1;->this$0:Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;

    .line 110
    invoke-virtual {v10}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    .line 109
    invoke-virtual {v9, v1}, Landroid/net/DhcpResults;->toLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->-set0(Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    .line 111
    iget-object v0, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$1;->this$0:Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;

    invoke-static {v0}, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->-get3(Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;)Landroid/net/NetworkInfo;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 112
    iget-object v0, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$1;->this$0:Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;

    invoke-static {v0}, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->-get3(Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;)Landroid/net/NetworkInfo;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v12, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$1;->this$0:Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;

    new-instance v0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$1$1;

    iget-object v1, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$1;->this$0:Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;

    invoke-virtual {v1}, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v1, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$1;->this$0:Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;

    invoke-static {v1}, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->-get0(Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;)Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "Bluetooth Tethering"

    .line 116
    iget-object v1, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$1;->this$0:Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;

    invoke-static {v1}, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->-get3(Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;)Landroid/net/NetworkInfo;

    move-result-object v5

    iget-object v1, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$1;->this$0:Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;

    invoke-static {v1}, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->-get2(Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;)Landroid/net/NetworkCapabilities;

    move-result-object v6

    iget-object v1, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$1;->this$0:Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;

    invoke-static {v1}, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->-get1(Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;)Landroid/net/LinkProperties;

    move-result-object v7

    const/16 v8, 0x45

    move-object v1, p0

    .line 115
    invoke-direct/range {v0 .. v8}, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$1$1;-><init>(Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$1;Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;I)V

    invoke-static {v12, v0}, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->-set1(Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;Landroid/net/NetworkAgent;)Landroid/net/NetworkAgent;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    monitor-exit v11

    .line 82
    return-void

    .line 108
    :catchall_2
    move-exception v0

    monitor-exit v11

    throw v0
.end method
