.class Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;
.super Ljava/lang/Thread;
.source "BluetoothOppService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/BluetoothOppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppService;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/bluetooth/opp/BluetoothOppService;

    .prologue
    .line 454
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    .line 455
    const-string/jumbo v0, "Bluetooth Share Service"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 454
    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 460
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 462
    const/4 v14, 0x0

    .line 464
    .local v14, "keepService":Z
    :goto_0
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    monitor-enter v1

    .line 465
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppService;->-get16(Lcom/android/bluetooth/opp/BluetoothOppService;)Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 466
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 467
    const-string/jumbo v2, "multiple UpdateThreads in BluetoothOppService"

    .line 466
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 464
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 469
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppService;->-get0()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "BtOppService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pendingUpdate is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v3}, Lcom/android/bluetooth/opp/BluetoothOppService;->-get10(Lcom/android/bluetooth/opp/BluetoothOppService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " keepUpdateThread is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 470
    const-string/jumbo v3, " sListenStarted is "

    .line 469
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 470
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v3}, Lcom/android/bluetooth/opp/BluetoothOppService;->-get6(Lcom/android/bluetooth/opp/BluetoothOppService;)Z

    move-result v3

    .line 469
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppService;->-get10(Lcom/android/bluetooth/opp/BluetoothOppService;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 472
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/bluetooth/opp/BluetoothOppService;->-set8(Lcom/android/bluetooth/opp/BluetoothOppService;Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;)Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;

    .line 473
    if-nez v14, :cond_2

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppService;->-get6(Lcom/android/bluetooth/opp/BluetoothOppService;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 478
    :cond_2
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppService;->-get0()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "BtOppService"

    const-string/jumbo v2, "***returning from updatethread***"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit v1

    .line 479
    return-void

    .line 474
    :cond_4
    :try_start_2
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppService;->-get0()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "BtOppService"

    const-string/jumbo v2, "Need to stop self"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    :cond_5
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothOppService;->stopSelf()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    .line 459
    return-void

    .line 482
    :cond_6
    :try_start_3
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppService;->-get11(Lcom/android/bluetooth/opp/BluetoothOppService;)Landroid/os/PowerManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_7

    .line 483
    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 488
    :cond_7
    :goto_1
    :try_start_4
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/bluetooth/opp/BluetoothOppService;->-set5(Lcom/android/bluetooth/opp/BluetoothOppService;Z)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v1

    .line 492
    :try_start_5
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothOppService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    .line 493
    const-string/jumbo v5, "_id"

    .line 492
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 493
    const/4 v4, 0x0

    .line 492
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v8

    .line 499
    :goto_2
    if-nez v8, :cond_8

    .line 500
    return-void

    .line 484
    :catch_0
    move-exception v10

    .line 485
    .local v10, "e":Ljava/lang/InterruptedException;
    :try_start_6
    const-string/jumbo v0, "BtOppService"

    const-string/jumbo v2, "Interrupted"

    invoke-static {v0, v2, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 494
    .end local v10    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v9

    .line 495
    .local v9, "e":Landroid/database/sqlite/SQLiteException;
    const/4 v8, 0x0

    .line 496
    .local v8, "cursor":Landroid/database/Cursor;
    const-string/jumbo v0, "BtOppService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SQLite exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 503
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "e":Landroid/database/sqlite/SQLiteException;
    :cond_8
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 505
    const/4 v7, 0x0

    .line 507
    .local v7, "arrayPos":I
    const/4 v14, 0x0

    .line 508
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v13

    .line 510
    .local v13, "isAfterLast":Z
    const-string/jumbo v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 526
    .local v12, "idColumn":I
    :goto_3
    if-eqz v13, :cond_9

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppService;->-get13(Lcom/android/bluetooth/opp/BluetoothOppService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_21

    .line 527
    :cond_9
    if-eqz v13, :cond_c

    .line 531
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppService;->-get13(Lcom/android/bluetooth/opp/BluetoothOppService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_a

    .line 532
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppService;->-get0()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string/jumbo v1, "BtOppService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Array update: trimming "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 533
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppService;->-get13(Lcom/android/bluetooth/opp/BluetoothOppService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    .line 532
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 533
    const-string/jumbo v2, " @ "

    .line 532
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    :cond_a
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v0, v7}, Lcom/android/bluetooth/opp/BluetoothOppService;->-wrap2(Lcom/android/bluetooth/opp/BluetoothOppService;I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 536
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    const/4 v1, 0x0

    invoke-static {v0, v1, v7}, Lcom/android/bluetooth/opp/BluetoothOppService;->-wrap1(Lcom/android/bluetooth/opp/BluetoothOppService;Landroid/database/Cursor;I)Z

    .line 538
    :cond_b
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v0, v7}, Lcom/android/bluetooth/opp/BluetoothOppService;->-wrap5(Lcom/android/bluetooth/opp/BluetoothOppService;I)V

    goto :goto_3

    .line 540
    :cond_c
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 542
    .local v11, "id":I
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppService;->-get13(Lcom/android/bluetooth/opp/BluetoothOppService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v7, v0, :cond_12

    .line 543
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v0, v8, v7}, Lcom/android/bluetooth/opp/BluetoothOppService;->-wrap6(Lcom/android/bluetooth/opp/BluetoothOppService;Landroid/database/Cursor;I)V

    .line 544
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppService;->-get0()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string/jumbo v0, "BtOppService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Array update: inserting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " @ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    :cond_d
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v0, v7}, Lcom/android/bluetooth/opp/BluetoothOppService;->-wrap2(Lcom/android/bluetooth/opp/BluetoothOppService;I)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v0, v8, v7}, Lcom/android/bluetooth/opp/BluetoothOppService;->-wrap1(Lcom/android/bluetooth/opp/BluetoothOppService;Landroid/database/Cursor;I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 548
    :cond_e
    :goto_4
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v0, v7}, Lcom/android/bluetooth/opp/BluetoothOppService;->-wrap3(Lcom/android/bluetooth/opp/BluetoothOppService;I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 549
    const/4 v14, 0x1

    .line 551
    :cond_f
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v0, v7}, Lcom/android/bluetooth/opp/BluetoothOppService;->-wrap0(Lcom/android/bluetooth/opp/BluetoothOppService;I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 552
    const/4 v14, 0x1

    .line 555
    :cond_10
    add-int/lit8 v7, v7, 0x1

    .line 556
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 557
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v13

    goto/16 :goto_3

    .line 546
    :cond_11
    const/4 v14, 0x1

    goto :goto_4

    .line 559
    :cond_12
    const/4 v6, 0x0

    .line 560
    .local v6, "arrayId":I
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppService;->-get13(Lcom/android/bluetooth/opp/BluetoothOppService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_13

    .line 561
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppService;->-get13(Lcom/android/bluetooth/opp/BluetoothOppService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v6, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    .line 563
    :cond_13
    if-ge v6, v11, :cond_16

    .line 564
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppService;->-get0()Z

    move-result v0

    if-eqz v0, :cond_14

    const-string/jumbo v0, "BtOppService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Array update: removing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " @ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    :cond_14
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v0, v7}, Lcom/android/bluetooth/opp/BluetoothOppService;->-wrap2(Lcom/android/bluetooth/opp/BluetoothOppService;I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 567
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    const/4 v1, 0x0

    invoke-static {v0, v1, v7}, Lcom/android/bluetooth/opp/BluetoothOppService;->-wrap1(Lcom/android/bluetooth/opp/BluetoothOppService;Landroid/database/Cursor;I)Z

    .line 569
    :cond_15
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v0, v7}, Lcom/android/bluetooth/opp/BluetoothOppService;->-wrap5(Lcom/android/bluetooth/opp/BluetoothOppService;I)V

    goto/16 :goto_3

    .line 570
    :cond_16
    if-ne v6, v11, :cond_1b

    .line 573
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v1}, Lcom/android/bluetooth/opp/BluetoothOppService;->-get17(Lcom/android/bluetooth/opp/BluetoothOppService;)Z

    move-result v1

    invoke-static {v0, v8, v7, v1}, Lcom/android/bluetooth/opp/BluetoothOppService;->-wrap10(Lcom/android/bluetooth/opp/BluetoothOppService;Landroid/database/Cursor;IZ)V

    .line 574
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v0, v7}, Lcom/android/bluetooth/opp/BluetoothOppService;->-wrap2(Lcom/android/bluetooth/opp/BluetoothOppService;I)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v0, v8, v7}, Lcom/android/bluetooth/opp/BluetoothOppService;->-wrap1(Lcom/android/bluetooth/opp/BluetoothOppService;Landroid/database/Cursor;I)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 577
    :cond_17
    :goto_5
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v0, v7}, Lcom/android/bluetooth/opp/BluetoothOppService;->-wrap3(Lcom/android/bluetooth/opp/BluetoothOppService;I)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 578
    const/4 v14, 0x1

    .line 580
    :cond_18
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v0, v7}, Lcom/android/bluetooth/opp/BluetoothOppService;->-wrap0(Lcom/android/bluetooth/opp/BluetoothOppService;I)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 581
    const/4 v14, 0x1

    .line 584
    :cond_19
    add-int/lit8 v7, v7, 0x1

    .line 585
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 586
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v13

    goto/16 :goto_3

    .line 575
    :cond_1a
    const/4 v14, 0x1

    goto :goto_5

    .line 590
    :cond_1b
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppService;->-get0()Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string/jumbo v0, "BtOppService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Array update: appending "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " @ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    :cond_1c
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v0, v8, v7}, Lcom/android/bluetooth/opp/BluetoothOppService;->-wrap6(Lcom/android/bluetooth/opp/BluetoothOppService;Landroid/database/Cursor;I)V

    .line 593
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v0, v7}, Lcom/android/bluetooth/opp/BluetoothOppService;->-wrap2(Lcom/android/bluetooth/opp/BluetoothOppService;I)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v0, v8, v7}, Lcom/android/bluetooth/opp/BluetoothOppService;->-wrap1(Lcom/android/bluetooth/opp/BluetoothOppService;Landroid/database/Cursor;I)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 596
    :cond_1d
    :goto_6
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v0, v7}, Lcom/android/bluetooth/opp/BluetoothOppService;->-wrap3(Lcom/android/bluetooth/opp/BluetoothOppService;I)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 597
    const/4 v14, 0x1

    .line 599
    :cond_1e
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v0, v7}, Lcom/android/bluetooth/opp/BluetoothOppService;->-wrap0(Lcom/android/bluetooth/opp/BluetoothOppService;I)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 600
    const/4 v14, 0x1

    .line 602
    :cond_1f
    add-int/lit8 v7, v7, 0x1

    .line 603
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 604
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v13

    goto/16 :goto_3

    .line 594
    :cond_20
    const/4 v14, 0x1

    goto :goto_6

    .line 610
    .end local v6    # "arrayId":I
    .end local v11    # "id":I
    :cond_21
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppService;->-get7(Lcom/android/bluetooth/opp/BluetoothOppService;)Lcom/android/bluetooth/opp/BluetoothOppNotification;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->updateNotification()V

    .line 612
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 613
    const/4 v8, 0x0

    .restart local v8    # "cursor":Landroid/database/Cursor;
    goto/16 :goto_0
.end method
