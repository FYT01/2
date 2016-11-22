.class public Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;
.super Ljava/lang/Object;
.source "BluetoothOppReceiveFileInfo.java"


# static fields
.field private static final D:Z = true

.field private static final V:Z

.field private static sDesiredStoragePath:Ljava/lang/String;


# instance fields
.field public mData:Ljava/lang/String;

.field public mFileName:Ljava/lang/String;

.field public mLength:J

.field public mOutputStream:Ljava/io/FileOutputStream;

.field public mStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 58
    const-string/jumbo v0, "BluetoothOpp"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->V:Z

    .line 59
    const/4 v0, 0x0

    sput-object v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->sDesiredStoragePath:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public constructor <init>(I)V
    .locals 6
    .param p1, "status"    # I

    .prologue
    const/4 v1, 0x0

    .line 87
    const-wide/16 v2, 0x0

    move-object v0, p0

    move-object v4, v1

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;-><init>(Ljava/lang/String;JLjava/io/FileOutputStream;I)V

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JI)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "length"    # J
    .param p4, "status"    # I

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mData:Ljava/lang/String;

    .line 74
    iput p4, p0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mStatus:I

    .line 75
    iput-wide p2, p0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mLength:J

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/io/FileOutputStream;I)V
    .locals 0
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "length"    # J
    .param p4, "outputStream"    # Ljava/io/FileOutputStream;
    .param p5, "status"    # I

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mFileName:Ljava/lang/String;

    .line 81
    iput-object p4, p0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mOutputStream:Ljava/io/FileOutputStream;

    .line 82
    iput p5, p0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mStatus:I

    .line 83
    iput-wide p2, p0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mLength:J

    .line 79
    return-void
.end method

