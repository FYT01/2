.class public Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;
.super Ljava/lang/Object;
.source "BluetoothOppSendFileInfo.java"


# static fields
.field private static final D:Z = true

.field static final SEND_FILE_INFO_ERROR:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

.field private static final TAG:Ljava/lang/String; = "BluetoothOppSendFileInfo"

.field private static final V:Z


# instance fields
.field public final mData:Ljava/lang/String;

.field public final mFileName:Ljava/lang/String;

.field public final mInputStream:Ljava/io/FileInputStream;

.field public final mLength:J

.field public final mMimetype:Ljava/lang/String;

.field public final mStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 58
    const-string/jumbo v0, "BluetoothOpp"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->V:Z

    .line 61
    new-instance v1, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    .line 62
    const-wide/16 v4, 0x0

    const/16 v7, 0x1ec

    move-object v3, v2

    move-object v6, v2

    .line 61
    invoke-direct/range {v1 .. v7}, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/io/FileInputStream;I)V

    sput-object v1, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->SEND_FILE_INFO_ERROR:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 1
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "length"    # J
    .param p5, "status"    # I

    .prologue
    const/4 v0, 0x0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    .line 93
    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mInputStream:Ljava/io/FileInputStream;

    .line 94
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mData:Ljava/lang/String;

    .line 95
    iput-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mMimetype:Ljava/lang/String;

    .line 96
    iput-wide p3, p0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    .line 97
    iput p5, p0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mStatus:I

    .line 91
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/io/FileInputStream;I)V
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "length"    # J
    .param p5, "inputStream"    # Ljava/io/FileInputStream;
    .param p6, "status"    # I

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    .line 83
    iput-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mMimetype:Ljava/lang/String;

    .line 84
    iput-wide p3, p0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    .line 85
    iput-object p5, p0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mInputStream:Ljava/io/FileInputStream;

    .line 86
    iput p6, p0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mStatus:I

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mData:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public static generateFileInfo(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;
    .locals 28
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 102
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 103
    .local v2, "contentResolver":Landroid/content/ContentResolver;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v22

    .line 104
    .local v22, "scheme":Ljava/lang/String;
    const/16 v18, 0x0

    .line 106
    .local v18, "fileName":Ljava/lang/String;
    const-wide/16 v20, 0x0

    .line 110
    .local v20, "length":J
    const-string/jumbo v3, "content"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 111
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v10

    .line 114
    .local v10, "contentType":Ljava/lang/String;
    const/4 v3, 0x2

    :try_start_0
    new-array v4, v3, [Ljava/lang/String;

    .line 115
    const-string/jumbo v3, "_display_name"

    const/4 v9, 0x0

    aput-object v3, v4, v9

    const-string/jumbo v3, "_size"

    const/4 v9, 0x1

    aput-object v3, v4, v9

    .line 116
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p1

    .line 114
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v19

    .line 126
    :goto_0
    if-eqz v19, :cond_8

    .line 128
    :try_start_1
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 129
    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 130
    .end local v18    # "fileName":Ljava/lang/String;
    .local v4, "fileName":Ljava/lang/String;
    const/4 v3, 0x1

    :try_start_2
    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-wide v6

    .line 131
    .end local v20    # "length":J
    .local v6, "length":J
    :try_start_3
    const-string/jumbo v3, "BluetoothOppSendFileInfo"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "fileName = "

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v23, " length = "

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 134
    :goto_1
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 137
    :goto_2
    if-nez v4, :cond_6

    .line 139
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    move-object v5, v10

    .line 150
    .end local v10    # "contentType":Ljava/lang/String;
    .local v5, "contentType":Ljava/lang/String;
    :goto_3
    const/4 v8, 0x0

    .line 151
    .local v8, "is":Ljava/io/FileInputStream;
    const-string/jumbo v3, "content"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 157
    :try_start_4
    const-string/jumbo v3, "r"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v17

    .line 158
    .local v17, "fd":Landroid/content/res/AssetFileDescriptor;
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v24

    .line 159
    .local v24, "statLength":J
    cmp-long v3, v6, v24

    if-eqz v3, :cond_0

    const-wide/16 v26, 0x0

    cmp-long v3, v24, v26

    if-lez v3, :cond_0

    .line 160
    const-string/jumbo v3, "BluetoothOppSendFileInfo"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Content provider length is wrong ("

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 161
    const-string/jumbo v23, "), using stat length ("

    .line 160
    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 161
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v23

    .line 160
    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 161
    const-string/jumbo v23, ")"

    .line 160
    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_4

    .line 162
    move-wide/from16 v6, v24

    .line 168
    :cond_0
    :try_start_5
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_4

    move-result-object v8

    .line 184
    .end local v8    # "is":Ljava/io/FileInputStream;
    .end local v17    # "fd":Landroid/content/res/AssetFileDescriptor;
    .end local v24    # "statLength":J
    :cond_1
    :goto_4
    if-nez v8, :cond_2

    .line 186
    :try_start_6
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v8

    check-cast v8, Ljava/io/FileInputStream;
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_5

    .line 197
    :cond_2
    const-wide/16 v26, 0x0

    cmp-long v3, v6, v26

    if-nez v3, :cond_3

    .line 199
    :try_start_7
    invoke-virtual {v8}, Ljava/io/FileInputStream;->available()I

    move-result v3

    int-to-long v6, v3

    .line 200
    sget-boolean v3, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->V:Z

    if-eqz v3, :cond_3

    const-string/jumbo v3, "BluetoothOppSendFileInfo"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "file length is "

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    .line 207
    :cond_3
    new-instance v3, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v9}, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/io/FileInputStream;I)V

    return-object v3

    .line 120
    .end local v4    # "fileName":Ljava/lang/String;
    .end local v5    # "contentType":Ljava/lang/String;
    .end local v6    # "length":J
    .restart local v10    # "contentType":Ljava/lang/String;
    .restart local v18    # "fileName":Ljava/lang/String;
    .restart local v20    # "length":J
    :catch_0
    move-exception v14

    .line 121
    .local v14, "e":Ljava/lang/SecurityException;
    const/16 v19, 0x0

    .line 122
    .local v19, "metadataCursor":Landroid/database/Cursor;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    .line 123
    .end local v18    # "fileName":Ljava/lang/String;
    .restart local v4    # "fileName":Ljava/lang/String;
    const-string/jumbo v3, "BluetoothOppSendFileInfo"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "generateFileInfo: "

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    new-instance v3, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, v10

    move-wide/from16 v6, v20

    invoke-direct/range {v3 .. v9}, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/io/FileInputStream;I)V

    return-object v3

    .line 117
    .end local v4    # "fileName":Ljava/lang/String;
    .end local v14    # "e":Ljava/lang/SecurityException;
    .end local v19    # "metadataCursor":Landroid/database/Cursor;
    .restart local v18    # "fileName":Ljava/lang/String;
    :catch_1
    move-exception v11

    .line 119
    .local v11, "e":Landroid/database/sqlite/SQLiteException;
    const/16 v19, 0x0

    .restart local v19    # "metadataCursor":Landroid/database/Cursor;
    goto/16 :goto_0

    .line 133
    .end local v11    # "e":Landroid/database/sqlite/SQLiteException;
    .end local v19    # "metadataCursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v3

    move-wide/from16 v6, v20

    .end local v20    # "length":J
    .restart local v6    # "length":J
    move-object/from16 v4, v18

    .line 134
    .end local v18    # "fileName":Ljava/lang/String;
    .restart local v4    # "fileName":Ljava/lang/String;
    :goto_5
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 133
    throw v3

    .line 141
    .end local v4    # "fileName":Ljava/lang/String;
    .end local v6    # "length":J
    .end local v10    # "contentType":Ljava/lang/String;
    .restart local v18    # "fileName":Ljava/lang/String;
    .restart local v20    # "length":J
    :cond_4
    const-string/jumbo v3, "file"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 142
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    .line 143
    .end local v18    # "fileName":Ljava/lang/String;
    .restart local v4    # "fileName":Ljava/lang/String;
    move-object/from16 v5, p2

    .line 144
    .restart local v5    # "contentType":Ljava/lang/String;
    new-instance v16, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 145
    .local v16, "f":Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->length()J

    move-result-wide v6

    .end local v20    # "length":J
    .restart local v6    # "length":J
    goto/16 :goto_3

    .line 148
    .end local v4    # "fileName":Ljava/lang/String;
    .end local v5    # "contentType":Ljava/lang/String;
    .end local v6    # "length":J
    .end local v16    # "f":Ljava/io/File;
    .restart local v18    # "fileName":Ljava/lang/String;
    .restart local v20    # "length":J
    :cond_5
    sget-object v3, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->SEND_FILE_INFO_ERROR:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    return-object v3

    .line 169
    .end local v18    # "fileName":Ljava/lang/String;
    .end local v20    # "length":J
    .restart local v4    # "fileName":Ljava/lang/String;
    .restart local v5    # "contentType":Ljava/lang/String;
    .restart local v6    # "length":J
    .restart local v8    # "is":Ljava/io/FileInputStream;
    .restart local v17    # "fd":Landroid/content/res/AssetFileDescriptor;
    .restart local v24    # "statLength":J
    :catch_2
    move-exception v13

    .line 171
    .local v13, "e":Ljava/io/IOException;
    :try_start_8
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_8
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_4

    .line 172
    :catch_3
    move-exception v15

    .local v15, "e2":Ljava/io/IOException;
    goto/16 :goto_4

    .line 178
    .end local v13    # "e":Ljava/io/IOException;
    .end local v15    # "e2":Ljava/io/IOException;
    .end local v17    # "fd":Landroid/content/res/AssetFileDescriptor;
    .end local v24    # "statLength":J
    :catch_4
    move-exception v14

    .line 179
    .restart local v14    # "e":Ljava/lang/SecurityException;
    const-string/jumbo v3, "BluetoothOppSendFileInfo"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "gnrtFileInfo: openAssetFD:  "

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const-string/jumbo v3, "BluetoothOppSendFileInfo"

    const-string/jumbo v9, "gnrtFileInfo: Close transfer "

    invoke-static {v3, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    sget-object v3, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->SEND_FILE_INFO_ERROR:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    return-object v3

    .line 189
    .end local v8    # "is":Ljava/io/FileInputStream;
    .end local v14    # "e":Ljava/lang/SecurityException;
    :catch_5
    move-exception v14

    .line 190
    .restart local v14    # "e":Ljava/lang/SecurityException;
    const-string/jumbo v3, "BluetoothOppSendFileInfo"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "OpenInputStrm: generateFileInfo: "

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const-string/jumbo v3, "BluetoothOppSendFileInfo"

    const-string/jumbo v9, "gnrtFileInfo: Close transfer "

    invoke-static {v3, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    sget-object v3, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->SEND_FILE_INFO_ERROR:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    return-object v3

    .line 187
    .end local v14    # "e":Ljava/lang/SecurityException;
    :catch_6
    move-exception v12

    .line 188
    .local v12, "e":Ljava/io/FileNotFoundException;
    sget-object v3, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->SEND_FILE_INFO_ERROR:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    return-object v3

    .line 201
    .end local v12    # "e":Ljava/io/FileNotFoundException;
    :catch_7
    move-exception v13

    .line 202
    .restart local v13    # "e":Ljava/io/IOException;
    const-string/jumbo v3, "BluetoothOppSendFileInfo"

    const-string/jumbo v9, "Read stream exception: "

    invoke-static {v3, v9, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 203
    sget-object v3, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->SEND_FILE_INFO_ERROR:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    return-object v3

    .line 176
    .end local v13    # "e":Ljava/io/IOException;
    .restart local v8    # "is":Ljava/io/FileInputStream;
    :catch_8
    move-exception v12

    .restart local v12    # "e":Ljava/io/FileNotFoundException;
    goto/16 :goto_4

    .line 133
    .end local v5    # "contentType":Ljava/lang/String;
    .end local v6    # "length":J
    .end local v8    # "is":Ljava/io/FileInputStream;
    .end local v12    # "e":Ljava/io/FileNotFoundException;
    .restart local v10    # "contentType":Ljava/lang/String;
    .restart local v20    # "length":J
    :catchall_1
    move-exception v3

    move-wide/from16 v6, v20

    .end local v20    # "length":J
    .restart local v6    # "length":J
    goto/16 :goto_5

    :catchall_2
    move-exception v3

    goto/16 :goto_5

    :cond_6
    move-object v5, v10

    .end local v10    # "contentType":Ljava/lang/String;
    .restart local v5    # "contentType":Ljava/lang/String;
    goto/16 :goto_3

    .end local v4    # "fileName":Ljava/lang/String;
    .end local v5    # "contentType":Ljava/lang/String;
    .end local v6    # "length":J
    .restart local v10    # "contentType":Ljava/lang/String;
    .restart local v18    # "fileName":Ljava/lang/String;
    .restart local v20    # "length":J
    :cond_7
    move-wide/from16 v6, v20

    .end local v20    # "length":J
    .restart local v6    # "length":J
    move-object/from16 v4, v18

    .restart local v4    # "fileName":Ljava/lang/String;
    goto/16 :goto_1

    .end local v4    # "fileName":Ljava/lang/String;
    .end local v6    # "length":J
    .restart local v20    # "length":J
    :cond_8
    move-wide/from16 v6, v20

    .end local v20    # "length":J
    .restart local v6    # "length":J
    move-object/from16 v4, v18

    .restart local v4    # "fileName":Ljava/lang/String;
    goto/16 :goto_2
.end method
