.class Lcom/android/bluetooth/avrcp/Avrcp$1;
.super Landroid/content/BroadcastReceiver;
.source "Avrcp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/avrcp/Avrcp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/avrcp/Avrcp;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/avrcp/Avrcp;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/bluetooth/avrcp/Avrcp;

    .prologue
    .line 446
    iput-object p1, p0, Lcom/android/bluetooth/avrcp/Avrcp$1;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 449
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    .line 450
    .local v7, "action":Ljava/lang/String;
    const-string/jumbo v1, "org.codeaurora.bluetooth.RCC_CHANGED_ACTION"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 451
    const-string/jumbo v1, "Avrcp"

    const-string/jumbo v2, "received RCC_CHANGED_ACTION"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    const/16 v16, 0x0

    .line 453
    .local v16, "isRCCFocussed":I
    const/4 v15, 0x0

    .line 455
    .local v15, "isRCCAvailable":I
    const-string/jumbo v1, "org.codeaurora.bluetooth.EXTRA_CALLING_PACKAGE_NAME"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 457
    .local v8, "callingPackageName":Ljava/lang/String;
    const-string/jumbo v1, "org.codeaurora.bluetooth.EXTRA_FOCUS_CHANGED_VALUE"

    .line 458
    const/4 v2, 0x0

    .line 457
    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v14

    .line 460
    .local v14, "isFocussed":Z
    const-string/jumbo v1, "org.codeaurora.bluetooth.EXTRA_AVAILABLITY_CHANGED_VALUE"

    .line 461
    const/4 v2, 0x0

    .line 460
    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    .line 462
    .local v13, "isAvailable":Z
    if-eqz v14, :cond_0

    .line 463
    const/16 v16, 0x1

    .line 464
    :cond_0
    if-eqz v13, :cond_1

    .line 465
    const/4 v15, 0x1

    .line 466
    :cond_1
    const-string/jumbo v1, "Avrcp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "focus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " , availability: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/avrcp/Avrcp$1;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v1}, Lcom/android/bluetooth/avrcp/Avrcp;->-get5(Lcom/android/bluetooth/avrcp/Avrcp;)Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 468
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/avrcp/Avrcp$1;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v1}, Lcom/android/bluetooth/avrcp/Avrcp;->-get5(Lcom/android/bluetooth/avrcp/Avrcp;)Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    move-result-object v1

    const/16 v2, 0xcb

    move/from16 v0, v16

    invoke-virtual {v1, v2, v0, v15, v8}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 448
    .end local v8    # "callingPackageName":Ljava/lang/String;
    .end local v13    # "isAvailable":Z
    .end local v14    # "isFocussed":Z
    .end local v15    # "isRCCAvailable":I
    .end local v16    # "isRCCFocussed":I
    :cond_2
    :goto_0
    return-void

    .line 471
    :cond_3
    const-string/jumbo v1, "org.codeaurora.music.playersettingsresponse"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 472
    const-string/jumbo v1, "Response"

    .line 473
    const/16 v2, 0xff

    .line 472
    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 476
    .local v11, "getResponse":I
    const/16 v17, 0x0

    .line 477
    .local v17, "isSetAttrValRsp":Z
    const/4 v10, 0x0

    .line 479
    .local v10, "device":Landroid/bluetooth/BluetoothDevice;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/avrcp/Avrcp$1;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v1}, Lcom/android/bluetooth/avrcp/Avrcp;->-get6(Lcom/android/bluetooth/avrcp/Avrcp;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    .line 480
    :try_start_0
    new-instance v19, Ljava/lang/Integer;

    move-object/from16 v0, v19

    invoke-direct {v0, v11}, Ljava/lang/Integer;-><init>(I)V

    .line 481
    .local v19, "val":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/avrcp/Avrcp$1;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v1}, Lcom/android/bluetooth/avrcp/Avrcp;->-get6(Lcom/android/bluetooth/avrcp/Avrcp;)Ljava/util/ArrayList;

    move-result-object v1

    move-object/from16 v0, v19

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 482
    const/4 v1, 0x6

    if-ne v11, v1, :cond_4

    .line 483
    const/16 v17, 0x1

    .line 486
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/avrcp/Avrcp$1;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v1}, Lcom/android/bluetooth/avrcp/Avrcp;->-get5(Lcom/android/bluetooth/avrcp/Avrcp;)Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    move-result-object v1

    const/16 v3, 0x25a

    invoke-virtual {v1, v3}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->removeMessages(I)V

    .line 487
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/avrcp/Avrcp$1;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v1}, Lcom/android/bluetooth/avrcp/Avrcp;->-get6(Lcom/android/bluetooth/avrcp/Avrcp;)Ljava/util/ArrayList;

    move-result-object v1

    move-object/from16 v0, v19

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    monitor-exit v2

    .line 490
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/avrcp/Avrcp$1;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v1}, Lcom/android/bluetooth/avrcp/Avrcp;->-get14(Lcom/android/bluetooth/avrcp/Avrcp;)I

    move-result v1

    if-ge v12, v1, :cond_6

    .line 491
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/avrcp/Avrcp$1;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    iget-object v1, v1, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v1, v1, v12

    invoke-static {v1}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get0(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 493
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/avrcp/Avrcp$1;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    iget-object v1, v1, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v1, v1, v12

    invoke-static {v1}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get6(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v10

    .line 494
    .local v10, "device":Landroid/bluetooth/BluetoothDevice;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/avrcp/Avrcp$1;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    iget-object v1, v1, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v1, v1, v12

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set2(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;Z)Z

    .line 501
    .end local v10    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_6
    packed-switch v11, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 503
    :pswitch_1
    if-nez v10, :cond_8

    .line 504
    const-string/jumbo v1, "Avrcp"

    const-string/jumbo v2, "ERROR!!! device is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    return-void

    .line 479
    .end local v12    # "i":I
    .end local v19    # "val":Ljava/lang/Integer;
    .local v10, "device":Landroid/bluetooth/BluetoothDevice;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 490
    .restart local v12    # "i":I
    .restart local v19    # "val":Ljava/lang/Integer;
    :cond_7
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 507
    .end local v10    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_8
    const-string/jumbo v1, "Attributes"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v9

    .line 508
    .local v9, "data":[B
    array-length v1, v9

    int-to-byte v0, v1

    move/from16 v18, v0

    .line 511
    .local v18, "numAttr":B
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/avrcp/Avrcp$1;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    .line 512
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp$1;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v2, v10}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap12(Lcom/android/bluetooth/avrcp/Avrcp;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v2

    .line 511
    move/from16 v0, v18

    invoke-static {v1, v0, v9, v2}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap4(Lcom/android/bluetooth/avrcp/Avrcp;B[B[B)Z

    goto/16 :goto_0

    .line 516
    .end local v9    # "data":[B
    .end local v18    # "numAttr":B
    :pswitch_2
    if-nez v10, :cond_9

    .line 517
    const-string/jumbo v1, "Avrcp"

    const-string/jumbo v2, "ERROR!!! device is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    return-void

    .line 520
    :cond_9
    const-string/jumbo v1, "Values"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v9

    .line 521
    .restart local v9    # "data":[B
    array-length v1, v9

    int-to-byte v0, v1

    move/from16 v18, v0

    .line 524
    .restart local v18    # "numAttr":B
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/avrcp/Avrcp$1;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    .line 525
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp$1;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v2, v10}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap12(Lcom/android/bluetooth/avrcp/Avrcp;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v2

    .line 524
    move/from16 v0, v18

    invoke-static {v1, v0, v9, v2}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap6(Lcom/android/bluetooth/avrcp/Avrcp;B[B[B)Z

    goto/16 :goto_0

    .line 528
    .end local v9    # "data":[B
    .end local v18    # "numAttr":B
    :pswitch_3
    if-nez v10, :cond_a

    .line 529
    const-string/jumbo v1, "Avrcp"

    const-string/jumbo v2, "ERROR!!! device is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    return-void

    .line 532
    :cond_a
    const-string/jumbo v1, "AttribValuePairs"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v9

    .line 533
    .restart local v9    # "data":[B
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/avrcp/Avrcp$1;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v1, v9}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap34(Lcom/android/bluetooth/avrcp/Avrcp;[B)V

    .line 534
    array-length v1, v9

    int-to-byte v0, v1

    move/from16 v18, v0

    .line 537
    .restart local v18    # "numAttr":B
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/avrcp/Avrcp$1;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    .line 538
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp$1;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v2, v10}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap12(Lcom/android/bluetooth/avrcp/Avrcp;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v2

    .line 537
    move/from16 v0, v18

    invoke-static {v1, v0, v9, v2}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap0(Lcom/android/bluetooth/avrcp/Avrcp;B[B[B)Z

    goto/16 :goto_0

    .line 541
    .end local v9    # "data":[B
    .end local v18    # "numAttr":B
    :pswitch_4
    const-string/jumbo v1, "AttribValuePairs"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v9

    .line 542
    .restart local v9    # "data":[B
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/avrcp/Avrcp$1;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v1, v9}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap34(Lcom/android/bluetooth/avrcp/Avrcp;[B)V

    .line 543
    if-eqz v17, :cond_e

    .line 544
    const/16 v17, 0x0

    .line 545
    const/4 v12, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/avrcp/Avrcp$1;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v1}, Lcom/android/bluetooth/avrcp/Avrcp;->-get14(Lcom/android/bluetooth/avrcp/Avrcp;)I

    move-result v1

    if-ge v12, v1, :cond_d

    .line 546
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/avrcp/Avrcp$1;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    iget-object v1, v1, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v1, v1, v12

    invoke-static {v1}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get6(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 547
    const-string/jumbo v1, "Avrcp"

    const-string/jumbo v2, "Respond to SET_ATTRIBUTE_VALUES request"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/avrcp/Avrcp$1;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v1, v9}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap2(Lcom/android/bluetooth/avrcp/Avrcp;[B)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 549
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/avrcp/Avrcp$1;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    .line 550
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp$1;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/avrcp/Avrcp$1;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    iget-object v3, v3, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v3, v3, v12

    invoke-static {v3}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get6(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap12(Lcom/android/bluetooth/avrcp/Avrcp;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v2

    .line 549
    const/4 v3, 0x4

    invoke-static {v1, v3, v2}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap1(Lcom/android/bluetooth/avrcp/Avrcp;I[B)Z

    .line 545
    :cond_b
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 552
    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/avrcp/Avrcp$1;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    .line 553
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp$1;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/avrcp/Avrcp$1;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    iget-object v3, v3, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v3, v3, v12

    invoke-static {v3}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get6(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap12(Lcom/android/bluetooth/avrcp/Avrcp;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v2

    .line 552
    const/4 v3, 0x3

    invoke-static {v1, v3, v2}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap1(Lcom/android/bluetooth/avrcp/Avrcp;I[B)Z

    goto :goto_3

    .line 557
    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/avrcp/Avrcp$1;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v1}, Lcom/android/bluetooth/avrcp/Avrcp;->-get7(Lcom/android/bluetooth/avrcp/Avrcp;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 559
    :cond_e
    const/4 v12, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/avrcp/Avrcp$1;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v1}, Lcom/android/bluetooth/avrcp/Avrcp;->-get14(Lcom/android/bluetooth/avrcp/Avrcp;)I

    move-result v1

    if-ge v12, v1, :cond_2

    .line 560
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/avrcp/Avrcp$1;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    iget-object v1, v1, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v1, v1, v12

    invoke-static {v1}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get19(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)I

    move-result v1

    if-nez v1, :cond_f

    .line 562
    const-string/jumbo v1, "Avrcp"

    const-string/jumbo v2, "device has registered formPlayerStatusChangeNT"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/avrcp/Avrcp$1;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    iget-object v1, v1, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v1, v1, v12

    .line 565
    const/4 v2, 0x1

    .line 564
    invoke-static {v1, v2}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set21(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;I)I

    .line 566
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/avrcp/Avrcp$1;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp$1;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    iget-object v2, v2, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v2, v2, v12

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get19(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)I

    move-result v2

    .line 567
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/avrcp/Avrcp$1;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    iget-object v3, v3, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v3, v3, v12

    invoke-static {v3}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get6(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    .line 566
    invoke-static {v1, v2, v3}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap29(Lcom/android/bluetooth/avrcp/Avrcp;ILandroid/bluetooth/BluetoothDevice;)V

    .line 559
    :goto_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 569
    :cond_f
    const-string/jumbo v1, "Avrcp"

    const-string/jumbo v2, "Drop Set Attr Val update from media player"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 574
    .end local v9    # "data":[B
    :pswitch_5
    const-string/jumbo v1, "AttributeStrings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 575
    .local v5, "text":[Ljava/lang/String;
    if-nez v10, :cond_10

    .line 576
    const-string/jumbo v1, "Avrcp"

    const-string/jumbo v2, "ERROR!!! device is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    return-void

    .line 579
    :cond_10
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/avrcp/Avrcp$1;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp$1;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/Avrcp;->-get8(Lcom/android/bluetooth/avrcp/Avrcp;)Lcom/android/bluetooth/avrcp/Avrcp$PlayerSettings;

    move-result-object v2

    iget-object v2, v2, Lcom/android/bluetooth/avrcp/Avrcp$PlayerSettings;->attrIds:[B

    array-length v2, v2

    .line 580
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/avrcp/Avrcp$1;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v3}, Lcom/android/bluetooth/avrcp/Avrcp;->-get8(Lcom/android/bluetooth/avrcp/Avrcp;)Lcom/android/bluetooth/avrcp/Avrcp$PlayerSettings;

    move-result-object v3

    iget-object v3, v3, Lcom/android/bluetooth/avrcp/Avrcp$PlayerSettings;->attrIds:[B

    array-length v4, v5

    .line 581
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/avrcp/Avrcp$1;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v6, v10}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap12(Lcom/android/bluetooth/avrcp/Avrcp;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v6

    .line 579
    invoke-static/range {v1 .. v6}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap8(Lcom/android/bluetooth/avrcp/Avrcp;I[BI[Ljava/lang/String;[B)Z

    goto/16 :goto_0

    .line 587
    .end local v5    # "text":[Ljava/lang/String;
    :pswitch_6
    const-string/jumbo v1, "ValueStrings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 588
    .restart local v5    # "text":[Ljava/lang/String;
    if-nez v10, :cond_11

    .line 589
    const-string/jumbo v1, "Avrcp"

    const-string/jumbo v2, "ERROR!!! device is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    return-void

    .line 592
    :cond_11
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/avrcp/Avrcp$1;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp$1;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/Avrcp;->-get8(Lcom/android/bluetooth/avrcp/Avrcp;)Lcom/android/bluetooth/avrcp/Avrcp$PlayerSettings;

    move-result-object v2

    iget-object v2, v2, Lcom/android/bluetooth/avrcp/Avrcp$PlayerSettings;->attrIds:[B

    array-length v2, v2

    .line 593
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/avrcp/Avrcp$1;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v3}, Lcom/android/bluetooth/avrcp/Avrcp;->-get8(Lcom/android/bluetooth/avrcp/Avrcp;)Lcom/android/bluetooth/avrcp/Avrcp$PlayerSettings;

    move-result-object v3

    iget-object v3, v3, Lcom/android/bluetooth/avrcp/Avrcp$PlayerSettings;->attrIds:[B

    .line 594
    array-length v4, v5

    .line 595
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/avrcp/Avrcp$1;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v6, v10}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap12(Lcom/android/bluetooth/avrcp/Avrcp;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v6

    .line 592
    invoke-static/range {v1 .. v6}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap9(Lcom/android/bluetooth/avrcp/Avrcp;I[BI[Ljava/lang/String;[B)Z

    goto/16 :goto_0

    .line 501
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
