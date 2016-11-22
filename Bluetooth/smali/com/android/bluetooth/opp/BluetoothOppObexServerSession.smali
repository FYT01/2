.class public Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;
.super Ljavax/obex/ServerRequestHandler;
.source "BluetoothOppObexServerSession.java"

# interfaces
.implements Lcom/android/bluetooth/opp/BluetoothOppObexSession;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;
    }
.end annotation


# static fields
.field private static final D:Z = true

.field private static final TAG:Ljava/lang/String; = "BtOppObexServer"

.field private static final V:Z


# instance fields
.field private mAccepted:I

.field private mCallback:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

.field private mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

.field private mInterrupted:Z

.field private mLocalShareInfoId:I

.field private mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mServerBlocking:Z

.field private mSession:Ljavax/obex/ServerSession;

.field mTimeoutMsgSent:Z

.field private mTimestamp:J

.field mTransferInProgress:Z

.field private mTransport:Ljavax/obex/ObexTransport;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private position:J


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->V:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->position:J

    return-wide v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 80
    const-string/jumbo v0, "BluetoothOpp"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->V:Z

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljavax/obex/ObexTransport;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "transport"    # Ljavax/obex/ObexTransport;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 117
    invoke-direct {p0}, Ljavax/obex/ServerRequestHandler;-><init>()V

    .line 86
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mCallback:Landroid/os/Handler;

    .line 89
    iput-boolean v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mServerBlocking:Z

    .line 97
    iput v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mAccepted:I

    .line 99
    iput-boolean v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInterrupted:Z

    .line 111
    iput-boolean v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mTimeoutMsgSent:Z

    .line 113
    iput-boolean v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mTransferInProgress:Z

    .line 118
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mContext:Landroid/content/Context;

    .line 119
    iput-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mTransport:Ljavax/obex/ObexTransport;

    .line 120
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 122
    .local v0, "pm":Landroid/os/PowerManager;
    const-string/jumbo v1, "BtOppObexServer"

    .line 121
    const v2, 0x3000001a

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 123
    const-string/jumbo v1, "BtOppObexServer"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 117
    return-void
.end method

.method private processShareInfo()Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;
    .locals 6

    .prologue
    .line 667
    const-string/jumbo v1, "BtOppObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "processShareInfo() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v3, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v2, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    .line 668
    invoke-static {v1, v2}, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->generateFileInfo(Landroid/content/Context;I)Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    move-result-object v0

    .line 670
    .local v0, "fileInfo":Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;
    sget-boolean v1, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->V:Z

    if-eqz v1, :cond_0

    .line 671
    const-string/jumbo v1, "BtOppObexServer"

    const-string/jumbo v2, "Generate BluetoothOppReceiveFileInfo:"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    const-string/jumbo v1, "BtOppObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "filename  :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    const-string/jumbo v1, "BtOppObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "length    :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mLength:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    const-string/jumbo v1, "BtOppObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "status    :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    :cond_0
    return-object v0
.end method

