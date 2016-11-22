.class Lcom/android/bluetooth/opp/BluetoothOppManager$InsertShareInfoThread;
.super Ljava/lang/Thread;
.source "BluetoothOppManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/BluetoothOppManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InsertShareInfoThread"
.end annotation


# instance fields
.field private final mIsHandoverInitiated:Z

.field private final mIsMultiple:Z

.field private final mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

.field private final mTypeOfMultipleFiles:Ljava/lang/String;

.field private final mTypeOfSingleFile:Ljava/lang/String;

.field private final mUri:Ljava/lang/String;

.field private final mUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppManager;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppManager;Landroid/bluetooth/BluetoothDevice;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Z)V
    .locals 4
    .param p1, "this$0"    # Lcom/android/bluetooth/opp/BluetoothOppManager;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "multiple"    # Z
    .param p4, "typeOfSingleFile"    # Ljava/lang/String;
    .param p5, "uri"    # Ljava/lang/String;
    .param p6, "typeOfMultipleFiles"    # Ljava/lang/String;
    .param p8, "handoverInitiated"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothDevice;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 408
    .local p7, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppManager$InsertShareInfoThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppManager;

    .line 411
    const-string/jumbo v0, "Insert ShareInfo Thread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 412
    iput-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppManager$InsertShareInfoThread;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    .line 413
    iput-boolean p3, p0, Lcom/android/bluetooth/opp/BluetoothOppManager$InsertShareInfoThread;->mIsMultiple:Z

    .line 414
    iput-object p4, p0, Lcom/android/bluetooth/opp/BluetoothOppManager$InsertShareInfoThread;->mTypeOfSingleFile:Ljava/lang/String;

    .line 415
    iput-object p5, p0, Lcom/android/bluetooth/opp/BluetoothOppManager$InsertShareInfoThread;->mUri:Ljava/lang/String;

    .line 416
    iput-object p6, p0, Lcom/android/bluetooth/opp/BluetoothOppManager$InsertShareInfoThread;->mTypeOfMultipleFiles:Ljava/lang/String;

    .line 417
    iput-object p7, p0, Lcom/android/bluetooth/opp/BluetoothOppManager$InsertShareInfoThread;->mUris:Ljava/util/ArrayList;

    .line 418
    iput-boolean p8, p0, Lcom/android/bluetooth/opp/BluetoothOppManager$InsertShareInfoThread;->mIsHandoverInitiated:Z

    .line 420
    monitor-enter p1

    .line 421
    :try_start_0
    invoke-static {p1}, Lcom/android/bluetooth/opp/BluetoothOppManager;->-get2(Lcom/android/bluetooth/opp/BluetoothOppManager;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/android/bluetooth/opp/BluetoothOppManager;->-set0(Lcom/android/bluetooth/opp/BluetoothOppManager;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    .line 424
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppManager;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BluetoothOppManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Thread id is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppManager$InsertShareInfoThread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :cond_0
    return-void

    .line 420
    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0
.end method

.method private insertMultipleShare()V
    .locals 12

    .prologue
    .line 448
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppManager$InsertShareInfoThread;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 449
    .local v3, "count":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 450
    .local v6, "ts":Ljava/lang/Long;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_4

    .line 451
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppManager$InsertShareInfoThread;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 452
    .local v4, "fileUri":Landroid/net/Uri;
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppManager$InsertShareInfoThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppManager;

    invoke-static {v8}, Lcom/android/bluetooth/opp/BluetoothOppManager;->-get1(Lcom/android/bluetooth/opp/BluetoothOppManager;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 453
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    invoke-virtual {v0, v4}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 454
    .local v1, "contentType":Ljava/lang/String;
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppManager;->-get0()Z

    move-result v8

    if-eqz v8, :cond_0

    const-string/jumbo v8, "BluetoothOppManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Got mimetype: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "  Got uri: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 456
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppManager$InsertShareInfoThread;->mTypeOfMultipleFiles:Ljava/lang/String;

    .line 459
    :cond_1
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 460
    .local v7, "values":Landroid/content/ContentValues;
    const-string/jumbo v8, "uri"

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    const-string/jumbo v8, "mimetype"

    invoke-virtual {v7, v8, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    const-string/jumbo v8, "destination"

    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothOppManager$InsertShareInfoThread;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v9}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    const-string/jumbo v8, "timestamp"

    invoke-virtual {v7, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 464
    iget-boolean v8, p0, Lcom/android/bluetooth/opp/BluetoothOppManager$InsertShareInfoThread;->mIsHandoverInitiated:Z

    if-eqz v8, :cond_2

    .line 465
    const-string/jumbo v8, "confirm"

    .line 466
    const/4 v9, 0x5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 465
    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 468
    :cond_2
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppManager$InsertShareInfoThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppManager;

    invoke-static {v8}, Lcom/android/bluetooth/opp/BluetoothOppManager;->-get1(Lcom/android/bluetooth/opp/BluetoothOppManager;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 469
    sget-object v9, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    .line 468
    invoke-virtual {v8, v9, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 470
    .local v2, "contentUri":Landroid/net/Uri;
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppManager;->-get0()Z

    move-result v8

    if-eqz v8, :cond_3

    const-string/jumbo v8, "BluetoothOppManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Insert contentUri: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "  to device: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 471
    iget-object v10, p0, Lcom/android/bluetooth/opp/BluetoothOppManager$InsertShareInfoThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppManager;

    iget-object v11, p0, Lcom/android/bluetooth/opp/BluetoothOppManager$InsertShareInfoThread;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v10, v11}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getDeviceName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v10

    .line 470
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 447
    .end local v0    # "contentResolver":Landroid/content/ContentResolver;
    .end local v1    # "contentType":Ljava/lang/String;
    .end local v2    # "contentUri":Landroid/net/Uri;
    .end local v4    # "fileUri":Landroid/net/Uri;
    .end local v7    # "values":Landroid/content/ContentValues;
    :cond_4
    return-void
.end method

.method private insertSingleShare()V
    .locals 6

    .prologue
    .line 479
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 480
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "uri"

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppManager$InsertShareInfoThread;->mUri:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    const-string/jumbo v2, "mimetype"

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppManager$InsertShareInfoThread;->mTypeOfSingleFile:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    const-string/jumbo v2, "destination"

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppManager$InsertShareInfoThread;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    iget-boolean v2, p0, Lcom/android/bluetooth/opp/BluetoothOppManager$InsertShareInfoThread;->mIsHandoverInitiated:Z

    if-eqz v2, :cond_0

    .line 484
    const-string/jumbo v2, "confirm"

    .line 485
    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 484
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 487
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppManager$InsertShareInfoThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppManager;

    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppManager;->-get1(Lcom/android/bluetooth/opp/BluetoothOppManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 489
    .local v0, "contentUri":Landroid/net/Uri;
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppManager;->-get0()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "BluetoothOppManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Insert contentUri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  to device: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 490
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppManager$InsertShareInfoThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppManager;

    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppManager$InsertShareInfoThread;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4, v5}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getDeviceName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v4

    .line 489
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    :cond_1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 429
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 430
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppManager$InsertShareInfoThread;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v0, :cond_0

    .line 431
    const-string/jumbo v0, "BluetoothOppManager"

    const-string/jumbo v1, "Target bt device is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    return-void

    .line 434
    :cond_0
    iget-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppManager$InsertShareInfoThread;->mIsMultiple:Z

    if-eqz v0, :cond_1

    .line 435
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppManager$InsertShareInfoThread;->insertMultipleShare()V

    .line 439
    :goto_0
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppManager$InsertShareInfoThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppManager;

    monitor-enter v1

    .line 440
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppManager$InsertShareInfoThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppManager;

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppManager;->-get2(Lcom/android/bluetooth/opp/BluetoothOppManager;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v2}, Lcom/android/bluetooth/opp/BluetoothOppManager;->-set0(Lcom/android/bluetooth/opp/BluetoothOppManager;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 428
    return-void

    .line 437
    :cond_1
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppManager$InsertShareInfoThread;->insertSingleShare()V

    goto :goto_0

    .line 439
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
