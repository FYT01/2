.class Lcom/android/bluetooth/pan/PanService$1;
.super Landroid/os/Handler;
.source "PanService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/pan/PanService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/pan/PanService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/pan/PanService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/bluetooth/pan/PanService;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/bluetooth/pan/PanService$1;->this$0:Lcom/android/bluetooth/pan/PanService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 146
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 149
    :sswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 150
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService$1;->this$0:Lcom/android/bluetooth/pan/PanService;

    invoke-static {v1}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v2

    .line 151
    const/4 v3, 0x2

    const/4 v4, 0x1

    .line 150
    invoke-static {v0, v2, v3, v4}, Lcom/android/bluetooth/pan/PanService;->-wrap1(Lcom/android/bluetooth/pan/PanService;[BII)Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService$1;->this$0:Lcom/android/bluetooth/pan/PanService;

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 153
    const/4 v4, 0x2

    const/4 v5, 0x1

    .line 152
    invoke-virtual/range {v0 .. v5}, Lcom/android/bluetooth/pan/PanService;->handlePanDeviceStateChange(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;III)V

    .line 154
    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService$1;->this$0:Lcom/android/bluetooth/pan/PanService;

    const/4 v2, 0x0

    .line 155
    const/4 v3, 0x0

    const/4 v4, 0x2

    .line 156
    const/4 v5, 0x1

    .line 154
    invoke-virtual/range {v0 .. v5}, Lcom/android/bluetooth/pan/PanService;->handlePanDeviceStateChange(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;III)V

    goto :goto_0

    .line 163
    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    :sswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 164
    .restart local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService$1;->this$0:Lcom/android/bluetooth/pan/PanService;

    invoke-static {v1}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/bluetooth/pan/PanService;->-wrap2(Lcom/android/bluetooth/pan/PanService;[B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService$1;->this$0:Lcom/android/bluetooth/pan/PanService;

    iget-object v2, p0, Lcom/android/bluetooth/pan/PanService$1;->this$0:Lcom/android/bluetooth/pan/PanService;

    invoke-static {v2}, Lcom/android/bluetooth/pan/PanService;->-get1(Lcom/android/bluetooth/pan/PanService;)Ljava/lang/String;

    move-result-object v2

    .line 166
    const/4 v3, 0x3

    const/4 v4, 0x2

    .line 167
    const/4 v5, 0x1

    .line 165
    invoke-virtual/range {v0 .. v5}, Lcom/android/bluetooth/pan/PanService;->handlePanDeviceStateChange(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;III)V

    .line 168
    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService$1;->this$0:Lcom/android/bluetooth/pan/PanService;

    iget-object v2, p0, Lcom/android/bluetooth/pan/PanService$1;->this$0:Lcom/android/bluetooth/pan/PanService;

    invoke-static {v2}, Lcom/android/bluetooth/pan/PanService;->-get1(Lcom/android/bluetooth/pan/PanService;)Ljava/lang/String;

    move-result-object v2

    .line 169
    const/4 v3, 0x0

    const/4 v4, 0x2

    .line 170
    const/4 v5, 0x1

    .line 168
    invoke-virtual/range {v0 .. v5}, Lcom/android/bluetooth/pan/PanService;->handlePanDeviceStateChange(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;III)V

    goto :goto_0

    .line 177
    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    :sswitch_2
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/bluetooth/pan/PanService$ConnectState;

    .line 178
    .local v6, "cs":Lcom/android/bluetooth/pan/PanService$ConnectState;
    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService$1;->this$0:Lcom/android/bluetooth/pan/PanService;

    iget-object v2, v6, Lcom/android/bluetooth/pan/PanService$ConnectState;->addr:[B

    invoke-static {v0, v2}, Lcom/android/bluetooth/pan/PanService;->-wrap0(Lcom/android/bluetooth/pan/PanService;[B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 180
    .restart local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    invoke-static {}, Lcom/android/bluetooth/pan/PanService;->-get0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService$1;->this$0:Lcom/android/bluetooth/pan/PanService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MESSAGE_CONNECT_STATE_CHANGED: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v6, Lcom/android/bluetooth/pan/PanService$ConnectState;->state:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/bluetooth/pan/PanService;->-wrap5(Lcom/android/bluetooth/pan/PanService;Ljava/lang/String;)V

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService$1;->this$0:Lcom/android/bluetooth/pan/PanService;

    iget-object v2, p0, Lcom/android/bluetooth/pan/PanService$1;->this$0:Lcom/android/bluetooth/pan/PanService;

    invoke-static {v2}, Lcom/android/bluetooth/pan/PanService;->-get1(Lcom/android/bluetooth/pan/PanService;)Ljava/lang/String;

    move-result-object v2

    .line 184
    iget v3, v6, Lcom/android/bluetooth/pan/PanService$ConnectState;->state:I

    invoke-static {v3}, Lcom/android/bluetooth/pan/PanService;->-wrap4(I)I

    move-result v3

    iget v4, v6, Lcom/android/bluetooth/pan/PanService$ConnectState;->local_role:I

    iget v5, v6, Lcom/android/bluetooth/pan/PanService$ConnectState;->remote_role:I

    .line 183
    invoke-virtual/range {v0 .. v5}, Lcom/android/bluetooth/pan/PanService;->handlePanDeviceStateChange(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;III)V

    goto/16 :goto_0

    .line 146
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0xb -> :sswitch_2
    .end sparse-switch
.end method