.method private receiveFile(Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;Ljavax/obex/Operation;)I
    .locals 30
    .param p1, "fileInfo"    # Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;
    .param p2, "op"    # Ljavax/obex/Operation;

    .prologue
    .line 539
    const-wide/16 v6, 0x0

    .line 540
    .local v6, "beginTime":J
    const/16 v18, -0x1

    .line 541
    .local v18, "status":I
    const/4 v5, 0x0

    .line 542
    .local v5, "bos":Ljava/io/BufferedOutputStream;
    const/16 v19, 0x0

    .line 545
    .local v19, "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;
    const/4 v15, 0x0

    .line 546
    .local v15, "is":Ljava/io/InputStream;
    const/4 v11, 0x0

    .line 548
    .local v11, "error":Z
    :try_start_0
    invoke-interface/range {p2 .. p2}, Ljavax/obex/Operation;->openInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    .line 555
    .end local v15    # "is":Ljava/io/InputStream;
    :goto_0
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v25, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "/"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 557
    .local v8, "contentUri":Landroid/net/Uri;
    if-nez v11, :cond_0

    .line 558
    new-instance v23, Landroid/content/ContentValues;

    invoke-direct/range {v23 .. v23}, Landroid/content/ContentValues;-><init>()V

    .line 559
    .local v23, "updateValues":Landroid/content/ContentValues;
    const-string/jumbo v24, "_data"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v8, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 563
    .end local v23    # "updateValues":Landroid/content/ContentValues;
    :cond_0
    const-wide/16 v24, 0x0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->position:J

    .line 564
    if-nez v11, :cond_1

    .line 565
    new-instance v5, Ljava/io/BufferedOutputStream;

    .end local v5    # "bos":Ljava/io/BufferedOutputStream;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mOutputStream:Ljava/io/FileOutputStream;

    move-object/from16 v24, v0

    const/high16 v25, 0x10000

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-direct {v5, v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 568
    :cond_1
    if-nez v11, :cond_7

    .line 569
    invoke-interface/range {p2 .. p2}, Ljavax/obex/Operation;->getMaxPacketSize()I

    move-result v16

    .line 570
    .local v16, "outputBufferSize":I
    move/from16 v0, v16

    new-array v4, v0, [B

    .line 571
    .local v4, "b":[B
    const/16 v17, 0x0

    .line 572
    .local v17, "readLength":I
    const-wide/16 v20, 0x0

    .line 574
    .local v20, "timestamp":J
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v6

    move-object/from16 v22, v19

    .line 575
    .end local v19    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;
    .local v22, "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;
    :goto_1
    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInterrupted:Z

    move/from16 v24, v0

    if-nez v24, :cond_3

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->position:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mLength:J

    move-wide/from16 v26, v0

    cmp-long v24, v24, v26

    if-eqz v24, :cond_3

    .line 577
    sget-boolean v24, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->V:Z

    if-eqz v24, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 579
    :cond_2
    invoke-virtual {v15, v4}, Ljava/io/InputStream;->read([B)I

    move-result v17

    .line 580
    const/16 v24, -0x1

    move/from16 v0, v17

    move/from16 v1, v24

    if-ne v0, v1, :cond_a

    .line 581
    const-string/jumbo v24, "BtOppObexServer"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Receive file reached stream end at position"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->position:J

    move-wide/from16 v26, v0

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 601
    :cond_3
    if-eqz v22, :cond_14

    .line 603
    :try_start_3
    sget-boolean v24, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->V:Z

    if-eqz v24, :cond_4

    const-string/jumbo v24, "BtOppObexServer"

    const-string/jumbo v25, "Worker for Updation : Destroying"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    :cond_4
    invoke-virtual/range {v22 .. v22}, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;->interrupt()V

    .line 605
    invoke-virtual/range {v22 .. v22}, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;->join()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 606
    const/16 v19, 0x0

    .line 608
    .end local v22    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;
    .restart local v19    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;
    :try_start_4
    new-instance v23, Landroid/content/ContentValues;

    invoke-direct/range {v23 .. v23}, Landroid/content/ContentValues;-><init>()V

    .line 609
    .restart local v23    # "updateValues":Landroid/content/ContentValues;
    const-string/jumbo v24, "current_bytes"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->position:J

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 610
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    .line 611
    const/16 v25, 0x0

    const/16 v26, 0x0

    .line 610
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v8, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 629
    .end local v19    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;
    .end local v23    # "updateValues":Landroid/content/ContentValues;
    :cond_5
    :goto_2
    if-eqz v19, :cond_7

    .line 630
    sget-boolean v24, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->V:Z

    if-eqz v24, :cond_6

    const-string/jumbo v24, "BtOppObexServer"

    const-string/jumbo v25, "Worker for Updation : Finally Destroying"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    :cond_6
    invoke-virtual/range {v19 .. v19}, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;->interrupt()V

    .line 632
    :goto_3
    const/16 v19, 0x0

    .line 637
    .end local v4    # "b":[B
    .end local v16    # "outputBufferSize":I
    .end local v17    # "readLength":I
    .end local v20    # "timestamp":J
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInterrupted:Z

    move/from16 v24, v0

    if-eqz v24, :cond_12

    .line 638
    const-string/jumbo v24, "BtOppObexServer"

    const-string/jumbo v25, "receiving file interrupted by user."

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    const/16 v18, 0x1ea

    .line 656
    :cond_8
    :goto_4
    if-eqz v5, :cond_9

    .line 658
    :try_start_5
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 663
    :cond_9
    :goto_5
    return v18

    .line 549
    .end local v8    # "contentUri":Landroid/net/Uri;
    .restart local v5    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v15    # "is":Ljava/io/InputStream;
    .restart local v19    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;
    :catch_0
    move-exception v10

    .line 550
    .local v10, "e1":Ljava/io/IOException;
    const-string/jumbo v24, "BtOppObexServer"

    const-string/jumbo v25, "Error when openInputStream"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    const/16 v18, 0x1f0

    .line 552
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 585
    .end local v5    # "bos":Ljava/io/BufferedOutputStream;
    .end local v10    # "e1":Ljava/io/IOException;
    .end local v15    # "is":Ljava/io/InputStream;
    .end local v19    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;
    .restart local v4    # "b":[B
    .restart local v8    # "contentUri":Landroid/net/Uri;
    .restart local v16    # "outputBufferSize":I
    .restart local v17    # "readLength":I
    .restart local v20    # "timestamp":J
    .restart local v22    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;
    :cond_a
    const/16 v24, 0x0

    :try_start_6
    move/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v5, v4, v0, v1}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 586
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->position:J

    move-wide/from16 v24, v0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v26, v0

    add-long v24, v24, v26

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->position:J

    .line 588
    sget-boolean v24, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->V:Z

    if-eqz v24, :cond_b

    .line 589
    const-string/jumbo v24, "BtOppObexServer"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Receive file position = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->position:J

    move-wide/from16 v26, v0

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " readLength "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 590
    const-string/jumbo v26, " bytes took "

    .line 589
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 591
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    sub-long v26, v26, v20

    .line 589
    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 591
    const-string/jumbo v26, " ms"

    .line 589
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    :cond_b
    if-nez v22, :cond_15

    .line 595
    new-instance v19, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2, v8}, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;-><init>(Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 596
    .end local v22    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;
    .local v19, "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;
    :try_start_7
    sget-boolean v24, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->V:Z

    if-eqz v24, :cond_c

    const-string/jumbo v24, "BtOppObexServer"

    const-string/jumbo v25, "Worker for Updation : Created"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    :cond_c
    invoke-virtual/range {v19 .. v19}, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;->start()V

    :goto_6
    move-object/from16 v22, v19

    .end local v19    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;
    .restart local v22    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;
    goto/16 :goto_1

    .line 612
    :catch_1
    move-exception v14

    .local v14, "ie":Ljava/lang/InterruptedException;
    move-object/from16 v19, v22

    .line 613
    .end local v22    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;
    :goto_7
    sget-boolean v24, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->V:Z

    if-eqz v24, :cond_5

    const-string/jumbo v24, "BtOppObexServer"

    const-string/jumbo v25, "Interrupted waiting for uiUpdateThread to join"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_2

    .line 616
    .end local v14    # "ie":Ljava/lang/InterruptedException;
    :catch_2
    move-exception v10

    .line 617
    .restart local v10    # "e1":Ljava/io/IOException;
    :goto_8
    :try_start_8
    const-string/jumbo v24, "BtOppObexServer"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Error when receiving file: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    const-string/jumbo v24, "Abort Received"

    invoke-virtual {v10}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_f

    .line 620
    const/16 v18, 0x1ea

    .line 624
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v24, v0

    if-eqz v24, :cond_d

    .line 625
    new-instance v24, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-direct/range {v24 .. v25}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->delete()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 627
    :cond_d
    const/4 v11, 0x1

    .line 629
    if-eqz v19, :cond_7

    .line 630
    sget-boolean v24, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->V:Z

    if-eqz v24, :cond_e

    const-string/jumbo v24, "BtOppObexServer"

    const-string/jumbo v25, "Worker for Updation : Finally Destroying"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    :cond_e
    invoke-virtual/range {v19 .. v19}, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;->interrupt()V

    goto/16 :goto_3

    .line 622
    :cond_f
    const/16 v18, 0x1f0

    goto :goto_9

    .line 628
    .end local v10    # "e1":Ljava/io/IOException;
    :catchall_0
    move-exception v24

    .line 629
    :goto_a
    if-eqz v19, :cond_11

    .line 630
    sget-boolean v25, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->V:Z

    if-eqz v25, :cond_10

    const-string/jumbo v25, "BtOppObexServer"

    const-string/jumbo v26, "Worker for Updation : Finally Destroying"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    :cond_10
    invoke-virtual/range {v19 .. v19}, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;->interrupt()V

    .line 632
    const/16 v19, 0x0

    .line 628
    :cond_11
    throw v24

    .line 641
    .end local v4    # "b":[B
    .end local v16    # "outputBufferSize":I
    .end local v17    # "readLength":I
    .end local v20    # "timestamp":J
    :cond_12
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->position:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mLength:J

    move-wide/from16 v26, v0

    cmp-long v24, v24, v26

    if-nez v24, :cond_13

    .line 642
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 643
    .local v12, "endTime":J
    const-string/jumbo v24, "BtOppObexServer"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Receiving file completed for "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 644
    const-string/jumbo v26, " length "

    .line 643
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 644
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mLength:J

    move-wide/from16 v26, v0

    .line 643
    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 644
    const-string/jumbo v26, " Bytes. Approx. throughput is "

    .line 643
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 645
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mLength:J

    move-wide/from16 v26, v0

    sub-long v28, v12, v6

    invoke-static/range {v26 .. v29}, Lcom/android/bluetooth/opp/BluetoothShare;->throughputInKbps(JJ)F

    move-result v26

    .line 643
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 646
    const-string/jumbo v26, " Kbps"

    .line 643
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    const/16 v18, 0xc8

    goto/16 :goto_4

    .line 649
    .end local v12    # "endTime":J
    :cond_13
    const-string/jumbo v24, "BtOppObexServer"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Reading file failed at "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->position:J

    move-wide/from16 v26, v0

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " of "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mLength:J

    move-wide/from16 v26, v0

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    const/16 v24, -0x1

    move/from16 v0, v18

    move/from16 v1, v24

    if-ne v0, v1, :cond_8

    .line 651
    const/16 v18, 0x1eb

    goto/16 :goto_4

    .line 659
    :catch_3
    move-exception v9

    .line 660
    .local v9, "e":Ljava/io/IOException;
    const-string/jumbo v24, "BtOppObexServer"

    const-string/jumbo v25, "Error when closing stream after send"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 628
    .end local v9    # "e":Ljava/io/IOException;
    .restart local v4    # "b":[B
    .restart local v16    # "outputBufferSize":I
    .restart local v17    # "readLength":I
    .restart local v20    # "timestamp":J
    .restart local v22    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;
    :catchall_1
    move-exception v24

    move-object/from16 v19, v22

    .end local v22    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;
    .restart local v19    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;
    goto/16 :goto_a

    .line 616
    .end local v19    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;
    .restart local v22    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;
    :catch_4
    move-exception v10

    .restart local v10    # "e1":Ljava/io/IOException;
    move-object/from16 v19, v22

    .end local v22    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;
    .restart local v19    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;
    goto/16 :goto_8

    .line 612
    .end local v10    # "e1":Ljava/io/IOException;
    .local v19, "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;
    :catch_5
    move-exception v14

    .restart local v14    # "ie":Ljava/lang/InterruptedException;
    goto/16 :goto_7

    .end local v14    # "ie":Ljava/lang/InterruptedException;
    .end local v19    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;
    .restart local v22    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;
    :cond_14
    move-object/from16 v19, v22

    .end local v22    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;
    .local v19, "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;
    goto/16 :goto_2

    .end local v19    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;
    .restart local v22    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;
    :cond_15
    move-object/from16 v19, v22

    .end local v22    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;
    .restart local v19    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;
    goto/16 :goto_6
.end method

.method private declared-synchronized releaseWakeLocks()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 728
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 729
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 731
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 732
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    .line 727
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public addShare(Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V
    .locals 3
    .param p1, "info"    # Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .prologue
    .line 243
    const-string/jumbo v0, "BtOppObexServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "addShare for id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .line 245
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->processShareInfo()Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    .line 242
    return-void
.end method

.method public onAbort(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)I
    .locals 2
    .param p1, "request"    # Ljavax/obex/HeaderSet;
    .param p2, "reply"    # Ljavax/obex/HeaderSet;

    .prologue
    .line 231
    const-string/jumbo v0, "BtOppObexServer"

    const-string/jumbo v1, "onAbort()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mTransferInProgress:Z

    if-eqz v0, :cond_0

    .line 233
    const/16 v0, 0xa0

    return v0

    .line 238
    :cond_0
    const/16 v0, 0xc6

    return v0
.end method

.method public onClose()V
    .locals 3

    .prologue
    .line 738
    sget-boolean v1, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->V:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "BtOppObexServer"

    const-string/jumbo v2, "release WakeLock"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->releaseWakeLocks()V

    .line 742
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mCallback:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 743
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mCallback:Landroid/os/Handler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 744
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 745
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 746
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 737
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    return-void
.end method

.method public onConnect(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)I
    .locals 9
    .param p1, "request"    # Ljavax/obex/HeaderSet;
    .param p2, "reply"    # Ljavax/obex/HeaderSet;

    .prologue
    .line 682
    const-string/jumbo v6, "BtOppObexServer"

    const-string/jumbo v7, "onConnect"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    sget-boolean v6, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->V:Z

    if-eqz v6, :cond_0

    invoke-static {p1}, Lcom/android/bluetooth/opp/Constants;->logHeader(Ljavax/obex/HeaderSet;)V

    .line 684
    :cond_0
    const/4 v4, 0x0

    .line 686
    .local v4, "objectCount":Ljava/lang/Long;
    const/16 v6, 0x46

    :try_start_0
    invoke-virtual {p1, v6}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 687
    .local v5, "uuid":[B
    sget-boolean v6, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->V:Z

    if-eqz v6, :cond_1

    const-string/jumbo v6, "BtOppObexServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onConnect(): uuid ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v5}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    :cond_1
    if-eqz v5, :cond_2

    .line 689
    const/16 v6, 0xc6

    return v6

    .line 692
    :cond_2
    const/16 v6, 0xc0

    invoke-virtual {p1, v6}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "objectCount":Ljava/lang/Long;
    check-cast v4, Ljava/lang/Long;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 698
    .local v4, "objectCount":Ljava/lang/Long;
    iget-object v6, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mTransport:Ljavax/obex/ObexTransport;

    instance-of v6, v6, Lcom/android/bluetooth/BluetoothObexTransport;

    if-eqz v6, :cond_4

    .line 699
    iget-object v6, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mTransport:Ljavax/obex/ObexTransport;

    check-cast v6, Lcom/android/bluetooth/BluetoothObexTransport;

    invoke-virtual {v6}, Lcom/android/bluetooth/BluetoothObexTransport;->getRemoteAddress()Ljava/lang/String;

    move-result-object v0

    .line 703
    .local v0, "destination":Ljava/lang/String;
    :goto_0
    iget-object v6, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppManager;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/android/bluetooth/opp/BluetoothOppManager;->isWhitelisted(Ljava/lang/String;)Z

    move-result v3

    .line 705
    .local v3, "isHandover":Z
    if-eqz v3, :cond_3

    .line 707
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v6, "android.nfc.handover.intent.action.HANDOVER_STARTED"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 708
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v4, :cond_5

    .line 709
    const-string/jumbo v6, "android.nfc.handover.intent.extra.OBJECT_COUNT"

    invoke-virtual {v4}, Ljava/lang/Long;->intValue()I

    move-result v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 714
    :goto_1
    const-string/jumbo v6, "android.nfc.handover.intent.extra.ADDRESS"

    invoke-virtual {v2, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 715
    iget-object v6, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "android.permission.NFC_HANDOVER_STATUS"

    invoke-virtual {v6, v2, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 717
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mTimestamp:J

    .line 718
    const/16 v6, 0xa0

    return v6

    .line 693
    .end local v0    # "destination":Ljava/lang/String;
    .end local v3    # "isHandover":Z
    .end local v4    # "objectCount":Ljava/lang/Long;
    .end local v5    # "uuid":[B
    :catch_0
    move-exception v1

    .line 694
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v6, "BtOppObexServer"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    const/16 v6, 0xd0

    return v6

    .line 701
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v4    # "objectCount":Ljava/lang/Long;
    .restart local v5    # "uuid":[B
    :cond_4
    const-string/jumbo v0, "FF:FF:FF:00:00:00"

    .restart local v0    # "destination":Ljava/lang/String;
    goto :goto_0

    .line 711
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "isHandover":Z
    :cond_5
    const-string/jumbo v6, "android.nfc.handover.intent.extra.OBJECT_COUNT"

    .line 712
    const/4 v7, -0x1

    .line 711
    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1
.end method

.method public onDisconnect(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)V
    .locals 2
    .param p1, "req"    # Ljavax/obex/HeaderSet;
    .param p2, "resp"    # Ljavax/obex/HeaderSet;

    .prologue
    .line 723
    const-string/jumbo v0, "BtOppObexServer"

    const-string/jumbo v1, "onDisconnect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    const/16 v0, 0xa0

    iput v0, p2, Ljavax/obex/HeaderSet;->responseCode:I

    .line 722
    return-void
.end method

.method public onPut(Ljavax/obex/Operation;)I
    .locals 30
    .param p1, "op"    # Ljavax/obex/Operation;

    .prologue
    .line 250
    const-string/jumbo v26, "BtOppObexServer"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "onPut "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const/16 v19, 0xa0

    .line 261
    .local v19, "obexResponse":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mAccepted:I

    move/from16 v26, v0

    const/16 v27, 0x3

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_0

    .line 262
    const/16 v26, 0xc3

    return v26

    .line 266
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mTransport:Ljavax/obex/ObexTransport;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    instance-of v0, v0, Lcom/android/bluetooth/BluetoothObexTransport;

    move/from16 v26, v0

    if-eqz v26, :cond_9

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mTransport:Ljavax/obex/ObexTransport;

    move-object/from16 v26, v0

    check-cast v26, Lcom/android/bluetooth/BluetoothObexTransport;

    invoke-virtual/range {v26 .. v26}, Lcom/android/bluetooth/BluetoothObexTransport;->getRemoteAddress()Ljava/lang/String;

    move-result-object v5

    .line 271
    .local v5, "destination":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppManager;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Lcom/android/bluetooth/opp/BluetoothOppManager;->isWhitelisted(Ljava/lang/String;)Z

    move-result v12

    .line 273
    .local v12, "isWhitelisted":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    .line 274
    const-string/jumbo v27, "bluetooth_accept_all_files"

    const/16 v28, 0x0

    .line 273
    invoke-static/range {v26 .. v28}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v26

    .line 274
    const/16 v27, 0x1

    .line 273
    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_a

    const/4 v11, 0x1

    .line 277
    .local v11, "isAcceptAllFilesEnabled":Z
    :goto_1
    const/16 v20, 0x0

    .line 279
    .local v20, "pre_reject":Z
    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljavax/obex/Operation;->getReceivedHeader()Ljavax/obex/HeaderSet;

    move-result-object v21

    .line 280
    .local v21, "request":Ljavax/obex/HeaderSet;
    sget-boolean v26, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->V:Z

    if-eqz v26, :cond_1

    invoke-static/range {v21 .. v21}, Lcom/android/bluetooth/opp/Constants;->logHeader(Ljavax/obex/HeaderSet;)V

    .line 281
    :cond_1
    const/16 v26, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 282
    .local v17, "name":Ljava/lang/String;
    const/16 v26, 0xc3

    move-object/from16 v0, v21

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    .line 283
    .local v13, "length":Ljava/lang/Long;
    const/16 v26, 0x42

    move-object/from16 v0, v21

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 285
    .local v15, "mimeType":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    const-wide/16 v28, 0x0

    cmp-long v26, v26, v28

    if-nez v26, :cond_2

    .line 286
    const-string/jumbo v26, "BtOppObexServer"

    const-string/jumbo v27, "length is 0, reject the transfer"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    const/16 v20, 0x1

    .line 288
    const/16 v19, 0xcb

    .line 291
    :cond_2
    if-eqz v17, :cond_3

    const-string/jumbo v26, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_4

    .line 292
    :cond_3
    const-string/jumbo v26, "BtOppObexServer"

    const-string/jumbo v27, "name is null or empty, reject the transfer"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    const/16 v20, 0x1

    .line 294
    const/16 v19, 0xc0

    .line 297
    :cond_4
    if-nez v11, :cond_10

    .line 298
    if-nez v20, :cond_5

    .line 301
    const-string/jumbo v26, "."

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    .line 302
    .local v6, "dotIndex":I
    if-gez v6, :cond_b

    if-nez v15, :cond_b

    .line 304
    const-string/jumbo v26, "BtOppObexServer"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "There is no file extension or mime type,reject the transfer. File name:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    const/16 v20, 0x1

    .line 307
    const/16 v19, 0xc0

    .line 335
    .end local v6    # "dotIndex":I
    :cond_5
    :goto_2
    if-nez v20, :cond_8

    .line 336
    if-eqz v15, :cond_7

    .line 337
    if-nez v12, :cond_6

    .line 338
    sget-object v26, Lcom/android/bluetooth/opp/Constants;->ACCEPTABLE_SHARE_INBOUND_TYPES:[Ljava/lang/String;

    .line 337
    move-object/from16 v0, v26

    invoke-static {v15, v0}, Lcom/android/bluetooth/opp/Constants;->mimeTypeMatches(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_7

    .line 340
    :cond_6
    sget-object v26, Lcom/android/bluetooth/opp/Constants;->UNACCEPTABLE_SHARE_INBOUND_TYPES:[Ljava/lang/String;

    .line 339
    move-object/from16 v0, v26

    invoke-static {v15, v0}, Lcom/android/bluetooth/opp/Constants;->mimeTypeMatches(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v26

    .line 335
    if-eqz v26, :cond_8

    .line 342
    :cond_7
    const-string/jumbo v27, "BtOppObexServer"

    .line 343
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "mimeType is null or in unacceptable list, reject the transfer. mimeType is "

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    .line 344
    if-nez v15, :cond_f

    const-string/jumbo v26, "null"

    .line 343
    :goto_3
    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 342
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    const/16 v20, 0x1

    .line 346
    const/16 v19, 0xcf

    .line 358
    :cond_8
    :goto_4
    if-eqz v20, :cond_11

    const/16 v26, 0xa0

    move/from16 v0, v19

    move/from16 v1, v26

    if-eq v0, v1, :cond_11

    .line 360
    return v19

    .line 269
    .end local v5    # "destination":Ljava/lang/String;
    .end local v11    # "isAcceptAllFilesEnabled":Z
    .end local v12    # "isWhitelisted":Z
    .end local v13    # "length":Ljava/lang/Long;
    .end local v15    # "mimeType":Ljava/lang/String;
    .end local v17    # "name":Ljava/lang/String;
    .end local v20    # "pre_reject":Z
    .end local v21    # "request":Ljavax/obex/HeaderSet;
    :cond_9
    const-string/jumbo v5, "FF:FF:FF:00:00:00"

    .restart local v5    # "destination":Ljava/lang/String;
    goto/16 :goto_0

    .line 273
    .restart local v12    # "isWhitelisted":Z
    :cond_a
    const/4 v11, 0x0

    .restart local v11    # "isAcceptAllFilesEnabled":Z
    goto/16 :goto_1

    .line 309
    .restart local v6    # "dotIndex":I
    .restart local v13    # "length":Ljava/lang/Long;
    .restart local v15    # "mimeType":Ljava/lang/String;
    .restart local v17    # "name":Ljava/lang/String;
    .restart local v20    # "pre_reject":Z
    .restart local v21    # "request":Ljavax/obex/HeaderSet;
    :cond_b
    add-int/lit8 v26, v6, 0x1

    :try_start_1
    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    .line 310
    .local v9, "extension":Ljava/lang/String;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v14

    .line 311
    .local v14, "map":Landroid/webkit/MimeTypeMap;
    invoke-virtual {v14, v9}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 312
    .local v23, "type":Ljava/lang/String;
    sget-boolean v26, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->V:Z

    if-eqz v26, :cond_c

    .line 313
    const-string/jumbo v26, "BtOppObexServer"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "Mimetype guessed from extension "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " is "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :cond_c
    if-eqz v23, :cond_e

    .line 316
    move-object/from16 v15, v23

    .line 326
    :cond_d
    :goto_5
    if-eqz v15, :cond_5

    .line 327
    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_2

    .line 319
    :cond_e
    if-nez v15, :cond_d

    .line 321
    const-string/jumbo v26, "BtOppObexServer"

    const-string/jumbo v27, "Can\'t get mimetype, reject the transfer"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    const/16 v20, 0x1

    .line 323
    const/16 v19, 0xcf

    goto :goto_5

    .end local v6    # "dotIndex":I
    .end local v9    # "extension":Ljava/lang/String;
    .end local v14    # "map":Landroid/webkit/MimeTypeMap;
    .end local v23    # "type":Ljava/lang/String;
    :cond_f
    move-object/from16 v26, v15

    .line 344
    goto/16 :goto_3

    .line 350
    :cond_10
    const-string/jumbo v26, "BtOppObexServer"

    const-string/jumbo v27, "isAcceptAllFilesEnabled == true, skipped check of mime type"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    if-nez v15, :cond_8

    .line 352
    const-string/jumbo v15, "*/*"

    .line 354
    const-string/jumbo v26, "BtOppObexServer"

    const-string/jumbo v27, "mimeType is null. Fixed to */*"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4

    .line 363
    .end local v13    # "length":Ljava/lang/Long;
    .end local v15    # "mimeType":Ljava/lang/String;
    .end local v17    # "name":Ljava/lang/String;
    .end local v21    # "request":Ljavax/obex/HeaderSet;
    :catch_0
    move-exception v7

    .line 364
    .local v7, "e":Ljava/io/IOException;
    const-string/jumbo v26, "BtOppObexServer"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "get getReceivedHeaders error "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    const/16 v26, 0xc0

    return v26

    .line 368
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v13    # "length":Ljava/lang/Long;
    .restart local v15    # "mimeType":Ljava/lang/String;
    .restart local v17    # "name":Ljava/lang/String;
    .restart local v21    # "request":Ljavax/obex/HeaderSet;
    :cond_11
    new-instance v25, Landroid/content/ContentValues;

    invoke-direct/range {v25 .. v25}, Landroid/content/ContentValues;-><init>()V

    .line 370
    .local v25, "values":Landroid/content/ContentValues;
    const-string/jumbo v26, "hint"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    const-string/jumbo v26, "total_bytes"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 374
    const-string/jumbo v26, "mimetype"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    const-string/jumbo v26, "destination"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    const-string/jumbo v26, "direction"

    const/16 v27, 0x1

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 379
    const-string/jumbo v26, "timestamp"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mTimestamp:J

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 381
    const/16 v18, 0x1

    .line 383
    .local v18, "needConfirm":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mServerBlocking:Z

    move/from16 v26, v0

    if-nez v26, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mAccepted:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_12

    .line 384
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mAccepted:I

    move/from16 v26, v0

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_13

    .line 385
    :cond_12
    const-string/jumbo v26, "confirm"

    .line 386
    const/16 v27, 0x2

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    .line 385
    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 387
    const/16 v18, 0x0

    .line 390
    :cond_13
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mServerBlocking:Z

    .line 392
    if-eqz v12, :cond_14

    .line 393
    const-string/jumbo v26, "confirm"

    .line 394
    const/16 v27, 0x5

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    .line 393
    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 395
    const/16 v18, 0x0

    .line 399
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    sget-object v27, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    .line 400
    .local v4, "contentUri":Landroid/net/Uri;
    invoke-virtual {v4}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v26

    const/16 v27, 0x1

    invoke-interface/range {v26 .. v27}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mLocalShareInfoId:I

    .line 402
    if-eqz v18, :cond_16

    .line 403
    sget-boolean v26, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->V:Z

    if-eqz v26, :cond_15

    const-string/jumbo v26, "BtOppObexServer"

    const-string/jumbo v27, "acquire full WakeLock"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 406
    new-instance v10, Landroid/content/Intent;

    const-string/jumbo v26, "android.btopp.intent.action.INCOMING_FILE_NOTIFICATION"

    move-object/from16 v0, v26

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 407
    .local v10, "in":Landroid/content/Intent;
    const-string/jumbo v26, "com.android.bluetooth"

    const-class v27, Lcom/android/bluetooth/opp/BluetoothOppReceiver;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 411
    .end local v10    # "in":Landroid/content/Intent;
    :cond_16
    sget-boolean v26, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->V:Z

    if-eqz v26, :cond_17

    const-string/jumbo v26, "BtOppObexServer"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "insert contentUri: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    :cond_17
    sget-boolean v26, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->V:Z

    if-eqz v26, :cond_18

    const-string/jumbo v26, "BtOppObexServer"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "mLocalShareInfoId = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mLocalShareInfoId:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :cond_18
    monitor-enter p0

    .line 415
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v26

    if-eqz v26, :cond_1a

    .line 416
    sget-boolean v26, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->V:Z

    if-eqz v26, :cond_19

    const-string/jumbo v26, "BtOppObexServer"

    const-string/jumbo v27, "acquire partial WakeLock"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 422
    :cond_1a
    :goto_6
    :try_start_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mServerBlocking:Z

    move/from16 v26, v0

    if-eqz v26, :cond_1b

    .line 423
    const-wide/16 v26, 0x3e8

    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->wait(J)V

    .line 424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mCallback:Landroid/os/Handler;

    move-object/from16 v26, v0

    if-eqz v26, :cond_1a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mTimeoutMsgSent:Z

    move/from16 v26, v0

    if-nez v26, :cond_1a

    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mCallback:Landroid/os/Handler;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mCallback:Landroid/os/Handler;

    move-object/from16 v27, v0

    .line 426
    const/16 v28, 0x4

    .line 425
    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v27

    .line 427
    const-wide/32 v28, 0xc350

    .line 425
    invoke-virtual/range {v26 .. v29}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 428
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mTimeoutMsgSent:Z

    .line 429
    sget-boolean v26, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->V:Z

    if-eqz v26, :cond_1a

    const-string/jumbo v26, "BtOppObexServer"

    const-string/jumbo v27, "MSG_CONNECT_TIMEOUT sent"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_6

    .line 432
    :catch_1
    move-exception v8

    .line 433
    .local v8, "e":Ljava/lang/InterruptedException;
    :try_start_4
    sget-boolean v26, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->V:Z

    if-eqz v26, :cond_1b

    const-string/jumbo v26, "BtOppObexServer"

    const-string/jumbo v27, "Interrupted in onPut blocking"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v8    # "e":Ljava/lang/InterruptedException;
    :cond_1b
    monitor-exit p0

    .line 436
    const-string/jumbo v26, "BtOppObexServer"

    const-string/jumbo v27, "Server unblocked "

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    monitor-enter p0

    .line 438
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mCallback:Landroid/os/Handler;

    move-object/from16 v26, v0

    if-eqz v26, :cond_1c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mTimeoutMsgSent:Z

    move/from16 v26, v0

    if-eqz v26, :cond_1c

    .line 439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mCallback:Landroid/os/Handler;

    move-object/from16 v26, v0

    const/16 v27, 0x4

    invoke-virtual/range {v26 .. v27}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_1c
    monitor-exit p0

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mLocalShareInfoId:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_1d

    .line 450
    const-string/jumbo v26, "BtOppObexServer"

    const-string/jumbo v27, "Unexpected error!"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mConfirm:I

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mAccepted:I

    .line 454
    sget-boolean v26, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->V:Z

    if-eqz v26, :cond_1e

    const-string/jumbo v26, "BtOppObexServer"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "after confirm: userAccepted="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mAccepted:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    :cond_1e
    const/16 v22, 0xc8

    .line 457
    .local v22, "status":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mAccepted:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_1f

    .line 458
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mAccepted:I

    move/from16 v26, v0

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_24

    .line 462
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v26, v0

    if-nez v26, :cond_20

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mStatus:I

    move/from16 v22, v0

    .line 465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mStatus:I

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    .line 466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v27, v0

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 467
    const/16 v19, 0xd0

    .line 471
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v26, v0

    if-eqz v26, :cond_22

    .line 473
    new-instance v24, Landroid/content/ContentValues;

    invoke-direct/range {v24 .. v24}, Landroid/content/ContentValues;-><init>()V

    .line 474
    .local v24, "updateValues":Landroid/content/ContentValues;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v27, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, "/"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 475
    const-string/jumbo v26, "_data"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    const-string/jumbo v26, "status"

    const/16 v27, 0xc0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->receiveFile(Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;Ljavax/obex/Operation;)I

    move-result v22

    .line 483
    const/16 v26, 0xc8

    move/from16 v0, v22

    move/from16 v1, v26

    if-eq v0, v1, :cond_21

    .line 484
    const/16 v19, 0xd0

    .line 486
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v27, v0

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 489
    .end local v24    # "updateValues":Landroid/content/ContentValues;
    :cond_22
    const/16 v26, 0xc8

    move/from16 v0, v22

    move/from16 v1, v26

    if-ne v0, v1, :cond_27

    .line 490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mCallback:Landroid/os/Handler;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-static/range {v26 .. v27}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v16

    .line 491
    .local v16, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 492
    invoke-virtual/range {v16 .. v16}, Landroid/os/Message;->sendToTarget()V

    .line 532
    .end local v16    # "msg":Landroid/os/Message;
    :cond_23
    :goto_7
    return v19

    .line 414
    .end local v22    # "status":I
    :catchall_0
    move-exception v26

    monitor-exit p0

    throw v26

    .line 437
    :catchall_1
    move-exception v26

    monitor-exit p0

    throw v26

    .line 459
    .restart local v22    # "status":I
    :cond_24
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mAccepted:I

    move/from16 v26, v0

    const/16 v27, 0x5

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_1f

    .line 502
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mAccepted:I

    move/from16 v26, v0

    const/16 v27, 0x3

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_25

    .line 503
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mAccepted:I

    move/from16 v26, v0

    const/16 v27, 0x4

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_23

    .line 512
    :cond_25
    const-string/jumbo v26, "BtOppObexServer"

    const-string/jumbo v27, "Rejected incoming request"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v26, v0

    if-eqz v26, :cond_26

    .line 515
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mOutputStream:Ljava/io/FileOutputStream;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 519
    :goto_8
    new-instance v26, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-direct/range {v26 .. v27}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->delete()Z

    .line 522
    :cond_26
    const/16 v22, 0x1ea

    .line 523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v27, v0

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 524
    const/16 v19, 0xc3

    .line 526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mCallback:Landroid/os/Handler;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v16

    .line 527
    .restart local v16    # "msg":Landroid/os/Message;
    const/16 v26, 0x3

    move/from16 v0, v26

    move-object/from16 v1, v16

    iput v0, v1, Landroid/os/Message;->what:I

    .line 528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v26, v0

    .line 522
    const/16 v27, 0x1ea

    .line 528
    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    .line 529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 530
    invoke-virtual/range {v16 .. v16}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_7

    .line 494
    .end local v16    # "msg":Landroid/os/Message;
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mCallback:Landroid/os/Handler;

    move-object/from16 v26, v0

    if-eqz v26, :cond_23

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mCallback:Landroid/os/Handler;

    move-object/from16 v26, v0

    .line 496
    const/16 v27, 0x2

    .line 495
    invoke-static/range {v26 .. v27}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v16

    .line 497
    .restart local v16    # "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v26, v0

    move/from16 v0, v22

    move-object/from16 v1, v26

    iput v0, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    .line 498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 499
    invoke-virtual/range {v16 .. v16}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_7

    .line 516
    .end local v16    # "msg":Landroid/os/Message;
    :catch_2
    move-exception v7

    .line 517
    .restart local v7    # "e":Ljava/io/IOException;
    const-string/jumbo v26, "BtOppObexServer"

    const-string/jumbo v27, "error close file stream"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8
.end method

.method public preStart()V
    .locals 4

    .prologue
    .line 136
    :try_start_0
    const-string/jumbo v1, "BtOppObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Create ServerSession with transport "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mTransport:Ljavax/obex/ObexTransport;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    new-instance v1, Ljavax/obex/ServerSession;

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mTransport:Ljavax/obex/ObexTransport;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, v3}, Ljavax/obex/ServerSession;-><init>(Ljavax/obex/ObexTransport;Ljavax/obex/ServerRequestHandler;Ljavax/obex/Authenticator;)V

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mSession:Ljavax/obex/ServerSession;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :goto_0
    return-void

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v1, "BtOppObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Create server session error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public start(Landroid/os/Handler;I)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "numShares"    # I

    .prologue
    .line 147
    const-string/jumbo v0, "BtOppObexServer"

    const-string/jumbo v1, "Start!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mCallback:Landroid/os/Handler;

    .line 146
    return-void
.end method

.method public stop()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 161
    const-string/jumbo v1, "BtOppObexServer"

    const-string/jumbo v2, "Stop!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInterrupted:Z

    .line 163
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mSession:Ljavax/obex/ServerSession;

    if-eqz v1, :cond_0

    .line 165
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mSession:Ljavax/obex/ServerSession;

    invoke-virtual {v1}, Ljavax/obex/ServerSession;->close()V

    .line 166
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mTransport:Ljavax/obex/ObexTransport;

    invoke-interface {v1}, Ljavax/obex/ObexTransport;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :cond_0
    :goto_0
    iput-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mCallback:Landroid/os/Handler;

    .line 172
    iput-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mSession:Ljavax/obex/ServerSession;

    .line 156
    return-void

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v1, "BtOppObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "close mTransport error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unblock()V
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mServerBlocking:Z

    .line 126
    return-void
.end method
