.class Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothMapContentObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMapContentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmsBroadcastReceiver"
.end annotation


# instance fields
.field private final ID_PROJECTION:[Ljava/lang/String;

.field private final UPDATE_STATUS_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    .prologue
    .line 3012
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 3013
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->ID_PROJECTION:[Ljava/lang/String;

    .line 3014
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "/status"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->UPDATE_STATUS_URI:Landroid/net/Uri;

    .line 3012
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)V

    return-void
.end method

.method private actionMessageDelivery(Landroid/content/Context;Landroid/content/Intent;Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "msgInfo"    # Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;

    .prologue
    .line 3159
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v14

    .line 3160
    .local v14, "messageUri":Landroid/net/Uri;
    const/4 v2, 0x0

    move-object/from16 v0, p3

    iput-boolean v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->sendInProgress:Z

    .line 3162
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-static {v2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->-get4(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->uri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 3165
    .local v12, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3166
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 3168
    .local v13, "messageId":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->UPDATE_STATUS_URI:Landroid/net/Uri;

    int-to-long v4, v13

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v15

    .line 3170
    .local v15, "updateUri":Landroid/net/Uri;
    const-string/jumbo v2, "BluetoothMapContentObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "actionMessageDelivery: uri="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", status="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3171
    move-object/from16 v0, p3

    iget v5, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->statusDelivered:I

    .line 3170
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3173
    new-instance v11, Landroid/content/ContentValues;

    const/4 v2, 0x2

    invoke-direct {v11, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 3175
    .local v11, "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v2, "status"

    move-object/from16 v0, p3

    iget v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->statusDelivered:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v11, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3176
    const-string/jumbo v2, "date_sent"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v11, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3177
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-static {v2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->-get4(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v15, v11, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3182
    .end local v11    # "contentValues":Landroid/content/ContentValues;
    .end local v13    # "messageId":I
    .end local v15    # "updateUri":Landroid/net/Uri;
    :goto_0
    if-eqz v12, :cond_0

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 3185
    :cond_0
    move-object/from16 v0, p3

    iget v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->statusDelivered:I

    if-nez v2, :cond_3

    .line 3186
    new-instance v3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    const-string/jumbo v5, "DeliverySuccess"

    move-object/from16 v0, p3

    iget-wide v6, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->id:J

    .line 3187
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->-wrap0(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-static {v2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->-get5(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v10

    const/4 v9, 0x0

    .line 3186
    invoke-direct/range {v3 .. v10}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 3188
    .local v3, "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-static {v2, v3}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->-wrap5(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    .line 3195
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-static {v2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->-get3(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)Ljava/util/Map;

    move-result-object v2

    move-object/from16 v0, p3

    iget-wide v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3158
    return-void

    .line 3179
    .end local v3    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    :cond_1
    :try_start_1
    const-string/jumbo v2, "BluetoothMapContentObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Can\'t find message for status update: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3181
    :catchall_0
    move-exception v2

    .line 3182
    if-eqz v12, :cond_2

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 3181
    :cond_2
    throw v2

    .line 3190
    :cond_3
    new-instance v3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    const-string/jumbo v5, "DeliveryFailure"

    move-object/from16 v0, p3

    iget-wide v6, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->id:J

    .line 3191
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->-wrap0(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-static {v2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->-get5(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v10

    const/4 v9, 0x0

    .line 3190
    invoke-direct/range {v3 .. v10}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 3192
    .restart local v3    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-static {v2, v3}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->-wrap5(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    goto :goto_1
.end method

.method private actionMessageSent(Landroid/content/Context;Landroid/content/Intent;Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "msgInfo"    # Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 3101
    const/4 v0, 0x0

    .line 3103
    .local v0, "delete":Z
    const-string/jumbo v2, "BluetoothMapContentObserver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "actionMessageSent(): msgInfo.failedSent = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->failedSent:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3105
    iput-boolean v5, p3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->sendInProgress:Z

    .line 3107
    iget-boolean v2, p3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->failedSent:Z

    if-nez v2, :cond_3

    .line 3108
    const-string/jumbo v2, "BluetoothMapContentObserver"

    const-string/jumbo v3, "actionMessageSent: result OK"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3109
    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->transparent:I

    if-nez v2, :cond_2

    .line 3110
    iget-object v2, p3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->uri:Landroid/net/Uri;

    invoke-static {p1, v2, v8, v5}, Landroid/provider/Telephony$Sms;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3112
    const-string/jumbo v2, "BluetoothMapContentObserver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to move "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->uri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " to SENT"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3118
    :cond_0
    :goto_0
    new-instance v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    const-string/jumbo v3, "SendingSuccess"

    iget-wide v4, p3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->id:J

    .line 3119
    invoke-static {v8}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->-wrap0(I)Ljava/lang/String;

    move-result-object v6

    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-static {v8}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->-get5(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v8

    .line 3118
    invoke-direct/range {v1 .. v8}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 3120
    .local v1, "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-static {v2, v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->-wrap5(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    .line 3147
    :goto_1
    if-eqz v0, :cond_1

    .line 3149
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-static {v2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->-wrap1(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)Ljava/util/Map;

    move-result-object v3

    monitor-enter v3

    .line 3150
    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-static {v2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->-wrap1(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)Ljava/util/Map;

    move-result-object v2

    iget-wide v4, p3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 3154
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-static {v2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->-get4(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->uri:Landroid/net/Uri;

    invoke-virtual {v2, v3, v7, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3097
    :cond_1
    return-void

    .line 3115
    .end local v1    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 3123
    :cond_3
    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->retry:I

    if-ne v2, v6, :cond_4

    .line 3125
    iput-boolean v6, p3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->resend:Z

    .line 3126
    iput v5, p3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->partsSent:I

    .line 3127
    iput-boolean v5, p3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->failedSent:Z

    .line 3128
    new-instance v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    const-string/jumbo v3, "SendingFailure"

    iget-wide v4, p3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->id:J

    .line 3129
    const/4 v6, 0x4

    invoke-static {v6}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->-wrap0(I)Ljava/lang/String;

    move-result-object v6

    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-static {v8}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->-get5(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v8

    .line 3128
    invoke-direct/range {v1 .. v8}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 3130
    .restart local v1    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-static {v2, v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->-wrap5(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    goto :goto_1

    .line 3132
    .end local v1    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    :cond_4
    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->transparent:I

    if-nez v2, :cond_6

    .line 3133
    iget-object v2, p3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->uri:Landroid/net/Uri;

    invoke-static {p1, v2, v9, v5}, Landroid/provider/Telephony$Sms;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;II)Z

    move-result v2

    if-nez v2, :cond_5

    .line 3135
    const-string/jumbo v2, "BluetoothMapContentObserver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to move "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->uri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " to FAILED"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3141
    :cond_5
    :goto_2
    new-instance v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    const-string/jumbo v3, "SendingFailure"

    iget-wide v4, p3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->id:J

    .line 3142
    invoke-static {v9}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->-wrap0(I)Ljava/lang/String;

    move-result-object v6

    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-static {v8}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->-get5(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v8

    .line 3141
    invoke-direct/range {v1 .. v8}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 3143
    .restart local v1    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-static {v2, v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->-wrap5(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    goto/16 :goto_1

    .line 3138
    .end local v1    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    :cond_6
    const/4 v0, 0x1

    goto :goto_2

    .line 3149
    .restart local v1    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3040
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 3041
    .local v4, "action":Ljava/lang/String;
    const-string/jumbo v13, "HANDLE"

    const-wide/16 v16, -0x1

    move-object/from16 v0, p2

    move-wide/from16 v1, v16

    invoke-virtual {v0, v13, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 3042
    .local v6, "handle":J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-static {v13}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->-get3(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)Ljava/util/Map;

    move-result-object v13

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v13, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;

    .line 3044
    .local v9, "msgInfo":Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;
    const-string/jumbo v13, "BluetoothMapContentObserver"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "onReceive: action"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3046
    if-nez v9, :cond_0

    .line 3047
    const-string/jumbo v13, "BluetoothMapContentObserver"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "onReceive: no msgInfo found for handle "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3048
    return-void

    .line 3051
    :cond_0
    const-string/jumbo v13, "com.android.bluetooth.BluetoothMapContentObserver.action.MESSAGE_SENT"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 3052
    const-string/jumbo v13, "result"

    .line 3053
    const/16 v16, 0x0

    .line 3052
    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v13, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 3054
    .local v11, "result":I
    iget v13, v9, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->partsSent:I

    add-int/lit8 v13, v13, 0x1

    iput v13, v9, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->partsSent:I

    .line 3055
    const/4 v13, -0x1

    if-eq v11, v13, :cond_1

    .line 3059
    const/4 v13, 0x1

    iput-boolean v13, v9, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->failedSent:Z

    .line 3061
    :cond_1
    const-string/jumbo v13, "BluetoothMapContentObserver"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "onReceive: msgInfo.partsSent = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget v0, v9, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->partsSent:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 3062
    const-string/jumbo v17, ", msgInfo.parts = "

    .line 3061
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 3062
    iget v0, v9, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->parts:I

    move/from16 v17, v0

    .line 3061
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 3062
    const-string/jumbo v17, " result = "

    .line 3061
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3064
    iget v13, v9, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->partsSent:I

    iget v0, v9, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->parts:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v13, v0, :cond_2

    .line 3065
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v9}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->actionMessageSent(Landroid/content/Context;Landroid/content/Intent;Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;)V

    .line 3039
    .end local v11    # "result":I
    :cond_2
    :goto_0
    return-void

    .line 3067
    :cond_3
    const-string/jumbo v13, "com.android.bluetooth.BluetoothMapContentObserver.action.MESSAGE_DELIVERY"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 3068
    const-string/jumbo v13, "timestamp"

    const-wide/16 v16, 0x0

    move-object/from16 v0, p2

    move-wide/from16 v1, v16

    invoke-virtual {v0, v13, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v14

    .line 3069
    .local v14, "timestamp":J
    const/4 v12, -0x1

    .line 3070
    .local v12, "status":I
    iget-wide v0, v9, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->timestamp:J

    move-wide/from16 v16, v0

    cmp-long v13, v16, v14

    if-nez v13, :cond_5

    .line 3071
    iget v13, v9, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->partsDelivered:I

    add-int/lit8 v13, v13, 0x1

    iput v13, v9, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->partsDelivered:I

    .line 3072
    const-string/jumbo v13, "pdu"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v10

    .line 3073
    .local v10, "pdu":[B
    const-string/jumbo v13, "format"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3075
    .local v5, "format":Ljava/lang/String;
    invoke-static {v10, v5}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v8

    .line 3076
    .local v8, "message":Landroid/telephony/SmsMessage;
    if-nez v8, :cond_4

    .line 3077
    const-string/jumbo v13, "BluetoothMapContentObserver"

    const-string/jumbo v16, "actionMessageDelivery: Can\'t get message from pdu"

    move-object/from16 v0, v16

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3078
    return-void

    .line 3080
    :cond_4
    invoke-virtual {v8}, Landroid/telephony/SmsMessage;->getStatus()I

    move-result v12

    .line 3081
    if-eqz v12, :cond_6

    .line 3082
    iput v12, v9, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->statusDelivered:I

    .line 3083
    const-string/jumbo v13, "BluetoothMapContentObserver"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "msgInfo.statusDelivered = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3084
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-static {v13}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->-get1(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)Landroid/content/Context;

    move-result-object v13

    iget-object v0, v9, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->uri:Landroid/net/Uri;

    move-object/from16 v16, v0

    const/16 v17, 0x5

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v13, v0, v1, v2}, Landroid/provider/Telephony$Sms;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;II)Z

    .line 3089
    .end local v5    # "format":Ljava/lang/String;
    .end local v8    # "message":Landroid/telephony/SmsMessage;
    .end local v10    # "pdu":[B
    :cond_5
    :goto_1
    iget v13, v9, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->partsDelivered:I

    iget v0, v9, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->parts:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v13, v0, :cond_2

    .line 3090
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v9}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->actionMessageDelivery(Landroid/content/Context;Landroid/content/Intent;Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;)V

    goto/16 :goto_0

    .line 3086
    .restart local v5    # "format":Ljava/lang/String;
    .restart local v8    # "message":Landroid/telephony/SmsMessage;
    .restart local v10    # "pdu":[B
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-static {v13}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->-get1(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)Landroid/content/Context;

    move-result-object v13

    iget-object v0, v9, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->uri:Landroid/net/Uri;

    move-object/from16 v16, v0

    const/16 v17, 0x2

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v13, v0, v1, v2}, Landroid/provider/Telephony$Sms;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;II)Z

    goto :goto_1

    .line 3093
    .end local v5    # "format":Ljava/lang/String;
    .end local v8    # "message":Landroid/telephony/SmsMessage;
    .end local v10    # "pdu":[B
    .end local v12    # "status":I
    .end local v14    # "timestamp":J
    :cond_7
    const-string/jumbo v13, "BluetoothMapContentObserver"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "onReceive: Unknown action "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public register()V
    .locals 5

    .prologue
    .line 3017
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3019
    .local v1, "handler":Landroid/os/Handler;
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 3020
    .local v2, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "com.android.bluetooth.BluetoothMapContentObserver.action.MESSAGE_DELIVERY"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3022
    :try_start_0
    const-string/jumbo v3, "message/*"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3027
    :goto_0
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-static {v3}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->-get1(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p0, v2, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 3016
    return-void

    .line 3023
    :catch_0
    move-exception v0

    .line 3024
    .local v0, "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    const-string/jumbo v3, "BluetoothMapContentObserver"

    const-string/jumbo v4, "Wrong mime type!!!"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public unregister()V
    .locals 2

    .prologue
    .line 3032
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-static {v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->-get1(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3030
    :goto_0
    return-void

    .line 3033
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0
.end method
