.class Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;
.super Lcom/android/internal/util/State;
.source "BondStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/btservice/BondStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PendingCommandState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/btservice/BondStateMachine;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/btservice/BondStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/bluetooth/btservice/BondStateMachine;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/btservice/BondStateMachine;Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/bluetooth/btservice/BondStateMachine;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;-><init>(Lcom/android/bluetooth/btservice/BondStateMachine;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 168
    iget-object v1, p0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    const-string/jumbo v2, "Entering PendingCommandState State"

    invoke-static {v1, v2}, Lcom/android/bluetooth/btservice/BondStateMachine;->-wrap7(Lcom/android/bluetooth/btservice/BondStateMachine;Ljava/lang/String;)V

    .line 169
    iget-object v1, p0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/btservice/BondStateMachine;->-wrap0(Lcom/android/bluetooth/btservice/BondStateMachine;)Landroid/os/Message;

    move-result-object v1

    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 167
    .local v0, "dev":Landroid/bluetooth/BluetoothDevice;
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 18
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 175
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 176
    .local v4, "dev":Landroid/bluetooth/BluetoothDevice;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    invoke-static {v13}, Lcom/android/bluetooth/btservice/BondStateMachine;->-get3(Lcom/android/bluetooth/btservice/BondStateMachine;)Lcom/android/bluetooth/btservice/RemoteDevices;

    move-result-object v13

    invoke-virtual {v13, v4}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object v5

    .line 177
    .local v5, "devProp":Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;
    const/4 v11, 0x0

    .line 178
    .local v11, "result":Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    invoke-static {v13}, Lcom/android/bluetooth/btservice/BondStateMachine;->-get1(Lcom/android/bluetooth/btservice/BondStateMachine;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    const/4 v14, 0x2

    if-eq v13, v14, :cond_0

    .line 179
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    const/4 v14, 0x4

    if-eq v13, v14, :cond_0

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    const/4 v14, 0x5

    if-eq v13, v14, :cond_0

    .line 180
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    const/4 v14, 0x6

    if-eq v13, v14, :cond_0

    .line 181
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    move-object/from16 v0, p1

    invoke-static {v13, v0}, Lcom/android/bluetooth/btservice/BondStateMachine;->-wrap6(Lcom/android/bluetooth/btservice/BondStateMachine;Landroid/os/Message;)V

    .line 182
    const/4 v13, 0x1

    return v13

    .line 185
    :cond_0
    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v13, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-direct {v6, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 187
    .local v6, "intent":Landroid/content/Intent;
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    packed-switch v13, :pswitch_data_0

    .line 289
    const-string/jumbo v13, "BluetoothBondStateMachine"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Received unhandled event:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->what:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    const/4 v13, 0x0

    return v13

    .line 189
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    const/4 v15, 0x0

    invoke-static {v13, v4, v14, v15}, Lcom/android/bluetooth/btservice/BondStateMachine;->-wrap2(Lcom/android/bluetooth/btservice/BondStateMachine;Landroid/bluetooth/BluetoothDevice;IZ)Z

    move-result v11

    .line 292
    .end local v11    # "result":Z
    :cond_1
    :goto_0
    if-eqz v11, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    invoke-static {v13}, Lcom/android/bluetooth/btservice/BondStateMachine;->-get1(Lcom/android/bluetooth/btservice/BondStateMachine;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    :cond_2
    const/4 v13, 0x1

    return v13

    .line 192
    .restart local v11    # "result":Z
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    const/4 v14, 0x0

    invoke-static {v13, v4, v14}, Lcom/android/bluetooth/btservice/BondStateMachine;->-wrap3(Lcom/android/bluetooth/btservice/BondStateMachine;Landroid/bluetooth/BluetoothDevice;Z)Z

    move-result v11

    .local v11, "result":Z
    goto :goto_0

    .line 195
    .local v11, "result":Z
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    invoke-static {v13, v4}, Lcom/android/bluetooth/btservice/BondStateMachine;->-wrap1(Lcom/android/bluetooth/btservice/BondStateMachine;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v11

    .local v11, "result":Z
    goto :goto_0

    .line 198
    .local v11, "result":Z
    :pswitch_3
    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    .line 199
    .local v7, "newState":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg2:I

    invoke-static {v13, v14}, Lcom/android/bluetooth/btservice/BondStateMachine;->-wrap4(Lcom/android/bluetooth/btservice/BondStateMachine;I)I

    move-result v10

    .line 200
    .local v10, "reason":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    invoke-static {v13, v4, v7, v10}, Lcom/android/bluetooth/btservice/BondStateMachine;->-wrap9(Lcom/android/bluetooth/btservice/BondStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 201
    const/16 v13, 0xb

    if-eq v7, v13, :cond_8

    .line 206
    const/16 v13, 0xa

    if-ne v7, v13, :cond_3

    .line 207
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    invoke-static {v13}, Lcom/android/bluetooth/btservice/BondStateMachine;->-get1(Lcom/android/bluetooth/btservice/BondStateMachine;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 212
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    invoke-static {v13}, Lcom/android/bluetooth/btservice/BondStateMachine;->-get1(Lcom/android/bluetooth/btservice/BondStateMachine;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    const/4 v11, 0x0

    .line 213
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    invoke-static {v13}, Lcom/android/bluetooth/btservice/BondStateMachine;->-get1(Lcom/android/bluetooth/btservice/BondStateMachine;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 218
    const/4 v11, 0x0

    .line 219
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    invoke-static {v14}, Lcom/android/bluetooth/btservice/BondStateMachine;->-get4(Lcom/android/bluetooth/btservice/BondStateMachine;)Lcom/android/bluetooth/btservice/BondStateMachine$StableState;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/bluetooth/btservice/BondStateMachine;->-wrap10(Lcom/android/bluetooth/btservice/BondStateMachine;Lcom/android/internal/util/IState;)V

    .line 221
    :cond_4
    const/16 v13, 0xa

    if-ne v7, v13, :cond_7

    .line 223
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    invoke-static {v13}, Lcom/android/bluetooth/btservice/BondStateMachine;->-get0(Lcom/android/bluetooth/btservice/BondStateMachine;)Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v13

    .line 224
    const/4 v14, 0x0

    .line 223
    invoke-virtual {v13, v4, v14}, Lcom/android/bluetooth/btservice/AdapterService;->setPhonebookAccessPermission(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 225
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    invoke-static {v13}, Lcom/android/bluetooth/btservice/BondStateMachine;->-get0(Lcom/android/bluetooth/btservice/BondStateMachine;)Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v13

    .line 226
    const/4 v14, 0x0

    .line 225
    invoke-virtual {v13, v4, v14}, Lcom/android/bluetooth/btservice/AdapterService;->setMessageAccessPermission(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 227
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    invoke-static {v13}, Lcom/android/bluetooth/btservice/BondStateMachine;->-get0(Lcom/android/bluetooth/btservice/BondStateMachine;)Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v13

    .line 228
    const/4 v14, 0x0

    .line 227
    invoke-virtual {v13, v4, v14}, Lcom/android/bluetooth/btservice/AdapterService;->setSimAccessPermission(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 230
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    invoke-static {v13, v4}, Lcom/android/bluetooth/btservice/BondStateMachine;->-wrap5(Lcom/android/bluetooth/btservice/BondStateMachine;Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 207
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    invoke-static {v13}, Lcom/android/bluetooth/btservice/BondStateMachine;->-get1(Lcom/android/bluetooth/btservice/BondStateMachine;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-eqz v13, :cond_3

    .line 208
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    const-string/jumbo v14, "not transitioning to stable state"

    invoke-static {v13, v14}, Lcom/android/bluetooth/btservice/BondStateMachine;->-wrap7(Lcom/android/bluetooth/btservice/BondStateMachine;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 212
    :cond_6
    const/4 v11, 0x1

    goto :goto_1

    .line 232
    :cond_7
    const/16 v13, 0xc

    if-ne v7, v13, :cond_1

    goto/16 :goto_0

    .line 241
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    invoke-static {v13}, Lcom/android/bluetooth/btservice/BondStateMachine;->-get1(Lcom/android/bluetooth/btservice/BondStateMachine;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 242
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 245
    .end local v7    # "newState":I
    .end local v10    # "reason":I
    :pswitch_4
    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    .line 246
    .local v8, "passkey":I
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg2:I

    .line 247
    .local v12, "variant":I
    if-nez v5, :cond_9

    .line 249
    const-string/jumbo v13, "BluetoothBondStateMachine"

    const-string/jumbo v14, "Received msg from an unknown device"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const/4 v13, 0x0

    return v13

    .line 252
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    invoke-virtual {v5}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->getAddress()[B

    move-result-object v14

    invoke-static {v13, v14, v8, v12}, Lcom/android/bluetooth/btservice/BondStateMachine;->-wrap8(Lcom/android/bluetooth/btservice/BondStateMachine;[BII)V

    goto/16 :goto_0

    .line 255
    .end local v8    # "passkey":I
    .end local v12    # "variant":I
    :pswitch_5
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v2

    .line 256
    .local v2, "btClass":Landroid/bluetooth/BluetoothClass;
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v3

    .line 257
    .local v3, "btDeviceClass":I
    if-nez v5, :cond_a

    .line 259
    const-string/jumbo v13, "BluetoothBondStateMachine"

    const-string/jumbo v14, "Received msg from an unknown device"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const/4 v13, 0x0

    return v13

    .line 262
    :cond_a
    const/16 v13, 0x540

    if-eq v3, v13, :cond_b

    .line 263
    const/16 v13, 0x5c0

    if-ne v3, v13, :cond_c

    .line 271
    :cond_b
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v14

    const-wide v16, 0x412b773e00000000L    # 899999.0

    mul-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->floor(D)D

    move-result-wide v14

    double-to-int v13, v14

    const v14, 0x186a0

    add-int v9, v14, v13

    .line 272
    .local v9, "pin":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    invoke-virtual {v5}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->getAddress()[B

    move-result-object v14

    .line 273
    const/4 v15, 0x5

    .line 272
    invoke-static {v13, v14, v9, v15}, Lcom/android/bluetooth/btservice/BondStateMachine;->-wrap8(Lcom/android/bluetooth/btservice/BondStateMachine;[BII)V

    goto/16 :goto_0

    .line 277
    .end local v9    # "pin":I
    :cond_c
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg2:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_d

    .line 278
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    invoke-virtual {v5}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->getAddress()[B

    move-result-object v14

    const/4 v15, 0x0

    .line 279
    const/16 v16, 0x7

    .line 278
    invoke-static/range {v13 .. v16}, Lcom/android/bluetooth/btservice/BondStateMachine;->-wrap8(Lcom/android/bluetooth/btservice/BondStateMachine;[BII)V

    goto/16 :goto_0

    .line 283
    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    invoke-virtual {v5}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->getAddress()[B

    move-result-object v14

    const/4 v15, 0x0

    .line 284
    const/16 v16, 0x0

    .line 283
    invoke-static/range {v13 .. v16}, Lcom/android/bluetooth/btservice/BondStateMachine;->-wrap8(Lcom/android/bluetooth/btservice/BondStateMachine;[BII)V

    goto/16 :goto_0

    .line 187
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
