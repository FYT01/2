.class Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothMapService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMapService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MapBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/map/BluetoothMapService;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/map/BluetoothMapService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/bluetooth/map/BluetoothMapService;

    .prologue
    .line 997
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/map/BluetoothMapService;Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/bluetooth/map/BluetoothMapService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;-><init>(Lcom/android/bluetooth/map/BluetoothMapService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1000
    const-string/jumbo v18, "BluetoothMapService"

    const-string/jumbo v19, "onReceive"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 1002
    .local v3, "action":Ljava/lang/String;
    const-string/jumbo v18, "BluetoothMapService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "onReceive: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    const-string/jumbo v18, "android.bluetooth.adapter.action.STATE_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 1004
    const-string/jumbo v18, "android.bluetooth.adapter.extra.STATE"

    .line 1005
    const/high16 v19, -0x80000000

    .line 1004
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 1006
    .local v14, "state":I
    const/16 v18, 0xd

    move/from16 v0, v18

    if-ne v14, v0, :cond_1

    .line 1007
    const-string/jumbo v18, "BluetoothMapService"

    const-string/jumbo v19, "STATE_TURNING_OFF"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/bluetooth/map/BluetoothMapService;->-wrap8(Lcom/android/bluetooth/map/BluetoothMapService;)V

    .line 999
    .end local v14    # "state":I
    :cond_0
    :goto_0
    return-void

    .line 1009
    .restart local v14    # "state":I
    :cond_1
    const/16 v18, 0xc

    move/from16 v0, v18

    if-ne v14, v0, :cond_0

    .line 1010
    const-string/jumbo v18, "BluetoothMapService"

    const-string/jumbo v19, "STATE_ON"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    move-object/from16 v18, v0

    const/16 v19, -0x1

    invoke-virtual/range {v18 .. v19}, Lcom/android/bluetooth/map/BluetoothMapService;->sendStartListenerMessage(I)V

    goto :goto_0

    .line 1015
    .end local v14    # "state":I
    :cond_2
    const-string/jumbo v18, "com.android.bluetooth.map.USER_CONFIRM_TIMEOUT"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 1016
    const-string/jumbo v18, "BluetoothMapService"

    const-string/jumbo v19, "USER_CONFIRM_TIMEOUT ACTION Received."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/bluetooth/map/BluetoothMapService;->-wrap7(Lcom/android/bluetooth/map/BluetoothMapService;)V

    goto :goto_0

    .line 1020
    :cond_3
    const-string/jumbo v18, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 1022
    const-string/jumbo v18, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    .line 1023
    const/16 v19, 0x2

    .line 1022
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 1025
    .local v11, "requestType":I
    const-string/jumbo v18, "BluetoothMapService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Received ACTION_CONNECTION_ACCESS_REPLY:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 1026
    const-string/jumbo v20, "isWaitingAuthorization:"

    .line 1025
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 1026
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/bluetooth/map/BluetoothMapService;->-get2(Lcom/android/bluetooth/map/BluetoothMapService;)Z

    move-result v20

    .line 1025
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/bluetooth/map/BluetoothMapService;->-get2(Lcom/android/bluetooth/map/BluetoothMapService;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 1028
    const/16 v18, 0x3

    move/from16 v0, v18

    if-eq v11, v0, :cond_5

    .line 1030
    :cond_4
    return-void

    .line 1033
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lcom/android/bluetooth/map/BluetoothMapService;->-set0(Lcom/android/bluetooth/map/BluetoothMapService;Z)Z

    .line 1034
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/bluetooth/map/BluetoothMapService;->-get5(Lcom/android/bluetooth/map/BluetoothMapService;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 1035
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/bluetooth/map/BluetoothMapService;->-get7(Lcom/android/bluetooth/map/BluetoothMapService;)Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    move-result-object v18

    const/16 v19, 0x2

    invoke-virtual/range {v18 .. v19}, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->removeMessages(I)V

    .line 1036
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/bluetooth/map/BluetoothMapService;->-wrap2(Lcom/android/bluetooth/map/BluetoothMapService;)V

    .line 1037
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lcom/android/bluetooth/map/BluetoothMapService;->-wrap9(Lcom/android/bluetooth/map/BluetoothMapService;I)V

    .line 1040
    :cond_6
    const-string/jumbo v18, "android.bluetooth.device.extra.CONNECTION_ACCESS_RESULT"

    .line 1041
    const/16 v19, 0x2

    .line 1040
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    .line 1042
    const/16 v19, 0x1

    .line 1040
    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    .line 1044
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-static/range {v18 .. v19}, Lcom/android/bluetooth/map/BluetoothMapService;->-set1(Lcom/android/bluetooth/map/BluetoothMapService;I)I

    .line 1045
    const-string/jumbo v18, "android.bluetooth.device.extra.ALWAYS_ALLOWED"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 1046
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapService;->-get4()Landroid/bluetooth/BluetoothDevice;

    move-result-object v18

    .line 1047
    const/16 v19, 0x1

    .line 1046
    invoke-virtual/range {v18 .. v19}, Landroid/bluetooth/BluetoothDevice;->setMessageAccessPermission(I)Z

    move-result v13

    .line 1049
    .local v13, "result":Z
    const-string/jumbo v18, "BluetoothMapService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "setMessageAccessPermission(ACCESS_ALLOWED) result="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    .end local v13    # "result":Z
    :cond_7
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapService;->-get4()Landroid/bluetooth/BluetoothDevice;

    move-result-object v18

    sget-object v19, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->BLUETOOTH_UUID_OBEX_MNS:Landroid/os/ParcelUuid;

    invoke-virtual/range {v18 .. v19}, Landroid/bluetooth/BluetoothDevice;->sdpSearch(Landroid/os/ParcelUuid;)Z

    .line 1055
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-static/range {v18 .. v19}, Lcom/android/bluetooth/map/BluetoothMapService;->-set2(Lcom/android/bluetooth/map/BluetoothMapService;Z)Z

    goto/16 :goto_0

    .line 1059
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    move-object/from16 v18, v0

    const/16 v19, 0x2

    invoke-static/range {v18 .. v19}, Lcom/android/bluetooth/map/BluetoothMapService;->-set1(Lcom/android/bluetooth/map/BluetoothMapService;I)I

    .line 1060
    const-string/jumbo v18, "android.bluetooth.device.extra.ALWAYS_ALLOWED"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 1061
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapService;->-get4()Landroid/bluetooth/BluetoothDevice;

    move-result-object v18

    .line 1062
    const/16 v19, 0x2

    .line 1061
    invoke-virtual/range {v18 .. v19}, Landroid/bluetooth/BluetoothDevice;->setMessageAccessPermission(I)Z

    move-result v13

    .line 1064
    .restart local v13    # "result":Z
    const-string/jumbo v18, "BluetoothMapService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "setMessageAccessPermission(ACCESS_REJECTED) result="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    .end local v13    # "result":Z
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/bluetooth/map/BluetoothMapService;->-wrap5(Lcom/android/bluetooth/map/BluetoothMapService;)V

    goto/16 :goto_0

    .line 1070
    .end local v11    # "requestType":I
    :cond_a
    const-string/jumbo v18, "android.bluetooth.device.action.SDP_RECORD"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_10

    .line 1071
    const-string/jumbo v18, "BluetoothMapService"

    const-string/jumbo v19, "Received ACTION_SDP_RECORD."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    const-string/jumbo v18, "android.bluetooth.device.extra.UUID"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v17

    check-cast v17, Landroid/os/ParcelUuid;

    .line 1073
    .local v17, "uuid":Landroid/os/ParcelUuid;
    sget-boolean v18, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    if-eqz v18, :cond_b

    .line 1074
    const-string/jumbo v18, "BluetoothMapService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Received UUID: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v17 .. v17}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    const-string/jumbo v18, "BluetoothMapService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "expected UUID: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 1076
    sget-object v20, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->BLUETOOTH_UUID_OBEX_MNS:Landroid/os/ParcelUuid;

    invoke-virtual/range {v20 .. v20}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v20

    .line 1075
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    :cond_b
    sget-object v18, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->BLUETOOTH_UUID_OBEX_MNS:Landroid/os/ParcelUuid;

    invoke-virtual/range {v17 .. v18}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 1079
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    move-object/from16 v19, v0

    const-string/jumbo v18, "android.bluetooth.device.extra.SDP_RECORD"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v18

    check-cast v18, Landroid/bluetooth/SdpMnsRecord;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/bluetooth/map/BluetoothMapService;->mMnsRecord:Landroid/bluetooth/SdpMnsRecord;

    .line 1080
    const-string/jumbo v18, "android.bluetooth.device.extra.SDP_SEARCH_STATUS"

    const/16 v19, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 1081
    .local v15, "status":I
    sget-boolean v18, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    if-eqz v18, :cond_c

    .line 1082
    const-string/jumbo v18, "BluetoothMapService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, " -> MNS Record:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapService;->mMnsRecord:Landroid/bluetooth/SdpMnsRecord;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    const-string/jumbo v18, "BluetoothMapService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, " -> status: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/bluetooth/map/BluetoothMapService;->-get1(Lcom/android/bluetooth/map/BluetoothMapService;)Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    move-result-object v18

    if-eqz v18, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/bluetooth/map/BluetoothMapService;->-get6(Lcom/android/bluetooth/map/BluetoothMapService;)Z

    move-result v18

    if-eqz v18, :cond_e

    .line 1088
    :cond_d
    :goto_1
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v15, v0, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapService;->mMnsRecord:Landroid/bluetooth/SdpMnsRecord;

    move-object/from16 v18, v0

    if-eqz v18, :cond_f

    .line 1089
    const/4 v8, 0x0

    .local v8, "i":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/bluetooth/map/BluetoothMapService;->-get3(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/util/SparseArray;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/util/SparseArray;->size()I

    move-result v4

    .local v4, "c":I
    :goto_2
    if-ge v8, v4, :cond_f

    .line 1090
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/bluetooth/map/BluetoothMapService;->-get3(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/util/SparseArray;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    .line 1091
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapService;->mMnsRecord:Landroid/bluetooth/SdpMnsRecord;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/bluetooth/SdpMnsRecord;->getSupportedFeatures()I

    move-result v19

    .line 1090
    invoke-virtual/range {v18 .. v19}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->setRemoteFeatureMask(I)V

    .line 1089
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1086
    .end local v4    # "c":I
    .end local v8    # "i":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/bluetooth/map/BluetoothMapService;->-get1(Lcom/android/bluetooth/map/BluetoothMapService;)Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapService;->mMnsRecord:Landroid/bluetooth/SdpMnsRecord;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->setMnsRecord(Landroid/bluetooth/SdpMnsRecord;)V

    goto :goto_1

    .line 1094
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/bluetooth/map/BluetoothMapService;->-get6(Lcom/android/bluetooth/map/BluetoothMapService;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 1095
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lcom/android/bluetooth/map/BluetoothMapService;->-set2(Lcom/android/bluetooth/map/BluetoothMapService;Z)Z

    .line 1096
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    move-object/from16 v18, v0

    const/16 v19, -0x1

    invoke-static/range {v18 .. v19}, Lcom/android/bluetooth/map/BluetoothMapService;->-wrap6(Lcom/android/bluetooth/map/BluetoothMapService;I)V

    goto/16 :goto_0

    .line 1099
    .end local v15    # "status":I
    .end local v17    # "uuid":Landroid/os/ParcelUuid;
    :cond_10
    const-string/jumbo v18, "android.btmap.intent.action.SHOW_MAPS_SETTINGS"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_12

    .line 1100
    sget-boolean v18, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    if-eqz v18, :cond_11

    const-string/jumbo v18, "BluetoothMapService"

    const-string/jumbo v19, "Received ACTION_SHOW_MAPS_SETTINGS."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    :cond_11
    new-instance v9, Landroid/content/Intent;

    const-class v18, Lcom/android/bluetooth/map/BluetoothMapSettings;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-direct {v9, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1103
    .local v9, "in":Landroid/content/Intent;
    const/high16 v18, 0x14000000

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1104
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1105
    .end local v9    # "in":Landroid/content/Intent;
    :cond_12
    const-string/jumbo v18, "com.android.bluetooth.BluetoothMapContentObserver.action.MESSAGE_SENT"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_14

    .line 1106
    const/4 v10, 0x0

    .line 1107
    .local v10, "masInst":Lcom/android/bluetooth/map/BluetoothMapMasInstance;
    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->getResultCode()I

    move-result v12

    .line 1108
    .local v12, "result":I
    const/4 v7, 0x0

    .line 1109
    .local v7, "handled":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/bluetooth/map/BluetoothMapService;->-get3(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/util/SparseArray;

    move-result-object v18

    if-eqz v18, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/bluetooth/map/BluetoothMapService;->-get3(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/util/SparseArray;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "masInst":Lcom/android/bluetooth/map/BluetoothMapMasInstance;
    check-cast v10, Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    .local v10, "masInst":Lcom/android/bluetooth/map/BluetoothMapMasInstance;
    if-eqz v10, :cond_13

    .line 1110
    const-string/jumbo v18, "result"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1111
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v10, v0, v1}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->handleSmsSendIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v18

    if-eqz v18, :cond_13

    .line 1113
    const/4 v7, 0x1

    .line 1116
    .end local v10    # "masInst":Lcom/android/bluetooth/map/BluetoothMapMasInstance;
    :cond_13
    if-nez v7, :cond_0

    .line 1121
    :try_start_0
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v12}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->actionMessageSentDisconnected(Landroid/content/Context;Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1123
    :catch_0
    move-exception v6

    .line 1124
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    return-void

    .line 1127
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    .end local v7    # "handled":Z
    .end local v12    # "result":I
    :cond_14
    const-string/jumbo v18, "android.bluetooth.device.action.ACL_DISCONNECTED"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 1128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/bluetooth/map/BluetoothMapService;->-get2(Lcom/android/bluetooth/map/BluetoothMapService;)Z

    move-result v18

    .line 1127
    if-eqz v18, :cond_0

    .line 1129
    const-string/jumbo v18, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    .line 1131
    .local v5, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapService;->-get4()Landroid/bluetooth/BluetoothDevice;

    move-result-object v18

    if-eqz v18, :cond_15

    if-nez v5, :cond_16

    .line 1132
    :cond_15
    const-string/jumbo v18, "BluetoothMapService"

    const-string/jumbo v19, "Unexpected error!"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    return-void

    .line 1136
    :cond_16
    sget-boolean v18, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    if-eqz v18, :cond_17

    const-string/jumbo v18, "BluetoothMapService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "ACL disconnected for "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    :cond_17
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapService;->-get4()Landroid/bluetooth/BluetoothDevice;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 1140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/bluetooth/map/BluetoothMapService;->-get7(Lcom/android/bluetooth/map/BluetoothMapService;)Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    move-result-object v18

    const/16 v19, 0x2

    invoke-virtual/range {v18 .. v19}, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->removeMessages(I)V

    .line 1143
    new-instance v16, Landroid/content/Intent;

    const-string/jumbo v18, "android.bluetooth.device.action.CONNECTION_ACCESS_CANCEL"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1144
    .local v16, "timeoutIntent":Landroid/content/Intent;
    const-string/jumbo v18, "com.android.settings"

    const-string/jumbo v19, "com.android.settings.bluetooth.BluetoothPermissionRequest"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1145
    const-string/jumbo v18, "android.bluetooth.device.extra.DEVICE"

    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapService;->-get4()Landroid/bluetooth/BluetoothDevice;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1146
    const-string/jumbo v18, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    .line 1147
    const/16 v19, 0x3

    .line 1146
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1148
    const/high16 v18, 0x10000000

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    move-object/from16 v18, v0

    const-string/jumbo v19, "android.permission.BLUETOOTH"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMapService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lcom/android/bluetooth/map/BluetoothMapService;->-set0(Lcom/android/bluetooth/map/BluetoothMapService;Z)Z

    .line 1151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/bluetooth/map/BluetoothMapService;->-wrap2(Lcom/android/bluetooth/map/BluetoothMapService;)V

    .line 1152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/bluetooth/map/BluetoothMapService;->-get7(Lcom/android/bluetooth/map/BluetoothMapService;)Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    move-result-object v18

    const/16 v19, 0x1388

    const/16 v20, -0x1

    const/16 v21, 0x0

    invoke-virtual/range {v18 .. v21}, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0
.end method
