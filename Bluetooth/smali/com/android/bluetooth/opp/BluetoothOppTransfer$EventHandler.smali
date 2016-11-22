.class Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;
.super Landroid/os/Handler;
.source "BluetoothOppTransfer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/BluetoothOppTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/bluetooth/opp/BluetoothOppTransfer;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    .line 137
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 136
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x0

    .line 142
    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_0

    .line 141
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 144
    :pswitch_1
    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    new-instance v10, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;

    iget-object v11, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    .line 145
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/bluetooth/BluetoothDevice;

    const/4 v12, 0x1

    .line 144
    invoke-direct {v10, v11, v8, v12}, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;-><init>(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Landroid/bluetooth/BluetoothDevice;Z)V

    invoke-static {v9, v10}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-set0(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;)Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;

    .line 147
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v8}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get2(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->start()V

    goto :goto_0

    .line 154
    :pswitch_2
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get0()Z

    move-result v8

    if-eqz v8, :cond_1

    const-string/jumbo v8, "BtOppTransfer"

    const-string/jumbo v9, "receive TRANSPORT_ERROR msg"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_1
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v8, v10}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-set0(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;)Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;

    .line 156
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    const/16 v9, 0x1f1

    invoke-static {v8, v9}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-wrap2(Lcom/android/bluetooth/opp/BluetoothOppTransfer;I)V

    .line 157
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v8}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get1(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppBatch;

    move-result-object v8

    iput v11, v8, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mStatus:I

    goto :goto_0

    .line 165
    :pswitch_3
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get0()Z

    move-result v8

    if-eqz v8, :cond_2

    const-string/jumbo v8, "BtOppTransfer"

    const-string/jumbo v9, "Transfer receive TRANSPORT_CONNECTED msg"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_2
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v8, v10}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-set0(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;)Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;

    .line 167
    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Ljavax/obex/ObexTransport;

    invoke-static {v9, v8}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-set2(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Ljavax/obex/ObexTransport;)Ljavax/obex/ObexTransport;

    .line 168
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v8}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-wrap5(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)V

    goto :goto_0

    .line 179
    :pswitch_4
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .line 180
    .local v3, "info":Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get0()Z

    move-result v8

    if-eqz v8, :cond_3

    const-string/jumbo v8, "BtOppTransfer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "receive MSG_SHARE_COMPLETE for info "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_3
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v8}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get1(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppBatch;

    move-result-object v8

    iget v8, v8, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDirection:I

    if-nez v8, :cond_0

    .line 182
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v9}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get1(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppBatch;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/bluetooth/opp/BluetoothOppBatch;->getPendingShare()Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-set1(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .line 184
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v8}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get4(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 186
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get0()Z

    move-result v8

    if-eqz v8, :cond_4

    const-string/jumbo v8, "BtOppTransfer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "continue session for info "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v10}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get4(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object v10

    iget v10, v10, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 187
    const-string/jumbo v10, " from batch "

    .line 186
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 187
    iget-object v10, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v10}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get1(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppBatch;

    move-result-object v10

    iget v10, v10, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mId:I

    .line 186
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_4
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v8}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-wrap4(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)V

    goto/16 :goto_0

    .line 191
    :cond_5
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get0()Z

    move-result v8

    if-eqz v8, :cond_6

    const-string/jumbo v8, "BtOppTransfer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Batch "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v10}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get1(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppBatch;

    move-result-object v10

    iget v10, v10, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " is done"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_6
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v8}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get5(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppObexSession;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/bluetooth/opp/BluetoothOppObexSession;->stop()V

    goto/16 :goto_0

    .line 201
    .end local v3    # "info":Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    :pswitch_5
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v8}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-wrap0(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)V

    .line 202
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .line 203
    .local v4, "info1":Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get0()Z

    move-result v8

    if-eqz v8, :cond_7

    const-string/jumbo v8, "BtOppTransfer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "receive MSG_SESSION_COMPLETE for batch "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v10}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get1(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppBatch;

    move-result-object v10

    iget v10, v10, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_7
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v8}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get1(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppBatch;

    move-result-object v8

    const/4 v9, 0x2

    iput v9, v8, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mStatus:I

    .line 208
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v8, v4}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-wrap6(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V

    goto/16 :goto_0

    .line 213
    .end local v4    # "info1":Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    :pswitch_6
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get0()Z

    move-result v8

    if-eqz v8, :cond_8

    const-string/jumbo v8, "BtOppTransfer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "receive MSG_SESSION_ERROR for batch "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v10}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get1(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppBatch;

    move-result-object v10

    iget v10, v10, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_8
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v8}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-wrap0(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)V

    .line 216
    :try_start_0
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .line 217
    .local v5, "info2":Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v8}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get5(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppObexSession;

    move-result-object v8

    if-eqz v8, :cond_9

    .line 218
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v8}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get5(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppObexSession;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/bluetooth/opp/BluetoothOppObexSession;->stop()V

    .line 220
    :cond_9
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v8}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get1(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppBatch;

    move-result-object v8

    const/4 v9, 0x3

    iput v9, v8, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mStatus:I

    .line 221
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    iget v9, v5, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    invoke-static {v8, v9}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-wrap2(Lcom/android/bluetooth/opp/BluetoothOppTransfer;I)V

    .line 222
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v9}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get4(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-wrap6(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 223
    .end local v5    # "info2":Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    :catch_0
    move-exception v1

    .line 224
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "BtOppTransfer"

    const-string/jumbo v9, "Exception while handling MSG_SESSION_ERROR"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 230
    .end local v1    # "e":Ljava/lang/Exception;
    :pswitch_7
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get0()Z

    move-result v8

    if-eqz v8, :cond_a

    const-string/jumbo v8, "BtOppTransfer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "receive MSG_SHARE_INTERRUPTED for batch "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v10}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get1(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppBatch;

    move-result-object v10

    iget v10, v10, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_a
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .line 232
    .local v6, "info3":Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v8}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get1(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppBatch;

    move-result-object v8

    iget v8, v8, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDirection:I

    if-nez v8, :cond_0

    .line 234
    :try_start_1
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v8}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get7(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Ljavax/obex/ObexTransport;

    move-result-object v8

    if-nez v8, :cond_c

    .line 235
    const-string/jumbo v8, "BtOppTransfer"

    const-string/jumbo v9, "receive MSG_SHARE_INTERRUPTED but mTransport = null"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 242
    :goto_1
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get0()Z

    move-result v8

    if-eqz v8, :cond_b

    const-string/jumbo v8, "BtOppTransfer"

    const-string/jumbo v9, "mTransport closed "

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_b
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v8}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get1(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppBatch;

    move-result-object v8

    iput v11, v8, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mStatus:I

    .line 244
    if-eqz v6, :cond_d

    .line 245
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    iget v9, v6, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    invoke-static {v8, v9}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-wrap2(Lcom/android/bluetooth/opp/BluetoothOppTransfer;I)V

    .line 249
    :goto_2
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v9}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get4(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-wrap6(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V

    goto/16 :goto_0

    .line 237
    :cond_c
    :try_start_2
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v8}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get7(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Ljavax/obex/ObexTransport;

    move-result-object v8

    invoke-interface {v8}, Ljavax/obex/ObexTransport;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 239
    :catch_1
    move-exception v0

    .line 240
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v8, "BtOppTransfer"

    const-string/jumbo v9, "failed to close mTransport"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 247
    .end local v0    # "e":Ljava/io/IOException;
    :cond_d
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v8}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-wrap1(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)V

    goto :goto_2

    .line 254
    .end local v6    # "info3":Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    :pswitch_8
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get0()Z

    move-result v8

    if-eqz v8, :cond_e

    const-string/jumbo v8, "BtOppTransfer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "receive MSG_CONNECT_TIMEOUT for batch "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v10}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get1(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppBatch;

    move-result-object v10

    iget v10, v10, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_e
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v8}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get1(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppBatch;

    move-result-object v8

    iget v8, v8, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDirection:I

    if-nez v8, :cond_10

    .line 260
    :try_start_3
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v8}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get7(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Ljavax/obex/ObexTransport;

    move-result-object v8

    if-nez v8, :cond_f

    .line 261
    const-string/jumbo v8, "BtOppTransfer"

    const-string/jumbo v9, "receive MSG_SHARE_INTERRUPTED but mTransport = null"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 268
    :goto_3
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get0()Z

    move-result v8

    if-eqz v8, :cond_0

    const-string/jumbo v8, "BtOppTransfer"

    const-string/jumbo v9, "mTransport closed "

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 263
    :cond_f
    :try_start_4
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v8}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get7(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Ljavax/obex/ObexTransport;

    move-result-object v8

    invoke-interface {v8}, Ljavax/obex/ObexTransport;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    .line 265
    :catch_2
    move-exception v0

    .line 266
    .restart local v0    # "e":Ljava/io/IOException;
    const-string/jumbo v8, "BtOppTransfer"

    const-string/jumbo v9, "failed to close mTransport"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 276
    .end local v0    # "e":Ljava/io/IOException;
    :cond_10
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v8}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get3(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Landroid/content/Context;

    move-result-object v8

    .line 277
    const-string/jumbo v9, "notification"

    .line 276
    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationManager;

    .line 278
    .local v7, "nm":Landroid/app/NotificationManager;
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v8}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get4(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object v8

    iget v8, v8, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v7, v8}, Landroid/app/NotificationManager;->cancel(I)V

    .line 280
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v8, "android.btopp.intent.action.USER_CONFIRMATION_TIMEOUT"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 281
    .local v2, "in":Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v8}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get3(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 283
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v9}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get4(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-wrap3(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V

    goto/16 :goto_0

    .line 142
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
