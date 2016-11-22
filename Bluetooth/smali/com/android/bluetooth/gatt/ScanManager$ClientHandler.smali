.class Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;
.super Landroid/os/Handler;
.source "ScanManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/gatt/ScanManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/gatt/ScanManager;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/gatt/ScanManager;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/bluetooth/gatt/ScanManager;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    .line 175
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 174
    return-void
.end method

.method private isBatchClient(Lcom/android/bluetooth/gatt/ScanClient;)Z
    .locals 8
    .param p1, "client"    # Lcom/android/bluetooth/gatt/ScanClient;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 249
    if-eqz p1, :cond_0

    iget-object v3, p1, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    if-nez v3, :cond_1

    .line 250
    :cond_0
    return v2

    .line 252
    :cond_1
    iget-object v0, p1, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    .line 253
    .local v0, "settings":Landroid/bluetooth/le/ScanSettings;
    invoke-virtual {v0}, Landroid/bluetooth/le/ScanSettings;->getCallbackType()I

    move-result v3

    if-ne v3, v1, :cond_3

    .line 254
    invoke-virtual {v0}, Landroid/bluetooth/le/ScanSettings;->getReportDelayMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_2

    .line 253
    :goto_0
    return v1

    :cond_2
    move v1, v2

    .line 254
    goto :goto_0

    :cond_3
    move v1, v2

    .line 253
    goto :goto_0
.end method

.method private isScanSupported(Lcom/android/bluetooth/gatt/ScanClient;)Z
    .locals 8
    .param p1, "client"    # Lcom/android/bluetooth/gatt/ScanClient;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 258
    if-eqz p1, :cond_0

    iget-object v3, p1, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    if-nez v3, :cond_1

    .line 259
    :cond_0
    return v1

    .line 261
    :cond_1
    iget-object v0, p1, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    .line 262
    .local v0, "settings":Landroid/bluetooth/le/ScanSettings;
    iget-object v3, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v3}, Lcom/android/bluetooth/gatt/ScanManager;->-wrap0(Lcom/android/bluetooth/gatt/ScanManager;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 263
    return v1

    .line 265
    :cond_2
    invoke-virtual {v0}, Landroid/bluetooth/le/ScanSettings;->getCallbackType()I

    move-result v3

    if-ne v3, v1, :cond_4

    .line 266
    invoke-virtual {v0}, Landroid/bluetooth/le/ScanSettings;->getReportDelayMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    .line 265
    :goto_0
    return v1

    :cond_3
    move v1, v2

    .line 266
    goto :goto_0

    :cond_4
    move v1, v2

    .line 265
    goto :goto_0
.end method


# virtual methods
.method handleFlushBatchResults(Lcom/android/bluetooth/gatt/ScanClient;)V
    .locals 2
    .param p1, "client"    # Lcom/android/bluetooth/gatt/ScanClient;

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->-get9(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/Utils;->enforceAdminPermission(Landroid/content/ContextWrapper;)V

    .line 242
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->-get3(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 243
    return-void

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->-get8(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/ScanManager$ScanNative;

    move-result-object v0

    iget v1, p1, Lcom/android/bluetooth/gatt/ScanClient;->clientIf:I

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->flushBatchResults(I)V

    .line 240
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 180
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/bluetooth/gatt/ScanClient;

    .line 181
    .local v0, "client":Lcom/android/bluetooth/gatt/ScanClient;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 193
    const-string/jumbo v1, "BtGatt.ScanManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "received an unkown message : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :goto_0
    return-void

    .line 183
    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->handleStartScan(Lcom/android/bluetooth/gatt/ScanClient;)V

    goto :goto_0

    .line 186
    :pswitch_1
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->handleStopScan(Lcom/android/bluetooth/gatt/ScanClient;)V

    goto :goto_0

    .line 189
    :pswitch_2
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->handleFlushBatchResults(Lcom/android/bluetooth/gatt/ScanClient;)V

    goto :goto_0

    .line 181
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method handleStartScan(Lcom/android/bluetooth/gatt/ScanClient;)V
    .locals 2
    .param p1, "client"    # Lcom/android/bluetooth/gatt/ScanClient;

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->-get9(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/Utils;->enforceAdminPermission(Landroid/content/ContextWrapper;)V

    .line 199
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    const-string/jumbo v1, "handling starting scan"

    invoke-static {v0, v1}, Lcom/android/bluetooth/gatt/ScanManager;->-wrap1(Lcom/android/bluetooth/gatt/ScanManager;Ljava/lang/String;)V

    .line 201
    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->isScanSupported(Lcom/android/bluetooth/gatt/ScanClient;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 202
    const-string/jumbo v0, "BtGatt.ScanManager"

    const-string/jumbo v1, "Scan settings not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    return-void

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->-get7(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->-get3(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 207
    :cond_1
    const-string/jumbo v0, "BtGatt.ScanManager"

    const-string/jumbo v1, "Scan already started"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    return-void

    .line 211
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->isBatchClient(Lcom/android/bluetooth/gatt/ScanClient;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 212
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->-get3(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 213
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->-get8(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/ScanManager$ScanNative;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->startBatchScan(Lcom/android/bluetooth/gatt/ScanClient;)V

    .line 197
    :cond_3
    :goto_0
    return-void

    .line 215
    :cond_4
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->-get7(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 216
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->-get8(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/ScanManager$ScanNative;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->startRegularScan(Lcom/android/bluetooth/gatt/ScanClient;)V

    .line 217
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->-get8(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/ScanManager$ScanNative;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->-wrap0(Lcom/android/bluetooth/gatt/ScanManager$ScanNative;Lcom/android/bluetooth/gatt/ScanClient;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 218
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->-get8(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/ScanManager$ScanNative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->configureRegularScanParams()V

    goto :goto_0
.end method

.method handleStopScan(Lcom/android/bluetooth/gatt/ScanClient;)V
    .locals 3
    .param p1, "client"    # Lcom/android/bluetooth/gatt/ScanClient;

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->-get9(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/Utils;->enforceAdminPermission(Landroid/content/ContextWrapper;)V

    .line 225
    if-nez p1, :cond_0

    return-void

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->-get7(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 227
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->-get8(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/ScanManager$ScanNative;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->stopRegularScan(Lcom/android/bluetooth/gatt/ScanClient;)V

    .line 228
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->-get8(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/ScanManager$ScanNative;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->-wrap0(Lcom/android/bluetooth/gatt/ScanManager$ScanNative;Lcom/android/bluetooth/gatt/ScanClient;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->-get8(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/ScanManager$ScanNative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->configureRegularScanParams()V

    .line 234
    :cond_1
    :goto_0
    iget-boolean v0, p1, Lcom/android/bluetooth/gatt/ScanClient;->appDied:Z

    if-eqz v0, :cond_2

    .line 235
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "app died, unregister client - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/bluetooth/gatt/ScanClient;->clientIf:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/bluetooth/gatt/ScanManager;->-wrap1(Lcom/android/bluetooth/gatt/ScanManager;Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->-get9(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    iget v1, p1, Lcom/android/bluetooth/gatt/ScanClient;->clientIf:I

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/gatt/GattService;->unregisterClient(I)V

    .line 223
    :cond_2
    return-void

    .line 232
    :cond_3
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->-get8(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/ScanManager$ScanNative;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->stopBatchScan(Lcom/android/bluetooth/gatt/ScanClient;)V

    goto :goto_0
.end method
