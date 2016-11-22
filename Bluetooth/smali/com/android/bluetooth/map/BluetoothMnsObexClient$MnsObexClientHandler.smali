.class final Lcom/android/bluetooth/map/BluetoothMnsObexClient$MnsObexClientHandler;
.super Landroid/os/Handler;
.source "BluetoothMnsObexClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMnsObexClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MnsObexClientHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/map/BluetoothMnsObexClient;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/map/BluetoothMnsObexClient;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/bluetooth/map/BluetoothMnsObexClient;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient$MnsObexClientHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    .line 119
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 118
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/map/BluetoothMnsObexClient;Landroid/os/Looper;Lcom/android/bluetooth/map/BluetoothMnsObexClient$MnsObexClientHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/bluetooth/map/BluetoothMnsObexClient;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMnsObexClient$MnsObexClientHandler;-><init>(Lcom/android/bluetooth/map/BluetoothMnsObexClient;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x1

    .line 124
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 123
    :goto_0
    return-void

    .line 126
    :pswitch_0
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->-get0()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "BluetoothMnsObexClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Reg  masId:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " notfStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient$MnsObexClientHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    invoke-static {v1}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->-get1(Lcom/android/bluetooth/map/BluetoothMnsObexClient;)Landroid/bluetooth/SdpMnsRecord;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 128
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient$MnsObexClientHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->handleRegistration(II)V

    goto :goto_0

    .line 131
    :cond_1
    const-string/jumbo v1, "BluetoothMnsObexClient"

    const-string/jumbo v2, "MNS SDP info not available yet - Cannot Connect."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 135
    :pswitch_1
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient$MnsObexClientHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [B

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2, v1, v3}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->-wrap0(Lcom/android/bluetooth/map/BluetoothMnsObexClient;[BI)I

    goto :goto_0

    .line 139
    :pswitch_2
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient$MnsObexClientHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    invoke-static {v1}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->-wrap1(Lcom/android/bluetooth/map/BluetoothMnsObexClient;)V

    .line 141
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient$MnsObexClientHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    new-instance v2, Lcom/android/bluetooth/map/BluetoothMnsObexClient$MnsSdpSearchInfo;

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient$MnsObexClientHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-direct {v2, v3, v6, v4, v5}, Lcom/android/bluetooth/map/BluetoothMnsObexClient$MnsSdpSearchInfo;-><init>(Lcom/android/bluetooth/map/BluetoothMnsObexClient;ZII)V

    iput-object v2, v1, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mMnsLstRegRqst:Lcom/android/bluetooth/map/BluetoothMnsObexClient$MnsSdpSearchInfo;

    .line 144
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient$MnsObexClientHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    iget-object v1, v1, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mHandler:Landroid/os/Handler;

    .line 145
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 144
    invoke-virtual {v1, v6, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 146
    .local v0, "msgReg":Landroid/os/Message;
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->-get0()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "BluetoothMnsObexClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SearchReg  masId:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " notfStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_2
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient$MnsObexClientHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    iget-object v1, v1, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1770

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 124
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
