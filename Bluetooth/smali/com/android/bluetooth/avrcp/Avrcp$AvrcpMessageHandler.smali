.class final Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;
.super Landroid/os/Handler;
.source "Avrcp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/avrcp/Avrcp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AvrcpMessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/avrcp/Avrcp;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/avrcp/Avrcp;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/bluetooth/avrcp/Avrcp;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 836
    iput-object p1, p0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    .line 837
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 836
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/avrcp/Avrcp;Landroid/os/Looper;Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/bluetooth/avrcp/Avrcp;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;-><init>(Lcom/android/bluetooth/avrcp/Avrcp;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 63
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 842
    const/16 v36, 0xff

    .line 843
    .local v36, "deviceIndex":I
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 841
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 845
    :sswitch_1
    const-string/jumbo v5, "Avrcp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "**MESSAGE_PLAYSTATUS_TIMEOUT: Addr: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 846
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 845
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 846
    const-string/jumbo v6, " Msg: "

    .line 845
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 846
    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    .line 845
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp;->-get6(Lcom/android/bluetooth/avrcp/Avrcp;)Ljava/util/ArrayList;

    move-result-object v5

    monitor-enter v5

    .line 848
    :try_start_0
    new-instance v62, Ljava/lang/Integer;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, v62

    invoke-direct {v0, v4}, Ljava/lang/Integer;-><init>(I)V

    .line 849
    .local v62, "val":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp;->-get6(Lcom/android/bluetooth/avrcp/Avrcp;)Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v0, v62

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_1

    monitor-exit v5

    goto :goto_0

    .line 852
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp;->-get6(Lcom/android/bluetooth/avrcp/Avrcp;)Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v0, v62

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v5

    .line 854
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    packed-switch v4, :pswitch_data_0

    .line 924
    :pswitch_0
    const-string/jumbo v4, "Avrcp"

    const-string/jumbo v5, "in default case"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 847
    .end local v62    # "val":Ljava/lang/Integer;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 856
    .restart local v62    # "val":Ljava/lang/Integer;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp;->-get0(Lcom/android/bluetooth/avrcp/Avrcp;)[B

    move-result-object v4

    array-length v4, v4

    int-to-byte v6, v4

    .line 857
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp;->-get0(Lcom/android/bluetooth/avrcp/Avrcp;)[B

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    .line 858
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp;->-get2(Lcom/android/bluetooth/avrcp/Avrcp;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v10

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v10, v4}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    .line 857
    invoke-static {v9, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap12(Lcom/android/bluetooth/avrcp/Avrcp;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v4

    .line 856
    invoke-static {v5, v6, v7, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap4(Lcom/android/bluetooth/avrcp/Avrcp;B[B[B)Z

    goto/16 :goto_0

    .line 861
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp;->-get8(Lcom/android/bluetooth/avrcp/Avrcp;)Lcom/android/bluetooth/avrcp/Avrcp$PlayerSettings;

    move-result-object v4

    iget-byte v4, v4, Lcom/android/bluetooth/avrcp/Avrcp$PlayerSettings;->attr:B

    packed-switch v4, :pswitch_data_1

    .line 875
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp;->-get16(Lcom/android/bluetooth/avrcp/Avrcp;)[B

    move-result-object v4

    array-length v4, v4

    int-to-byte v6, v4

    .line 876
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp;->-get16(Lcom/android/bluetooth/avrcp/Avrcp;)[B

    move-result-object v7

    .line 877
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp;->-get2(Lcom/android/bluetooth/avrcp/Avrcp;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v10

    .line 878
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 877
    invoke-virtual {v10, v4}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-static {v9, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap12(Lcom/android/bluetooth/avrcp/Avrcp;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v4

    .line 875
    invoke-static {v5, v6, v7, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap6(Lcom/android/bluetooth/avrcp/Avrcp;B[B[B)Z

    goto/16 :goto_0

    .line 863
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp;->-get17(Lcom/android/bluetooth/avrcp/Avrcp;)[B

    move-result-object v4

    array-length v4, v4

    int-to-byte v6, v4

    .line 864
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp;->-get17(Lcom/android/bluetooth/avrcp/Avrcp;)[B

    move-result-object v7

    .line 865
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp;->-get2(Lcom/android/bluetooth/avrcp/Avrcp;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v10

    .line 866
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 865
    invoke-virtual {v10, v4}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-static {v9, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap12(Lcom/android/bluetooth/avrcp/Avrcp;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v4

    .line 863
    invoke-static {v5, v6, v7, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap6(Lcom/android/bluetooth/avrcp/Avrcp;B[B[B)Z

    goto/16 :goto_0

    .line 869
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp;->-get18(Lcom/android/bluetooth/avrcp/Avrcp;)[B

    move-result-object v4

    array-length v4, v4

    int-to-byte v6, v4

    .line 870
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp;->-get18(Lcom/android/bluetooth/avrcp/Avrcp;)[B

    move-result-object v7

    .line 871
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp;->-get2(Lcom/android/bluetooth/avrcp/Avrcp;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v10

    .line 872
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 871
    invoke-virtual {v10, v4}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-static {v9, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap12(Lcom/android/bluetooth/avrcp/Avrcp;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v4

    .line 869
    invoke-static {v5, v6, v7, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap6(Lcom/android/bluetooth/avrcp/Avrcp;B[B[B)Z

    goto/16 :goto_0

    .line 883
    :pswitch_5
    const/16 v43, 0x0

    .line 884
    .local v43, "j":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp;->-get8(Lcom/android/bluetooth/avrcp/Avrcp;)Lcom/android/bluetooth/avrcp/Avrcp$PlayerSettings;

    move-result-object v4

    iget-object v4, v4, Lcom/android/bluetooth/avrcp/Avrcp$PlayerSettings;->attrIds:[B

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x2

    new-array v0, v4, [B

    move-object/from16 v57, v0

    .line 885
    .local v57, "retVal":[B
    const/16 v38, 0x0

    .local v38, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp;->-get8(Lcom/android/bluetooth/avrcp/Avrcp;)Lcom/android/bluetooth/avrcp/Avrcp$PlayerSettings;

    move-result-object v4

    iget-object v4, v4, Lcom/android/bluetooth/avrcp/Avrcp$PlayerSettings;->attrIds:[B

    array-length v4, v4

    move/from16 v0, v38

    if-ge v0, v4, :cond_4

    .line 886
    add-int/lit8 v44, v43, 0x1

    .end local v43    # "j":I
    .local v44, "j":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp;->-get8(Lcom/android/bluetooth/avrcp/Avrcp;)Lcom/android/bluetooth/avrcp/Avrcp$PlayerSettings;

    move-result-object v4

    iget-object v4, v4, Lcom/android/bluetooth/avrcp/Avrcp$PlayerSettings;->attrIds:[B

    aget-byte v4, v4, v38

    aput-byte v4, v57, v43

    .line 887
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp;->-get8(Lcom/android/bluetooth/avrcp/Avrcp;)Lcom/android/bluetooth/avrcp/Avrcp$PlayerSettings;

    move-result-object v4

    iget-object v4, v4, Lcom/android/bluetooth/avrcp/Avrcp$PlayerSettings;->attrIds:[B

    aget-byte v4, v4, v38

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 888
    add-int/lit8 v43, v44, 0x1

    .end local v44    # "j":I
    .restart local v43    # "j":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp;->-get15(Lcom/android/bluetooth/avrcp/Avrcp;)Lcom/android/bluetooth/avrcp/Avrcp$localPlayerSettings;

    move-result-object v4

    iget-byte v4, v4, Lcom/android/bluetooth/avrcp/Avrcp$localPlayerSettings;->repeat_value:B

    aput-byte v4, v57, v44

    .line 885
    :goto_2
    add-int/lit8 v38, v38, 0x1

    goto :goto_1

    .line 889
    .end local v43    # "j":I
    .restart local v44    # "j":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp;->-get8(Lcom/android/bluetooth/avrcp/Avrcp;)Lcom/android/bluetooth/avrcp/Avrcp$PlayerSettings;

    move-result-object v4

    iget-object v4, v4, Lcom/android/bluetooth/avrcp/Avrcp$PlayerSettings;->attrIds:[B

    aget-byte v4, v4, v38

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    .line 890
    add-int/lit8 v43, v44, 0x1

    .end local v44    # "j":I
    .restart local v43    # "j":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp;->-get15(Lcom/android/bluetooth/avrcp/Avrcp;)Lcom/android/bluetooth/avrcp/Avrcp$localPlayerSettings;

    move-result-object v4

    iget-byte v4, v4, Lcom/android/bluetooth/avrcp/Avrcp$localPlayerSettings;->shuffle_value:B

    aput-byte v4, v57, v44

    goto :goto_2

    .line 892
    .end local v43    # "j":I
    .restart local v44    # "j":I
    :cond_3
    add-int/lit8 v43, v44, 0x1

    .end local v44    # "j":I
    .restart local v43    # "j":I
    const/4 v4, 0x0

    aput-byte v4, v57, v44

    goto :goto_2

    .line 895
    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, v57

    array-length v4, v0

    int-to-byte v6, v4

    .line 896
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp;->-get2(Lcom/android/bluetooth/avrcp/Avrcp;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v9

    .line 897
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 896
    invoke-virtual {v9, v4}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap12(Lcom/android/bluetooth/avrcp/Avrcp;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v4

    .line 895
    move-object/from16 v0, v57

    invoke-static {v5, v6, v0, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap0(Lcom/android/bluetooth/avrcp/Avrcp;B[B[B)Z

    goto/16 :goto_0

    .line 900
    .end local v38    # "i":I
    .end local v43    # "j":I
    .end local v57    # "retVal":[B
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    .line 901
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp;->-get2(Lcom/android/bluetooth/avrcp/Avrcp;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v7

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v4}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    .line 900
    invoke-static {v6, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap12(Lcom/android/bluetooth/avrcp/Avrcp;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v4

    const/4 v6, 0x3

    invoke-static {v5, v6, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap1(Lcom/android/bluetooth/avrcp/Avrcp;I[B)Z

    goto/16 :goto_0

    .line 904
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp;->-get8(Lcom/android/bluetooth/avrcp/Avrcp;)Lcom/android/bluetooth/avrcp/Avrcp$PlayerSettings;

    move-result-object v4

    iget-object v4, v4, Lcom/android/bluetooth/avrcp/Avrcp$PlayerSettings;->attrIds:[B

    array-length v4, v4

    new-array v8, v4, [Ljava/lang/String;

    .line 905
    .local v8, "attribText":[Ljava/lang/String;
    const/16 v38, 0x0

    .restart local v38    # "i":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp;->-get8(Lcom/android/bluetooth/avrcp/Avrcp;)Lcom/android/bluetooth/avrcp/Avrcp$PlayerSettings;

    move-result-object v4

    iget-object v4, v4, Lcom/android/bluetooth/avrcp/Avrcp$PlayerSettings;->attrIds:[B

    array-length v4, v4

    move/from16 v0, v38

    if-ge v0, v4, :cond_5

    .line 906
    const-string/jumbo v4, ""

    aput-object v4, v8, v38

    .line 905
    add-int/lit8 v38, v38, 0x1

    goto :goto_3

    .line 908
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get8(Lcom/android/bluetooth/avrcp/Avrcp;)Lcom/android/bluetooth/avrcp/Avrcp$PlayerSettings;

    move-result-object v5

    iget-object v5, v5, Lcom/android/bluetooth/avrcp/Avrcp$PlayerSettings;->attrIds:[B

    array-length v5, v5

    .line 909
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v6}, Lcom/android/bluetooth/avrcp/Avrcp;->-get8(Lcom/android/bluetooth/avrcp/Avrcp;)Lcom/android/bluetooth/avrcp/Avrcp$PlayerSettings;

    move-result-object v6

    iget-object v6, v6, Lcom/android/bluetooth/avrcp/Avrcp$PlayerSettings;->attrIds:[B

    array-length v7, v8

    .line 910
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v9}, Lcom/android/bluetooth/avrcp/Avrcp;->-get2(Lcom/android/bluetooth/avrcp/Avrcp;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v11

    .line 911
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    .line 910
    invoke-virtual {v11, v9}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v9

    invoke-static {v10, v9}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap12(Lcom/android/bluetooth/avrcp/Avrcp;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v9

    .line 908
    invoke-static/range {v4 .. v9}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap8(Lcom/android/bluetooth/avrcp/Avrcp;I[BI[Ljava/lang/String;[B)Z

    goto/16 :goto_0

    .line 914
    .end local v8    # "attribText":[Ljava/lang/String;
    .end local v38    # "i":I
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp;->-get8(Lcom/android/bluetooth/avrcp/Avrcp;)Lcom/android/bluetooth/avrcp/Avrcp$PlayerSettings;

    move-result-object v4

    iget-object v4, v4, Lcom/android/bluetooth/avrcp/Avrcp$PlayerSettings;->attrIds:[B

    array-length v4, v4

    new-array v13, v4, [Ljava/lang/String;

    .line 915
    .local v13, "valueText":[Ljava/lang/String;
    const/16 v38, 0x0

    .restart local v38    # "i":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp;->-get8(Lcom/android/bluetooth/avrcp/Avrcp;)Lcom/android/bluetooth/avrcp/Avrcp$PlayerSettings;

    move-result-object v4

    iget-object v4, v4, Lcom/android/bluetooth/avrcp/Avrcp$PlayerSettings;->attrIds:[B

    array-length v4, v4

    move/from16 v0, v38

    if-ge v0, v4, :cond_6

    .line 916
    const-string/jumbo v4, ""

    aput-object v4, v13, v38

    .line 915
    add-int/lit8 v38, v38, 0x1

    goto :goto_4

    .line 918
    :cond_6
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp;->-get8(Lcom/android/bluetooth/avrcp/Avrcp;)Lcom/android/bluetooth/avrcp/Avrcp$PlayerSettings;

    move-result-object v4

    iget-object v4, v4, Lcom/android/bluetooth/avrcp/Avrcp$PlayerSettings;->attrIds:[B

    array-length v10, v4

    .line 919
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp;->-get8(Lcom/android/bluetooth/avrcp/Avrcp;)Lcom/android/bluetooth/avrcp/Avrcp$PlayerSettings;

    move-result-object v4

    iget-object v11, v4, Lcom/android/bluetooth/avrcp/Avrcp$PlayerSettings;->attrIds:[B

    array-length v12, v13

    .line 920
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp;->-get2(Lcom/android/bluetooth/avrcp/Avrcp;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v6

    .line 921
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 920
    invoke-virtual {v6, v4}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap12(Lcom/android/bluetooth/avrcp/Avrcp;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v14

    .line 918
    invoke-static/range {v9 .. v14}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap9(Lcom/android/bluetooth/avrcp/Avrcp;I[BI[Ljava/lang/String;[B)Z

    goto/16 :goto_0

    .line 931
    .end local v13    # "valueText":[Ljava/lang/String;
    .end local v38    # "i":I
    .end local v62    # "val":Ljava/lang/Integer;
    :sswitch_2
    const-string/jumbo v4, "Avrcp"

    const-string/jumbo v5, "State change for music app"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 933
    const/4 v4, 0x0

    .line 932
    invoke-static {v5, v6, v10, v11, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap36(Lcom/android/bluetooth/avrcp/Avrcp;IJLandroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 937
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/media/RemoteController$MetadataEditor;

    invoke-static {v5, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap35(Lcom/android/bluetooth/avrcp/Avrcp;Landroid/media/RemoteController$MetadataEditor;)V

    goto/16 :goto_0

    .line 941
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap33(Lcom/android/bluetooth/avrcp/Avrcp;)V

    goto/16 :goto_0

    .line 945
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    invoke-static {v4, v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap32(Lcom/android/bluetooth/avrcp/Avrcp;I)V

    goto/16 :goto_0

    .line 949
    :sswitch_6
    const-string/jumbo v4, "Avrcp"

    const-string/jumbo v5, "MSG_UPDATE_BROWSED_PLAYER_FOLDER"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/String;

    invoke-virtual {v5, v6, v7, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->updateBrowsedPlayerFolder(II[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 954
    :sswitch_7
    const-string/jumbo v4, "Avrcp"

    const-string/jumbo v5, "MSG_UPDATE_NOW_PLAYING_CONTENT_CHANGED"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-virtual {v4}, Lcom/android/bluetooth/avrcp/Avrcp;->updateNowPlayingContentChanged()V

    goto/16 :goto_0

    .line 959
    :sswitch_8
    const-string/jumbo v4, "Avrcp"

    const-string/jumbo v5, "MSG_PLAY_ITEM_RESPONSE"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v60

    .line 961
    .local v60, "success":Z
    const-string/jumbo v4, "Avrcp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "success: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v60

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move/from16 v0, v60

    invoke-virtual {v4, v0}, Lcom/android/bluetooth/avrcp/Avrcp;->updatePlayItemResponse(Z)V

    goto/16 :goto_0

    .line 966
    .end local v60    # "success":Z
    :sswitch_9
    const-string/jumbo v4, "Avrcp"

    const-string/jumbo v5, "MSG_NOW_PLAYING_ENTRIES_RECEIVED"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [J

    invoke-virtual {v5, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->updateNowPlayingEntriesReceived([J)V

    goto/16 :goto_0

    .line 971
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    invoke-static {v4, v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap37(Lcom/android/bluetooth/avrcp/Avrcp;I)V

    goto/16 :goto_0

    .line 982
    :sswitch_b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, Ljava/lang/String;

    .line 986
    .local v32, "address":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp;->-get2(Lcom/android/bluetooth/avrcp/Avrcp;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v35

    .line 987
    .local v35, "device":Landroid/bluetooth/BluetoothDevice;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, v35

    invoke-static {v4, v0}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap14(Lcom/android/bluetooth/avrcp/Avrcp;Landroid/bluetooth/BluetoothDevice;)I

    move-result v36

    .line 988
    const/16 v4, 0xff

    move/from16 v0, v36

    if-ne v0, v4, :cond_7

    .line 989
    const-string/jumbo v4, "Avrcp"

    const-string/jumbo v5, "device entry not present, bailing out"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    return-void

    .line 992
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    iget-object v4, v4, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v36

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    invoke-static {v4, v5}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set12(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;I)I

    .line 993
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    iget-object v4, v4, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v5, v4, v36

    .line 994
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    iget-object v4, v4, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v36

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get10(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)I

    move-result v4

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_8

    const/4 v4, 0x1

    .line 993
    :goto_5
    invoke-static {v5, v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set0(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;Z)Z

    .line 996
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp;->-get3(Lcom/android/bluetooth/avrcp/Avrcp;)Landroid/media/AudioManager;

    move-result-object v4

    invoke-virtual/range {v35 .. v35}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    .line 997
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-virtual {v6}, Lcom/android/bluetooth/avrcp/Avrcp;->isAbsoluteVolumeSupported()Z

    move-result v6

    .line 996
    invoke-virtual {v4, v5, v6}, Landroid/media/AudioManager;->avrcpSupportsAbsoluteVolume(Ljava/lang/String;Z)V

    .line 998
    const-string/jumbo v4, "Avrcp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " update audio manager for abs vol state = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 999
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-virtual {v6}, Lcom/android/bluetooth/avrcp/Avrcp;->isAbsoluteVolumeSupported()Z

    move-result v6

    .line 998
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    iget-object v4, v4, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v36

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get10(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)I

    move-result v4

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_0

    .line 1003
    const v30, 0x1080080

    .line 1004
    .local v30, "NOTIFICATION_ID":I
    new-instance v4, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get4(Lcom/android/bluetooth/avrcp/Avrcp;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 1005
    const-string/jumbo v5, "Bluetooth Media Browsing"

    .line 1004
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 1006
    const-string/jumbo v5, "Peer supports advanced feature"

    .line 1004
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 1007
    const-string/jumbo v5, "Re-pair from peer to enable it"

    .line 1004
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 1008
    const v5, 0x1080080

    .line 1004
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 1009
    const/4 v5, -0x1

    .line 1004
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v48

    .line 1012
    .local v48, "notification":Landroid/app/Notification;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp;->-get4(Lcom/android/bluetooth/avrcp/Avrcp;)Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v47

    .line 1011
    check-cast v47, Landroid/app/NotificationManager;

    .line 1013
    .local v47, "manager":Landroid/app/NotificationManager;
    move-object/from16 v0, v47

    move/from16 v1, v30

    move-object/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1014
    const-string/jumbo v4, "Avrcp"

    const-string/jumbo v5, " update notification manager on remote repair request"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 994
    .end local v30    # "NOTIFICATION_ID":I
    .end local v47    # "manager":Landroid/app/NotificationManager;
    .end local v48    # "notification":Landroid/app/Notification;
    :cond_8
    const/4 v4, 0x0

    goto/16 :goto_5

    .line 1024
    .end local v32    # "address":Ljava/lang/String;
    .end local v35    # "device":Landroid/bluetooth/BluetoothDevice;
    :sswitch_c
    const-string/jumbo v5, "Avrcp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Event for device address "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp;->-get2(Lcom/android/bluetooth/avrcp/Avrcp;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v35

    .line 1027
    .restart local v35    # "device":Landroid/bluetooth/BluetoothDevice;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, v35

    invoke-static {v4, v0}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap14(Lcom/android/bluetooth/avrcp/Avrcp;Landroid/bluetooth/BluetoothDevice;)I

    move-result v36

    .line 1028
    const/16 v4, 0xff

    move/from16 v0, v36

    if-ne v0, v4, :cond_9

    .line 1029
    const-string/jumbo v4, "Avrcp"

    const-string/jumbo v5, "Invalid device index for play status"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1032
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    iget-object v5, v5, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v5, v5, v36

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get9(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap13(Lcom/android/bluetooth/avrcp/Avrcp;I)I

    move-result v52

    .line 1033
    .local v52, "playState":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, v35

    invoke-static {v4, v0}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap17(Lcom/android/bluetooth/avrcp/Avrcp;Landroid/bluetooth/BluetoothDevice;)J

    move-result-wide v4

    long-to-int v0, v4

    move/from16 v56, v0

    .line 1034
    .local v56, "position":I
    const-string/jumbo v4, "Avrcp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Play Status for : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v35 .. v35}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1035
    const-string/jumbo v6, " state: "

    .line 1034
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v52

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1035
    const-string/jumbo v6, " position: "

    .line 1034
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v56

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    const/4 v4, -0x1

    move/from16 v0, v56

    if-ne v0, v4, :cond_a

    .line 1037
    const-string/jumbo v4, "Avrcp"

    const-string/jumbo v5, "Force play postion to 0, for getPlayStatus Rsp"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    const/16 v56, 0x0

    .line 1041
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get11(Lcom/android/bluetooth/avrcp/Avrcp;)J

    move-result-wide v6

    long-to-int v5, v6

    .line 1042
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, v35

    invoke-static {v6, v0}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap12(Lcom/android/bluetooth/avrcp/Avrcp;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v6

    .line 1041
    move/from16 v0, v52

    move/from16 v1, v56

    invoke-static {v4, v0, v5, v1, v6}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap5(Lcom/android/bluetooth/avrcp/Avrcp;III[B)Z

    goto/16 :goto_0

    .line 1049
    .end local v35    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v52    # "playState":I
    .end local v56    # "position":I
    :sswitch_d
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    int-to-byte v0, v4

    move/from16 v49, v0

    .line 1050
    .local v49, "numAttr":B
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v42, v0

    check-cast v42, Lcom/android/bluetooth/avrcp/Avrcp$ItemAttr;

    .line 1051
    .local v42, "itemAttr":Lcom/android/bluetooth/avrcp/Avrcp$ItemAttr;
    const-string/jumbo v4, "Avrcp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "event for device address "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v42

    iget-object v6, v0, Lcom/android/bluetooth/avrcp/Avrcp$ItemAttr;->mAddress:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/Avrcp$ItemAttr;->mAttrList:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    .line 1055
    .local v33, "attrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move/from16 v0, v49

    new-array v0, v0, [I

    move-object/from16 v19, v0

    .line 1056
    .local v19, "attrIds":[I
    move/from16 v0, v49

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v61, v0

    .line 1057
    .local v61, "textArray":[Ljava/lang/String;
    const/16 v38, 0x0

    .restart local v38    # "i":I
    :goto_6
    move/from16 v0, v38

    move/from16 v1, v49

    if-ge v0, v1, :cond_b

    .line 1058
    move-object/from16 v0, v33

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v19, v38

    .line 1059
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    aget v5, v19, v38

    invoke-static {v4, v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap16(Lcom/android/bluetooth/avrcp/Avrcp;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v61, v38

    .line 1057
    add-int/lit8 v38, v38, 0x1

    goto :goto_6

    .line 1061
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    .line 1062
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v6}, Lcom/android/bluetooth/avrcp/Avrcp;->-get2(Lcom/android/bluetooth/avrcp/Avrcp;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v6

    move-object/from16 v0, v42

    iget-object v7, v0, Lcom/android/bluetooth/avrcp/Avrcp$ItemAttr;->mAddress:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap12(Lcom/android/bluetooth/avrcp/Avrcp;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v5

    .line 1061
    move/from16 v0, v49

    move-object/from16 v1, v19

    move-object/from16 v2, v61

    invoke-static {v4, v0, v1, v2, v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap3(Lcom/android/bluetooth/avrcp/Avrcp;B[I[Ljava/lang/String;[B)Z

    goto/16 :goto_0

    .line 1069
    .end local v19    # "attrIds":[I
    .end local v33    # "attrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v38    # "i":I
    .end local v42    # "itemAttr":Lcom/android/bluetooth/avrcp/Avrcp$ItemAttr;
    .end local v49    # "numAttr":B
    .end local v61    # "textArray":[Ljava/lang/String;
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {v5, v6, v7, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap25(Lcom/android/bluetooth/avrcp/Avrcp;IILjava/lang/String;)V

    goto/16 :goto_0

    .line 1075
    :sswitch_f
    const-string/jumbo v5, "Avrcp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "event for device address "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    invoke-static {v5, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap14(Lcom/android/bluetooth/avrcp/Avrcp;Landroid/bluetooth/BluetoothDevice;)I

    move-result v36

    .line 1077
    const/16 v4, 0xff

    move/from16 v0, v36

    if-ne v0, v4, :cond_c

    .line 1078
    const-string/jumbo v4, "Avrcp"

    const-string/jumbo v5, "invalid index for device"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1081
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    iget-object v4, v4, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v36

    .line 1082
    const/4 v5, 0x1

    .line 1081
    invoke-static {v4, v5}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set18(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;I)I

    .line 1083
    const-string/jumbo v5, "Avrcp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "event for device address "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    iget-object v4, v4, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v36

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get16(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)I

    move-result v6

    .line 1085
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    invoke-static {v7, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap17(Lcom/android/bluetooth/avrcp/Avrcp;Landroid/bluetooth/BluetoothDevice;)J

    move-result-wide v10

    long-to-int v7, v10

    .line 1086
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    invoke-static {v9, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap12(Lcom/android/bluetooth/avrcp/Avrcp;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v4

    .line 1084
    invoke-static {v5, v6, v7, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap7(Lcom/android/bluetooth/avrcp/Avrcp;II[B)Z

    goto/16 :goto_0

    .line 1092
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp;->-get2(Lcom/android/bluetooth/avrcp/Avrcp;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap14(Lcom/android/bluetooth/avrcp/Avrcp;Landroid/bluetooth/BluetoothDevice;)I

    move-result v36

    .line 1093
    const/16 v4, 0xff

    move/from16 v0, v36

    if-ne v0, v4, :cond_d

    .line 1094
    const-string/jumbo v4, "Avrcp"

    const-string/jumbo v5, "invalid device index"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1097
    :cond_d
    const-string/jumbo v5, "Avrcp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "event for device address "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    .line 1099
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp;->-get2(Lcom/android/bluetooth/avrcp/Avrcp;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v7

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v4}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap12(Lcom/android/bluetooth/avrcp/Avrcp;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v4

    .line 1098
    const/16 v6, 0x13

    invoke-static {v5, v6, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap10(Lcom/android/bluetooth/avrcp/Avrcp;B[B)Z

    .line 1100
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    iget-object v4, v4, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v36

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set23(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 1107
    :sswitch_11
    const-string/jumbo v5, "Avrcp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "event for device address "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp;->-get2(Lcom/android/bluetooth/avrcp/Avrcp;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap14(Lcom/android/bluetooth/avrcp/Avrcp;Landroid/bluetooth/BluetoothDevice;)I

    move-result v36

    .line 1109
    const/16 v4, 0xff

    move/from16 v0, v36

    if-ne v0, v4, :cond_e

    .line 1110
    const-string/jumbo v4, "Avrcp"

    const-string/jumbo v5, "invalid index for device"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1113
    :cond_e
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    const/16 v5, 0x9

    if-eq v4, v5, :cond_f

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    const/16 v5, 0xa

    if-ne v4, v5, :cond_11

    .line 1114
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    iget-object v4, v4, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v36

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get23(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 1115
    const-string/jumbo v4, "Avrcp"

    const-string/jumbo v5, "Unsolicited response, ignored"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1118
    :cond_10
    const/16 v4, 0x9

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->removeMessages(I)V

    .line 1119
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    iget-object v4, v4, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v36

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set25(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;Z)Z

    .line 1120
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    iget-object v4, v4, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v36

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set4(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;I)I

    .line 1122
    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    iget-object v4, v4, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v36

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get3(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)I

    move-result v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    if-eq v4, v5, :cond_14

    .line 1123
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    const/16 v5, 0x9

    if-eq v4, v5, :cond_12

    .line 1124
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    const/16 v5, 0xd

    if-ne v4, v5, :cond_13

    .line 1126
    :cond_12
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    int-to-byte v4, v4

    and-int/lit8 v4, v4, 0x7f

    int-to-byte v0, v4

    move/from16 v31, v0

    .line 1127
    .local v31, "absVol":B
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    iget-object v4, v4, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v36

    move/from16 v0, v31

    invoke-static {v4, v0}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set5(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;I)I

    .line 1128
    move/from16 v0, v31

    int-to-long v4, v0

    const-wide/16 v6, 0x64

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x7f

    div-long v50, v4, v6

    .line 1129
    .local v50, "pecentVolChanged":J
    const-string/jumbo v4, "Avrcp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Absolute Volume change received as: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    const-string/jumbo v4, "Avrcp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Percent volume changed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v50

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-virtual {v4}, Lcom/android/bluetooth/avrcp/Avrcp;->isAbsoluteVolumeSupported()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1132
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    iget-object v4, v4, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v36

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get3(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 1133
    const-string/jumbo v4, "Avrcp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " update audio manager for absolute volume = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1134
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    iget-object v6, v6, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v6, v6, v36

    invoke-static {v6}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get3(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)I

    move-result v6

    .line 1133
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    iget-object v5, v5, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v5, v5, v36

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get3(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)I

    move-result v5

    .line 1136
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    iget-object v6, v6, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v6, v6, v36

    invoke-static {v6}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get6(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    .line 1135
    invoke-static {v4, v5, v6}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap19(Lcom/android/bluetooth/avrcp/Avrcp;ILandroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 1125
    .end local v31    # "absVol":B
    .end local v50    # "pecentVolChanged":J
    :cond_13
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    const/16 v5, 0xf

    if-eq v4, v5, :cond_12

    .line 1138
    :cond_14
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    const/16 v5, 0xa

    if-ne v4, v5, :cond_0

    goto/16 :goto_0

    .line 1146
    :sswitch_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp;->-get1(Lcom/android/bluetooth/avrcp/Avrcp;)Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/bluetooth/a2dp/A2dpService;->getA2dpPlayingDevice()Ljava/util/List;

    move-result-object v54

    .line 1149
    .local v54, "playingDevice":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    const/16 v38, 0x0

    .restart local v38    # "i":I
    :goto_7
    invoke-interface/range {v54 .. v54}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v38

    if-ge v0, v4, :cond_0

    .line 1150
    const-string/jumbo v5, "Avrcp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "event for device address "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1151
    move-object/from16 v0, v54

    move/from16 v1, v38

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 1150
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, v54

    move/from16 v1, v38

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    invoke-static {v5, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap14(Lcom/android/bluetooth/avrcp/Avrcp;Landroid/bluetooth/BluetoothDevice;)I

    move-result v36

    .line 1153
    const/16 v4, 0xff

    move/from16 v0, v36

    if-ne v0, v4, :cond_16

    .line 1154
    const-string/jumbo v4, "Avrcp"

    const-string/jumbo v5, "Unkown playing device"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    invoke-static {v4, v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap28(Lcom/android/bluetooth/avrcp/Avrcp;I)V

    .line 1149
    :cond_15
    :goto_8
    add-int/lit8 v38, v38, 0x1

    goto :goto_7

    .line 1158
    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    iget-object v4, v4, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v36

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get23(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Z

    move-result v4

    if-nez v4, :cond_15

    .line 1165
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    iget-object v4, v4, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v36

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get3(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_18

    .line 1166
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_17

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_18

    .line 1168
    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    iget-object v4, v4, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v36

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get3(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)I

    move-result v4

    .line 1169
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v6}, Lcom/android/bluetooth/avrcp/Avrcp;->-get13(Lcom/android/bluetooth/avrcp/Avrcp;)I

    move-result v6

    mul-int/2addr v5, v6

    .line 1168
    add-int/2addr v4, v5

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1167
    const/16 v5, 0x7f

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v58

    .line 1170
    .local v58, "setVol":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    .line 1171
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, v54

    move/from16 v1, v38

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    invoke-static {v6, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap12(Lcom/android/bluetooth/avrcp/Avrcp;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v4

    .line 1170
    move/from16 v0, v58

    invoke-static {v5, v0, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap11(Lcom/android/bluetooth/avrcp/Avrcp;I[B)Z

    move-result v41

    .line 1172
    .local v41, "isSetVol":Z
    if-eqz v41, :cond_15

    .line 1174
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    iget-object v4, v4, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v36

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get6(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    .line 1173
    const/16 v5, 0x9

    .line 1174
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1173
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v4}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 1175
    const-wide/16 v6, 0x7d0

    .line 1173
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6, v7}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1176
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    iget-object v4, v4, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v36

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set25(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;Z)Z

    .line 1177
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    iget-object v4, v4, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v36

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    invoke-static {v4, v5}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set13(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;I)I

    .line 1178
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    iget-object v4, v4, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v36

    move/from16 v0, v58

    invoke-static {v4, v0}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set14(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;I)I

    goto/16 :goto_8

    .line 1181
    .end local v41    # "isSetVol":Z
    .end local v58    # "setVol":I
    :cond_18
    const-string/jumbo v4, "Avrcp"

    const-string/jumbo v5, "Unknown direction in MESSAGE_ADJUST_VOLUME"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 1190
    .end local v38    # "i":I
    .end local v54    # "playingDevice":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :sswitch_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp;->-get1(Lcom/android/bluetooth/avrcp/Avrcp;)Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/bluetooth/a2dp/A2dpService;->getA2dpPlayingDevice()Ljava/util/List;

    move-result-object v54

    .line 1191
    .restart local v54    # "playingDevice":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface/range {v54 .. v54}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_19

    .line 1192
    const-string/jumbo v4, "Avrcp"

    const-string/jumbo v5, "Volume cmd without a2dp playing"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    :cond_19
    const/16 v38, 0x0

    .restart local v38    # "i":I
    :goto_9
    invoke-interface/range {v54 .. v54}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v38

    if-ge v0, v4, :cond_0

    .line 1195
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, v54

    move/from16 v1, v38

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    invoke-static {v5, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap14(Lcom/android/bluetooth/avrcp/Avrcp;Landroid/bluetooth/BluetoothDevice;)I

    move-result v36

    .line 1196
    const/16 v4, 0xff

    move/from16 v0, v36

    if-ne v0, v4, :cond_1b

    .line 1197
    const-string/jumbo v4, "Avrcp"

    const-string/jumbo v5, "Unkown playing device"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    invoke-static {v4, v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap30(Lcom/android/bluetooth/avrcp/Avrcp;I)V

    .line 1194
    :cond_1a
    :goto_a
    add-int/lit8 v38, v38, 0x1

    goto :goto_9

    .line 1201
    :cond_1b
    const-string/jumbo v5, "Avrcp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "event for device address "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1202
    move-object/from16 v0, v54

    move/from16 v1, v38

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 1201
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    iget-object v4, v4, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v36

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get23(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Z

    move-result v4

    if-nez v4, :cond_1a

    .line 1208
    const-string/jumbo v5, "Avrcp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "event for device address "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    .line 1210
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    iget-object v7, v7, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v7, v7, v36

    invoke-static {v7}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get6(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap12(Lcom/android/bluetooth/avrcp/Avrcp;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v6

    .line 1209
    invoke-static {v4, v5, v6}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap11(Lcom/android/bluetooth/avrcp/Avrcp;I[B)Z

    move-result v41

    .line 1211
    .restart local v41    # "isSetVol":Z
    if-eqz v41, :cond_1a

    .line 1213
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    iget-object v4, v4, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v36

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get6(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    .line 1212
    const/16 v5, 0x9

    .line 1213
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1212
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v4}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 1214
    const-wide/16 v6, 0x7d0

    .line 1212
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6, v7}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1215
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    iget-object v4, v4, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v36

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set25(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;Z)Z

    .line 1216
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    iget-object v4, v4, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v36

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    invoke-static {v4, v5}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set14(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;I)I

    goto/16 :goto_a

    .line 1224
    .end local v38    # "i":I
    .end local v41    # "isSetVol":Z
    .end local v54    # "playingDevice":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :sswitch_14
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    invoke-static {v5, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap14(Lcom/android/bluetooth/avrcp/Avrcp;Landroid/bluetooth/BluetoothDevice;)I

    move-result v36

    .line 1225
    const/16 v4, 0xff

    move/from16 v0, v36

    if-ne v0, v4, :cond_1d

    .line 1226
    const-string/jumbo v4, "Avrcp"

    const-string/jumbo v5, "invalid device index for abs vol timeout"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    const/16 v38, 0x0

    .restart local v38    # "i":I
    :goto_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp;->-get14(Lcom/android/bluetooth/avrcp/Avrcp;)I

    move-result v4

    move/from16 v0, v38

    if-ge v0, v4, :cond_0

    .line 1228
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    iget-object v4, v4, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v38

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get23(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 1229
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    iget-object v4, v4, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v38

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set25(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;Z)Z

    .line 1227
    :cond_1c
    add-int/lit8 v38, v38, 0x1

    goto :goto_b

    .line 1233
    .end local v38    # "i":I
    :cond_1d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    iget-object v4, v4, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v36

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set25(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;Z)Z

    .line 1234
    const-string/jumbo v5, "Avrcp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "event for device address "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    iget-object v4, v4, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v36

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get2(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)I

    move-result v4

    const/4 v5, 0x3

    if-lt v4, v5, :cond_1e

    .line 1236
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    iget-object v4, v4, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v36

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set4(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;I)I

    goto/16 :goto_0

    .line 1238
    :cond_1e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    iget-object v4, v4, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v36

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get2(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v4, v5}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set4(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;I)I

    .line 1239
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    iget-object v4, v4, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v36

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get12(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)I

    move-result v6

    .line 1240
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    invoke-static {v7, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap12(Lcom/android/bluetooth/avrcp/Avrcp;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v4

    .line 1239
    invoke-static {v5, v6, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap11(Lcom/android/bluetooth/avrcp/Avrcp;I[B)Z

    move-result v41

    .line 1241
    .restart local v41    # "isSetVol":Z
    if-eqz v41, :cond_0

    .line 1243
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1242
    const/16 v5, 0x9

    .line 1243
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1242
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v4}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 1243
    const-wide/16 v6, 0x7d0

    .line 1242
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6, v7}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1244
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    iget-object v4, v4, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v36

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set25(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;Z)Z

    goto/16 :goto_0

    .line 1251
    .end local v41    # "isSetVol":Z
    :sswitch_15
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    const/16 v5, 0xa

    if-ne v4, v5, :cond_20

    .line 1252
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp;->-get12(Lcom/android/bluetooth/avrcp/Avrcp;)I

    move-result v4

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_22

    .line 1254
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1f

    .line 1255
    const/16 v46, 0x0

    .line 1257
    .local v46, "keyState":I
    :goto_c
    new-instance v45, Landroid/view/KeyEvent;

    const/16 v4, 0x5a

    move-object/from16 v0, v45

    move/from16 v1, v46

    invoke-direct {v0, v1, v4}, Landroid/view/KeyEvent;-><init>(II)V

    .line 1258
    .local v45, "keyEvent":Landroid/view/KeyEvent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp;->-get9(Lcom/android/bluetooth/avrcp/Avrcp;)Landroid/media/RemoteController;

    move-result-object v4

    move-object/from16 v0, v45

    invoke-virtual {v4, v0}, Landroid/media/RemoteController;->sendMediaKeyEvent(Landroid/view/KeyEvent;)Z

    goto/16 :goto_0

    .line 1255
    .end local v45    # "keyEvent":Landroid/view/KeyEvent;
    .end local v46    # "keyState":I
    :cond_1f
    const/16 v46, 0x1

    .restart local v46    # "keyState":I
    goto :goto_c

    .line 1261
    .end local v46    # "keyState":I
    :cond_20
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp;->-get12(Lcom/android/bluetooth/avrcp/Avrcp;)I

    move-result v4

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_22

    .line 1263
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_21

    .line 1264
    const/16 v46, 0x0

    .line 1266
    .restart local v46    # "keyState":I
    :goto_d
    new-instance v45, Landroid/view/KeyEvent;

    const/16 v4, 0x59

    move-object/from16 v0, v45

    move/from16 v1, v46

    invoke-direct {v0, v1, v4}, Landroid/view/KeyEvent;-><init>(II)V

    .line 1267
    .restart local v45    # "keyEvent":Landroid/view/KeyEvent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp;->-get9(Lcom/android/bluetooth/avrcp/Avrcp;)Landroid/media/RemoteController;

    move-result-object v4

    move-object/from16 v0, v45

    invoke-virtual {v4, v0}, Landroid/media/RemoteController;->sendMediaKeyEvent(Landroid/view/KeyEvent;)Z

    goto/16 :goto_0

    .line 1264
    .end local v45    # "keyEvent":Landroid/view/KeyEvent;
    .end local v46    # "keyState":I
    :cond_21
    const/16 v46, 0x1

    .restart local v46    # "keyState":I
    goto :goto_d

    .line 1272
    .end local v46    # "keyState":I
    :cond_22
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    const/16 v5, 0xa

    if-ne v4, v5, :cond_26

    .line 1275
    const/16 v4, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->removeMessages(I)V

    .line 1276
    const/16 v59, 0x7d0

    .line 1284
    .local v59, "skipAmount":I
    :goto_e
    const/16 v4, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 1285
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp;->-get10(Lcom/android/bluetooth/avrcp/Avrcp;)I

    move-result v4

    move/from16 v0, v59

    if-eq v0, v4, :cond_23

    .line 1286
    const-string/jumbo v4, "Avrcp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "missing release button event:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v6}, Lcom/android/bluetooth/avrcp/Avrcp;->-get10(Lcom/android/bluetooth/avrcp/Avrcp;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    :cond_23
    const/16 v4, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 1290
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp;->-get10(Lcom/android/bluetooth/avrcp/Avrcp;)I

    move-result v4

    move/from16 v0, v59

    if-eq v0, v4, :cond_25

    .line 1291
    :cond_24
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {v4, v6, v7}, Lcom/android/bluetooth/avrcp/Avrcp;->-set2(Lcom/android/bluetooth/avrcp/Avrcp;J)J

    .line 1294
    :cond_25
    const/16 v4, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->removeMessages(I)V

    .line 1295
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 1296
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move/from16 v0, v59

    invoke-static {v4, v0}, Lcom/android/bluetooth/avrcp/Avrcp;->-set1(Lcom/android/bluetooth/avrcp/Avrcp;I)I

    .line 1297
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp;->-get10(Lcom/android/bluetooth/avrcp/Avrcp;)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v6}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap15(Lcom/android/bluetooth/avrcp/Avrcp;)I

    move-result v6

    mul-int/2addr v4, v6

    int-to-long v6, v4

    .line 1298
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 1297
    invoke-static {v5, v6, v7, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap18(Lcom/android/bluetooth/avrcp/Avrcp;JLjava/lang/String;)V

    .line 1300
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1299
    const/16 v5, 0xc

    .line 1300
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1299
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v4}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v55

    .line 1301
    .local v55, "posMsg":Landroid/os/Message;
    const/4 v4, 0x1

    move-object/from16 v0, v55

    iput v4, v0, Landroid/os/Message;->arg1:I

    .line 1302
    const-wide/16 v4, 0x190

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1280
    .end local v55    # "posMsg":Landroid/os/Message;
    .end local v59    # "skipAmount":I
    :cond_26
    const/16 v4, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->removeMessages(I)V

    .line 1281
    const/16 v59, -0x7d0

    .restart local v59    # "skipAmount":I
    goto/16 :goto_e

    .line 1310
    .end local v59    # "skipAmount":I
    :sswitch_16
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp;->-get10(Lcom/android/bluetooth/avrcp/Avrcp;)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v6}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap15(Lcom/android/bluetooth/avrcp/Avrcp;)I

    move-result v6

    mul-int/2addr v4, v6

    int-to-long v6, v4

    .line 1311
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 1310
    invoke-static {v5, v6, v7, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap18(Lcom/android/bluetooth/avrcp/Avrcp;JLjava/lang/String;)V

    .line 1312
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    mul-int/lit16 v4, v4, 0x190

    const/16 v5, 0x7d0

    if-ge v4, v5, :cond_0

    .line 1314
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1313
    const/16 v5, 0xc

    .line 1314
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1313
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v4}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v55

    .line 1315
    .restart local v55    # "posMsg":Landroid/os/Message;
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v55

    iput v4, v0, Landroid/os/Message;->arg1:I

    .line 1316
    const-wide/16 v4, 0x190

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1324
    .end local v55    # "posMsg":Landroid/os/Message;
    :sswitch_17
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v53, v0

    check-cast v53, Landroid/bluetooth/BluetoothDevice;

    .line 1325
    .local v53, "playStateChangeDevice":Landroid/bluetooth/BluetoothDevice;
    const-string/jumbo v4, "Avrcp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "event for device address "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1326
    invoke-virtual/range {v53 .. v53}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    .line 1325
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1327
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, v53

    invoke-static {v4, v0}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap14(Lcom/android/bluetooth/avrcp/Avrcp;Landroid/bluetooth/BluetoothDevice;)I

    move-result v36

    .line 1328
    const/16 v4, 0xff

    move/from16 v0, v36

    if-ne v0, v4, :cond_27

    .line 1329
    const-string/jumbo v4, "Avrcp"

    const-string/jumbo v5, "in valid index for device"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1332
    :cond_27
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    invoke-static {v5, v6, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap31(Lcom/android/bluetooth/avrcp/Avrcp;ILandroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 1336
    .end local v53    # "playStateChangeDevice":Landroid/bluetooth/BluetoothDevice;
    :sswitch_18
    const-string/jumbo v4, "Avrcp"

    const-string/jumbo v5, "MSG_UPDATE_RCC_CHANGE"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Ljava/lang/String;

    .line 1338
    .local v34, "callingPackageName":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v40, v0

    .line 1339
    .local v40, "isFocussed":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v39, v0

    .line 1340
    .local v39, "isAvailable":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, v34

    move/from16 v1, v40

    move/from16 v2, v39

    invoke-static {v4, v0, v1, v2}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap24(Lcom/android/bluetooth/avrcp/Avrcp;Ljava/lang/String;II)V

    goto/16 :goto_0

    .line 1344
    .end local v34    # "callingPackageName":Ljava/lang/String;
    .end local v39    # "isAvailable":I
    .end local v40    # "isFocussed":I
    :sswitch_19
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {v5, v6, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap26(Lcom/android/bluetooth/avrcp/Avrcp;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1347
    :sswitch_1a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {v5, v6, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap27(Lcom/android/bluetooth/avrcp/Avrcp;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1350
    :sswitch_1b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v42, v0

    check-cast v42, Lcom/android/bluetooth/avrcp/Avrcp$ItemAttr;

    .line 1351
    .restart local v42    # "itemAttr":Lcom/android/bluetooth/avrcp/Avrcp$ItemAttr;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, v42

    iget-wide v6, v0, Lcom/android/bluetooth/avrcp/Avrcp$ItemAttr;->mUid:J

    move-object/from16 v0, v42

    iget-object v9, v0, Lcom/android/bluetooth/avrcp/Avrcp$ItemAttr;->mAddress:Ljava/lang/String;

    invoke-static {v4, v5, v6, v7, v9}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap20(Lcom/android/bluetooth/avrcp/Avrcp;IJLjava/lang/String;)V

    goto/16 :goto_0

    .line 1354
    .end local v42    # "itemAttr":Lcom/android/bluetooth/avrcp/Avrcp$ItemAttr;
    :sswitch_1c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v42, v0

    check-cast v42, Lcom/android/bluetooth/avrcp/Avrcp$ItemAttr;

    .line 1355
    .restart local v42    # "itemAttr":Lcom/android/bluetooth/avrcp/Avrcp$ItemAttr;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, v42

    iget-wide v6, v0, Lcom/android/bluetooth/avrcp/Avrcp$ItemAttr;->mUid:J

    move-object/from16 v0, v42

    iget-object v9, v0, Lcom/android/bluetooth/avrcp/Avrcp$ItemAttr;->mAddress:Ljava/lang/String;

    invoke-static {v4, v5, v6, v7, v9}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap23(Lcom/android/bluetooth/avrcp/Avrcp;IJLjava/lang/String;)V

    goto/16 :goto_0

    .line 1359
    .end local v42    # "itemAttr":Lcom/android/bluetooth/avrcp/Avrcp$ItemAttr;
    :sswitch_1d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v42, v0

    check-cast v42, Lcom/android/bluetooth/avrcp/Avrcp$ItemAttr;

    .line 1360
    .restart local v42    # "itemAttr":Lcom/android/bluetooth/avrcp/Avrcp$ItemAttr;
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    new-array v0, v4, [I

    move-object/from16 v19, v0

    .line 1361
    .restart local v19    # "attrIds":[I
    const/16 v38, 0x0

    .restart local v38    # "i":I
    :goto_f
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move/from16 v0, v38

    if-ge v0, v4, :cond_28

    .line 1362
    move-object/from16 v0, v42

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp$ItemAttr;->mAttrList:Ljava/util/ArrayList;

    move/from16 v0, v38

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v19, v38

    .line 1361
    add-int/lit8 v38, v38, 0x1

    goto :goto_f

    .line 1364
    :cond_28
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    int-to-byte v15, v4

    move-object/from16 v0, v42

    iget-wide v0, v0, Lcom/android/bluetooth/avrcp/Avrcp$ItemAttr;->mUid:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    int-to-byte v0, v4

    move/from16 v18, v0

    .line 1365
    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/Avrcp$ItemAttr;->mAddress:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 1364
    invoke-static/range {v14 .. v20}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap22(Lcom/android/bluetooth/avrcp/Avrcp;BJB[ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1368
    .end local v19    # "attrIds":[I
    .end local v38    # "i":I
    .end local v42    # "itemAttr":Lcom/android/bluetooth/avrcp/Avrcp$ItemAttr;
    :sswitch_1e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Lcom/android/bluetooth/avrcp/Avrcp$FolderListEntries;

    .line 1369
    .local v37, "folderListEntries":Lcom/android/bluetooth/avrcp/Avrcp$FolderListEntries;
    move-object/from16 v0, v37

    iget v4, v0, Lcom/android/bluetooth/avrcp/Avrcp$FolderListEntries;->mNumAttr:I

    new-array v0, v4, [I

    move-object/from16 v19, v0

    .line 1370
    .restart local v19    # "attrIds":[I
    const/16 v38, 0x0

    .restart local v38    # "i":I
    :goto_10
    move-object/from16 v0, v37

    iget v4, v0, Lcom/android/bluetooth/avrcp/Avrcp$FolderListEntries;->mNumAttr:I

    move/from16 v0, v38

    if-ge v0, v4, :cond_29

    .line 1371
    move-object/from16 v0, v37

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp$FolderListEntries;->mAttrList:Ljava/util/ArrayList;

    move/from16 v0, v38

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v19, v38

    .line 1370
    add-int/lit8 v38, v38, 0x1

    goto :goto_10

    .line 1373
    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v20, v0

    move-object/from16 v0, v37

    iget-byte v0, v0, Lcom/android/bluetooth/avrcp/Avrcp$FolderListEntries;->mScope:B

    move/from16 v21, v0

    move-object/from16 v0, v37

    iget-wide v0, v0, Lcom/android/bluetooth/avrcp/Avrcp$FolderListEntries;->mStart:J

    move-wide/from16 v22, v0

    .line 1374
    move-object/from16 v0, v37

    iget-wide v0, v0, Lcom/android/bluetooth/avrcp/Avrcp$FolderListEntries;->mEnd:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v37

    iget v0, v0, Lcom/android/bluetooth/avrcp/Avrcp$FolderListEntries;->mAttrCnt:I

    move/from16 v26, v0

    .line 1375
    move-object/from16 v0, v37

    iget v0, v0, Lcom/android/bluetooth/avrcp/Avrcp$FolderListEntries;->mNumAttr:I

    move/from16 v27, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/Avrcp$FolderListEntries;->mAddress:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v28, v19

    .line 1373
    invoke-static/range {v20 .. v29}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap21(Lcom/android/bluetooth/avrcp/Avrcp;BJJII[ILjava/lang/String;)V

    goto/16 :goto_0

    .line 843
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_b
        0x2 -> :sswitch_c
        0x3 -> :sswitch_d
        0x4 -> :sswitch_e
        0x5 -> :sswitch_f
        0x6 -> :sswitch_11
        0x7 -> :sswitch_12
        0x8 -> :sswitch_13
        0x9 -> :sswitch_14
        0xa -> :sswitch_15
        0xb -> :sswitch_15
        0xc -> :sswitch_16
        0xd -> :sswitch_17
        0xe -> :sswitch_10
        0x64 -> :sswitch_2
        0x65 -> :sswitch_3
        0x66 -> :sswitch_a
        0x68 -> :sswitch_0
        0xc9 -> :sswitch_4
        0xca -> :sswitch_5
        0xcb -> :sswitch_18
        0xcc -> :sswitch_6
        0xcd -> :sswitch_7
        0xce -> :sswitch_8
        0xcf -> :sswitch_9
        0x25a -> :sswitch_1
        0x7d2 -> :sswitch_19
        0x7d3 -> :sswitch_1e
        0x7d4 -> :sswitch_1a
        0x7d5 -> :sswitch_1b
        0x7d6 -> :sswitch_1c
        0x7d7 -> :sswitch_1d
    .end sparse-switch

    .line 854
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch

    .line 861
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
