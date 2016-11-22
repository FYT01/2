.class Lcom/android/bluetooth/hid/HidService$1;
.super Landroid/os/Handler;
.source "HidService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/hid/HidService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/hid/HidService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/hid/HidService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/bluetooth/hid/HidService;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 23
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 157
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v20, v0

    packed-switch v20, :pswitch_data_0

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 160
    :pswitch_0
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/bluetooth/BluetoothDevice;

    .line 161
    .local v7, "device":Landroid/bluetooth/BluetoothDevice;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    move-object/from16 v20, v0

    invoke-static {v7}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/bluetooth/hid/HidService;->-wrap1(Lcom/android/bluetooth/hid/HidService;[B)Z

    move-result v20

    if-nez v20, :cond_1

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v0, v7, v1}, Lcom/android/bluetooth/hid/HidService;->-wrap14(Lcom/android/bluetooth/hid/HidService;Landroid/bluetooth/BluetoothDevice;I)V

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v0, v7, v1}, Lcom/android/bluetooth/hid/HidService;->-wrap14(Lcom/android/bluetooth/hid/HidService;Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_0

    .line 166
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v7}, Lcom/android/bluetooth/hid/HidService;->-set0(Lcom/android/bluetooth/hid/HidService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    goto :goto_0

    .line 171
    .end local v7    # "device":Landroid/bluetooth/BluetoothDevice;
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/bluetooth/BluetoothDevice;

    .line 172
    .restart local v7    # "device":Landroid/bluetooth/BluetoothDevice;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    move-object/from16 v20, v0

    invoke-static {v7}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/bluetooth/hid/HidService;->-wrap2(Lcom/android/bluetooth/hid/HidService;[B)Z

    move-result v20

    if-nez v20, :cond_0

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v0, v7, v1}, Lcom/android/bluetooth/hid/HidService;->-wrap14(Lcom/android/bluetooth/hid/HidService;Landroid/bluetooth/BluetoothDevice;I)V

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v0, v7, v1}, Lcom/android/bluetooth/hid/HidService;->-wrap14(Lcom/android/bluetooth/hid/HidService;Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_0

    .line 181
    .end local v7    # "device":Landroid/bluetooth/BluetoothDevice;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, [B

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/bluetooth/hid/HidService;->-wrap0(Lcom/android/bluetooth/hid/HidService;[B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    .line 182
    .restart local v7    # "device":Landroid/bluetooth/BluetoothDevice;
    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    .line 183
    .local v8, "halState":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/bluetooth/hid/HidService;->-get1(Lcom/android/bluetooth/hid/HidService;)Ljava/util/Map;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    .line 184
    .local v12, "prevStateInteger":Ljava/lang/Integer;
    if-nez v12, :cond_4

    .line 185
    const/4 v11, 0x0

    .line 186
    .local v11, "prevState":I
    :goto_1
    invoke-static {}, Lcom/android/bluetooth/hid/HidService;->-get0()Z

    move-result v20

    if-eqz v20, :cond_2

    const-string/jumbo v20, "HidService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "MESSAGE_CONNECT_STATE_CHANGED newState:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 187
    invoke-static {v8}, Lcom/android/bluetooth/hid/HidService;->-wrap13(I)I

    move-result v22

    .line 186
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 187
    const-string/jumbo v22, ", prevState:"

    .line 186
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_2
    if-nez v8, :cond_3

    .line 189
    if-nez v11, :cond_3

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v7}, Lcom/android/bluetooth/hid/HidService;->-wrap7(Lcom/android/bluetooth/hid/HidService;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 194
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    move-object/from16 v20, v0

    invoke-static {v8}, Lcom/android/bluetooth/hid/HidService;->-wrap13(I)I

    move-result v21

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v0, v7, v1}, Lcom/android/bluetooth/hid/HidService;->-wrap14(Lcom/android/bluetooth/hid/HidService;Landroid/bluetooth/BluetoothDevice;I)V

    .line 196
    :goto_2
    if-nez v8, :cond_0

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/bluetooth/hid/HidService;->-get2(Lcom/android/bluetooth/hid/HidService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v20

    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/bluetooth/hid/HidService;->-get2(Lcom/android/bluetooth/hid/HidService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v20

    .line 196
    if-eqz v20, :cond_0

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lcom/android/bluetooth/hid/HidService;->-set0(Lcom/android/bluetooth/hid/HidService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 201
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v4

    .line 202
    .local v4, "adapterService":Lcom/android/bluetooth/btservice/AdapterService;
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Lcom/android/bluetooth/btservice/AdapterService;->enable(Z)Z

    goto/16 :goto_0

    .line 185
    .end local v4    # "adapterService":Lcom/android/bluetooth/btservice/AdapterService;
    .end local v11    # "prevState":I
    :cond_4
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .restart local v11    # "prevState":I
    goto/16 :goto_1

    .line 191
    :cond_5
    invoke-static {}, Lcom/android/bluetooth/hid/HidService;->-get0()Z

    move-result v20

    if-eqz v20, :cond_6

    const-string/jumbo v20, "HidService"

    const-string/jumbo v21, "Incoming HID connection rejected"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    move-object/from16 v20, v0

    invoke-static {v7}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/bluetooth/hid/HidService;->-wrap2(Lcom/android/bluetooth/hid/HidService;[B)Z

    goto :goto_2

    .line 208
    .end local v7    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v8    # "halState":I
    .end local v11    # "prevState":I
    .end local v12    # "prevStateInteger":Ljava/lang/Integer;
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/bluetooth/BluetoothDevice;

    .line 209
    .restart local v7    # "device":Landroid/bluetooth/BluetoothDevice;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    move-object/from16 v20, v0

    invoke-static {v7}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/bluetooth/hid/HidService;->-wrap4(Lcom/android/bluetooth/hid/HidService;[B)Z

    move-result v20

    if-nez v20, :cond_0

    .line 210
    const-string/jumbo v20, "HidService"

    const-string/jumbo v21, "Error: get protocol mode native returns false"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 217
    .end local v7    # "device":Landroid/bluetooth/BluetoothDevice;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, [B

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/bluetooth/hid/HidService;->-wrap0(Lcom/android/bluetooth/hid/HidService;[B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    .line 218
    .restart local v7    # "device":Landroid/bluetooth/BluetoothDevice;
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    .line 219
    .local v14, "protocolMode":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v7, v14}, Lcom/android/bluetooth/hid/HidService;->-wrap17(Lcom/android/bluetooth/hid/HidService;Landroid/bluetooth/BluetoothDevice;I)V

    goto/16 :goto_0

    .line 224
    .end local v7    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v14    # "protocolMode":I
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/bluetooth/BluetoothDevice;

    .line 225
    .restart local v7    # "device":Landroid/bluetooth/BluetoothDevice;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    move-object/from16 v20, v0

    invoke-static {v7}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/bluetooth/hid/HidService;->-wrap12(Lcom/android/bluetooth/hid/HidService;[B)Z

    move-result v20

    if-nez v20, :cond_0

    .line 226
    const-string/jumbo v20, "HidService"

    const-string/jumbo v21, "Error: virtual unplug native returns false"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 232
    .end local v7    # "device":Landroid/bluetooth/BluetoothDevice;
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/bluetooth/BluetoothDevice;

    .line 233
    .restart local v7    # "device":Landroid/bluetooth/BluetoothDevice;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-byte v13, v0

    .line 234
    .local v13, "protocolMode":B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "sending set protocol mode("

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ")"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/bluetooth/hid/HidService;->-wrap20(Lcom/android/bluetooth/hid/HidService;Ljava/lang/String;)V

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    move-object/from16 v20, v0

    invoke-static {v7}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v13}, Lcom/android/bluetooth/hid/HidService;->-wrap10(Lcom/android/bluetooth/hid/HidService;[BB)Z

    move-result v20

    if-nez v20, :cond_0

    .line 236
    const-string/jumbo v20, "HidService"

    const-string/jumbo v21, "Error: set protocol mode native returns false"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 242
    .end local v7    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v13    # "protocolMode":B
    :pswitch_7
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/bluetooth/BluetoothDevice;

    .line 243
    .restart local v7    # "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    .line 244
    .local v6, "data":Landroid/os/Bundle;
    const-string/jumbo v20, "android.bluetooth.BluetoothInputDevice.extra.REPORT_TYPE"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v18

    .line 245
    .local v18, "reportType":B
    const-string/jumbo v20, "android.bluetooth.BluetoothInputDevice.extra.REPORT_ID"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v17

    .line 246
    .local v17, "reportId":B
    const-string/jumbo v20, "android.bluetooth.BluetoothInputDevice.extra.REPORT_BUFFER_SIZE"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 247
    .local v5, "bufferSize":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    move-object/from16 v20, v0

    invoke-static {v7}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v18

    move/from16 v3, v17

    invoke-static {v0, v1, v2, v3, v5}, Lcom/android/bluetooth/hid/HidService;->-wrap5(Lcom/android/bluetooth/hid/HidService;[BBBI)Z

    move-result v20

    if-nez v20, :cond_0

    .line 248
    const-string/jumbo v20, "HidService"

    const-string/jumbo v21, "Error: get report native returns false"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 254
    .end local v5    # "bufferSize":I
    .end local v6    # "data":Landroid/os/Bundle;
    .end local v7    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v17    # "reportId":B
    .end local v18    # "reportType":B
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, [B

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/bluetooth/hid/HidService;->-wrap0(Lcom/android/bluetooth/hid/HidService;[B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    .line 255
    .restart local v7    # "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    .line 256
    .restart local v6    # "data":Landroid/os/Bundle;
    const-string/jumbo v20, "android.bluetooth.BluetoothInputDevice.extra.REPORT"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v16

    .line 257
    .local v16, "report":[B
    const-string/jumbo v20, "android.bluetooth.BluetoothInputDevice.extra.REPORT_BUFFER_SIZE"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 258
    .restart local v5    # "bufferSize":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-static {v0, v7, v1, v5}, Lcom/android/bluetooth/hid/HidService;->-wrap18(Lcom/android/bluetooth/hid/HidService;Landroid/bluetooth/BluetoothDevice;[BI)V

    goto/16 :goto_0

    .line 263
    .end local v5    # "bufferSize":I
    .end local v6    # "data":Landroid/os/Bundle;
    .end local v7    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v16    # "report":[B
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, [B

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/bluetooth/hid/HidService;->-wrap0(Lcom/android/bluetooth/hid/HidService;[B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    .line 264
    .restart local v7    # "device":Landroid/bluetooth/BluetoothDevice;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    .line 265
    .local v19, "status":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-static {v0, v7, v1}, Lcom/android/bluetooth/hid/HidService;->-wrap15(Lcom/android/bluetooth/hid/HidService;Landroid/bluetooth/BluetoothDevice;I)V

    goto/16 :goto_0

    .line 270
    .end local v7    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v19    # "status":I
    :pswitch_a
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/bluetooth/BluetoothDevice;

    .line 271
    .restart local v7    # "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    .line 272
    .restart local v6    # "data":Landroid/os/Bundle;
    const-string/jumbo v20, "android.bluetooth.BluetoothInputDevice.extra.REPORT_TYPE"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v18

    .line 273
    .restart local v18    # "reportType":B
    const-string/jumbo v20, "android.bluetooth.BluetoothInputDevice.extra.REPORT"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 274
    .local v15, "report":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    move-object/from16 v20, v0

    invoke-static {v7}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v18

    invoke-static {v0, v1, v2, v15}, Lcom/android/bluetooth/hid/HidService;->-wrap11(Lcom/android/bluetooth/hid/HidService;[BBLjava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_0

    .line 275
    const-string/jumbo v20, "HidService"

    const-string/jumbo v21, "Error: set report native returns false"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 281
    .end local v6    # "data":Landroid/os/Bundle;
    .end local v7    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v15    # "report":Ljava/lang/String;
    .end local v18    # "reportType":B
    :pswitch_b
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/bluetooth/BluetoothDevice;

    .line 282
    .restart local v7    # "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    .line 283
    .restart local v6    # "data":Landroid/os/Bundle;
    const-string/jumbo v20, "android.bluetooth.BluetoothInputDevice.extra.REPORT"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 284
    .restart local v15    # "report":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    move-object/from16 v20, v0

    invoke-static {v7}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v15}, Lcom/android/bluetooth/hid/HidService;->-wrap8(Lcom/android/bluetooth/hid/HidService;[BLjava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_0

    .line 285
    const-string/jumbo v20, "HidService"

    const-string/jumbo v21, "Error: send data native returns false"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 291
    .end local v6    # "data":Landroid/os/Bundle;
    .end local v7    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v15    # "report":Ljava/lang/String;
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, [B

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/bluetooth/hid/HidService;->-wrap0(Lcom/android/bluetooth/hid/HidService;[B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    .line 292
    .restart local v7    # "device":Landroid/bluetooth/BluetoothDevice;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    .line 293
    .restart local v19    # "status":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-static {v0, v7, v1}, Lcom/android/bluetooth/hid/HidService;->-wrap19(Lcom/android/bluetooth/hid/HidService;Landroid/bluetooth/BluetoothDevice;I)V

    goto/16 :goto_0

    .line 298
    .end local v7    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v19    # "status":I
    :pswitch_d
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/bluetooth/BluetoothDevice;

    .line 299
    .restart local v7    # "device":Landroid/bluetooth/BluetoothDevice;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    move-object/from16 v20, v0

    invoke-static {v7}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/bluetooth/hid/HidService;->-wrap3(Lcom/android/bluetooth/hid/HidService;[B)Z

    move-result v20

    if-nez v20, :cond_0

    .line 300
    const-string/jumbo v20, "HidService"

    const-string/jumbo v21, "Error: get idle time native returns false"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 306
    .end local v7    # "device":Landroid/bluetooth/BluetoothDevice;
    :pswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, [B

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/bluetooth/hid/HidService;->-wrap0(Lcom/android/bluetooth/hid/HidService;[B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    .line 307
    .restart local v7    # "device":Landroid/bluetooth/BluetoothDevice;
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    .line 308
    .local v10, "idleTime":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v7, v10}, Lcom/android/bluetooth/hid/HidService;->-wrap16(Lcom/android/bluetooth/hid/HidService;Landroid/bluetooth/BluetoothDevice;I)V

    goto/16 :goto_0

    .line 313
    .end local v7    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v10    # "idleTime":I
    :pswitch_f
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/bluetooth/BluetoothDevice;

    .line 314
    .restart local v7    # "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    .line 315
    .restart local v6    # "data":Landroid/os/Bundle;
    const-string/jumbo v20, "codeaurora.bluetooth.BluetoothInputDevice.extra.IDLE_TIME"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v9

    .line 316
    .local v9, "idleTime":B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    move-object/from16 v20, v0

    invoke-static {v7}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v9}, Lcom/android/bluetooth/hid/HidService;->-wrap9(Lcom/android/bluetooth/hid/HidService;[BB)Z

    move-result v20

    if-nez v20, :cond_0

    .line 317
    const-string/jumbo v20, "HidService"

    const-string/jumbo v21, "Error: get idle time native returns false"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 157
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_9
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method
