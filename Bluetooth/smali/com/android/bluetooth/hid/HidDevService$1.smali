.class Lcom/android/bluetooth/hid/HidDevService$1;
.super Landroid/os/Handler;
.source "HidDevService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/hid/HidDevService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/hid/HidDevService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/hid/HidDevService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/bluetooth/hid/HidDevService;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/bluetooth/hid/HidDevService$1;->this$0:Lcom/android/bluetooth/hid/HidDevService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 19
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 79
    invoke-static {}, Lcom/android/bluetooth/hid/HidDevService;->-get0()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-static {}, Lcom/android/bluetooth/hid/HidDevService;->-get1()Ljava/lang/String;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "handleMessage(): msg.what="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_0
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->what:I

    packed-switch v15, :pswitch_data_0

    .line 78
    :cond_1
    :goto_0
    return-void

    .line 84
    :pswitch_0
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v15, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/hid/HidDevService$1;->this$0:Lcom/android/bluetooth/hid/HidDevService;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, [B

    move-object/from16 v0, v16

    invoke-static {v0, v15}, Lcom/android/bluetooth/hid/HidDevService;->-wrap0(Lcom/android/bluetooth/hid/HidDevService;[B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    .line 85
    :goto_1
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    if-eqz v15, :cond_4

    const/4 v13, 0x1

    .line 88
    .local v13, "success":Z
    :goto_2
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/hid/HidDevService$1;->this$0:Lcom/android/bluetooth/hid/HidDevService;

    invoke-static {v15}, Lcom/android/bluetooth/hid/HidDevService;->-get3(Lcom/android/bluetooth/hid/HidDevService;)Landroid/bluetooth/IBluetoothHidDeviceCallback;

    move-result-object v15

    if-eqz v15, :cond_1

    .line 89
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/hid/HidDevService$1;->this$0:Lcom/android/bluetooth/hid/HidDevService;

    invoke-static {v15}, Lcom/android/bluetooth/hid/HidDevService;->-get3(Lcom/android/bluetooth/hid/HidDevService;)Landroid/bluetooth/IBluetoothHidDeviceCallback;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/hid/HidDevService$1;->this$0:Lcom/android/bluetooth/hid/HidDevService;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/bluetooth/hid/HidDevService;->-get2(Lcom/android/bluetooth/hid/HidDevService;)Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v15, v4, v0, v13}, Landroid/bluetooth/IBluetoothHidDeviceCallback;->onAppStatusChanged(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_3
    if-eqz v13, :cond_5

    .line 98
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/hid/HidDevService$1;->this$0:Lcom/android/bluetooth/hid/HidDevService;

    new-instance v16, Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceDeathRecipient;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/hid/HidDevService$1;->this$0:Lcom/android/bluetooth/hid/HidDevService;

    move-object/from16 v17, v0

    .line 99
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/hid/HidDevService$1;->this$0:Lcom/android/bluetooth/hid/HidDevService;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/bluetooth/hid/HidDevService;->-get2(Lcom/android/bluetooth/hid/HidDevService;)Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;

    move-result-object v18

    .line 98
    invoke-direct/range {v16 .. v18}, Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceDeathRecipient;-><init>(Lcom/android/bluetooth/hid/HidDevService;Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;)V

    invoke-static/range {v15 .. v16}, Lcom/android/bluetooth/hid/HidDevService;->-set2(Lcom/android/bluetooth/hid/HidDevService;Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceDeathRecipient;)Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceDeathRecipient;

    .line 100
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/hid/HidDevService$1;->this$0:Lcom/android/bluetooth/hid/HidDevService;

    invoke-static {v15}, Lcom/android/bluetooth/hid/HidDevService;->-get3(Lcom/android/bluetooth/hid/HidDevService;)Landroid/bluetooth/IBluetoothHidDeviceCallback;

    move-result-object v15

    if-eqz v15, :cond_2

    .line 101
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/hid/HidDevService$1;->this$0:Lcom/android/bluetooth/hid/HidDevService;

    invoke-static {v15}, Lcom/android/bluetooth/hid/HidDevService;->-get3(Lcom/android/bluetooth/hid/HidDevService;)Landroid/bluetooth/IBluetoothHidDeviceCallback;

    move-result-object v15

    invoke-interface {v15}, Landroid/bluetooth/IBluetoothHidDeviceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 103
    .local v1, "binder":Landroid/os/IBinder;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/hid/HidDevService$1;->this$0:Lcom/android/bluetooth/hid/HidDevService;

    invoke-static {v15}, Lcom/android/bluetooth/hid/HidDevService;->-get4(Lcom/android/bluetooth/hid/HidDevService;)Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceDeathRecipient;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v1, v15, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 104
    invoke-static {}, Lcom/android/bluetooth/hid/HidDevService;->-get1()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "IBinder.linkToDeath() ok"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 123
    .end local v1    # "binder":Landroid/os/IBinder;
    :cond_2
    :goto_4
    if-nez v13, :cond_1

    .line 124
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/hid/HidDevService$1;->this$0:Lcom/android/bluetooth/hid/HidDevService;

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Lcom/android/bluetooth/hid/HidDevService;->-set0(Lcom/android/bluetooth/hid/HidDevService;Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;)Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;

    .line 125
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/hid/HidDevService$1;->this$0:Lcom/android/bluetooth/hid/HidDevService;

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Lcom/android/bluetooth/hid/HidDevService;->-set1(Lcom/android/bluetooth/hid/HidDevService;Landroid/bluetooth/IBluetoothHidDeviceCallback;)Landroid/bluetooth/IBluetoothHidDeviceCallback;

    goto/16 :goto_0

    .line 84
    .end local v13    # "success":Z
    :cond_3
    const/4 v4, 0x0

    .local v4, "device":Landroid/bluetooth/BluetoothDevice;
    goto/16 :goto_1

    .line 85
    .end local v4    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_4
    const/4 v13, 0x0

    .restart local v13    # "success":Z
    goto/16 :goto_2

    .line 92
    :catch_0
    move-exception v5

    .line 93
    .local v5, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/bluetooth/hid/HidDevService;->-get1()Ljava/lang/String;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "e="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v5}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_3

    .line 105
    .end local v5    # "e":Landroid/os/RemoteException;
    .restart local v1    # "binder":Landroid/os/IBinder;
    :catch_1
    move-exception v5

    .line 106
    .restart local v5    # "e":Landroid/os/RemoteException;
    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_4

    .line 109
    .end local v1    # "binder":Landroid/os/IBinder;
    .end local v5    # "e":Landroid/os/RemoteException;
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/hid/HidDevService$1;->this$0:Lcom/android/bluetooth/hid/HidDevService;

    invoke-static {v15}, Lcom/android/bluetooth/hid/HidDevService;->-get4(Lcom/android/bluetooth/hid/HidDevService;)Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceDeathRecipient;

    move-result-object v15

    if-eqz v15, :cond_2

    .line 110
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/hid/HidDevService$1;->this$0:Lcom/android/bluetooth/hid/HidDevService;

    invoke-static {v15}, Lcom/android/bluetooth/hid/HidDevService;->-get3(Lcom/android/bluetooth/hid/HidDevService;)Landroid/bluetooth/IBluetoothHidDeviceCallback;

    move-result-object v15

    if-eqz v15, :cond_6

    .line 111
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/hid/HidDevService$1;->this$0:Lcom/android/bluetooth/hid/HidDevService;

    invoke-static {v15}, Lcom/android/bluetooth/hid/HidDevService;->-get3(Lcom/android/bluetooth/hid/HidDevService;)Landroid/bluetooth/IBluetoothHidDeviceCallback;

    move-result-object v15

    invoke-interface {v15}, Landroid/bluetooth/IBluetoothHidDeviceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 113
    .restart local v1    # "binder":Landroid/os/IBinder;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/hid/HidDevService$1;->this$0:Lcom/android/bluetooth/hid/HidDevService;

    invoke-static {v15}, Lcom/android/bluetooth/hid/HidDevService;->-get4(Lcom/android/bluetooth/hid/HidDevService;)Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceDeathRecipient;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v1, v15, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 114
    invoke-static {}, Lcom/android/bluetooth/hid/HidDevService;->-get1()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "IBinder.unlinkToDeath() ok"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_2

    .line 119
    .end local v1    # "binder":Landroid/os/IBinder;
    :cond_6
    :goto_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/hid/HidDevService$1;->this$0:Lcom/android/bluetooth/hid/HidDevService;

    invoke-static {v15}, Lcom/android/bluetooth/hid/HidDevService;->-get4(Lcom/android/bluetooth/hid/HidDevService;)Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceDeathRecipient;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceDeathRecipient;->cleanup()V

    .line 120
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/hid/HidDevService$1;->this$0:Lcom/android/bluetooth/hid/HidDevService;

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Lcom/android/bluetooth/hid/HidDevService;->-set2(Lcom/android/bluetooth/hid/HidDevService;Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceDeathRecipient;)Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceDeathRecipient;

    goto/16 :goto_4

    .line 115
    .restart local v1    # "binder":Landroid/os/IBinder;
    :catch_2
    move-exception v6

    .line 116
    .local v6, "e":Ljava/util/NoSuchElementException;
    invoke-virtual {v6}, Ljava/util/NoSuchElementException;->printStackTrace()V

    goto :goto_5

    .line 133
    .end local v1    # "binder":Landroid/os/IBinder;
    .end local v6    # "e":Ljava/util/NoSuchElementException;
    .end local v13    # "success":Z
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/hid/HidDevService$1;->this$0:Lcom/android/bluetooth/hid/HidDevService;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, [B

    move-object/from16 v0, v16

    invoke-static {v0, v15}, Lcom/android/bluetooth/hid/HidDevService;->-wrap0(Lcom/android/bluetooth/hid/HidDevService;[B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    .line 134
    .local v4, "device":Landroid/bluetooth/BluetoothDevice;
    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    .line 135
    .local v7, "halState":I
    invoke-static {v7}, Lcom/android/bluetooth/hid/HidDevService;->-wrap2(I)I

    move-result v12

    .line 138
    .local v12, "state":I
    :try_start_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/hid/HidDevService$1;->this$0:Lcom/android/bluetooth/hid/HidDevService;

    invoke-static {v15}, Lcom/android/bluetooth/hid/HidDevService;->-get3(Lcom/android/bluetooth/hid/HidDevService;)Landroid/bluetooth/IBluetoothHidDeviceCallback;

    move-result-object v15

    if-eqz v15, :cond_7

    .line 139
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/hid/HidDevService$1;->this$0:Lcom/android/bluetooth/hid/HidDevService;

    invoke-static {v15}, Lcom/android/bluetooth/hid/HidDevService;->-get3(Lcom/android/bluetooth/hid/HidDevService;)Landroid/bluetooth/IBluetoothHidDeviceCallback;

    move-result-object v15

    invoke-interface {v15, v4, v12}, Landroid/bluetooth/IBluetoothHidDeviceCallback;->onConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 144
    :cond_7
    :goto_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/hid/HidDevService$1;->this$0:Lcom/android/bluetooth/hid/HidDevService;

    invoke-static {v15, v4, v12}, Lcom/android/bluetooth/hid/HidDevService;->-wrap3(Lcom/android/bluetooth/hid/HidDevService;Landroid/bluetooth/BluetoothDevice;I)V

    goto/16 :goto_0

    .line 140
    :catch_3
    move-exception v5

    .line 141
    .restart local v5    # "e":Landroid/os/RemoteException;
    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_6

    .line 149
    .end local v4    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v5    # "e":Landroid/os/RemoteException;
    .end local v7    # "halState":I
    .end local v12    # "state":I
    :pswitch_2
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    int-to-byte v14, v15

    .line 150
    .local v14, "type":B
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg2:I

    int-to-byte v8, v15

    .line 151
    .local v8, "id":B
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v15, :cond_8

    const/4 v2, 0x0

    .line 154
    .local v2, "bufferSize":I
    :goto_7
    :try_start_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/hid/HidDevService$1;->this$0:Lcom/android/bluetooth/hid/HidDevService;

    invoke-static {v15}, Lcom/android/bluetooth/hid/HidDevService;->-get3(Lcom/android/bluetooth/hid/HidDevService;)Landroid/bluetooth/IBluetoothHidDeviceCallback;

    move-result-object v15

    if-eqz v15, :cond_1

    .line 155
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/hid/HidDevService$1;->this$0:Lcom/android/bluetooth/hid/HidDevService;

    invoke-static {v15}, Lcom/android/bluetooth/hid/HidDevService;->-get3(Lcom/android/bluetooth/hid/HidDevService;)Landroid/bluetooth/IBluetoothHidDeviceCallback;

    move-result-object v15

    invoke-interface {v15, v14, v8, v2}, Landroid/bluetooth/IBluetoothHidDeviceCallback;->onGetReport(BBI)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 156
    :catch_4
    move-exception v5

    .line 157
    .restart local v5    # "e":Landroid/os/RemoteException;
    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 151
    .end local v2    # "bufferSize":I
    .end local v5    # "e":Landroid/os/RemoteException;
    :cond_8
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .restart local v2    # "bufferSize":I
    goto :goto_7

    .line 163
    .end local v2    # "bufferSize":I
    .end local v8    # "id":B
    .end local v14    # "type":B
    :pswitch_3
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    int-to-byte v11, v15

    .line 164
    .local v11, "reportType":B
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg2:I

    int-to-byte v10, v15

    .line 165
    .local v10, "reportId":B
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Ljava/nio/ByteBuffer;

    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    .line 168
    .local v3, "data":[B
    :try_start_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/hid/HidDevService$1;->this$0:Lcom/android/bluetooth/hid/HidDevService;

    invoke-static {v15}, Lcom/android/bluetooth/hid/HidDevService;->-get3(Lcom/android/bluetooth/hid/HidDevService;)Landroid/bluetooth/IBluetoothHidDeviceCallback;

    move-result-object v15

    if-eqz v15, :cond_1

    .line 169
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/hid/HidDevService$1;->this$0:Lcom/android/bluetooth/hid/HidDevService;

    invoke-static {v15}, Lcom/android/bluetooth/hid/HidDevService;->-get3(Lcom/android/bluetooth/hid/HidDevService;)Landroid/bluetooth/IBluetoothHidDeviceCallback;

    move-result-object v15

    invoke-interface {v15, v11, v10, v3}, Landroid/bluetooth/IBluetoothHidDeviceCallback;->onSetReport(BB[B)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_0

    .line 170
    :catch_5
    move-exception v5

    .line 171
    .restart local v5    # "e":Landroid/os/RemoteException;
    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 177
    .end local v3    # "data":[B
    .end local v5    # "e":Landroid/os/RemoteException;
    .end local v10    # "reportId":B
    .end local v11    # "reportType":B
    :pswitch_4
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    int-to-byte v9, v15

    .line 180
    .local v9, "protocol":B
    :try_start_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/hid/HidDevService$1;->this$0:Lcom/android/bluetooth/hid/HidDevService;

    invoke-static {v15}, Lcom/android/bluetooth/hid/HidDevService;->-get3(Lcom/android/bluetooth/hid/HidDevService;)Landroid/bluetooth/IBluetoothHidDeviceCallback;

    move-result-object v15

    if-eqz v15, :cond_1

    .line 181
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/hid/HidDevService$1;->this$0:Lcom/android/bluetooth/hid/HidDevService;

    invoke-static {v15}, Lcom/android/bluetooth/hid/HidDevService;->-get3(Lcom/android/bluetooth/hid/HidDevService;)Landroid/bluetooth/IBluetoothHidDeviceCallback;

    move-result-object v15

    invoke-interface {v15, v9}, Landroid/bluetooth/IBluetoothHidDeviceCallback;->onSetProtocol(B)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_0

    .line 182
    :catch_6
    move-exception v5

    .line 183
    .restart local v5    # "e":Landroid/os/RemoteException;
    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 188
    .end local v5    # "e":Landroid/os/RemoteException;
    .end local v9    # "protocol":B
    :pswitch_5
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    int-to-byte v10, v15

    .line 189
    .restart local v10    # "reportId":B
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Ljava/nio/ByteBuffer;

    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    .line 192
    .restart local v3    # "data":[B
    :try_start_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/hid/HidDevService$1;->this$0:Lcom/android/bluetooth/hid/HidDevService;

    invoke-static {v15}, Lcom/android/bluetooth/hid/HidDevService;->-get3(Lcom/android/bluetooth/hid/HidDevService;)Landroid/bluetooth/IBluetoothHidDeviceCallback;

    move-result-object v15

    if-eqz v15, :cond_1

    .line 193
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/hid/HidDevService$1;->this$0:Lcom/android/bluetooth/hid/HidDevService;

    invoke-static {v15}, Lcom/android/bluetooth/hid/HidDevService;->-get3(Lcom/android/bluetooth/hid/HidDevService;)Landroid/bluetooth/IBluetoothHidDeviceCallback;

    move-result-object v15

    invoke-interface {v15, v10, v3}, Landroid/bluetooth/IBluetoothHidDeviceCallback;->onIntrData(B[B)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_7

    goto/16 :goto_0

    .line 194
    :catch_7
    move-exception v5

    .line 195
    .restart local v5    # "e":Landroid/os/RemoteException;
    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 201
    .end local v3    # "data":[B
    .end local v5    # "e":Landroid/os/RemoteException;
    .end local v10    # "reportId":B
    :pswitch_6
    :try_start_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/hid/HidDevService$1;->this$0:Lcom/android/bluetooth/hid/HidDevService;

    invoke-static {v15}, Lcom/android/bluetooth/hid/HidDevService;->-get3(Lcom/android/bluetooth/hid/HidDevService;)Landroid/bluetooth/IBluetoothHidDeviceCallback;

    move-result-object v15

    if-eqz v15, :cond_1

    .line 202
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/hid/HidDevService$1;->this$0:Lcom/android/bluetooth/hid/HidDevService;

    invoke-static {v15}, Lcom/android/bluetooth/hid/HidDevService;->-get3(Lcom/android/bluetooth/hid/HidDevService;)Landroid/bluetooth/IBluetoothHidDeviceCallback;

    move-result-object v15

    invoke-interface {v15}, Landroid/bluetooth/IBluetoothHidDeviceCallback;->onVirtualCableUnplug()V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_8

    goto/16 :goto_0

    .line 203
    :catch_8
    move-exception v5

    .line 204
    .restart local v5    # "e":Landroid/os/RemoteException;
    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 81
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
