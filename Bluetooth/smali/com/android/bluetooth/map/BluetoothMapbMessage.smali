.class public abstract Lcom/android/bluetooth/map/BluetoothMapbMessage;
.super Ljava/lang/Object;
.source "BluetoothMapbMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;,
        Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;
    }
.end annotation


# static fields
.field private static synthetic -com_android_bluetooth_map_BluetoothMapUtils$TYPESwitchesValues:[I = null

.field protected static final D:Z = true

.field public static INVALID_VALUE:I

.field protected static TAG:Ljava/lang/String;

.field protected static final V:Z


# instance fields
.field protected mAppParamCharset:I

.field private mBMsgLength:I

.field protected mCharset:Ljava/lang/String;

.field protected mEncoding:Ljava/lang/String;

.field private mFolder:Ljava/lang/String;

.field private mLanguage:Ljava/lang/String;

.field private mOriginator:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;",
            ">;"
        }
    .end annotation
.end field

.field private mPartId:J

.field private mRecipient:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;",
            ">;"
        }
    .end annotation
.end field

.field private mStatus:Ljava/lang/String;

.field protected mType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

.field private mVersionString:Ljava/lang/String;


# direct methods
.method private static synthetic -getcom_android_bluetooth_map_BluetoothMapUtils$TYPESwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->-com_android_bluetooth_map_BluetoothMapUtils$TYPESwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->-com_android_bluetooth_map_BluetoothMapUtils$TYPESwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->values()[Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->IM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->NONE:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_CDMA:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_GSM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->-com_android_bluetooth_map_BluetoothMapUtils$TYPESwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1

    :catch_5
    move-exception v1

    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    const-string/jumbo v0, "BluetoothMapbMessage"

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->TAG:Ljava/lang/String;

    .line 37
    const-string/jumbo v0, "BluetoothMap"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->V:Z

    .line 41
    const/4 v0, -0x1

    sput v0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->INVALID_VALUE:I

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 577
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string/jumbo v0, "VERSION:1.0"

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mVersionString:Ljava/lang/String;

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mAppParamCharset:I

    .line 46
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mStatus:Ljava/lang/String;

    .line 47
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    .line 49
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mFolder:Ljava/lang/String;

    .line 52
    sget v0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->INVALID_VALUE:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mPartId:J

    .line 53
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mEncoding:Ljava/lang/String;

    .line 54
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mCharset:Ljava/lang/String;

    .line 55
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mLanguage:Ljava/lang/String;

    .line 57
    sget v0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->INVALID_VALUE:I

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mBMsgLength:I

    .line 59
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mOriginator:Ljava/util/ArrayList;

    .line 60
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mRecipient:Ljava/util/ArrayList;

    .line 577
    return-void
.end method

.method public static parse(Ljava/io/InputStream;I)Lcom/android/bluetooth/map/BluetoothMapbMessage;
    .locals 25
    .param p0, "bMsgStream"    # Ljava/io/InputStream;
    .param p1, "appParamCharset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 595
    const-string/jumbo v11, ""

    .line 596
    .local v11, "line":Ljava/lang/String;
    const/4 v12, 0x0

    .line 597
    .local v12, "newBMsg":Lcom/android/bluetooth/map/BluetoothMapbMessage;
    const/16 v17, 0x0

    .line 598
    .local v17, "status":Z
    const/16 v18, 0x0

    .line 599
    .local v18, "statusFound":Z
    const/16 v19, 0x0

    .line 600
    .local v19, "type":Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    const/4 v9, 0x0

    .line 607
    .local v9, "folder":Ljava/lang/String;
    sget-boolean v22, Lcom/android/bluetooth/map/BluetoothMapbMessage;->V:Z

    if-eqz v22, :cond_6

    .line 609
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v16

    .line 610
    .local v16, "sdCard":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "/bluetooth/log/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 611
    .local v4, "dir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 612
    new-instance v8, Ljava/io/File;

    const-string/jumbo v22, "receivedBMessage.txt"

    move-object/from16 v0, v22

    invoke-direct {v8, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 613
    .local v8, "file":Ljava/io/File;
    const/4 v13, 0x0

    .line 614
    .local v13, "outStream":Ljava/io/FileOutputStream;
    const/4 v7, 0x0

    .line 615
    .local v7, "failed":Z
    const/16 v21, 0x0

    .line 619
    .local v21, "writtenLen":I
    :try_start_0
    new-instance v14, Ljava/io/FileOutputStream;

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-direct {v14, v8, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 621
    .end local v13    # "outStream":Ljava/io/FileOutputStream;
    .local v14, "outStream":Ljava/io/FileOutputStream;
    const/16 v22, 0x1000

    :try_start_1
    move/from16 v0, v22

    new-array v3, v0, [B

    .line 622
    .local v3, "buffer":[B
    const/4 v10, 0x0

    .line 623
    .local v10, "len":I
    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v10

    if-lez v10, :cond_0

    .line 624
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v14, v3, v0, v10}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 625
    add-int v21, v21, v10

    goto :goto_0

    .line 635
    :cond_0
    if-eqz v14, :cond_1

    .line 637
    :try_start_2
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_1
    move-object v13, v14

    .line 643
    .end local v3    # "buffer":[B
    .end local v10    # "len":I
    .end local v14    # "outStream":Ljava/io/FileOutputStream;
    :cond_2
    :goto_2
    if-eqz v7, :cond_5

    .line 644
    new-instance v22, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v22 .. v22}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v22

    .line 638
    .restart local v3    # "buffer":[B
    .restart local v10    # "len":I
    .restart local v14    # "outStream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v6

    .local v6, "e":Ljava/io/IOException;
    goto :goto_1

    .line 629
    .end local v3    # "buffer":[B
    .end local v6    # "e":Ljava/io/IOException;
    .end local v10    # "len":I
    .end local v14    # "outStream":Ljava/io/FileOutputStream;
    .restart local v13    # "outStream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v6

    .line 630
    .end local v13    # "outStream":Ljava/io/FileOutputStream;
    .restart local v6    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_3
    sget-object v22, Lcom/android/bluetooth/map/BluetoothMapbMessage;->TAG:Ljava/lang/String;

    const-string/jumbo v23, "Failed to copy the received message"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 631
    if-eqz v21, :cond_3

    .line 632
    const/4 v7, 0x1

    .line 635
    :cond_3
    if-eqz v13, :cond_2

    .line 637
    :try_start_4
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 638
    :catch_2
    move-exception v6

    goto :goto_2

    .line 627
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v13    # "outStream":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v5

    .line 628
    .end local v13    # "outStream":Ljava/io/FileOutputStream;
    .local v5, "e":Ljava/io/FileNotFoundException;
    :goto_4
    :try_start_5
    sget-object v22, Lcom/android/bluetooth/map/BluetoothMapbMessage;->TAG:Ljava/lang/String;

    const-string/jumbo v23, "Unable to create output stream"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 635
    if-eqz v13, :cond_2

    .line 637
    :try_start_6
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_2

    .line 638
    :catch_4
    move-exception v6

    .restart local v6    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 634
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v22

    .line 635
    :goto_5
    if-eqz v13, :cond_4

    .line 637
    :try_start_7
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 634
    :cond_4
    :goto_6
    throw v22

    .line 638
    :catch_5
    move-exception v6

    .restart local v6    # "e":Ljava/io/IOException;
    goto :goto_6

    .line 647
    .end local v6    # "e":Ljava/io/IOException;
    :cond_5
    if-nez v13, :cond_8

    .line 665
    :goto_7
    sget-object v22, Lcom/android/bluetooth/map/BluetoothMapbMessage;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "The incoming bMessage have been dumped to "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    .end local v4    # "dir":Ljava/io/File;
    .end local v7    # "failed":Z
    .end local v8    # "file":Ljava/io/File;
    .end local v16    # "sdCard":Ljava/io/File;
    .end local v21    # "writtenLen":I
    :cond_6
    new-instance v15, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;-><init>(Ljava/io/InputStream;)V

    .line 669
    .local v15, "reader":Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;
    const-string/jumbo v22, "BEGIN:BMSG"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->expect(Ljava/lang/String;)V

    .line 670
    const-string/jumbo v22, "VERSION"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->expect(Ljava/lang/String;)V

    .line 672
    invoke-virtual {v15}, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->getLineEnforce()Ljava/lang/String;

    move-result-object v11

    .line 674
    .end local v9    # "folder":Ljava/lang/String;
    .end local v12    # "newBMsg":Lcom/android/bluetooth/map/BluetoothMapbMessage;
    .end local v19    # "type":Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    :goto_8
    const-string/jumbo v22, "BEGIN:VCARD"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_7

    const-string/jumbo v22, "BEGIN:BENV"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_9

    .line 738
    :cond_7
    if-nez v12, :cond_13

    .line 739
    new-instance v22, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v23, "Missing bMessage TYPE: - unable to parse body-content"

    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 652
    .end local v15    # "reader":Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;
    .restart local v4    # "dir":Ljava/io/File;
    .restart local v7    # "failed":Z
    .restart local v8    # "file":Ljava/io/File;
    .restart local v9    # "folder":Ljava/lang/String;
    .restart local v12    # "newBMsg":Lcom/android/bluetooth/map/BluetoothMapbMessage;
    .restart local v16    # "sdCard":Ljava/io/File;
    .restart local v19    # "type":Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    .restart local v21    # "writtenLen":I
    :cond_8
    :try_start_8
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 658
    :goto_9
    :try_start_9
    new-instance p0, Ljava/io/FileInputStream;

    .end local p0    # "bMsgStream":Ljava/io/InputStream;
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_7

    .restart local p0    # "bMsgStream":Ljava/io/InputStream;
    goto :goto_7

    .line 653
    :catch_6
    move-exception v6

    .restart local v6    # "e":Ljava/io/IOException;
    goto :goto_9

    .line 659
    .end local v6    # "e":Ljava/io/IOException;
    .end local p0    # "bMsgStream":Ljava/io/InputStream;
    :catch_7
    move-exception v5

    .line 660
    .restart local v5    # "e":Ljava/io/FileNotFoundException;
    sget-object v22, Lcom/android/bluetooth/map/BluetoothMapbMessage;->TAG:Ljava/lang/String;

    const-string/jumbo v23, "Failed to open the bMessage file"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 662
    new-instance v22, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v22 .. v22}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v22

    .line 675
    .end local v4    # "dir":Ljava/io/File;
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    .end local v7    # "failed":Z
    .end local v8    # "file":Ljava/io/File;
    .end local v9    # "folder":Ljava/lang/String;
    .end local v12    # "newBMsg":Lcom/android/bluetooth/map/BluetoothMapbMessage;
    .end local v16    # "sdCard":Ljava/io/File;
    .end local v19    # "type":Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    .end local v21    # "writtenLen":I
    .restart local v15    # "reader":Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;
    .restart local p0    # "bMsgStream":Ljava/io/InputStream;
    :cond_9
    const-string/jumbo v22, "STATUS"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_a

    .line 676
    const-string/jumbo v22, ":"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 677
    .local v2, "arg":[Ljava/lang/String;
    if-eqz v2, :cond_e

    array-length v0, v2

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_e

    .line 678
    const/16 v22, 0x1

    aget-object v22, v2, v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    const-string/jumbo v23, "READ"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_c

    .line 679
    const/16 v17, 0x1

    .line 689
    .end local v2    # "arg":[Ljava/lang/String;
    :cond_a
    :goto_a
    const-string/jumbo v22, "EXTENDEDDATA"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_b

    .line 690
    const-string/jumbo v22, ":"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 691
    .restart local v2    # "arg":[Ljava/lang/String;
    if-eqz v2, :cond_b

    array-length v0, v2

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_b

    .line 692
    const/16 v22, 0x1

    aget-object v22, v2, v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    .line 694
    .local v20, "value":Ljava/lang/String;
    sget-object v22, Lcom/android/bluetooth/map/BluetoothMapbMessage;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "We got extended data with: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    .end local v2    # "arg":[Ljava/lang/String;
    .end local v20    # "value":Ljava/lang/String;
    :cond_b
    const-string/jumbo v22, "TYPE"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_10

    .line 698
    const-string/jumbo v22, ":"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 699
    .restart local v2    # "arg":[Ljava/lang/String;
    if-eqz v2, :cond_12

    array-length v0, v2

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_12

    .line 700
    const/16 v22, 0x1

    aget-object v22, v2, v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    .line 702
    .restart local v20    # "value":Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->valueOf(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v19

    .line 703
    .local v19, "type":Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    if-nez p1, :cond_f

    .line 704
    sget-object v22, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_CDMA:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_f

    sget-object v22, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_GSM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_f

    .line 705
    new-instance v22, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v23, "Native appParamsCharset only supported for SMS"

    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 680
    .end local v19    # "type":Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    .end local v20    # "value":Ljava/lang/String;
    :cond_c
    const/16 v22, 0x1

    aget-object v22, v2, v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    const-string/jumbo v23, "UNREAD"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_d

    .line 681
    const/16 v17, 0x0

    goto/16 :goto_a

    .line 683
    :cond_d
    new-instance v22, Ljava/lang/IllegalArgumentException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Wrong value in \'STATUS\': "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0x1

    aget-object v24, v2, v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 686
    :cond_e
    new-instance v22, Ljava/lang/IllegalArgumentException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Missing value for \'STATUS\': "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 708
    .restart local v19    # "type":Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    .restart local v20    # "value":Ljava/lang/String;
    :cond_f
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->-getcom_android_bluetooth_map_BluetoothMapUtils$TYPESwitchesValues()[I

    move-result-object v22

    invoke-virtual/range {v19 .. v19}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->ordinal()I

    move-result v23

    aget v22, v22, v23

    packed-switch v22, :pswitch_data_0

    .line 729
    .end local v2    # "arg":[Ljava/lang/String;
    .end local v19    # "type":Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    .end local v20    # "value":Ljava/lang/String;
    :cond_10
    :goto_b
    const-string/jumbo v22, "FOLDER"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_11

    .line 730
    const-string/jumbo v22, ":"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 731
    .restart local v2    # "arg":[Ljava/lang/String;
    if-eqz v2, :cond_11

    array-length v0, v2

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_11

    .line 732
    const/16 v22, 0x1

    aget-object v22, v2, v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 736
    .end local v2    # "arg":[Ljava/lang/String;
    :cond_11
    invoke-virtual {v15}, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->getLineEnforce()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_8

    .line 711
    .restart local v2    # "arg":[Ljava/lang/String;
    .restart local v19    # "type":Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    .restart local v20    # "value":Ljava/lang/String;
    :pswitch_0
    new-instance v12, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;

    invoke-direct {v12}, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;-><init>()V

    .line 712
    .local v12, "newBMsg":Lcom/android/bluetooth/map/BluetoothMapbMessage;
    goto :goto_b

    .line 714
    .end local v12    # "newBMsg":Lcom/android/bluetooth/map/BluetoothMapbMessage;
    :pswitch_1
    new-instance v12, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;

    invoke-direct {v12}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;-><init>()V

    .line 715
    .restart local v12    # "newBMsg":Lcom/android/bluetooth/map/BluetoothMapbMessage;
    goto :goto_b

    .line 717
    .end local v12    # "newBMsg":Lcom/android/bluetooth/map/BluetoothMapbMessage;
    :pswitch_2
    new-instance v12, Lcom/android/bluetooth/map/BluetoothMapbMessageExtEmail;

    invoke-direct {v12}, Lcom/android/bluetooth/map/BluetoothMapbMessageExtEmail;-><init>()V

    .line 718
    .restart local v12    # "newBMsg":Lcom/android/bluetooth/map/BluetoothMapbMessage;
    goto :goto_b

    .line 720
    .end local v12    # "newBMsg":Lcom/android/bluetooth/map/BluetoothMapbMessage;
    :pswitch_3
    new-instance v12, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;

    invoke-direct {v12}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;-><init>()V

    .line 721
    .restart local v12    # "newBMsg":Lcom/android/bluetooth/map/BluetoothMapbMessage;
    goto :goto_b

    .line 726
    .end local v12    # "newBMsg":Lcom/android/bluetooth/map/BluetoothMapbMessage;
    .end local v19    # "type":Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    .end local v20    # "value":Ljava/lang/String;
    :cond_12
    new-instance v22, Ljava/lang/IllegalArgumentException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Missing value for \'TYPE\':"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 741
    .end local v2    # "arg":[Ljava/lang/String;
    :cond_13
    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->setType(Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 742
    move/from16 v0, p1

    iput v0, v12, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mAppParamCharset:I

    .line 743
    if-eqz v9, :cond_14

    .line 744
    invoke-virtual {v12, v9}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->setCompleteFolder(Ljava/lang/String;)V

    .line 745
    :cond_14
    if-eqz v18, :cond_15

    .line 746
    move/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->setStatus(Z)V

    .line 749
    :cond_15
    :goto_c
    const-string/jumbo v22, "BEGIN:VCARD"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_16

    .line 750
    sget-object v22, Lcom/android/bluetooth/map/BluetoothMapbMessage;->TAG:Ljava/lang/String;

    const-string/jumbo v23, "Decoding vCard"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-static {v15, v0}, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->parseVcard(Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;I)Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->addOriginator(Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;)V

    .line 752
    invoke-virtual {v15}, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->getLineEnforce()Ljava/lang/String;

    move-result-object v11

    goto :goto_c

    .line 754
    :cond_16
    const-string/jumbo v22, "BEGIN:BENV"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_18

    .line 755
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-direct {v12, v15, v0}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->parseEnvelope(Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;I)V

    .line 756
    sget-object v22, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_17

    instance-of v0, v12, Lcom/android/bluetooth/map/BluetoothMapbMessageExtEmail;

    move/from16 v22, v0

    if-eqz v22, :cond_17

    move-object/from16 v22, v12

    .line 757
    check-cast v22, Lcom/android/bluetooth/map/BluetoothMapbMessageExtEmail;

    .line 758
    const-string/jumbo v23, "END:BBODY"

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->getLastStringTerminator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 757
    invoke-virtual/range {v22 .. v23}, Lcom/android/bluetooth/map/BluetoothMapbMessageExtEmail;->parseBodyEmail(Ljava/lang/String;)V

    .line 771
    :cond_17
    :try_start_a
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    .line 776
    :goto_d
    return-object v12

    .line 761
    :cond_18
    new-instance v22, Ljava/lang/IllegalArgumentException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Bmessage has no BEGIN:BENV - line:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 772
    :catch_8
    move-exception v6

    .restart local v6    # "e":Ljava/io/IOException;
    goto :goto_d

    .line 634
    .end local v6    # "e":Ljava/io/IOException;
    .end local v15    # "reader":Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;
    .restart local v4    # "dir":Ljava/io/File;
    .restart local v7    # "failed":Z
    .restart local v8    # "file":Ljava/io/File;
    .restart local v9    # "folder":Ljava/lang/String;
    .local v12, "newBMsg":Lcom/android/bluetooth/map/BluetoothMapbMessage;
    .restart local v14    # "outStream":Ljava/io/FileOutputStream;
    .restart local v16    # "sdCard":Ljava/io/File;
    .local v19, "type":Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    .restart local v21    # "writtenLen":I
    :catchall_1
    move-exception v22

    move-object v13, v14

    .end local v14    # "outStream":Ljava/io/FileOutputStream;
    .local v13, "outStream":Ljava/io/FileOutputStream;
    goto/16 :goto_5

    .line 627
    .end local v13    # "outStream":Ljava/io/FileOutputStream;
    .restart local v14    # "outStream":Ljava/io/FileOutputStream;
    :catch_9
    move-exception v5

    .restart local v5    # "e":Ljava/io/FileNotFoundException;
    move-object v13, v14

    .end local v14    # "outStream":Ljava/io/FileOutputStream;
    .restart local v13    # "outStream":Ljava/io/FileOutputStream;
    goto/16 :goto_4

    .line 629
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    .end local v13    # "outStream":Ljava/io/FileOutputStream;
    .restart local v14    # "outStream":Ljava/io/FileOutputStream;
    :catch_a
    move-exception v6

    .restart local v6    # "e":Ljava/io/IOException;
    move-object v13, v14

    .end local v14    # "outStream":Ljava/io/FileOutputStream;
    .restart local v13    # "outStream":Ljava/io/FileOutputStream;
    goto/16 :goto_3

    .line 708
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private parseBody(Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;)V
    .locals 12
    .param p1, "reader"    # Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 803
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->getLineEnforce()Ljava/lang/String;

    move-result-object v5

    .line 804
    .local v5, "line":Ljava/lang/String;
    :goto_0
    const-string/jumbo v7, "END:"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_d

    .line 805
    const-string/jumbo v7, "PARTID:"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 806
    const-string/jumbo v7, ":"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 807
    .local v0, "arg":[Ljava/lang/String;
    if-eqz v0, :cond_1

    array-length v7, v0

    if-ne v7, v11, :cond_1

    .line 809
    const/4 v7, 0x1

    :try_start_0
    aget-object v7, v0, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mPartId:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 896
    .end local v0    # "arg":[Ljava/lang/String;
    :cond_0
    :goto_1
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->getLineEnforce()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 810
    .restart local v0    # "arg":[Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 811
    .local v3, "e":Ljava/lang/NumberFormatException;
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Wrong value in \'PARTID\': "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v0, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 814
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Missing value for \'PARTID\': "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 817
    .end local v0    # "arg":[Ljava/lang/String;
    :cond_2
    const-string/jumbo v7, "ENCODING:"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 818
    const-string/jumbo v7, ":"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 819
    .restart local v0    # "arg":[Ljava/lang/String;
    if-eqz v0, :cond_3

    array-length v7, v0

    if-ne v7, v11, :cond_3

    .line 820
    aget-object v7, v0, v10

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mEncoding:Ljava/lang/String;

    goto :goto_1

    .line 823
    :cond_3
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Missing value for \'ENCODING\': "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 826
    .end local v0    # "arg":[Ljava/lang/String;
    :cond_4
    const-string/jumbo v7, "CHARSET:"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 827
    const-string/jumbo v7, ":"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 828
    .restart local v0    # "arg":[Ljava/lang/String;
    if-eqz v0, :cond_5

    array-length v7, v0

    if-ne v7, v11, :cond_5

    .line 829
    aget-object v7, v0, v10

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mCharset:Ljava/lang/String;

    goto/16 :goto_1

    .line 832
    :cond_5
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Missing value for \'CHARSET\': "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 835
    .end local v0    # "arg":[Ljava/lang/String;
    :cond_6
    const-string/jumbo v7, "LANGUAGE:"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 836
    const-string/jumbo v7, ":"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 837
    .restart local v0    # "arg":[Ljava/lang/String;
    if-eqz v0, :cond_7

    array-length v7, v0

    if-ne v7, v11, :cond_7

    .line 838
    aget-object v7, v0, v10

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mLanguage:Ljava/lang/String;

    goto/16 :goto_1

    .line 841
    :cond_7
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Missing value for \'LANGUAGE\': "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 844
    .end local v0    # "arg":[Ljava/lang/String;
    :cond_8
    const-string/jumbo v7, "LENGTH:"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 845
    const-string/jumbo v7, ":"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 846
    .restart local v0    # "arg":[Ljava/lang/String;
    if-eqz v0, :cond_9

    array-length v7, v0

    if-ne v7, v11, :cond_9

    .line 848
    const/4 v7, 0x1

    :try_start_1
    aget-object v7, v0, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mBMsgLength:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 849
    :catch_1
    move-exception v3

    .line 850
    .restart local v3    # "e":Ljava/lang/NumberFormatException;
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Wrong value in \'LENGTH\': "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v0, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 853
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :cond_9
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Missing value for \'LENGTH\': "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 856
    .end local v0    # "arg":[Ljava/lang/String;
    :cond_a
    const-string/jumbo v7, "BEGIN:MSG"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 857
    iget v7, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mBMsgLength:I

    sget v8, Lcom/android/bluetooth/map/BluetoothMapbMessage;->INVALID_VALUE:I

    if-ne v7, v8, :cond_b

    .line 858
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "Missing value for \'LENGTH\'. Unable to read remaining part of the message"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 869
    :cond_b
    const-string/jumbo v7, "END:MSG"

    invoke-virtual {p1, v7}, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->getStringTerminator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 870
    .local v1, "data":Ljava/lang/String;
    sget-boolean v7, Lcom/android/bluetooth/map/BluetoothMapbMessage;->V:Z

    if-eqz v7, :cond_c

    .line 871
    sget-object v7, Lcom/android/bluetooth/map/BluetoothMapbMessage;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "MsgLength: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mBMsgLength:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    sget-object v7, Lcom/android/bluetooth/map/BluetoothMapbMessage;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "data.getBytes().length: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    array-length v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    const-string/jumbo v7, "\\n"

    const-string/jumbo v8, "<LF>\n"

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 874
    .local v2, "debug":Ljava/lang/String;
    const-string/jumbo v7, "\\r"

    const-string/jumbo v8, "<CR>"

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 875
    sget-object v7, Lcom/android/bluetooth/map/BluetoothMapbMessage;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "The line: \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    const-string/jumbo v7, "\\n"

    const-string/jumbo v8, "<LF>\n"

    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 877
    const-string/jumbo v7, "\\r"

    const-string/jumbo v8, "<CR>"

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 878
    sget-object v7, Lcom/android/bluetooth/map/BluetoothMapbMessage;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "The msgString: \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    .end local v2    # "debug":Ljava/lang/String;
    :cond_c
    const-string/jumbo v7, "\r\nEND:MSG\r\n"

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 888
    .local v6, "messages":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->parseMsgInit()V

    .line 889
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    array-length v7, v6

    if-ge v4, v7, :cond_0

    .line 890
    aget-object v7, v6, v4

    const-string/jumbo v8, "^BEGIN:MSG\r\n"

    const-string/jumbo v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    .line 891
    aget-object v7, v6, v4

    const-string/jumbo v8, "\r\n([/]*)/END\\:MSG"

    const-string/jumbo v9, "\r\n$1END:MSG"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    .line 892
    aget-object v7, v6, v4

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    .line 893
    aget-object v7, v6, v4

    invoke-virtual {p0, v7}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->parseMsgPart(Ljava/lang/String;)V

    .line 889
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 801
    .end local v1    # "data":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v6    # "messages":[Ljava/lang/String;
    :cond_d
    return-void
.end method

.method private parseEnvelope(Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;I)V
    .locals 4
    .param p1, "reader"    # Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;
    .param p2, "level"    # I

    .prologue
    .line 781
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->getLineEnforce()Ljava/lang/String;

    move-result-object v0

    .line 782
    .local v0, "line":Ljava/lang/String;
    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapbMessage;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Decoding envelope level "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    :goto_0
    const-string/jumbo v1, "BEGIN:VCARD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 785
    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapbMessage;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Decoding recipient vCard level "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mRecipient:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 787
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mRecipient:Ljava/util/ArrayList;

    .line 788
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mRecipient:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->parseVcard(Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;I)Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 789
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->getLineEnforce()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 791
    :cond_1
    const-string/jumbo v1, "BEGIN:BENV"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 792
    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapbMessage;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Decoding nested envelope"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    add-int/lit8 p2, p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->parseEnvelope(Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;I)V

    .line 795
    :cond_2
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-eq v1, v2, :cond_3

    const-string/jumbo v1, "BEGIN:BBODY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 796
    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapbMessage;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Decoding bbody"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->parseBody(Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;)V

    .line 779
    :cond_3
    return-void
.end method


# virtual methods
.method public addOriginator(Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;)V
    .locals 1
    .param p1, "originator"    # Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;

    .prologue
    .line 953
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mOriginator:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 954
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mOriginator:Ljava/util/ArrayList;

    .line 955
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mOriginator:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 952
    return-void
.end method

.method public addOriginator(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "formattedName"    # Ljava/lang/String;
    .param p3, "phoneNumbers"    # [Ljava/lang/String;
    .param p4, "emailAddresses"    # [Ljava/lang/String;
    .param p5, "btUids"    # [Ljava/lang/String;
    .param p6, "btUcis"    # [Ljava/lang/String;

    .prologue
    .line 970
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mOriginator:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 971
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mOriginator:Ljava/util/ArrayList;

    .line 972
    :cond_0
    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mOriginator:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 969
    return-void
.end method

.method public addOriginator(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "phoneNumbers"    # [Ljava/lang/String;
    .param p3, "emailAddresses"    # [Ljava/lang/String;

    .prologue
    .line 991
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mOriginator:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 992
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mOriginator:Ljava/util/ArrayList;

    .line 993
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mOriginator:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 990
    return-void
.end method

.method public addOriginator([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8
    .param p1, "btUcis"    # [Ljava/lang/String;
    .param p2, "btUids"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 978
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mOriginator:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 979
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mOriginator:Ljava/util/ArrayList;

    .line 980
    :cond_0
    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mOriginator:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, p2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 977
    return-void
.end method

.method public addRecipient(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "formattedName"    # Ljava/lang/String;
    .param p3, "phoneNumbers"    # [Ljava/lang/String;
    .param p4, "emailAddresses"    # [Ljava/lang/String;
    .param p5, "btUids"    # [Ljava/lang/String;
    .param p6, "btUcis"    # [Ljava/lang/String;

    .prologue
    .line 1015
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mRecipient:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1016
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mRecipient:Ljava/util/ArrayList;

    .line 1017
    :cond_0
    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mRecipient:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1014
    return-void
.end method

.method public addRecipient(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "phoneNumbers"    # [Ljava/lang/String;
    .param p3, "emailAddresses"    # [Ljava/lang/String;

    .prologue
    .line 1022
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mRecipient:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1023
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mRecipient:Ljava/util/ArrayList;

    .line 1024
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mRecipient:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1021
    return-void
.end method

.method public addRecipient([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8
    .param p1, "btUcis"    # [Ljava/lang/String;
    .param p2, "btUids"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1006
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mRecipient:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1007
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mRecipient:Ljava/util/ArrayList;

    .line 1008
    :cond_0
    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mRecipient:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, p2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1005
    return-void
.end method

.method protected decodeBinary(Ljava/lang/String;)[B
    .locals 11
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 1059
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    new-array v4, v7, [B

    .line 1061
    .local v4, "out":[B
    sget-object v7, Lcom/android/bluetooth/map/BluetoothMapbMessage;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Decoding binary data: START:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ":END"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "j":I
    array-length v3, v4

    .local v3, "n":I
    move v2, v1

    .end local v1    # "j":I
    .local v2, "j":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 1064
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "j":I
    .restart local v1    # "j":I
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 1066
    .local v6, "value":Ljava/lang/String;
    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v4, v0

    .line 1062
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    .end local v1    # "j":I
    .restart local v2    # "j":I
    goto :goto_0

    .line 1069
    .end local v6    # "value":Ljava/lang/String;
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    array-length v7, v4

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1070
    .local v5, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    array-length v3, v4

    :goto_1
    if-ge v0, v3, :cond_1

    .line 1072
    const-string/jumbo v7, "%02X"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    aget-byte v9, v4, v0

    and-int/lit16 v9, v9, 0xff

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1070
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1074
    :cond_1
    sget-object v7, Lcom/android/bluetooth/map/BluetoothMapbMessage;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Decoded binary data: START:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ":END"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    return-object v4
.end method

.method public abstract encode()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation
.end method

.method protected encodeBinary([B[B)Ljava/lang/String;
    .locals 5
    .param p1, "pduData"    # [B
    .param p2, "scAddressData"    # [B

    .prologue
    const/16 v4, 0x10

    .line 1037
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p1

    array-length v3, p2

    add-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1038
    .local v1, "out":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_0

    .line 1039
    aget-byte v2, p2, v0

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    invoke-static {v2, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1040
    aget-byte v2, p2, v0

    and-int/lit8 v2, v2, 0xf

    invoke-static {v2, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1038
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1042
    :cond_0
    const/4 v0, 0x0

    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 1043
    aget-byte v2, p1, v0

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    invoke-static {v2, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1044
    aget-byte v2, p1, v0

    and-int/lit8 v2, v2, 0xf

    invoke-static {v2, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1042
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1050
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public encodeGeneric(Ljava/util/ArrayList;)[B
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 1081
    .local p1, "bodyFragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v10, 0x100

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1083
    .local v8, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v10, "BEGIN:BMSG"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\r\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1085
    iget-object v10, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mVersionString:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\r\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1086
    const-string/jumbo v10, "STATUS:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mStatus:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\r\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1087
    const-string/jumbo v10, "TYPE:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v11}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->name()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\r\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1088
    iget-object v10, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mFolder:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0x200

    if-le v10, v11, :cond_1

    .line 1089
    const-string/jumbo v10, "FOLDER:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1090
    iget-object v11, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mFolder:Ljava/lang/String;

    iget-object v12, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mFolder:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit16 v12, v12, -0x200

    iget-object v13, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mFolder:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 1089
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1090
    const-string/jumbo v11, "\r\n"

    .line 1089
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1093
    :goto_0
    iget-object v10, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mVersionString:Ljava/lang/String;

    const-string/jumbo v11, "1.0"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 1094
    const-string/jumbo v10, "EXTENDEDDATA:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\r\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1096
    :cond_0
    iget-object v10, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mOriginator:Ljava/util/ArrayList;

    if-eqz v10, :cond_2

    .line 1097
    iget-object v10, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mOriginator:Ljava/util/ArrayList;

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "element$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;

    .line 1098
    .local v1, "element":Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;
    invoke-virtual {v1, v8}, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->encode(Ljava/lang/StringBuilder;)V

    goto :goto_1

    .line 1092
    .end local v1    # "element":Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;
    .end local v2    # "element$iterator":Ljava/util/Iterator;
    :cond_1
    const-string/jumbo v10, "FOLDER:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mFolder:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\r\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1104
    :cond_2
    const-string/jumbo v10, "BEGIN:BENV"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\r\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1105
    iget-object v10, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mRecipient:Ljava/util/ArrayList;

    if-eqz v10, :cond_4

    .line 1106
    iget-object v10, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mRecipient:Ljava/util/ArrayList;

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "element$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;

    .line 1107
    .restart local v1    # "element":Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;
    sget-boolean v10, Lcom/android/bluetooth/map/BluetoothMapbMessage;->V:Z

    if-eqz v10, :cond_3

    sget-object v10, Lcom/android/bluetooth/map/BluetoothMapbMessage;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "encodeGeneric: recipient email"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->getFirstEmail()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    :cond_3
    invoke-virtual {v1, v8}, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->encode(Ljava/lang/StringBuilder;)V

    goto :goto_2

    .line 1111
    .end local v1    # "element":Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;
    .end local v2    # "element$iterator":Ljava/util/Iterator;
    :cond_4
    const-string/jumbo v10, "BEGIN:BBODY"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\r\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1112
    iget-object v10, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mEncoding:Ljava/lang/String;

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mEncoding:Ljava/lang/String;

    const-string/jumbo v11, ""

    if-eq v10, v11, :cond_5

    .line 1113
    const-string/jumbo v10, "ENCODING:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mEncoding:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\r\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1114
    :cond_5
    iget-object v10, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mCharset:Ljava/lang/String;

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mCharset:Ljava/lang/String;

    const-string/jumbo v11, ""

    if-eq v10, v11, :cond_6

    .line 1115
    const-string/jumbo v10, "CHARSET:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mCharset:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\r\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1118
    :cond_6
    const/4 v5, 0x0

    .line 1120
    .local v5, "length":I
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "fragment$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 1121
    .local v3, "fragment":[B
    array-length v10, v3

    add-int/lit8 v10, v10, 0x16

    add-int/2addr v5, v10

    goto :goto_3

    .line 1123
    .end local v3    # "fragment":[B
    :cond_7
    const-string/jumbo v10, "LENGTH:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\r\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1126
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "UTF-8"

    invoke-virtual {v10, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    .line 1128
    .local v7, "msgStart":[B
    new-instance v8, Ljava/lang/StringBuilder;

    .end local v8    # "sb":Ljava/lang/StringBuilder;
    const/16 v10, 0x1f

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1129
    .restart local v8    # "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v10, "END:BBODY"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\r\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1130
    const-string/jumbo v10, "END:BENV"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\r\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1131
    const-string/jumbo v10, "END:BMSG"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\r\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1133
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "UTF-8"

    invoke-virtual {v10, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    .line 1137
    .local v6, "msgEnd":[B
    :try_start_0
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    .line 1138
    array-length v10, v7

    array-length v11, v6

    add-int/2addr v10, v11

    add-int/2addr v10, v5

    .line 1137
    invoke-direct {v9, v10}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1139
    .local v9, "stream":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v9, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 1141
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 1142
    .restart local v3    # "fragment":[B
    const-string/jumbo v10, "BEGIN:MSG\r\n"

    const-string/jumbo v11, "UTF-8"

    invoke-virtual {v10, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 1143
    invoke-virtual {v9, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 1144
    const-string/jumbo v10, "\r\nEND:MSG\r\n"

    const-string/jumbo v11, "UTF-8"

    invoke-virtual {v10, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 1150
    .end local v3    # "fragment":[B
    .end local v9    # "stream":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v0

    .line 1151
    .local v0, "e":Ljava/io/IOException;
    sget-object v10, Lcom/android/bluetooth/map/BluetoothMapbMessage;->TAG:Ljava/lang/String;

    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1152
    const/4 v10, 0x0

    return-object v10

    .line 1146
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v9    # "stream":Ljava/io/ByteArrayOutputStream;
    :cond_8
    :try_start_1
    invoke-virtual {v9, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 1148
    sget-boolean v10, Lcom/android/bluetooth/map/BluetoothMapbMessage;->V:Z

    if-eqz v10, :cond_9

    sget-object v10, Lcom/android/bluetooth/map/BluetoothMapbMessage;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "UTF-8"

    invoke-virtual {v9, v11}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    :cond_9
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v10

    return-object v10
.end method

.method public getFolder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 940
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mFolder:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginators()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;",
            ">;"
        }
    .end annotation

    .prologue
    .line 949
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mOriginator:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getRecipients()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;",
            ">;"
        }
    .end annotation

    .prologue
    .line 997
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mRecipient:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    .locals 1

    .prologue
    .line 928
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    return-object v0
.end method

.method public getVersionString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 582
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mVersionString:Ljava/lang/String;

    return-object v0
.end method

.method public abstract parseMsgInit()V
.end method

.method public abstract parseMsgPart(Ljava/lang/String;)V
.end method

.method public setCompleteFolder(Ljava/lang/String;)V
    .locals 0
    .param p1, "folder"    # Ljava/lang/String;

    .prologue
    .line 932
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mFolder:Ljava/lang/String;

    .line 931
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    .line 945
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mEncoding:Ljava/lang/String;

    .line 944
    return-void
.end method

.method public setFolder(Ljava/lang/String;)V
    .locals 2
    .param p1, "folder"    # Ljava/lang/String;

    .prologue
    .line 936
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "telecom/msg/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mFolder:Ljava/lang/String;

    .line 935
    return-void
.end method

.method public setRecipient(Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;)V
    .locals 1
    .param p1, "recipient"    # Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mRecipient:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1002
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mRecipient:Ljava/util/ArrayList;

    .line 1003
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mRecipient:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1000
    return-void
.end method

.method public setStatus(Z)V
    .locals 1
    .param p1, "read"    # Z

    .prologue
    .line 914
    if-eqz p1, :cond_0

    .line 915
    const-string/jumbo v0, "READ"

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mStatus:Ljava/lang/String;

    .line 913
    :goto_0
    return-void

    .line 917
    :cond_0
    const-string/jumbo v0, "UNREAD"

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mStatus:Ljava/lang/String;

    goto :goto_0
.end method

.method public setType(Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V
    .locals 0
    .param p1, "type"    # Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    .prologue
    .line 921
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    .line 920
    return-void
.end method

.method public setVersionString(Ljava/lang/String;)V
    .locals 2
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 589
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "VERSION:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mVersionString:Ljava/lang/String;

    .line 588
    return-void
.end method
