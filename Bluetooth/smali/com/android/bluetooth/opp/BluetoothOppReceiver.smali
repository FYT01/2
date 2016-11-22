.class public Lcom/android/bluetooth/opp/BluetoothOppReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothOppReceiver.java"


# static fields
.field private static final D:Z = true

.field private static final TAG:Ljava/lang/String; = "BluetoothOppReceiver"

.field private static final V:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 59
    const-string/jumbo v0, "BluetoothOpp"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppReceiver;->V:Z

    .line 56
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 30
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 63
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    .line 64
    .local v8, "action":Ljava/lang/String;
    const-string/jumbo v2, "BluetoothOppReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Action :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const-string/jumbo v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 69
    const-string/jumbo v2, "android.bluetooth.adapter.extra.STATE"

    const/high16 v3, -0x80000000

    .line 68
    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/16 v3, 0xc

    if-ne v3, v2, :cond_2

    .line 70
    sget-boolean v2, Lcom/android/bluetooth/opp/BluetoothOppReceiver;->V:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "BluetoothOppReceiver"

    const-string/jumbo v3, "Received BLUETOOTH_STATE_CHANGED_ACTION, BLUETOOTH_STATE_ON"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/bluetooth/opp/BluetoothOppService;

    move-object/from16 v0, p1

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 75
    monitor-enter p0

    .line 76
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppManager;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/bluetooth/opp/BluetoothOppManager;->mSendingFlag:Z

    if-eqz v2, :cond_1

    .line 78
    invoke-static/range {p1 .. p1}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppManager;

    move-result-object v2

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/bluetooth/opp/BluetoothOppManager;->mSendingFlag:Z

    .line 80
    new-instance v15, Landroid/content/Intent;

    const-string/jumbo v2, "android.bluetooth.devicepicker.action.LAUNCH"

    invoke-direct {v15, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 81
    .local v15, "in1":Landroid/content/Intent;
    const-string/jumbo v2, "android.bluetooth.devicepicker.extra.NEED_AUTH"

    const/4 v3, 0x0

    invoke-virtual {v15, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 82
    const-string/jumbo v2, "android.bluetooth.devicepicker.extra.FILTER_TYPE"

    .line 83
    const/4 v3, 0x2

    .line 82
    invoke-virtual {v15, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 84
    const-string/jumbo v2, "android.bluetooth.devicepicker.extra.LAUNCH_PACKAGE"

    .line 85
    const-string/jumbo v3, "com.android.bluetooth"

    .line 84
    invoke-virtual {v15, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    const-string/jumbo v2, "android.bluetooth.devicepicker.extra.DEVICE_PICKER_LAUNCH_CLASS"

    .line 87
    const-class v3, Lcom/android/bluetooth/opp/BluetoothOppReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 86
    invoke-virtual {v15, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    const/high16 v2, 0x10000000

    invoke-virtual {v15, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 90
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v15    # "in1":Landroid/content/Intent;
    :cond_1
    monitor-exit p0

    .line 62
    :cond_2
    :goto_0
    return-void

    .line 75
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 94
    :cond_3
    const-string/jumbo v2, "org.codeaurora.bluetooth.devicepicker.action.DEVICE_NOT_SELECTED"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 95
    sget-boolean v2, Lcom/android/bluetooth/opp/BluetoothOppReceiver;->V:Z

    if-eqz v2, :cond_4

    const-string/jumbo v2, "BluetoothOppReceiver"

    const-string/jumbo v3, "ACTION_DEVICE_NOT_SELECTED"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_4
    invoke-static/range {p1 .. p1}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppManager;

    move-result-object v16

    .line 97
    .local v16, "mOppManager":Lcom/android/bluetooth/opp/BluetoothOppManager;
    invoke-virtual/range {v16 .. v16}, Lcom/android/bluetooth/opp/BluetoothOppManager;->cleanUpSendingFileInfo()V

    goto :goto_0

    .line 98
    .end local v16    # "mOppManager":Lcom/android/bluetooth/opp/BluetoothOppManager;
    :cond_5
    const-string/jumbo v2, "android.bluetooth.devicepicker.action.DEVICE_SELECTED"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 99
    invoke-static/range {p1 .. p1}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppManager;

    move-result-object v16

    .line 101
    .restart local v16    # "mOppManager":Lcom/android/bluetooth/opp/BluetoothOppManager;
    const-string/jumbo v2, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v18

    check-cast v18, Landroid/bluetooth/BluetoothDevice;

    .line 103
    .local v18, "remoteDevice":Landroid/bluetooth/BluetoothDevice;
    sget-boolean v2, Lcom/android/bluetooth/opp/BluetoothOppReceiver;->V:Z

    if-eqz v2, :cond_6

    const-string/jumbo v2, "BluetoothOppReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Received BT device selected intent, bt device: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_6
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/opp/BluetoothOppManager;->startTransfer(Landroid/bluetooth/BluetoothDevice;)V

    .line 109
    invoke-virtual/range {v18 .. v18}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v11

    .line 111
    .local v11, "deviceName":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getBatchSize()I

    move-result v9

    .line 112
    .local v9, "batchSize":I
    move-object/from16 v0, v16

    iget-boolean v2, v0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mMultipleFlag:Z

    if-eqz v2, :cond_7

    .line 113
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 114
    const/4 v3, 0x1

    aput-object v11, v2, v3

    .line 113
    const v3, 0x7f060046

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    .line 118
    .local v21, "toastMsg":Ljava/lang/String;
    :goto_1
    const/4 v2, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 116
    .end local v21    # "toastMsg":Ljava/lang/String;
    :cond_7
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v11, v2, v3

    const v3, 0x7f060045

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    .restart local v21    # "toastMsg":Ljava/lang/String;
    goto :goto_1

    .line 119
    .end local v9    # "batchSize":I
    .end local v11    # "deviceName":Ljava/lang/String;
    .end local v16    # "mOppManager":Lcom/android/bluetooth/opp/BluetoothOppManager;
    .end local v18    # "remoteDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v21    # "toastMsg":Ljava/lang/String;
    :cond_8
    const-string/jumbo v2, "android.btopp.intent.action.CONFIRM"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 120
    sget-boolean v2, Lcom/android/bluetooth/opp/BluetoothOppReceiver;->V:Z

    if-eqz v2, :cond_9

    const-string/jumbo v2, "BluetoothOppReceiver"

    const-string/jumbo v3, "Receiver ACTION_INCOMING_FILE_CONFIRM"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_9
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v24

    .line 123
    .local v24, "uri":Landroid/net/Uri;
    new-instance v14, Landroid/content/Intent;

    const-class v2, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;

    move-object/from16 v0, p1

    invoke-direct {v14, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 124
    .local v14, "in":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v14, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 125
    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setDataAndNormalize(Landroid/net/Uri;)Landroid/content/Intent;

    .line 126
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 129
    const-string/jumbo v2, "notification"

    .line 128
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/app/NotificationManager;

    .line 130
    .local v17, "notMgr":Landroid/app/NotificationManager;
    if-eqz v17, :cond_2

    .line 131
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    long-to-int v2, v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 132
    sget-boolean v2, Lcom/android/bluetooth/opp/BluetoothOppReceiver;->V:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "BluetoothOppReceiver"

    const-string/jumbo v3, "notMgr.cancel called"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 134
    .end local v14    # "in":Landroid/content/Intent;
    .end local v17    # "notMgr":Landroid/app/NotificationManager;
    .end local v24    # "uri":Landroid/net/Uri;
    :cond_a
    const-string/jumbo v2, "android.btopp.intent.action.INCOMING_FILE_NOTIFICATION"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 135
    sget-boolean v2, Lcom/android/bluetooth/opp/BluetoothOppReceiver;->V:Z

    if-eqz v2, :cond_b

    const-string/jumbo v2, "BluetoothOppReceiver"

    const-string/jumbo v3, "Receiver INCOMING_FILE_NOTIFICATION"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_b
    const v2, 0x7f060019

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 138
    const/4 v3, 0x0

    .line 137
    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 140
    :cond_c
    const-string/jumbo v2, "android.btopp.intent.action.OPEN"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string/jumbo v2, "android.btopp.intent.action.LIST"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 141
    :cond_d
    sget-boolean v2, Lcom/android/bluetooth/opp/BluetoothOppReceiver;->V:Z

    if-eqz v2, :cond_e

    .line 142
    const-string/jumbo v2, "android.btopp.intent.action.OPEN"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 143
    const-string/jumbo v2, "BluetoothOppReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Receiver open for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_e
    :goto_2
    new-instance v22, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    invoke-direct/range {v22 .. v22}, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;-><init>()V

    .line 150
    .local v22, "transInfo":Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v24

    .line 151
    .restart local v24    # "uri":Landroid/net/Uri;
    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->queryRecord(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    move-result-object v22

    .line 152
    if-nez v22, :cond_10

    .line 153
    const-string/jumbo v2, "BluetoothOppReceiver"

    const-string/jumbo v3, "Error: Can not get data from db"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    return-void

    .line 145
    .end local v22    # "transInfo":Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;
    .end local v24    # "uri":Landroid/net/Uri;
    :cond_f
    const-string/jumbo v2, "BluetoothOppReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Receiver list for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 157
    .restart local v22    # "transInfo":Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;
    .restart local v24    # "uri":Landroid/net/Uri;
    :cond_10
    move-object/from16 v0, v22

    iget v2, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDirection:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_11

    .line 158
    move-object/from16 v0, v22

    iget v2, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mStatus:I

    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusSuccess(I)Z

    move-result v2

    .line 157
    if-eqz v2, :cond_11

    .line 160
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileName:Ljava/lang/String;

    .line 161
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileType:Ljava/lang/String;

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mTimeStamp:Ljava/lang/Long;

    .line 160
    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-static {v0, v2, v3, v4, v1}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->openReceivedFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Landroid/net/Uri;)V

    .line 162
    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->updateVisibilityToHidden(Landroid/content/Context;Landroid/net/Uri;)V

    .line 171
    :goto_3
    const-string/jumbo v2, "notification"

    .line 170
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/app/NotificationManager;

    .line 172
    .restart local v17    # "notMgr":Landroid/app/NotificationManager;
    if-eqz v17, :cond_2

    .line 173
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    long-to-int v2, v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 174
    sget-boolean v2, Lcom/android/bluetooth/opp/BluetoothOppReceiver;->V:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "BluetoothOppReceiver"

    const-string/jumbo v3, "notMgr.cancel called"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 164
    .end local v17    # "notMgr":Landroid/app/NotificationManager;
    :cond_11
    new-instance v14, Landroid/content/Intent;

    const-class v2, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;

    move-object/from16 v0, p1

    invoke-direct {v14, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 165
    .restart local v14    # "in":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v14, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 166
    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setDataAndNormalize(Landroid/net/Uri;)Landroid/content/Intent;

    .line 167
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    .line 176
    .end local v14    # "in":Landroid/content/Intent;
    .end local v22    # "transInfo":Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;
    .end local v24    # "uri":Landroid/net/Uri;
    :cond_12
    const-string/jumbo v2, "android.btopp.intent.action.OPEN_OUTBOUND"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 177
    sget-boolean v2, Lcom/android/bluetooth/opp/BluetoothOppReceiver;->V:Z

    if-eqz v2, :cond_13

    const-string/jumbo v2, "BluetoothOppReceiver"

    const-string/jumbo v3, "Received ACTION_OPEN_OUTBOUND_TRANSFER."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_13
    new-instance v14, Landroid/content/Intent;

    const-class v2, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;

    move-object/from16 v0, p1

    invoke-direct {v14, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 180
    .restart local v14    # "in":Landroid/content/Intent;
    const/high16 v2, 0x14000000

    invoke-virtual {v14, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 181
    const-string/jumbo v2, "direction"

    const/4 v3, 0x0

    invoke-virtual {v14, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 182
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 183
    .end local v14    # "in":Landroid/content/Intent;
    :cond_14
    const-string/jumbo v2, "android.btopp.intent.action.OPEN_INBOUND"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 184
    sget-boolean v2, Lcom/android/bluetooth/opp/BluetoothOppReceiver;->V:Z

    if-eqz v2, :cond_15

    const-string/jumbo v2, "BluetoothOppReceiver"

    const-string/jumbo v3, "Received ACTION_OPEN_INBOUND_TRANSFER."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_15
    new-instance v14, Landroid/content/Intent;

    const-class v2, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;

    move-object/from16 v0, p1

    invoke-direct {v14, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 187
    .restart local v14    # "in":Landroid/content/Intent;
    const/high16 v2, 0x14000000

    invoke-virtual {v14, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 188
    const-string/jumbo v2, "direction"

    const/4 v3, 0x1

    invoke-virtual {v14, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 189
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 190
    .end local v14    # "in":Landroid/content/Intent;
    :cond_16
    const-string/jumbo v2, "android.btopp.intent.action.OPEN_RECEIVED_FILES"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 191
    sget-boolean v2, Lcom/android/bluetooth/opp/BluetoothOppReceiver;->V:Z

    if-eqz v2, :cond_17

    const-string/jumbo v2, "BluetoothOppReceiver"

    const-string/jumbo v3, "Received ACTION_OPEN_RECEIVED_FILES."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_17
    new-instance v14, Landroid/content/Intent;

    const-class v2, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;

    move-object/from16 v0, p1

    invoke-direct {v14, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 194
    .restart local v14    # "in":Landroid/content/Intent;
    const/high16 v2, 0x14000000

    invoke-virtual {v14, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 195
    const-string/jumbo v2, "direction"

    const/4 v3, 0x1

    invoke-virtual {v14, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 196
    const-string/jumbo v2, "android.btopp.intent.extra.SHOW_ALL"

    const/4 v3, 0x1

    invoke-virtual {v14, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 197
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 198
    .end local v14    # "in":Landroid/content/Intent;
    :cond_18
    const-string/jumbo v2, "android.btopp.intent.action.HIDE"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 199
    sget-boolean v2, Lcom/android/bluetooth/opp/BluetoothOppReceiver;->V:Z

    if-eqz v2, :cond_19

    const-string/jumbo v2, "BluetoothOppReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Receiver hide for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_19
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 203
    const/4 v7, 0x0

    .line 202
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v10

    .line 208
    :goto_4
    if-eqz v10, :cond_2

    .line 209
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 210
    const-string/jumbo v2, "status"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 211
    .local v20, "statusColumn":I
    move/from16 v0, v20

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 212
    .local v19, "status":I
    const-string/jumbo v2, "visibility"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v29

    .line 213
    .local v29, "visibilityColumn":I
    move/from16 v0, v29

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    .line 215
    .local v28, "visibility":I
    const-string/jumbo v2, "confirm"

    .line 214
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    .line 216
    .local v26, "userConfirmationColumn":I
    move/from16 v0, v26

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 217
    .local v25, "userConfirmation":I
    if-nez v25, :cond_1a

    .line 218
    if-nez v28, :cond_1a

    .line 219
    new-instance v27, Landroid/content/ContentValues;

    invoke-direct/range {v27 .. v27}, Landroid/content/ContentValues;-><init>()V

    .line 220
    .local v27, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "visibility"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 221
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 222
    sget-boolean v2, Lcom/android/bluetooth/opp/BluetoothOppReceiver;->V:Z

    if-eqz v2, :cond_1a

    const-string/jumbo v2, "BluetoothOppReceiver"

    const-string/jumbo v3, "Action_hide received and db updated"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    .end local v19    # "status":I
    .end local v20    # "statusColumn":I
    .end local v25    # "userConfirmation":I
    .end local v26    # "userConfirmationColumn":I
    .end local v27    # "values":Landroid/content/ContentValues;
    .end local v28    # "visibility":I
    .end local v29    # "visibilityColumn":I
    :cond_1a
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 226
    const/4 v10, 0x0

    .local v10, "cursor":Landroid/database/Cursor;
    goto/16 :goto_0

    .line 204
    .end local v10    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v12

    .line 205
    .local v12, "e":Landroid/database/sqlite/SQLiteException;
    const/4 v10, 0x0

    .line 206
    .restart local v10    # "cursor":Landroid/database/Cursor;
    const-string/jumbo v2, "BluetoothOppReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SQLite exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 228
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v12    # "e":Landroid/database/sqlite/SQLiteException;
    :cond_1b
    const-string/jumbo v2, "android.btopp.intent.action.HIDE_COMPLETE"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 229
    sget-boolean v2, Lcom/android/bluetooth/opp/BluetoothOppReceiver;->V:Z

    if-eqz v2, :cond_1c

    const-string/jumbo v2, "BluetoothOppReceiver"

    const-string/jumbo v3, "Receiver ACTION_COMPLETE_HIDE"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_1c
    new-instance v23, Landroid/content/ContentValues;

    invoke-direct/range {v23 .. v23}, Landroid/content/ContentValues;-><init>()V

    .line 231
    .local v23, "updateValues":Landroid/content/ContentValues;
    const-string/jumbo v2, "visibility"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 232
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    .line 233
    const-string/jumbo v4, "status >= \'200\' AND (visibility IS NULL OR visibility == \'0\') AND (confirm != \'5\')"

    const/4 v5, 0x0

    .line 232
    move-object/from16 v0, v23

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    .line 234
    .end local v23    # "updateValues":Landroid/content/ContentValues;
    :cond_1d
    const-string/jumbo v2, "android.btopp.intent.action.TRANSFER_COMPLETE"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 235
    sget-boolean v2, Lcom/android/bluetooth/opp/BluetoothOppReceiver;->V:Z

    if-eqz v2, :cond_1e

    const-string/jumbo v2, "BluetoothOppReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Receiver Transfer Complete Intent for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_1e
    const/16 v21, 0x0

    .line 238
    .local v21, "toastMsg":Ljava/lang/String;
    new-instance v22, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    invoke-direct/range {v22 .. v22}, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;-><init>()V

    .line 239
    .restart local v22    # "transInfo":Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->queryRecord(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    move-result-object v22

    .line 240
    if-nez v22, :cond_1f

    .line 241
    const-string/jumbo v2, "BluetoothOppReceiver"

    const-string/jumbo v3, "Error: Can not get data from db"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    return-void

    .line 245
    :cond_1f
    move-object/from16 v0, v22

    iget-boolean v2, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mHandoverInitiated:Z

    if-eqz v2, :cond_22

    .line 247
    new-instance v13, Landroid/content/Intent;

    const-string/jumbo v2, "android.nfc.handover.intent.action.TRANSFER_DONE"

    invoke-direct {v13, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 248
    .local v13, "handoverIntent":Landroid/content/Intent;
    move-object/from16 v0, v22

    iget v2, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDirection:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_20

    .line 249
    const-string/jumbo v2, "android.nfc.handover.intent.extra.TRANSFER_DIRECTION"

    .line 250
    const/4 v3, 0x0

    .line 249
    invoke-virtual {v13, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 255
    :goto_5
    const-string/jumbo v2, "android.nfc.handover.intent.extra.TRANSFER_ID"

    move-object/from16 v0, v22

    iget v3, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mID:I

    invoke-virtual {v13, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 256
    const-string/jumbo v2, "android.nfc.handover.intent.extra.ADDRESS"

    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDestAddr:Ljava/lang/String;

    invoke-virtual {v13, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 258
    move-object/from16 v0, v22

    iget v2, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mStatus:I

    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusSuccess(I)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 259
    const-string/jumbo v2, "android.nfc.handover.intent.extra.TRANSFER_STATUS"

    .line 260
    const/4 v3, 0x0

    .line 259
    invoke-virtual {v13, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 261
    const-string/jumbo v2, "android.nfc.handover.intent.extra.TRANSFER_URI"

    .line 262
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileName:Ljava/lang/String;

    .line 261
    invoke-virtual {v13, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 263
    const-string/jumbo v2, "android.nfc.handover.intent.extra.TRANSFER_MIME_TYPE"

    .line 264
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileType:Ljava/lang/String;

    .line 263
    invoke-virtual {v13, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 269
    :goto_6
    const-string/jumbo v2, "android.permission.NFC_HANDOVER_STATUS"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 270
    return-void

    .line 252
    :cond_20
    const-string/jumbo v2, "android.nfc.handover.intent.extra.TRANSFER_DIRECTION"

    .line 253
    const/4 v3, 0x1

    .line 252
    invoke-virtual {v13, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_5

    .line 266
    :cond_21
    const-string/jumbo v2, "android.nfc.handover.intent.extra.TRANSFER_STATUS"

    .line 267
    const/4 v3, 0x1

    .line 266
    invoke-virtual {v13, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_6

    .line 273
    .end local v13    # "handoverIntent":Landroid/content/Intent;
    :cond_22
    move-object/from16 v0, v22

    iget v2, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mStatus:I

    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusSuccess(I)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 274
    move-object/from16 v0, v22

    iget v2, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDirection:I

    if-nez v2, :cond_26

    .line 275
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f06001e

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    .line 290
    .end local v21    # "toastMsg":Ljava/lang/String;
    :cond_23
    :goto_7
    invoke-static/range {p1 .. p1}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppManager;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/bluetooth/opp/BluetoothOppManager;->zero_length_file:Z

    if-eqz v2, :cond_24

    .line 291
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f060020

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    .line 292
    .local v21, "toastMsg":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppManager;

    move-result-object v2

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/bluetooth/opp/BluetoothOppManager;->zero_length_file:Z

    .line 295
    .end local v21    # "toastMsg":Ljava/lang/String;
    :cond_24
    sget-boolean v2, Lcom/android/bluetooth/opp/BluetoothOppReceiver;->V:Z

    if-eqz v2, :cond_25

    const-string/jumbo v2, "BluetoothOppReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Toast msg == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :cond_25
    if-eqz v21, :cond_2

    .line 297
    const/4 v2, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 276
    .local v21, "toastMsg":Ljava/lang/String;
    :cond_26
    move-object/from16 v0, v22

    iget v2, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDirection:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_23

    .line 277
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 278
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 277
    const v3, 0x7f06001b

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    .local v21, "toastMsg":Ljava/lang/String;
    goto :goto_7

    .line 281
    .local v21, "toastMsg":Ljava/lang/String;
    :cond_27
    move-object/from16 v0, v22

    iget v2, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mStatus:I

    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusError(I)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 282
    move-object/from16 v0, v22

    iget v2, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDirection:I

    if-nez v2, :cond_28

    .line 283
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 284
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 283
    const v3, 0x7f060020

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    .local v21, "toastMsg":Ljava/lang/String;
    goto/16 :goto_7

    .line 285
    .local v21, "toastMsg":Ljava/lang/String;
    :cond_28
    move-object/from16 v0, v22

    iget v2, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDirection:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_23

    .line 286
    const v2, 0x7f06002c

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    .local v21, "toastMsg":Ljava/lang/String;
    goto/16 :goto_7
.end method