.method private static chooseUniquefilename(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "extension"    # Ljava/lang/String;

    .prologue
    .line 222
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, "fullfilename":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 224
    return-object v0

    .line 226
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/bluetooth/opp/Constants;->filename_SEQUENCE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 238
    new-instance v3, Ljava/util/Random;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-direct {v3, v6, v7}, Ljava/util/Random;-><init>(J)V

    .line 239
    .local v3, "rnd":Ljava/util/Random;
    const/4 v4, 0x1

    .line 240
    .local v4, "sequence":I
    const/4 v2, 0x1

    .local v2, "magnitude":I
    :goto_0
    const v5, 0x3b9aca00

    if-ge v2, v5, :cond_4

    .line 241
    const/4 v1, 0x0

    .local v1, "iteration":I
    :goto_1
    const/16 v5, 0x9

    if-ge v1, v5, :cond_3

    .line 242
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 243
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 244
    return-object v0

    .line 246
    :cond_1
    sget-boolean v5, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->V:Z

    if-eqz v5, :cond_2

    const-string/jumbo v5, "BluetoothOpp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "file with sequence number "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " exists"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_2
    invoke-virtual {v3, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v4, v5

    .line 241
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 240
    :cond_3
    mul-int/lit8 v2, v2, 0xa

    goto :goto_0

    .line 250
    .end local v1    # "iteration":I
    :cond_4
    const/4 v5, 0x0

    return-object v5
.end method

.method private static choosefilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "hint"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x2f

    .line 254
    const/4 v0, 0x0

    .line 257
    .local v0, "filename":Ljava/lang/String;
    if-eqz p0, :cond_0

    const-string/jumbo v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 274
    .end local v0    # "filename":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 257
    .restart local v0    # "filename":Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, "\\"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 260
    const/16 v2, 0x5c

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 262
    const-string/jumbo v2, "\\s"

    const-string/jumbo v3, " "

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 265
    const-string/jumbo v2, "[:\"<>*?|]"

    const-string/jumbo v3, "_"

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 266
    sget-boolean v2, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->V:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "BluetoothOpp"

    const-string/jumbo v3, "getting filename from hint"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_2
    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    .line 268
    .local v1, "index":I
    if-lez v1, :cond_3

    .line 269
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "filename":Ljava/lang/String;
    goto :goto_0

    .line 271
    .local v0, "filename":Ljava/lang/String;
    :cond_3
    move-object v0, p0

    .local v0, "filename":Ljava/lang/String;
    goto :goto_0
.end method

.method public static generateFileInfo(Landroid/content/Context;I)Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;
    .locals 30
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 93
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 94
    .local v2, "contentResolver":Landroid/content/ContentResolver;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, "/"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 95
    .local v3, "contentUri":Landroid/net/Uri;
    const/16 v16, 0x0

    .local v16, "filename":Ljava/lang/String;
    const/16 v17, 0x0

    .local v17, "hint":Ljava/lang/String;
    const/16 v22, 0x0

    .line 96
    .local v22, "mimeType":Ljava/lang/String;
    const-wide/16 v20, 0x0

    .line 99
    .local v20, "length":J
    const/4 v4, 0x3

    :try_start_0
    new-array v4, v4, [Ljava/lang/String;

    .line 100
    const-string/jumbo v8, "hint"

    const/4 v9, 0x0

    aput-object v8, v4, v9

    const-string/jumbo v8, "total_bytes"

    const/4 v9, 0x1

    aput-object v8, v4, v9

    const-string/jumbo v8, "mimetype"

    const/4 v9, 0x2

    aput-object v8, v4, v9

    .line 101
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 99
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v19

    .line 107
    :goto_0
    if-eqz v19, :cond_d

    .line 109
    :try_start_1
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 110
    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 111
    .local v17, "hint":Ljava/lang/String;
    const/4 v4, 0x1

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v6

    .line 112
    .end local v20    # "length":J
    .local v6, "length":J
    const/4 v4, 0x2

    :try_start_2
    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v22

    .line 115
    .end local v17    # "hint":Ljava/lang/String;
    .end local v22    # "mimeType":Ljava/lang/String;
    :goto_1
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 116
    const/16 v19, 0x0

    .line 120
    :goto_2
    const/4 v10, 0x0

    .line 121
    .local v10, "base":Ljava/io/File;
    const/16 v24, 0x0

    .line 123
    .local v24, "stat":Landroid/os/StatFs;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v8, "mounted"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 124
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v23

    .line 125
    .local v23, "root":Ljava/lang/String;
    new-instance v10, Ljava/io/File;

    .end local v10    # "base":Ljava/io/File;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, "/bluetooth"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v10, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 126
    .local v10, "base":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v10}, Ljava/io/File;->mkdir()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 131
    :cond_0
    new-instance v24, Landroid/os/StatFs;

    .end local v24    # "stat":Landroid/os/StatFs;
    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-direct {v0, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 142
    .local v24, "stat":Landroid/os/StatFs;
    invoke-virtual/range {v24 .. v24}, Landroid/os/StatFs;->getBlockSize()I

    move-result v4

    int-to-long v8, v4

    invoke-virtual/range {v24 .. v24}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v26, v0

    const-wide/16 v28, 0x4

    sub-long v26, v26, v28

    mul-long v8, v8, v26

    cmp-long v4, v8, v6

    if-gez v4, :cond_3

    .line 143
    const-string/jumbo v4, "BluetoothOpp"

    const-string/jumbo v8, "Receive File aborted - not enough free space"

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    new-instance v4, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    const/16 v8, 0x1ee

    invoke-direct {v4, v8}, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;-><init>(I)V

    return-object v4

    .line 102
    .end local v6    # "length":J
    .end local v10    # "base":Ljava/io/File;
    .end local v23    # "root":Ljava/lang/String;
    .end local v24    # "stat":Landroid/os/StatFs;
    .local v17, "hint":Ljava/lang/String;
    .restart local v20    # "length":J
    .restart local v22    # "mimeType":Ljava/lang/String;
    :catch_0
    move-exception v13

    .line 103
    .local v13, "e":Landroid/database/sqlite/SQLiteException;
    const/16 v19, 0x0

    .line 104
    .local v19, "metadataCursor":Landroid/database/Cursor;
    const-string/jumbo v4, "BluetoothOpp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "SQLite exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 114
    .end local v13    # "e":Landroid/database/sqlite/SQLiteException;
    .end local v17    # "hint":Ljava/lang/String;
    .end local v19    # "metadataCursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v4

    move-wide/from16 v6, v20

    .line 115
    .end local v20    # "length":J
    .restart local v6    # "length":J
    :goto_3
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 116
    const/16 v19, 0x0

    .line 114
    .restart local v19    # "metadataCursor":Landroid/database/Cursor;
    throw v4

    .line 127
    .end local v19    # "metadataCursor":Landroid/database/Cursor;
    .end local v22    # "mimeType":Ljava/lang/String;
    .restart local v10    # "base":Ljava/io/File;
    .restart local v23    # "root":Ljava/lang/String;
    .local v24, "stat":Landroid/os/StatFs;
    :cond_1
    const-string/jumbo v4, "BluetoothOpp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Receive File aborted - can\'t create base directory "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 128
    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    .line 127
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    new-instance v4, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    const/16 v8, 0x1ec

    invoke-direct {v4, v8}, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;-><init>(I)V

    return-object v4

    .line 133
    .end local v23    # "root":Ljava/lang/String;
    .local v10, "base":Ljava/io/File;
    :cond_2
    const-string/jumbo v4, "BluetoothOpp"

    const-string/jumbo v8, "Receive File aborted - no external storage"

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    new-instance v4, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    const/16 v8, 0x1ed

    invoke-direct {v4, v8}, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;-><init>(I)V

    return-object v4

    .line 147
    .local v10, "base":Ljava/io/File;
    .restart local v23    # "root":Ljava/lang/String;
    .local v24, "stat":Landroid/os/StatFs;
    :cond_3
    invoke-static/range {v17 .. v17}, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->choosefilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 148
    .local v16, "filename":Ljava/lang/String;
    if-nez v16, :cond_4

    .line 150
    new-instance v4, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    const/16 v8, 0x1ec

    invoke-direct {v4, v8}, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;-><init>(I)V

    return-object v4

    .line 152
    :cond_4
    const/4 v15, 0x0

    .line 153
    .local v15, "extension":Ljava/lang/String;
    const-string/jumbo v4, "."

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v12

    .line 154
    .local v12, "dotIndex":I
    if-gez v12, :cond_6

    .line 155
    if-nez v22, :cond_5

    .line 157
    new-instance v4, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    const/16 v8, 0x1ec

    invoke-direct {v4, v8}, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;-><init>(I)V

    return-object v4

    .line 159
    :cond_5
    const-string/jumbo v15, ""

    .line 165
    .local v15, "extension":Ljava/lang/String;
    :goto_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 167
    move-object/from16 v0, v16

    invoke-static {v0, v15}, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->chooseUniquefilename(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 169
    .local v5, "fullfilename":Ljava/lang/String;
    invoke-static {v5}, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->safeCanonicalPath(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 171
    new-instance v4, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    const/16 v8, 0x1ec

    invoke-direct {v4, v8}, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;-><init>(I)V

    return-object v4

    .line 162
    .end local v5    # "fullfilename":Ljava/lang/String;
    .local v15, "extension":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 163
    .local v15, "extension":Ljava/lang/String;
    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    goto :goto_4

    .line 173
    .restart local v5    # "fullfilename":Ljava/lang/String;
    :cond_7
    sget-boolean v4, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->V:Z

    if-eqz v4, :cond_8

    const-string/jumbo v4, "BluetoothOpp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Generated received filename "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_8
    if-eqz v5, :cond_b

    .line 177
    :try_start_3
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 178
    const/16 v4, 0x2f

    invoke-virtual {v5, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    add-int/lit8 v18, v4, 0x1

    .line 180
    .local v18, "index":I
    if-lez v18, :cond_a

    .line 181
    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 182
    .local v11, "displayName":Ljava/lang/String;
    sget-boolean v4, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->V:Z

    if-eqz v4, :cond_9

    const-string/jumbo v4, "BluetoothOpp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "New display name "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_9
    new-instance v25, Landroid/content/ContentValues;

    invoke-direct/range {v25 .. v25}, Landroid/content/ContentValues;-><init>()V

    .line 184
    .local v25, "updateValues":Landroid/content/ContentValues;
    const-string/jumbo v4, "hint"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v4, v3, v0, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 188
    .end local v11    # "displayName":Ljava/lang/String;
    .end local v25    # "updateValues":Landroid/content/ContentValues;
    :cond_a
    new-instance v4, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 189
    const/4 v9, 0x0

    .line 188
    invoke-direct/range {v4 .. v9}, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;-><init>(Ljava/lang/String;JLjava/io/FileOutputStream;I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    return-object v4

    .line 190
    .end local v18    # "index":I
    :catch_1
    move-exception v14

    .line 191
    .local v14, "e":Ljava/io/IOException;
    const-string/jumbo v4, "BluetoothOpp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Error when creating file "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    new-instance v4, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    const/16 v8, 0x1ec

    invoke-direct {v4, v8}, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;-><init>(I)V

    return-object v4

    .line 195
    .end local v14    # "e":Ljava/io/IOException;
    :cond_b
    new-instance v4, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    const/16 v8, 0x1ec

    invoke-direct {v4, v8}, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;-><init>(I)V

    return-object v4

    .line 114
    .end local v5    # "fullfilename":Ljava/lang/String;
    .end local v10    # "base":Ljava/io/File;
    .end local v12    # "dotIndex":I
    .end local v15    # "extension":Ljava/lang/String;
    .end local v23    # "root":Ljava/lang/String;
    .end local v24    # "stat":Landroid/os/StatFs;
    .local v16, "filename":Ljava/lang/String;
    .local v17, "hint":Ljava/lang/String;
    .restart local v22    # "mimeType":Ljava/lang/String;
    :catchall_1
    move-exception v4

    goto/16 :goto_3

    .end local v6    # "length":J
    .local v17, "hint":Ljava/lang/String;
    .restart local v20    # "length":J
    :cond_c
    move-wide/from16 v6, v20

    .end local v20    # "length":J
    .restart local v6    # "length":J
    goto/16 :goto_1

    .end local v6    # "length":J
    .restart local v20    # "length":J
    :cond_d
    move-wide/from16 v6, v20

    .end local v20    # "length":J
    .restart local v6    # "length":J
    goto/16 :goto_2
.end method

.method private static safeCanonicalPath(Ljava/lang/String;)Z
    .locals 6
    .param p0, "uniqueFileName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 202
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 203
    .local v2, "receiveFile":Ljava/io/File;
    sget-object v3, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->sDesiredStoragePath:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 204
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 205
    const-string/jumbo v4, "/bluetooth"

    .line 204
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->sDesiredStoragePath:Ljava/lang/String;

    .line 207
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, "canonicalPath":Ljava/lang/String;
    sget-object v3, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->sDesiredStoragePath:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_1

    .line 211
    return v5

    .line 214
    :cond_1
    const/4 v3, 0x1

    return v3

    .line 215
    .end local v0    # "canonicalPath":Ljava/lang/String;
    .end local v2    # "receiveFile":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 217
    .local v1, "ioe":Ljava/io/IOException;
    return v5
.end method
