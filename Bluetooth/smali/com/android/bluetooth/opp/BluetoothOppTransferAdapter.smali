.class public Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "BluetoothOppTransferAdapter.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layout"    # I
    .param p3, "c"    # Landroid/database/Cursor;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 62
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;->mContext:Landroid/content/Context;

    .line 60
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 25
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 67
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 70
    .local v12, "r":Landroid/content/res/Resources;
    const v22, 0x7f0c000a

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 71
    .local v11, "iv":Landroid/widget/ImageView;
    const-string/jumbo v22, "status"

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 72
    .local v14, "status":I
    const-string/jumbo v22, "direction"

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 73
    .local v10, "dir":I
    invoke-static {v14}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusError(I)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 74
    const v22, 0x1080078

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 84
    :goto_0
    const v22, 0x7f0c000b

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 86
    .local v19, "tv":Landroid/widget/TextView;
    const-string/jumbo v22, "hint"

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    .line 85
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 87
    .local v18, "title":Ljava/lang/String;
    if-nez v18, :cond_0

    .line 88
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const v23, 0x7f06003c

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 90
    :cond_0
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    const v22, 0x7f0c000c

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    .end local v19    # "tv":Landroid/widget/TextView;
    check-cast v19, Landroid/widget/TextView;

    .line 94
    .restart local v19    # "tv":Landroid/widget/TextView;
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    .line 95
    .local v4, "adapter":Landroid/bluetooth/BluetoothAdapter;
    const-string/jumbo v22, "destination"

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 96
    .local v8, "destinationColumnId":I
    move-object/from16 v0, p3

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v13

    .line 98
    .local v13, "remoteDevice":Landroid/bluetooth/BluetoothDevice;
    invoke-static/range {p2 .. p2}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppManager;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getDeviceName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v9

    .line 99
    .local v9, "deviceName":Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    const-string/jumbo v22, "total_bytes"

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 103
    .local v20, "totalBytes":J
    invoke-static {v14}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusCompleted(I)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 104
    const v22, 0x7f0c000e

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    .end local v19    # "tv":Landroid/widget/TextView;
    check-cast v19, Landroid/widget/TextView;

    .line 105
    .restart local v19    # "tv":Landroid/widget/TextView;
    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 106
    invoke-static {v14}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusError(I)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-static {v0, v14, v9}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->getStatusDescription(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    :goto_1
    const-string/jumbo v22, "timestamp"

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 121
    .local v7, "dateColumnId":I
    move-object/from16 v0, p3

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 122
    .local v16, "time":J
    new-instance v6, Ljava/util/Date;

    move-wide/from16 v0, v16

    invoke-direct {v6, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 123
    .local v6, "d":Ljava/util/Date;
    invoke-static/range {v16 .. v17}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v22

    if-eqz v22, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v15

    .line 125
    .local v15, "str":Ljava/lang/CharSequence;
    :goto_2
    const v22, 0x7f0c000d

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    .end local v19    # "tv":Landroid/widget/TextView;
    check-cast v19, Landroid/widget/TextView;

    .line 126
    .restart local v19    # "tv":Landroid/widget/TextView;
    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 127
    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    .end local v6    # "d":Ljava/util/Date;
    .end local v7    # "dateColumnId":I
    .end local v15    # "str":Ljava/lang/CharSequence;
    .end local v16    # "time":J
    :cond_1
    return-void

    .line 76
    .end local v4    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    .end local v8    # "destinationColumnId":I
    .end local v9    # "deviceName":Ljava/lang/String;
    .end local v13    # "remoteDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v18    # "title":Ljava/lang/String;
    .end local v19    # "tv":Landroid/widget/TextView;
    .end local v20    # "totalBytes":J
    :cond_2
    if-nez v10, :cond_3

    .line 77
    const v22, 0x1080089

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 79
    :cond_3
    const v22, 0x1080082

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 110
    .restart local v4    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    .restart local v8    # "destinationColumnId":I
    .restart local v9    # "deviceName":Ljava/lang/String;
    .restart local v13    # "remoteDevice":Landroid/bluetooth/BluetoothDevice;
    .restart local v18    # "title":Ljava/lang/String;
    .restart local v19    # "tv":Landroid/widget/TextView;
    .restart local v20    # "totalBytes":J
    :cond_4
    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v10, v0, :cond_5

    .line 111
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    .line 111
    move-object/from16 v0, v23

    move-wide/from16 v1, v20

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    aput-object v23, v22, v24

    const v23, 0x7f060057

    move/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v12, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 117
    .local v5, "completeText":Ljava/lang/String;
    :goto_3
    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 114
    .end local v5    # "completeText":Ljava/lang/String;
    :cond_5
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    .line 115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    .line 114
    move-object/from16 v0, v23

    move-wide/from16 v1, v20

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    aput-object v23, v22, v24

    const v23, 0x7f060058

    move/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v12, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "completeText":Ljava/lang/String;
    goto :goto_3

    .line 124
    .end local v5    # "completeText":Ljava/lang/String;
    .restart local v6    # "d":Ljava/util/Date;
    .restart local v7    # "dateColumnId":I
    .restart local v16    # "time":J
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v15

    .restart local v15    # "str":Ljava/lang/CharSequence;
    goto/16 :goto_2
.end method
