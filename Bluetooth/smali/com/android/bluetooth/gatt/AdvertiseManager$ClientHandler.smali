.class Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;
.super Landroid/os/Handler;
.source "AdvertiseManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/gatt/AdvertiseManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/gatt/AdvertiseManager;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/gatt/AdvertiseManager;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/bluetooth/gatt/AdvertiseManager;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/AdvertiseManager;

    .line 163
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 162
    return-void
.end method

.method private handleStartAdvertising(Lcom/android/bluetooth/gatt/AdvertiseClient;)V
    .locals 3
    .param p1, "client"    # Lcom/android/bluetooth/gatt/AdvertiseClient;

    .prologue
    .line 185
    iget-object v1, p0, Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/AdvertiseManager;

    invoke-static {v1}, Lcom/android/bluetooth/gatt/AdvertiseManager;->-get4(Lcom/android/bluetooth/gatt/AdvertiseManager;)Lcom/android/bluetooth/gatt/GattService;

    move-result-object v1

    invoke-static {v1}, Lcom/android/bluetooth/Utils;->enforceAdminPermission(Landroid/content/ContextWrapper;)V

    .line 186
    iget v0, p1, Lcom/android/bluetooth/gatt/AdvertiseClient;->clientIf:I

    .line 187
    .local v0, "clientIf":I
    iget-object v1, p0, Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/AdvertiseManager;

    invoke-static {v1}, Lcom/android/bluetooth/gatt/AdvertiseManager;->-get1(Lcom/android/bluetooth/gatt/AdvertiseManager;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    iget-object v1, p0, Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/AdvertiseManager;

    const/4 v2, 0x3

    invoke-static {v1, v0, v2}, Lcom/android/bluetooth/gatt/AdvertiseManager;->-wrap1(Lcom/android/bluetooth/gatt/AdvertiseManager;II)V

    .line 189
    return-void

    .line 192
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/AdvertiseManager;

    invoke-static {v1}, Lcom/android/bluetooth/gatt/AdvertiseManager;->-get1(Lcom/android/bluetooth/gatt/AdvertiseManager;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;->maxAdvertiseInstances()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 193
    iget-object v1, p0, Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/AdvertiseManager;

    .line 194
    const/4 v2, 0x2

    .line 193
    invoke-static {v1, v0, v2}, Lcom/android/bluetooth/gatt/AdvertiseManager;->-wrap1(Lcom/android/bluetooth/gatt/AdvertiseManager;II)V

    .line 195
    return-void

    .line 197
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/AdvertiseManager;

    invoke-static {v1}, Lcom/android/bluetooth/gatt/AdvertiseManager;->-get2(Lcom/android/bluetooth/gatt/AdvertiseManager;)Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiseNative;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiseNative;->startAdverising(Lcom/android/bluetooth/gatt/AdvertiseClient;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 198
    iget-object v1, p0, Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/AdvertiseManager;

    const/4 v2, 0x4

    invoke-static {v1, v0, v2}, Lcom/android/bluetooth/gatt/AdvertiseManager;->-wrap1(Lcom/android/bluetooth/gatt/AdvertiseManager;II)V

    .line 199
    return-void

    .line 201
    :cond_2
    iget-object v1, p0, Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/AdvertiseManager;

    invoke-static {v1}, Lcom/android/bluetooth/gatt/AdvertiseManager;->-get1(Lcom/android/bluetooth/gatt/AdvertiseManager;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 202
    iget-object v1, p0, Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/AdvertiseManager;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/android/bluetooth/gatt/AdvertiseManager;->-wrap1(Lcom/android/bluetooth/gatt/AdvertiseManager;II)V

    .line 184
    return-void
.end method

.method private handleStopAdvertising(Lcom/android/bluetooth/gatt/AdvertiseClient;)V
    .locals 3
    .param p1, "client"    # Lcom/android/bluetooth/gatt/AdvertiseClient;

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/AdvertiseManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/AdvertiseManager;->-get4(Lcom/android/bluetooth/gatt/AdvertiseManager;)Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/Utils;->enforceAdminPermission(Landroid/content/ContextWrapper;)V

    .line 208
    if-nez p1, :cond_0

    .line 209
    return-void

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/AdvertiseManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stop advertise for client "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/bluetooth/gatt/AdvertiseClient;->clientIf:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/bluetooth/gatt/AdvertiseManager;->-wrap0(Lcom/android/bluetooth/gatt/AdvertiseManager;Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/AdvertiseManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/AdvertiseManager;->-get2(Lcom/android/bluetooth/gatt/AdvertiseManager;)Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiseNative;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiseNative;->stopAdvertising(Lcom/android/bluetooth/gatt/AdvertiseClient;)V

    .line 213
    iget-boolean v0, p1, Lcom/android/bluetooth/gatt/AdvertiseClient;->appDied:Z

    if-eqz v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/AdvertiseManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "app died - unregistering client : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/bluetooth/gatt/AdvertiseClient;->clientIf:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/bluetooth/gatt/AdvertiseManager;->-wrap0(Lcom/android/bluetooth/gatt/AdvertiseManager;Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/AdvertiseManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/AdvertiseManager;->-get4(Lcom/android/bluetooth/gatt/AdvertiseManager;)Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    iget v1, p1, Lcom/android/bluetooth/gatt/AdvertiseClient;->clientIf:I

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/gatt/GattService;->unregisterClient(I)V

    .line 217
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/AdvertiseManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/AdvertiseManager;->-get1(Lcom/android/bluetooth/gatt/AdvertiseManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 218
    iget-object v0, p0, Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/AdvertiseManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/AdvertiseManager;->-get1(Lcom/android/bluetooth/gatt/AdvertiseManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 206
    :cond_2
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 168
    iget-object v1, p0, Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/AdvertiseManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "message : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/gatt/AdvertiseManager;->-wrap0(Lcom/android/bluetooth/gatt/AdvertiseManager;Ljava/lang/String;)V

    .line 169
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/bluetooth/gatt/AdvertiseClient;

    .line 170
    .local v0, "client":Lcom/android/bluetooth/gatt/AdvertiseClient;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 179
    const-string/jumbo v1, "BtGatt.AdvertiseManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "recieve an unknown message : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :goto_0
    return-void

    .line 172
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;->handleStartAdvertising(Lcom/android/bluetooth/gatt/AdvertiseClient;)V

    goto :goto_0

    .line 175
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;->handleStopAdvertising(Lcom/android/bluetooth/gatt/AdvertiseClient;)V

    goto :goto_0

    .line 170
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method maxAdvertiseInstances()I
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/AdvertiseManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/AdvertiseManager;->-get0(Lcom/android/bluetooth/gatt/AdvertiseManager;)Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->isMultiAdvertisementSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/AdvertiseManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/AdvertiseManager;->-get0(Lcom/android/bluetooth/gatt/AdvertiseManager;)Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getNumOfAdvertisementInstancesSupported()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/AdvertiseManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/AdvertiseManager;->-get0(Lcom/android/bluetooth/gatt/AdvertiseManager;)Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->isPeripheralModeSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 231
    const/4 v0, 0x1

    return v0

    .line 233
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
