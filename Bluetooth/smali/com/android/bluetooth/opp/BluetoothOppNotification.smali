.class Lcom/android/bluetooth/opp/BluetoothOppNotification;
.super Ljava/lang/Object;
.source "BluetoothOppNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;,
        Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;,
        Lcom/android/bluetooth/opp/BluetoothOppNotification$1;
    }
.end annotation


# static fields
.field private static final NOTIFICATION_ID_INBOUND:I = -0xf4246

.field private static final NOTIFICATION_ID_OUTBOUND:I = -0xf4245

.field private static final NOTIFY:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BluetoothOppNotification"

.field private static final V:Z

.field static final WHERE_COMPLETED:Ljava/lang/String; = "status >= \'200\' AND (visibility IS NULL OR visibility == \'0\') AND (confirm != \'5\')"

.field private static final WHERE_COMPLETED_INBOUND:Ljava/lang/String; = "status >= \'200\' AND (visibility IS NULL OR visibility == \'0\') AND (confirm != \'5\') AND (direction == 1)"

.field private static final WHERE_COMPLETED_OUTBOUND:Ljava/lang/String; = "status >= \'200\' AND (visibility IS NULL OR visibility == \'0\') AND (confirm != \'5\') AND (direction == 0)"

.field static final WHERE_CONFIRM_PENDING:Ljava/lang/String; = "confirm == \'0\' AND (visibility IS NULL OR visibility == \'0\')"

.field static final WHERE_RUNNING:Ljava/lang/String; = "(status == \'192\') AND (visibility IS NULL OR visibility == \'0\') AND (confirm == \'1\' OR confirm == \'2\' OR confirm == \'5\')"

.field static final confirm:Ljava/lang/String; = "(confirm == \'1\' OR confirm == \'2\' OR confirm == \'5\')"

.field static final not_through_handover:Ljava/lang/String; = "(confirm != \'5\')"

.field static final status:Ljava/lang/String; = "(status == \'192\')"

.field static final visible:Ljava/lang/String; = "(visibility IS NULL OR visibility == \'0\')"


# instance fields
.field private mActiveNotificationId:I

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field public mNotificationMgr:Landroid/app/NotificationManager;

.field private mNotifications:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingUpdate:I

.field private mUpdateCompleteNotification:Z

.field private mUpdateNotificationThread:Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->V:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/bluetooth/opp/BluetoothOppNotification;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/bluetooth/opp/BluetoothOppNotification;)I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mPendingUpdate:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/bluetooth/opp/BluetoothOppNotification;)Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mUpdateNotificationThread:Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/bluetooth/opp/BluetoothOppNotification;I)I
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mPendingUpdate:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/bluetooth/opp/BluetoothOppNotification;Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;)Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mUpdateNotificationThread:Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/bluetooth/opp/BluetoothOppNotification;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->updateActiveNotification()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/bluetooth/opp/BluetoothOppNotification;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->updateCompletedNotification()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/bluetooth/opp/BluetoothOppNotification;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->updateIncomingFileConfirmNotification()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 59
    const-string/jumbo v0, "BluetoothOpp"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->V:Z

    .line 57
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput v1, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mPendingUpdate:I

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mUpdateCompleteNotification:Z

    .line 106
    iput v1, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mActiveNotificationId:I

    .line 178
    new-instance v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/opp/BluetoothOppNotification$1;-><init>(Lcom/android/bluetooth/opp/BluetoothOppNotification;)V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mHandler:Landroid/os/Handler;

    .line 136
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    .line 137
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    .line 138
    const-string/jumbo v1, "notification"

    .line 137
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    .line 139
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotifications:Ljava/util/HashMap;

    .line 135
    return-void
.end method

.method private cancelIncomingFileConfirmNotification()V
    .locals 10

    .prologue
    .line 576
    const/4 v6, 0x0

    .line 578
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    .line 579
    const-string/jumbo v3, "confirm == \'0\' AND (visibility IS NULL OR visibility == \'0\')"

    const-string/jumbo v5, "_id"

    .line 578
    const/4 v2, 0x0

    .line 579
    const/4 v4, 0x0

    .line 578
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 592
    .end local v6    # "cursor":Landroid/database/Cursor;
    :goto_0
    if-nez v6, :cond_0

    .line 593
    return-void

    .line 586
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 587
    .local v7, "e":Landroid/database/CursorWindowAllocationException;
    const/4 v6, 0x0

    .line 588
    const-string/jumbo v0, "BluetoothOppNotification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "cancelupdateIncomingFileConfirmNotification: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 580
    .end local v7    # "e":Landroid/database/CursorWindowAllocationException;
    :catch_1
    move-exception v8

    .line 584
    .local v8, "e":Landroid/database/sqlite/SQLiteException;
    const/4 v6, 0x0

    .line 585
    const-string/jumbo v0, "BluetoothOppNotification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "cancelupdateIncomingFileConfirmNotification: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 596
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v8    # "e":Landroid/database/sqlite/SQLiteException;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_2

    .line 597
    const-string/jumbo v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 598
    .local v9, "id":I
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->V:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "BluetoothOppNotification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cancelling incoming notification "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    invoke-virtual {v0, v9}, Landroid/app/NotificationManager;->cancel(I)V

    .line 596
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 601
    .end local v9    # "id":I
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 602
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->V:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "BluetoothOppNotification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Freeing cursor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    :cond_3
    const/4 v6, 0x0

    .line 575
    .restart local v6    # "cursor":Landroid/database/Cursor;
    return-void
