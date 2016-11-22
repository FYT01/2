.class Lcom/android/bluetooth/pbap/BluetoothPbapService$2;
.super Landroid/bluetooth/IBluetoothPbap$Stub;
.source "BluetoothPbapService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/pbap/BluetoothPbapService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/bluetooth/pbap/BluetoothPbapService;

    .prologue
    .line 830
    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$2;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothPbap$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v3, 0x0

    .line 869
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v0

    if-nez v0, :cond_0

    .line 870
    const-string/jumbo v0, "BluetoothPbapService"

    const-string/jumbo v1, "connect(): not allowed for non-active user"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    return v3

    .line 874
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$2;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    const-string/jumbo v1, "android.permission.BLUETOOTH_ADMIN"

    .line 875
    const-string/jumbo v2, "Need BLUETOOTH_ADMIN permission"

    .line 874
    invoke-virtual {v0, v1, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    return v3
.end method

.method public disconnect()V
    .locals 4

    .prologue
    .line 880
    const-string/jumbo v0, "BluetoothPbapService"

    const-string/jumbo v1, "disconnect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v0

    if-nez v0, :cond_0

    .line 883
    const-string/jumbo v0, "BluetoothPbapService"

    const-string/jumbo v1, "disconnect(): not allowed for non-active user"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    return-void

    .line 887
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$2;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    const-string/jumbo v1, "android.permission.BLUETOOTH_ADMIN"

    .line 888
    const-string/jumbo v2, "Need BLUETOOTH_ADMIN permission"

    .line 887
    invoke-virtual {v0, v1, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$2;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    monitor-enter v1

    .line 890
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$2;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-static {v0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->-get6(Lcom/android/bluetooth/pbap/BluetoothPbapService;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    monitor-exit v1

    .line 879
    return-void

    .line 892
    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$2;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-static {v0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->-get3(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Ljavax/obex/ServerSession;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 893
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$2;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-static {v0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->-get3(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Ljavax/obex/ServerSession;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/obex/ServerSession;->close()V

    .line 894
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$2;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->-set3(Lcom/android/bluetooth/pbap/BluetoothPbapService;Ljavax/obex/ServerSession;)Ljavax/obex/ServerSession;

    .line 897
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$2;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-static {v0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->-wrap1(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V

    .line 899
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$2;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v2, v3}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->-wrap6(Lcom/android/bluetooth/pbap/BluetoothPbapService;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 889
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 890
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public getClient()Landroid/bluetooth/BluetoothDevice;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 844
    const-string/jumbo v0, "BluetoothPbapService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getClient"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$2;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-static {v2}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->-get2(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v0

    if-nez v0, :cond_0

    .line 847
    const-string/jumbo v0, "BluetoothPbapService"

    const-string/jumbo v1, "getClient(): not allowed for non-active user"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    return-object v3

    .line 851
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$2;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    const-string/jumbo v1, "android.permission.BLUETOOTH"

    const-string/jumbo v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$2;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-static {v0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->-get6(Lcom/android/bluetooth/pbap/BluetoothPbapService;)I

    move-result v0

    if-nez v0, :cond_1

    .line 853
    return-object v3

    .line 855
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$2;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-static {v0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->-get2(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0
.end method

.method public getState()I
    .locals 3

    .prologue
    .line 832
    const-string/jumbo v0, "BluetoothPbapService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$2;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-static {v2}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->-get6(Lcom/android/bluetooth/pbap/BluetoothPbapService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v0

    if-nez v0, :cond_0

    .line 835
    const-string/jumbo v0, "BluetoothPbapService"

    const-string/jumbo v1, "getState(): not allowed for non-active user"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    const/4 v0, 0x0

    return v0

    .line 839
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$2;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    const-string/jumbo v1, "android.permission.BLUETOOTH"

    const-string/jumbo v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$2;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-static {v0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->-get6(Lcom/android/bluetooth/pbap/BluetoothPbapService;)I

    move-result v0

    return v0
.end method

.method public isConnected(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v0, 0x0

    .line 859
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v1

    if-nez v1, :cond_0

    .line 860
    const-string/jumbo v1, "BluetoothPbapService"

    const-string/jumbo v2, "isConnected(): not allowed for non-active user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    return v0

    .line 864
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$2;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    const-string/jumbo v2, "android.permission.BLUETOOTH"

    const-string/jumbo v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$2;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-static {v1}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->-get6(Lcom/android/bluetooth/pbap/BluetoothPbapService;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$2;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-static {v0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->-get2(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    :cond_1
    return v0
.end method
