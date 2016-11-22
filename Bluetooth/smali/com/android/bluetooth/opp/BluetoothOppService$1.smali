.class Lcom/android/bluetooth/opp/BluetoothOppService$1;
.super Landroid/os/Handler;
.source "BluetoothOppService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/BluetoothOppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/bluetooth/opp/BluetoothOppService;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppService$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 234
    iget v9, p1, Landroid/os/Message;->what:I

    sparse-switch v9, :sswitch_data_0

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 236
    :sswitch_0
    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothOppService$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v9}, Lcom/android/bluetooth/opp/BluetoothOppService;->-get1(Lcom/android/bluetooth/opp/BluetoothOppService;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothOppService$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v9}, Lcom/android/bluetooth/opp/BluetoothOppService;->-get8(Lcom/android/bluetooth/opp/BluetoothOppService;)I

    move-result v9

    if-ltz v9, :cond_1

    .line 237
    invoke-static {}, Lcom/android/bluetooth/sdp/SdpManager;->getDefaultManager()Lcom/android/bluetooth/sdp/SdpManager;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 238
    const-string/jumbo v9, "BtOppService"

    const-string/jumbo v10, "Removing SDP record"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-static {}, Lcom/android/bluetooth/sdp/SdpManager;->getDefaultManager()Lcom/android/bluetooth/sdp/SdpManager;

    move-result-object v9

    .line 240
    iget-object v10, p0, Lcom/android/bluetooth/opp/BluetoothOppService$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v10}, Lcom/android/bluetooth/opp/BluetoothOppService;->-get8(Lcom/android/bluetooth/opp/BluetoothOppService;)I

    move-result v10

    .line 239
    invoke-virtual {v9, v10}, Lcom/android/bluetooth/sdp/SdpManager;->removeSdpRecord(I)Z

    move-result v5

    .line 241
    .local v5, "status":Z
    const-string/jumbo v9, "BtOppService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "RemoveSDPrecord returns "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothOppService$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    const/4 v10, -0x1

    invoke-static {v9, v10}, Lcom/android/bluetooth/opp/BluetoothOppService;->-set3(Lcom/android/bluetooth/opp/BluetoothOppService;I)I

    .line 244
    .end local v5    # "status":Z
    :cond_1
    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothOppService$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v9}, Lcom/android/bluetooth/opp/BluetoothOppService;->-get14(Lcom/android/bluetooth/opp/BluetoothOppService;)Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 245
    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothOppService$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v9}, Lcom/android/bluetooth/opp/BluetoothOppService;->-get14(Lcom/android/bluetooth/opp/BluetoothOppService;)Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->stop()V

    .line 247
    :cond_2
    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothOppService$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v9}, Lcom/android/bluetooth/opp/BluetoothOppService;->-get5(Lcom/android/bluetooth/opp/BluetoothOppService;)Lcom/android/bluetooth/opp/BluetoothOppL2capListener;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 248
    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothOppService$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v9}, Lcom/android/bluetooth/opp/BluetoothOppService;->-get5(Lcom/android/bluetooth/opp/BluetoothOppService;)Lcom/android/bluetooth/opp/BluetoothOppL2capListener;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/bluetooth/opp/BluetoothOppL2capListener;->stop()V

    .line 250
    :cond_3
    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothOppService$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/android/bluetooth/opp/BluetoothOppService;->-set1(Lcom/android/bluetooth/opp/BluetoothOppService;Z)Z

    .line 252
    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothOppService$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v9}, Lcom/android/bluetooth/opp/BluetoothOppService;->-get12(Lcom/android/bluetooth/opp/BluetoothOppService;)Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 253
    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothOppService$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v9}, Lcom/android/bluetooth/opp/BluetoothOppService;->-get12(Lcom/android/bluetooth/opp/BluetoothOppService;)Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->onBatchCanceled()V

    .line 254
    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothOppService$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/android/bluetooth/opp/BluetoothOppService;->-set6(Lcom/android/bluetooth/opp/BluetoothOppService;Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    .line 257
    :cond_4
    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothOppService$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v9}, Lcom/android/bluetooth/opp/BluetoothOppService;->-get15(Lcom/android/bluetooth/opp/BluetoothOppService;)Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 258
    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothOppService$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v9}, Lcom/android/bluetooth/opp/BluetoothOppService;->-get15(Lcom/android/bluetooth/opp/BluetoothOppService;)Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->onBatchCanceled()V

    .line 259
    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothOppService$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/android/bluetooth/opp/BluetoothOppService;->-set7(Lcom/android/bluetooth/opp/BluetoothOppService;Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    .line 261
    :cond_5
    iget-object v10, p0, Lcom/android/bluetooth/opp/BluetoothOppService$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    monitor-enter v10

    .line 262
    :try_start_0
    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothOppService$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v9}, Lcom/android/bluetooth/opp/BluetoothOppService;->-get16(Lcom/android/bluetooth/opp/BluetoothOppService;)Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;

    move-result-object v9

    if-nez v9, :cond_6

    .line 263
    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothOppService$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-virtual {v9}, Lcom/android/bluetooth/opp/BluetoothOppService;->stopSelf()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    monitor-exit v10

    .line 267
    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothOppService$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v9}, Lcom/android/bluetooth/opp/BluetoothOppService;->-get7(Lcom/android/bluetooth/opp/BluetoothOppService;)Lcom/android/bluetooth/opp/BluetoothOppNotification;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->updateNotifier()V

    goto/16 :goto_0

    .line 261
    :catchall_0
    move-exception v9

    monitor-exit v10

    throw v9

    .line 270
    :sswitch_1
    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothOppService$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v9}, Lcom/android/bluetooth/opp/BluetoothOppService;->-get1(Lcom/android/bluetooth/opp/BluetoothOppService;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v9

    invoke-virtual {v9}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 271
    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothOppService$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v9}, Lcom/android/bluetooth/opp/BluetoothOppService;->-wrap7(Lcom/android/bluetooth/opp/BluetoothOppService;)V

    goto/16 :goto_0

    .line 275
    :sswitch_2
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppService;->-get0()Z

    move-result v9

    if-eqz v9, :cond_7

    const-string/jumbo v9, "BtOppService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Update mInfo.id "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " for data uri= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 276
    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 275
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_7
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 278
    .local v7, "updateValues":Landroid/content/ContentValues;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 279
    .local v0, "contentUri":Landroid/net/Uri;
    const-string/jumbo v9, "scanned"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 280
    const-string/jumbo v9, "uri"

    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const-string/jumbo v9, "mimetype"

    iget-object v10, p0, Lcom/android/bluetooth/opp/BluetoothOppService$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-virtual {v10}, Lcom/android/bluetooth/opp/BluetoothOppService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 282
    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 281
    invoke-virtual {v10, v11}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothOppService$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-virtual {v9}, Lcom/android/bluetooth/opp/BluetoothOppService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v9, v0, v7, v10, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 284
    iget-object v10, p0, Lcom/android/bluetooth/opp/BluetoothOppService$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    monitor-enter v10

    .line 285
    :try_start_1
    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothOppService$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    const/4 v11, 0x0

    invoke-static {v9, v11}, Lcom/android/bluetooth/opp/BluetoothOppService;->-set2(Lcom/android/bluetooth/opp/BluetoothOppService;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v0    # "contentUri":Landroid/net/Uri;
    .end local v7    # "updateValues":Landroid/content/ContentValues;
    :goto_1
    monitor-exit v10

    goto/16 :goto_0

    .line 284
    .restart local v0    # "contentUri":Landroid/net/Uri;
    .restart local v7    # "updateValues":Landroid/content/ContentValues;
    :catchall_1
    move-exception v9

    monitor-exit v10

    throw v9

    .line 289
    .end local v0    # "contentUri":Landroid/net/Uri;
    .end local v7    # "updateValues":Landroid/content/ContentValues;
    :sswitch_3
    const-string/jumbo v9, "BtOppService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Update mInfo.id "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " for MEDIA_SCANNED_FAILED"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 291
    .local v8, "updateValues1":Landroid/content/ContentValues;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 292
    .local v1, "contentUri1":Landroid/net/Uri;
    const-string/jumbo v9, "scanned"

    .line 293
    const/4 v10, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 292
    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 294
    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothOppService$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-virtual {v9}, Lcom/android/bluetooth/opp/BluetoothOppService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v9, v1, v8, v10, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 295
    iget-object v10, p0, Lcom/android/bluetooth/opp/BluetoothOppService$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    monitor-enter v10

    .line 296
    :try_start_2
    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothOppService$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    const/4 v11, 0x0

    invoke-static {v9, v11}, Lcom/android/bluetooth/opp/BluetoothOppService;->-set2(Lcom/android/bluetooth/opp/BluetoothOppService;Z)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    .line 295
    :catchall_2
    move-exception v9

    monitor-exit v10

    throw v9

    .line 300
    .end local v1    # "contentUri1":Landroid/net/Uri;
    .end local v8    # "updateValues1":Landroid/content/ContentValues;
    :sswitch_4
    const-string/jumbo v9, "BtOppService"

    const-string/jumbo v10, "Get incoming connection"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljavax/obex/ObexTransport;

    .line 308
    .local v6, "transport":Ljavax/obex/ObexTransport;
    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothOppService$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v9}, Lcom/android/bluetooth/opp/BluetoothOppService;->-get2(Lcom/android/bluetooth/opp/BluetoothOppService;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_8

    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothOppService$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v9}, Lcom/android/bluetooth/opp/BluetoothOppService;->-get9(Lcom/android/bluetooth/opp/BluetoothOppService;)Ljavax/obex/ObexTransport;

    move-result-object v9

    if-nez v9, :cond_8

    .line 309
    const-string/jumbo v9, "BtOppService"

    const-string/jumbo v10, "Start Obex Server"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothOppService$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v9, v6}, Lcom/android/bluetooth/opp/BluetoothOppService;->-wrap4(Lcom/android/bluetooth/opp/BluetoothOppService;Ljavax/obex/ObexTransport;)V

    goto/16 :goto_0

    .line 312
    :cond_8
    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothOppService$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v9}, Lcom/android/bluetooth/opp/BluetoothOppService;->-get9(Lcom/android/bluetooth/opp/BluetoothOppService;)Ljavax/obex/ObexTransport;

    move-result-object v9

    if-eqz v9, :cond_9

    .line 313
    const-string/jumbo v9, "BtOppService"

    const-string/jumbo v10, "OPP busy! Reject connection"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :try_start_3
    invoke-interface {v6}, Ljavax/obex/ObexTransport;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 316
    :catch_0
    move-exception v2

    .line 317
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v9, "BtOppService"

    const-string/jumbo v10, "close tranport error"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 323
    .end local v2    # "e":Ljava/io/IOException;
    :cond_9
    const-string/jumbo v9, "BtOppService"

    const-string/jumbo v10, "OPP busy! Retry after 1 second"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothOppService$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    iget-object v10, p0, Lcom/android/bluetooth/opp/BluetoothOppService$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v10}, Lcom/android/bluetooth/opp/BluetoothOppService;->-get4(Lcom/android/bluetooth/opp/BluetoothOppService;)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-static {v9, v10}, Lcom/android/bluetooth/opp/BluetoothOppService;->-set0(Lcom/android/bluetooth/opp/BluetoothOppService;I)I

    .line 325
    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothOppService$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v9, v6}, Lcom/android/bluetooth/opp/BluetoothOppService;->-set4(Lcom/android/bluetooth/opp/BluetoothOppService;Ljavax/obex/ObexTransport;)Ljavax/obex/ObexTransport;

    .line 326
    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothOppService$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v9}, Lcom/android/bluetooth/opp/BluetoothOppService;->-get3(Lcom/android/bluetooth/opp/BluetoothOppService;)Landroid/os/Handler;

    move-result-object v9

    invoke-static {v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v3

    .line 327
    .local v3, "msg1":Landroid/os/Message;
    const/4 v9, 0x4

    iput v9, v3, Landroid/os/Message;->what:I

    .line 328
    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothOppService$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v9}, Lcom/android/bluetooth/opp/BluetoothOppService;->-get3(Lcom/android/bluetooth/opp/BluetoothOppService;)Landroid/os/Handler;

    move-result-object v9

    const-wide/16 v10, 0x3e8

    invoke-virtual {v9, v3, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 333
    .end local v3    # "msg1":Landroid/os/Message;
    .end local v6    # "transport":Ljavax/obex/ObexTransport;
    :sswitch_5
    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothOppService$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v9}, Lcom/android/bluetooth/opp/BluetoothOppService;->-get2(Lcom/android/bluetooth/opp/BluetoothOppService;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_a

    .line 334
    const-string/jumbo v9, "BtOppService"

    const-string/jumbo v10, "Start Obex Server"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothOppService$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    iget-object v10, p0, Lcom/android/bluetooth/opp/BluetoothOppService$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v10}, Lcom/android/bluetooth/opp/BluetoothOppService;->-get9(Lcom/android/bluetooth/opp/BluetoothOppService;)Ljavax/obex/ObexTransport;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/bluetooth/opp/BluetoothOppService;->-wrap4(Lcom/android/bluetooth/opp/BluetoothOppService;Ljavax/obex/ObexTransport;)V

    .line 336
    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothOppService$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/android/bluetooth/opp/BluetoothOppService;->-set0(Lcom/android/bluetooth/opp/BluetoothOppService;I)I

    .line 337
    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothOppService$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/android/bluetooth/opp/BluetoothOppService;->-set4(Lcom/android/bluetooth/opp/BluetoothOppService;Ljavax/obex/ObexTransport;)Ljavax/obex/ObexTransport;

    goto/16 :goto_0

    .line 339
    :cond_a
    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothOppService$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v9}, Lcom/android/bluetooth/opp/BluetoothOppService;->-get4(Lcom/android/bluetooth/opp/BluetoothOppService;)I

    move-result v9

    const/16 v10, 0x14

    if-ne v9, v10, :cond_b

    .line 340
    const-string/jumbo v9, "BtOppService"

    const-string/jumbo v10, "Retried 20 seconds, reject connection"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :try_start_4
    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothOppService$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v9}, Lcom/android/bluetooth/opp/BluetoothOppService;->-get9(Lcom/android/bluetooth/opp/BluetoothOppService;)Ljavax/obex/ObexTransport;

    move-result-object v9

    invoke-interface {v9}, Ljavax/obex/ObexTransport;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 346
    :goto_2
    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothOppService$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/android/bluetooth/opp/BluetoothOppService;->-set0(Lcom/android/bluetooth/opp/BluetoothOppService;I)I

    .line 347
    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothOppService$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/android/bluetooth/opp/BluetoothOppService;->-set4(Lcom/android/bluetooth/opp/BluetoothOppService;Ljavax/obex/ObexTransport;)Ljavax/obex/ObexTransport;

    goto/16 :goto_0

    .line 343
    :catch_1
    move-exception v2

    .line 344
    .restart local v2    # "e":Ljava/io/IOException;
    const-string/jumbo v9, "BtOppService"

    const-string/jumbo v10, "close tranport error"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 349
    .end local v2    # "e":Ljava/io/IOException;
    :cond_b
    const-string/jumbo v9, "BtOppService"

    const-string/jumbo v10, "OPP busy! Retry after 1 second"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothOppService$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    iget-object v10, p0, Lcom/android/bluetooth/opp/BluetoothOppService$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v10}, Lcom/android/bluetooth/opp/BluetoothOppService;->-get4(Lcom/android/bluetooth/opp/BluetoothOppService;)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-static {v9, v10}, Lcom/android/bluetooth/opp/BluetoothOppService;->-set0(Lcom/android/bluetooth/opp/BluetoothOppService;I)I

    .line 351
    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothOppService$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v9}, Lcom/android/bluetooth/opp/BluetoothOppService;->-get3(Lcom/android/bluetooth/opp/BluetoothOppService;)Landroid/os/Handler;

    move-result-object v9

    invoke-static {v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v4

    .line 352
    .local v4, "msg2":Landroid/os/Message;
    const/4 v9, 0x4

    iput v9, v4, Landroid/os/Message;->what:I

    .line 353
    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothOppService$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v9}, Lcom/android/bluetooth/opp/BluetoothOppService;->-get3(Lcom/android/bluetooth/opp/BluetoothOppService;)Landroid/os/Handler;

    move-result-object v9

    const-wide/16 v10, 0x3e8

    invoke-virtual {v9, v4, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 234
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_5
        0x64 -> :sswitch_4
        0xc8 -> :sswitch_0
    .end sparse-switch
.end method