.end method

.method private updateActiveNotification()V
    .locals 38

    .prologue
    .line 228
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    .line 229
    const-string/jumbo v7, "(status == \'192\') AND (visibility IS NULL OR visibility == \'0\') AND (confirm == \'1\' OR confirm == \'2\' OR confirm == \'5\')"

    const-string/jumbo v9, "_id"

    .line 228
    const/4 v6, 0x0

    .line 229
    const/4 v8, 0x0

    .line 228
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v17

    .line 235
    :goto_0
    if-nez v17, :cond_0

    .line 236
    return-void

    .line 230
    :catch_0
    move-exception v23

    .line 231
    .local v23, "e":Landroid/database/sqlite/SQLiteException;
    const/16 v17, 0x0

    .line 232
    .local v17, "cursor":Landroid/database/Cursor;
    const-string/jumbo v4, "BluetoothOppNotification"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SQLite exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 241
    .end local v17    # "cursor":Landroid/database/Cursor;
    .end local v23    # "e":Landroid/database/sqlite/SQLiteException;
    :cond_0
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_5

    .line 242
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mUpdateCompleteNotification:Z

    .line 246
    :goto_1
    sget-boolean v4, Lcom/android/bluetooth/opp/BluetoothOppNotification;->V:Z

    if-eqz v4, :cond_1

    const-string/jumbo v4, "BluetoothOppNotification"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mUpdateCompleteNotification = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mUpdateCompleteNotification:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_1
    const-string/jumbo v4, "timestamp"

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v34

    .line 250
    .local v34, "timestampIndex":I
    const-string/jumbo v4, "direction"

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    .line 251
    .local v22, "directionIndex":I
    const-string/jumbo v4, "_id"

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v27

    .line 252
    .local v27, "idIndex":I
    const-string/jumbo v4, "total_bytes"

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v35

    .line 253
    .local v35, "totalBytesIndex":I
    const-string/jumbo v4, "current_bytes"

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 254
    .local v16, "currentBytesIndex":I
    const-string/jumbo v4, "_data"

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 255
    .local v18, "dataIndex":I
    const-string/jumbo v4, "hint"

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v25

    .line 256
    .local v25, "filenameHintIndex":I
    const-string/jumbo v4, "confirm"

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 257
    .local v12, "confirmIndex":I
    const-string/jumbo v4, "destination"

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 259
    .local v20, "destinationIndex":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotifications:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 260
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_2
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_b

    .line 261
    move-object/from16 v0, v17

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v32

    .line 262
    .local v32, "timeStamp":J
    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 263
    .local v21, "dir":I
    move-object/from16 v0, v17

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    .line 264
    .local v26, "id":I
    move-object/from16 v0, v17

    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v36

    .line 265
    .local v36, "total":J
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 266
    .local v14, "current":J
    move-object/from16 v0, v17

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 268
    .local v13, "confirmation":I
    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 269
    .local v19, "destination":Ljava/lang/String;
    invoke-interface/range {v17 .. v18}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 270
    .local v24, "fileName":Ljava/lang/String;
    if-nez v24, :cond_2

    .line 271
    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 273
    :cond_2
    if-nez v24, :cond_3

    .line 274
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    const v5, 0x7f06003c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 277
    :cond_3
    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    .line 280
    .local v11, "batchID":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotifications:Ljava/util/HashMap;

    invoke-virtual {v4, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 260
    :cond_4
    :goto_3
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2

    .line 244
    .end local v11    # "batchID":Ljava/lang/String;
    .end local v12    # "confirmIndex":I
    .end local v13    # "confirmation":I
    .end local v14    # "current":J
    .end local v16    # "currentBytesIndex":I
    .end local v18    # "dataIndex":I
    .end local v19    # "destination":Ljava/lang/String;
    .end local v20    # "destinationIndex":I
    .end local v21    # "dir":I
    .end local v22    # "directionIndex":I
    .end local v24    # "fileName":Ljava/lang/String;
    .end local v25    # "filenameHintIndex":I
    .end local v26    # "id":I
    .end local v27    # "idIndex":I
    .end local v32    # "timeStamp":J
    .end local v34    # "timestampIndex":I
    .end local v35    # "totalBytesIndex":I
    .end local v36    # "total":J
    :cond_5
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mUpdateCompleteNotification:Z

    goto/16 :goto_1

    .line 284
    .restart local v11    # "batchID":Ljava/lang/String;
    .restart local v12    # "confirmIndex":I
    .restart local v13    # "confirmation":I
    .restart local v14    # "current":J
    .restart local v16    # "currentBytesIndex":I
    .restart local v18    # "dataIndex":I
    .restart local v19    # "destination":Ljava/lang/String;
    .restart local v20    # "destinationIndex":I
    .restart local v21    # "dir":I
    .restart local v22    # "directionIndex":I
    .restart local v24    # "fileName":Ljava/lang/String;
    .restart local v25    # "filenameHintIndex":I
    .restart local v26    # "id":I
    .restart local v27    # "idIndex":I
    .restart local v32    # "timeStamp":J
    .restart local v34    # "timestampIndex":I
    .restart local v35    # "totalBytesIndex":I
    .restart local v36    # "total":J
    :cond_6
    new-instance v29, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;

    invoke-direct/range {v29 .. v29}, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;-><init>()V

    .line 285
    .local v29, "item":Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;
    move-wide/from16 v0, v32

    move-object/from16 v2, v29

    iput-wide v0, v2, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->timeStamp:J

    .line 286
    move/from16 v0, v26

    move-object/from16 v1, v29

    iput v0, v1, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->id:I

    .line 287
    move/from16 v0, v21

    move-object/from16 v1, v29

    iput v0, v1, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->direction:I

    .line 288
    move-object/from16 v0, v29

    iget v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->direction:I

    if-nez v4, :cond_8

    .line 289
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v24, v5, v6

    const v6, 0x7f06001d

    invoke-virtual {v4, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v29

    iput-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->description:Ljava/lang/String;

    .line 296
    :cond_7
    :goto_4
    move-object/from16 v0, v29

    iput-wide v14, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->totalCurrent:J

    .line 297
    move-wide/from16 v0, v36

    move-object/from16 v2, v29

    iput-wide v0, v2, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->totalTotal:J

    .line 299
    const/4 v4, 0x5

    if-ne v13, v4, :cond_a

    const/4 v4, 0x1

    .line 298
    :goto_5
    move-object/from16 v0, v29

    iput-boolean v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->handoverInitiated:Z

    .line 300
    move-object/from16 v0, v19

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->destination:Ljava/lang/String;

    .line 301
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotifications:Ljava/util/HashMap;

    move-object/from16 v0, v29

    invoke-virtual {v4, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    sget-boolean v4, Lcom/android/bluetooth/opp/BluetoothOppNotification;->V:Z

    if-eqz v4, :cond_4

    const-string/jumbo v4, "BluetoothOppNotification"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ID="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v29

    iget v6, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "; batchID="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "; totoalCurrent"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 304
    move-object/from16 v0, v29

    iget-wide v6, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->totalCurrent:J

    .line 303
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 304
    const-string/jumbo v6, "; totalTotal="

    .line 303
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 304
    move-object/from16 v0, v29

    iget-wide v6, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->totalTotal:J

    .line 303
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 290
    :cond_8
    move-object/from16 v0, v29

    iget v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->direction:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_9

    .line 291
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 292
    const/4 v6, 0x0

    aput-object v24, v5, v6

    const v6, 0x7f06001a

    .line 291
    invoke-virtual {v4, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v29

    iput-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->description:Ljava/lang/String;

    goto/16 :goto_4

    .line 294
    :cond_9
    sget-boolean v4, Lcom/android/bluetooth/opp/BluetoothOppNotification;->V:Z

    if-eqz v4, :cond_7

    const-string/jumbo v4, "BluetoothOppNotification"

    const-string/jumbo v5, "mDirection ERROR!"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 299
    :cond_a
    const/4 v4, 0x0

    goto/16 :goto_5

    .line 307
    .end local v11    # "batchID":Ljava/lang/String;
    .end local v13    # "confirmation":I
    .end local v14    # "current":J
    .end local v19    # "destination":Ljava/lang/String;
    .end local v21    # "dir":I
    .end local v24    # "fileName":Ljava/lang/String;
    .end local v26    # "id":I
    .end local v29    # "item":Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;
    .end local v32    # "timeStamp":J
    .end local v36    # "total":J
    :cond_b
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 308
    const/16 v17, 0x0

    .line 311
    .restart local v17    # "cursor":Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotifications:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v30

    .local v30, "item$iterator":Ljava/util/Iterator;
    :goto_6
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;

    .line 312
    .restart local v29    # "item":Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;
    move-object/from16 v0, v29

    iget-boolean v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->handoverInitiated:Z

    if-eqz v4, :cond_e

    .line 313
    const/16 v31, 0x0

    .line 314
    .local v31, "progress":F
    move-object/from16 v0, v29

    iget-wide v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->totalTotal:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_c

    .line 315
    const/high16 v31, -0x40800000    # -1.0f

    .line 321
    :goto_7
    new-instance v28, Landroid/content/Intent;

    const-string/jumbo v4, "android.nfc.handover.intent.action.TRANSFER_PROGRESS"

    move-object/from16 v0, v28

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 322
    .local v28, "intent":Landroid/content/Intent;
    move-object/from16 v0, v29

    iget v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->direction:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_d

    .line 323
    const-string/jumbo v4, "android.nfc.handover.intent.extra.TRANSFER_DIRECTION"

    .line 324
    const/4 v5, 0x0

    .line 323
    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 329
    :goto_8
    const-string/jumbo v4, "android.nfc.handover.intent.extra.TRANSFER_ID"

    move-object/from16 v0, v29

    iget v5, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->id:I

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 330
    const-string/jumbo v4, "android.nfc.handover.intent.extra.TRANSFER_PROGRESS"

    move-object/from16 v0, v28

    move/from16 v1, v31

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 331
    const-string/jumbo v4, "android.nfc.handover.intent.extra.ADDRESS"

    move-object/from16 v0, v29

    iget-object v5, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->destination:Ljava/lang/String;

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 332
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "android.permission.NFC_HANDOVER_STATUS"

    move-object/from16 v0, v28

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_6

    .line 317
    .end local v28    # "intent":Landroid/content/Intent;
    :cond_c
    move-object/from16 v0, v29

    iget-wide v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->totalCurrent:J

    long-to-float v4, v4

    move-object/from16 v0, v29

    iget-wide v6, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->totalTotal:J

    long-to-float v5, v6

    div-float v31, v4, v5

    goto :goto_7

    .line 326
    .restart local v28    # "intent":Landroid/content/Intent;
    :cond_d
    const-string/jumbo v4, "android.nfc.handover.intent.extra.TRANSFER_DIRECTION"

    .line 327
    const/4 v5, 0x1

    .line 326
    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_8

    .line 337
    .end local v28    # "intent":Landroid/content/Intent;
    .end local v31    # "progress":F
    :cond_e
    new-instance v10, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    invoke-direct {v10, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 338
    .local v10, "b":Landroid/app/Notification$Builder;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 339
    const v5, 0x1060070

    .line 338
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v10, v4}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 340
    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->description:Ljava/lang/String;

    invoke-virtual {v10, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 342
    move-object/from16 v0, v29

    iget-wide v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->totalTotal:J

    move-object/from16 v0, v29

    iget-wide v6, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->totalCurrent:J

    invoke-static {v4, v5, v6, v7}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->formatProgressText(JJ)Ljava/lang/String;

    move-result-object v4

    .line 341
    invoke-virtual {v10, v4}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 343
    move-object/from16 v0, v29

    iget-wide v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->totalTotal:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_12

    .line 344
    sget-boolean v4, Lcom/android/bluetooth/opp/BluetoothOppNotification;->V:Z

    if-eqz v4, :cond_f

    const-string/jumbo v4, "BluetoothOppNotification"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mCurrentBytes: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v29

    iget-wide v6, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->totalCurrent:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 345
    const-string/jumbo v6, " mTotalBytes: "

    .line 344
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 345
    move-object/from16 v0, v29

    iget-wide v6, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->totalTotal:J

    .line 344
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 345
    const-string/jumbo v6, " ("

    .line 344
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 346
    move-object/from16 v0, v29

    iget-wide v6, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->totalCurrent:J

    const-wide/16 v8, 0x64

    mul-long/2addr v6, v8

    move-object/from16 v0, v29

    iget-wide v8, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->totalTotal:J

    div-long/2addr v6, v8

    long-to-int v6, v6

    .line 344
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 346
    const-string/jumbo v6, " %)"

    .line 344
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_f
    move-object/from16 v0, v29

    iget-wide v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->totalCurrent:J

    const-wide/16 v6, 0x64

    mul-long/2addr v4, v6

    move-object/from16 v0, v29

    iget-wide v6, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->totalTotal:J

    div-long/2addr v4, v6

    long-to-int v5, v4

    .line 348
    move-object/from16 v0, v29

    iget-wide v6, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->totalTotal:J

    const-wide/16 v8, -0x1

    cmp-long v4, v6, v8

    if-nez v4, :cond_11

    const/4 v4, 0x1

    .line 347
    :goto_9
    const/16 v6, 0x64

    invoke-virtual {v10, v6, v5, v4}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 352
    :goto_a
    move-object/from16 v0, v29

    iget-wide v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->timeStamp:J

    invoke-virtual {v10, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 353
    move-object/from16 v0, v29

    iget v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->direction:I

    if-nez v4, :cond_14

    .line 354
    const v4, 0x1080088

    invoke-virtual {v10, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 360
    :cond_10
    :goto_b
    const/4 v4, 0x1

    invoke-virtual {v10, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 362
    new-instance v28, Landroid/content/Intent;

    const-string/jumbo v4, "android.btopp.intent.action.LIST"

    move-object/from16 v0, v28

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 363
    .restart local v28    # "intent":Landroid/content/Intent;
    const-string/jumbo v4, "com.android.bluetooth"

    const-class v5, Lcom/android/bluetooth/opp/BluetoothOppReceiver;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 364
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v29

    iget v5, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setDataAndNormalize(Landroid/net/Uri;)Landroid/content/Intent;

    .line 366
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v28

    invoke-static {v4, v5, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 367
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    move-object/from16 v0, v29

    iget v5, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->id:I

    invoke-virtual {v10}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 369
    move-object/from16 v0, v29

    iget v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->id:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mActiveNotificationId:I

    goto/16 :goto_6

    .line 348
    .end local v28    # "intent":Landroid/content/Intent;
    :cond_11
    const/4 v4, 0x0

    goto/16 :goto_9

    .line 350
    :cond_12
    move-object/from16 v0, v29

    iget-wide v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->totalTotal:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_13

    const/4 v4, 0x1

    :goto_c
    const/16 v5, 0x64

    const/16 v6, 0x64

    invoke-virtual {v10, v5, v6, v4}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    goto/16 :goto_a

    :cond_13
    const/4 v4, 0x0

    goto :goto_c

    .line 355
    :cond_14
    move-object/from16 v0, v29

    iget v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->direction:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_15

    .line 356
    const v4, 0x1080081

    invoke-virtual {v10, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    goto/16 :goto_b

    .line 358
    :cond_15
    sget-boolean v4, Lcom/android/bluetooth/opp/BluetoothOppNotification;->V:Z

    if-eqz v4, :cond_10

    const-string/jumbo v4, "BluetoothOppNotification"

    const-string/jumbo v5, "mDirection ERROR!"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 224
    .end local v10    # "b":Landroid/app/Notification$Builder;
    .end local v29    # "item":Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;
    :cond_16
    return-void
.end method

.method private updateCompletedNotification()V
    .locals 29

    .prologue
    .line 377
    const-wide/16 v24, 0x0

    .line 378
    .local v24, "timeStamp":J
    const/16 v21, 0x0

    .line 379
    .local v21, "outboundSuccNumber":I
    const/16 v19, 0x0

    .line 382
    .local v19, "outboundFailNumber":I
    const/16 v16, 0x0

    .line 383
    .local v16, "inboundSuccNumber":I
    const/4 v14, 0x0

    .line 388
    .local v14, "inboundFailNumber":I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mUpdateCompleteNotification:Z

    if-nez v4, :cond_1

    .line 389
    sget-boolean v4, Lcom/android/bluetooth/opp/BluetoothOppNotification;->V:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "BluetoothOppNotification"

    const-string/jumbo v5, "No need to update complete notification"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_0
    return-void

    .line 397
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mActiveNotificationId:I

    if-eqz v4, :cond_2

    .line 398
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mActiveNotificationId:I

    invoke-virtual {v4, v5}, Landroid/app/NotificationManager;->cancel(I)V

    .line 399
    sget-boolean v4, Lcom/android/bluetooth/opp/BluetoothOppNotification;->V:Z

    if-eqz v4, :cond_2

    const-string/jumbo v4, "BluetoothOppNotification"

    const-string/jumbo v5, "ongoing transfer notification was removed"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :cond_2
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    .line 406
    const-string/jumbo v7, "status >= \'200\' AND (visibility IS NULL OR visibility == \'0\') AND (confirm != \'5\') AND (direction == 0)"

    const-string/jumbo v9, "timestamp DESC"

    .line 405
    const/4 v6, 0x0

    .line 406
    const/4 v8, 0x0

    .line 405
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 411
    :goto_0
    if-nez v11, :cond_3

    .line 412
    return-void

    .line 407
    :catch_0
    move-exception v12

    .line 408
    .local v12, "e":Landroid/database/sqlite/SQLiteException;
    const/4 v11, 0x0

    .line 409
    .local v11, "cursor":Landroid/database/Cursor;
    const-string/jumbo v4, "BluetoothOppNotification"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SQLite exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 415
    .end local v11    # "cursor":Landroid/database/Cursor;
    .end local v12    # "e":Landroid/database/sqlite/SQLiteException;
    :cond_3
    const-string/jumbo v4, "timestamp"

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    .line 416
    .local v26, "timestampIndex":I
    const-string/jumbo v4, "status"

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    .line 418
    .local v23, "statusIndex":I
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_6

    .line 419
    invoke-interface {v11}, Landroid/database/Cursor;->isFirst()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 421
    move/from16 v0, v26

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    .line 423
    :cond_4
    move/from16 v0, v23

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 425
    .local v22, "status":I
    invoke-static/range {v22 .. v22}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusError(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 426
    add-int/lit8 v19, v19, 0x1

    .line 418
    :goto_2
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 428
    :cond_5
    add-int/lit8 v21, v21, 0x1

    goto :goto_2

    .line 431
    .end local v22    # "status":I
    :cond_6
    sget-boolean v4, Lcom/android/bluetooth/opp/BluetoothOppNotification;->V:Z

    if-eqz v4, :cond_7

    const-string/jumbo v4, "BluetoothOppNotification"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "outbound: succ-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "  fail-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    :cond_7
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 433
    const/4 v11, 0x0

    .line 435
    .restart local v11    # "cursor":Landroid/database/Cursor;
    add-int v20, v21, v19

    .line 437
    .local v20, "outboundNum":I
    if-lez v20, :cond_9

    .line 438
    new-instance v18, Landroid/app/Notification;

    invoke-direct/range {v18 .. v18}, Landroid/app/Notification;-><init>()V

    .line 439
    .local v18, "outNoti":Landroid/app/Notification;
    const v4, 0x1080089

    move-object/from16 v0, v18

    iput v4, v0, Landroid/app/Notification;->icon:I

    .line 440
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    const v5, 0x7f06005d

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 441
    .local v27, "title":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 442
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/high16 v6, 0x7f090000

    .line 441
    move/from16 v0, v19

    invoke-virtual {v4, v6, v0, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    .line 443
    .local v28, "unsuccess_caption":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 444
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 445
    const/4 v6, 0x1

    aput-object v28, v5, v6

    .line 444
    const v6, 0x7f090001

    .line 443
    move/from16 v0, v21

    invoke-virtual {v4, v6, v0, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 446
    .local v10, "caption":Ljava/lang/String;
    new-instance v17, Landroid/content/Intent;

    const-string/jumbo v4, "android.btopp.intent.action.OPEN_OUTBOUND"

    move-object/from16 v0, v17

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 447
    .local v17, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "com.android.bluetooth"

    const-class v5, Lcom/android/bluetooth/opp/BluetoothOppReceiver;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 448
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 449
    const v5, 0x1060070

    .line 448
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    move-object/from16 v0, v18

    iput v4, v0, Landroid/app/Notification;->color:I

    .line 450
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    .line 451
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 450
    move-object/from16 v0, v17

    invoke-static {v5, v6, v0, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v4, v1, v10, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 452
    new-instance v17, Landroid/content/Intent;

    .end local v17    # "intent":Landroid/content/Intent;
    const-string/jumbo v4, "android.btopp.intent.action.HIDE_COMPLETE"

    move-object/from16 v0, v17

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 453
    .restart local v17    # "intent":Landroid/content/Intent;
    const-string/jumbo v4, "com.android.bluetooth"

    const-class v5, Lcom/android/bluetooth/opp/BluetoothOppReceiver;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 454
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v17

    invoke-static {v4, v5, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    move-object/from16 v0, v18

    iput-object v4, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 455
    move-wide/from16 v0, v24

    move-object/from16 v2, v18

    iput-wide v0, v2, Landroid/app/Notification;->when:J

    .line 456
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    const v5, -0xf4245

    move-object/from16 v0, v18

    invoke-virtual {v4, v5, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 466
    .end local v10    # "caption":Ljava/lang/String;
    .end local v17    # "intent":Landroid/content/Intent;
    .end local v18    # "outNoti":Landroid/app/Notification;
    .end local v27    # "title":Ljava/lang/String;
    .end local v28    # "unsuccess_caption":Ljava/lang/String;
    :cond_8
    :goto_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    .line 467
    const-string/jumbo v7, "status >= \'200\' AND (visibility IS NULL OR visibility == \'0\') AND (confirm != \'5\') AND (direction == 1)"

    const-string/jumbo v9, "timestamp DESC"

    .line 466
    const/4 v6, 0x0

    .line 467
    const/4 v8, 0x0

    .line 466
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v11

    .line 473
    .end local v11    # "cursor":Landroid/database/Cursor;
    :goto_4
    if-nez v11, :cond_a

    .line 474
    return-void

    .line 458
    .restart local v11    # "cursor":Landroid/database/Cursor;
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    if-eqz v4, :cond_8

    .line 459
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    const v5, -0xf4245

    invoke-virtual {v4, v5}, Landroid/app/NotificationManager;->cancel(I)V

    .line 460
    sget-boolean v4, Lcom/android/bluetooth/opp/BluetoothOppNotification;->V:Z

    if-eqz v4, :cond_8

    const-string/jumbo v4, "BluetoothOppNotification"

    const-string/jumbo v5, "outbound notification was removed."

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 468
    :catch_1
    move-exception v12

    .line 469
    .restart local v12    # "e":Landroid/database/sqlite/SQLiteException;
    const/4 v11, 0x0

    .line 470
    const-string/jumbo v4, "BluetoothOppNotification"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SQLite exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 477
    .end local v11    # "cursor":Landroid/database/Cursor;
    .end local v12    # "e":Landroid/database/sqlite/SQLiteException;
    :cond_a
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_5
    invoke-interface {v11}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_d

    .line 478
    invoke-interface {v11}, Landroid/database/Cursor;->isFirst()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 480
    move/from16 v0, v26

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    .line 482
    :cond_b
    move/from16 v0, v23

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 484
    .restart local v22    # "status":I
    invoke-static/range {v22 .. v22}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusError(I)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 485
    add-int/lit8 v14, v14, 0x1

    .line 477
    :goto_6
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_5

    .line 487
    :cond_c
    add-int/lit8 v16, v16, 0x1

    goto :goto_6

    .line 490
    .end local v22    # "status":I
    :cond_d
    sget-boolean v4, Lcom/android/bluetooth/opp/BluetoothOppNotification;->V:Z

    if-eqz v4, :cond_e

    const-string/jumbo v4, "BluetoothOppNotification"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "inbound: succ-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "  fail-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :cond_e
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 492
    const/4 v11, 0x0

    .line 494
    .restart local v11    # "cursor":Landroid/database/Cursor;
    add-int v15, v16, v14

    .line 496
    .local v15, "inboundNum":I
    if-lez v15, :cond_10

    .line 497
    new-instance v13, Landroid/app/Notification;

    invoke-direct {v13}, Landroid/app/Notification;-><init>()V

    .line 498
    .local v13, "inNoti":Landroid/app/Notification;
    const v4, 0x1080082

    iput v4, v13, Landroid/app/Notification;->icon:I

    .line 499
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    const v5, 0x7f06005e

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 500
    .restart local v27    # "title":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 501
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/high16 v6, 0x7f090000

    .line 500
    invoke-virtual {v4, v6, v14, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    .line 502
    .restart local v28    # "unsuccess_caption":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 503
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 504
    const/4 v6, 0x1

    aput-object v28, v5, v6

    .line 503
    const v6, 0x7f090001

    .line 502
    move/from16 v0, v16

    invoke-virtual {v4, v6, v0, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 505
    .restart local v10    # "caption":Ljava/lang/String;
    new-instance v17, Landroid/content/Intent;

    const-string/jumbo v4, "android.btopp.intent.action.OPEN_INBOUND"

    move-object/from16 v0, v17

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 506
    .restart local v17    # "intent":Landroid/content/Intent;
    const-string/jumbo v4, "com.android.bluetooth"

    const-class v5, Lcom/android/bluetooth/opp/BluetoothOppReceiver;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 507
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 508
    const v5, 0x1060070

    .line 507
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iput v4, v13, Landroid/app/Notification;->color:I

    .line 509
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    .line 510
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 509
    move-object/from16 v0, v17

    invoke-static {v5, v6, v0, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-virtual {v13, v4, v0, v10, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 511
    new-instance v17, Landroid/content/Intent;

    .end local v17    # "intent":Landroid/content/Intent;
    const-string/jumbo v4, "android.btopp.intent.action.HIDE_COMPLETE"

    move-object/from16 v0, v17

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 512
    .restart local v17    # "intent":Landroid/content/Intent;
    const-string/jumbo v4, "com.android.bluetooth"

    const-class v5, Lcom/android/bluetooth/opp/BluetoothOppReceiver;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 513
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v17

    invoke-static {v4, v5, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iput-object v4, v13, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 514
    move-wide/from16 v0, v24

    iput-wide v0, v13, Landroid/app/Notification;->when:J

    .line 515
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    const v5, -0xf4246

    invoke-virtual {v4, v5, v13}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 373
    .end local v10    # "caption":Ljava/lang/String;
    .end local v13    # "inNoti":Landroid/app/Notification;
    .end local v17    # "intent":Landroid/content/Intent;
    .end local v27    # "title":Ljava/lang/String;
    .end local v28    # "unsuccess_caption":Ljava/lang/String;
    :cond_f
    :goto_7
    return-void

    .line 517
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    if-eqz v4, :cond_f

    .line 518
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    const v5, -0xf4246

    invoke-virtual {v4, v5}, Landroid/app/NotificationManager;->cancel(I)V

    .line 519
    sget-boolean v4, Lcom/android/bluetooth/opp/BluetoothOppNotification;->V:Z

    if-eqz v4, :cond_f

    const-string/jumbo v4, "BluetoothOppNotification"

    const-string/jumbo v5, "inbound notification was removed."

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method private updateIncomingFileConfirmNotification()V
    .locals 18

    .prologue
    .line 527
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    .line 528
    const-string/jumbo v5, "confirm == \'0\' AND (visibility IS NULL OR visibility == \'0\')"

    const-string/jumbo v7, "_id"

    .line 527
    const/4 v4, 0x0

    .line 528
    const/4 v6, 0x0

    .line 527
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 534
    :goto_0
    if-nez v10, :cond_0

    .line 535
    return-void

    .line 529
    :catch_0
    move-exception v11

    .line 530
    .local v11, "e":Landroid/database/sqlite/SQLiteException;
    const/4 v10, 0x0

    .line 531
    .local v10, "cursor":Landroid/database/Cursor;
    const-string/jumbo v2, "BluetoothOppNotification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SQLite exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 538
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v11    # "e":Landroid/database/sqlite/SQLiteException;
    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_1

    .line 540
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    const v3, 0x7f060017

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v15

    .line 541
    .local v15, "title":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    .line 542
    const v3, 0x7f060018

    .line 541
    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 543
    .local v8, "caption":Ljava/lang/CharSequence;
    const-string/jumbo v2, "_id"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 544
    .local v12, "id":I
    const-string/jumbo v2, "timestamp"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 545
    .local v16, "timeStamp":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 547
    .local v9, "contentUri":Landroid/net/Uri;
    new-instance v14, Landroid/app/Notification;

    invoke-direct {v14}, Landroid/app/Notification;-><init>()V

    .line 548
    .local v14, "n":Landroid/app/Notification;
    const/high16 v2, 0x7f020000

    iput v2, v14, Landroid/app/Notification;->icon:I

    .line 549
    iget v2, v14, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x8

    iput v2, v14, Landroid/app/Notification;->flags:I

    .line 550
    iget v2, v14, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v14, Landroid/app/Notification;->flags:I

    .line 551
    const/4 v2, 0x1

    iput v2, v14, Landroid/app/Notification;->defaults:I

    .line 552
    iput-object v15, v14, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 554
    new-instance v13, Landroid/content/Intent;

    const-string/jumbo v2, "android.btopp.intent.action.CONFIRM"

    invoke-direct {v13, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 555
    .local v13, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.android.bluetooth"

    const-class v3, Lcom/android/bluetooth/opp/BluetoothOppReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 556
    invoke-virtual {v13, v9}, Landroid/content/Intent;->setDataAndNormalize(Landroid/net/Uri;)Landroid/content/Intent;

    .line 558
    move-wide/from16 v0, v16

    iput-wide v0, v14, Landroid/app/Notification;->when:J

    .line 559
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 560
    const v3, 0x1060070

    .line 559
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, v14, Landroid/app/Notification;->color:I

    .line 561
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    .line 562
    const/4 v5, 0x0

    .line 561
    invoke-static {v3, v4, v13, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v14, v2, v15, v8, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 564
    new-instance v13, Landroid/content/Intent;

    .end local v13    # "intent":Landroid/content/Intent;
    const-string/jumbo v2, "android.btopp.intent.action.HIDE"

    invoke-direct {v13, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 565
    .restart local v13    # "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.android.bluetooth"

    const-class v3, Lcom/android/bluetooth/opp/BluetoothOppReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 566
    invoke-virtual {v13, v9}, Landroid/content/Intent;->setDataAndNormalize(Landroid/net/Uri;)Landroid/content/Intent;

    .line 567
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v13, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, v14, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 569
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    invoke-virtual {v2, v12, v14}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 538
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_1

    .line 571
    .end local v8    # "caption":Ljava/lang/CharSequence;
    .end local v9    # "contentUri":Landroid/net/Uri;
    .end local v12    # "id":I
    .end local v13    # "intent":Landroid/content/Intent;
    .end local v14    # "n":Landroid/app/Notification;
    .end local v15    # "title":Ljava/lang/CharSequence;
    .end local v16    # "timeStamp":J
    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 572
    const/4 v10, 0x0

    .line 524
    .restart local v10    # "cursor":Landroid/database/Cursor;
    return-void
.end method


# virtual methods
.method public updateNotification()V
    .locals 3

    .prologue
    .line 146
    monitor-enter p0

    .line 147
    :try_start_0
    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mPendingUpdate:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mPendingUpdate:I

    .line 148
    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mPendingUpdate:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mUpdateNotificationThread:Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;

    if-eqz v0, :cond_1

    .line 149
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->V:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BluetoothOppNotification"

    const-string/jumbo v1, "update too frequent, put in queue"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 150
    return-void

    .line 152
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 153
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->V:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "BluetoothOppNotification"

    const-string/jumbo v1, "send message"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit p0

    .line 145
    return-void

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateNotifier()V
    .locals 2

    .prologue
    .line 160
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->V:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BluetoothOppNotification"

    const-string/jumbo v1, "updateNotifier while BT is Turning OFF"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_0
    monitor-enter p0

    .line 162
    :try_start_0
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->updateActiveNotification()V

    .line 163
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->V:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "BluetoothOppNotification"

    const-string/jumbo v1, "Update Inbound and Outbound count"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mUpdateCompleteNotification:Z

    .line 165
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->updateCompletedNotification()V

    .line 166
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->cancelIncomingFileConfirmNotification()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 159
    return-void

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
