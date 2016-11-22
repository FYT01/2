.class Landroid/provider/MediaStore$InternalThumbnails;
.super Ljava/lang/Object;
.source "MediaStore.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MediaStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalThumbnails"
.end annotation


# static fields
.field static final DEFAULT_GROUP_ID:I = 0x0

.field private static final FULL_SCREEN_KIND:I = 0x2

.field private static final MICRO_KIND:I = 0x3

.field private static final MINI_KIND:I = 0x1

.field private static final PROJECTION:[Ljava/lang/String;

.field private static sThumbBuf:[B

.field private static final sThumbBufLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "_data"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Landroid/provider/MediaStore$InternalThumbnails;->PROJECTION:[Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBufLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static cancelThumbnailRequest(Landroid/content/ContentResolver;JLandroid/net/Uri;J)V
    .locals 7
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "origId"    # J
    .param p3, "baseUri"    # Landroid/net/Uri;
    .param p4, "groupId"    # J

    .prologue
    invoke-virtual {p3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "cancel"

    const-string v3, "1"

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "orig_id"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "group_id"

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .local v1, "cancelUri":Landroid/net/Uri;
    const/4 v6, 0x0

    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    sget-object v2, Landroid/provider/MediaStore$InternalThumbnails;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void

    .local v6, "c":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    throw v0
.end method

.method private static getMiniThumbFromFile(Landroid/database/Cursor;Landroid/net/Uri;Landroid/content/ContentResolver;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "c"    # Landroid/database/Cursor;
    .param p1, "baseUri"    # Landroid/net/Uri;
    .param p2, "cr"    # Landroid/content/ContentResolver;
    .param p3, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    const/4 v0, 0x0

    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v8, 0x0

    .local v8, "thumbUri":Landroid/net/Uri;
    const/4 v9, 0x0

    :try_start_0
    invoke-interface {p0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .local v6, "thumbId":J
    const/4 v9, 0x1

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .local v4, "filePath":Ljava/lang/String;
    invoke-static {p1, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    .local v8, "thumbUri":Landroid/net/Uri;
    const-string v9, "r"

    invoke-virtual {p2, v8, v9}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    .local v5, "pfdInput":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v9, v10, p3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "filePath":Ljava/lang/String;
    .end local v5    # "pfdInput":Landroid/os/ParcelFileDescriptor;
    .end local v6    # "thumbId":J
    .end local v8    # "thumbUri":Landroid/net/Uri;
    :goto_0
    return-object v0

    :catch_0
    move-exception v3

    .local v3, "ex":Ljava/lang/OutOfMemoryError;
    const-string v9, "MediaStore"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "failed to allocate memory for thumbnail "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "; "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v3    # "ex":Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v2

    .local v2, "ex":Ljava/io/IOException;
    const-string v9, "MediaStore"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "couldn\'t open thumbnail "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "; "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v2    # "ex":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .local v1, "ex":Ljava/io/FileNotFoundException;
    const-string v9, "MediaStore"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "couldn\'t open thumbnail "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "; "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static getThumbnail(Landroid/content/ContentResolver;JJILandroid/graphics/BitmapFactory$Options;Landroid/net/Uri;Z)Landroid/graphics/Bitmap;
    .locals 21
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "origId"    # J
    .param p3, "groupId"    # J
    .param p5, "kind"    # I
    .param p6, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p7, "baseUri"    # Landroid/net/Uri;
    .param p8, "isVideo"    # Z

    .prologue
    const/4 v12, 0x0

    .local v12, "bitmap":Landroid/graphics/Bitmap;
    new-instance v17, Landroid/media/MiniThumbFile;

    if-eqz p8, :cond_2

    sget-object v4, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    :goto_0
    move-object/from16 v0, v17

    invoke-direct {v0, v4}, Landroid/media/MiniThumbFile;-><init>(Landroid/net/Uri;)V

    .local v17, "thumbFile":Landroid/media/MiniThumbFile;
    const/4 v13, 0x0

    .local v13, "c":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, v17

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/media/MiniThumbFile;->getMagic(J)J

    move-result-wide v18

    .local v18, "magic":J
    const-wide/16 v8, 0x0

    cmp-long v4, v18, v8

    if-eqz v4, :cond_7

    const/4 v4, 0x3

    move/from16 v0, p5

    if-ne v0, v4, :cond_4

    sget-object v6, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBufLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    sget-object v4, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    if-nez v4, :cond_0

    const/16 v4, 0x2710

    new-array v4, v4, [B

    sput-object v4, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    :cond_0
    sget-object v4, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    move-object/from16 v0, v17

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2, v4}, Landroid/media/MiniThumbFile;->getMiniThumbFromFile(J[B)[B

    move-result-object v4

    if-eqz v4, :cond_1

    sget-object v4, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    sget-object v8, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    array-length v8, v8

    const/4 v9, 0x0

    invoke-static {v4, v9, v8}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v12

    .local v12, "bitmap":Landroid/graphics/Bitmap;
    if-nez v12, :cond_1

    const-string v4, "MediaStore"

    const-string v8, "couldn\'t decode byte array."

    invoke-static {v4, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v12    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual/range {v17 .. v17}, Landroid/media/MiniThumbFile;->deactivate()V

    const/16 v17, 0x0

    .local v17, "thumbFile":Landroid/media/MiniThumbFile;
    return-object v12

    .end local v13    # "c":Landroid/database/Cursor;
    .end local v17    # "thumbFile":Landroid/media/MiniThumbFile;
    .end local v18    # "magic":J
    .local v12, "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .end local v12    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v13    # "c":Landroid/database/Cursor;
    .local v17, "thumbFile":Landroid/media/MiniThumbFile;
    .restart local v18    # "magic":J
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v6

    throw v4
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .end local v13    # "c":Landroid/database/Cursor;
    .end local v18    # "magic":J
    :catch_0
    move-exception v15

    .local v15, "ex":Landroid/database/sqlite/SQLiteException;
    :try_start_4
    const-string v4, "MediaStore"

    invoke-static {v4, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v13, :cond_3

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_3
    invoke-virtual/range {v17 .. v17}, Landroid/media/MiniThumbFile;->deactivate()V

    .end local v15    # "ex":Landroid/database/sqlite/SQLiteException;
    :goto_1
    const/16 v17, 0x0

    .local v17, "thumbFile":Landroid/media/MiniThumbFile;
    return-object v12

    .restart local v12    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v13    # "c":Landroid/database/Cursor;
    .local v17, "thumbFile":Landroid/media/MiniThumbFile;
    .restart local v18    # "magic":J
    :cond_4
    const/4 v4, 0x1

    move/from16 v0, p5

    if-ne v0, v4, :cond_7

    if-eqz p8, :cond_6

    :try_start_5
    const-string v14, "video_id="

    .local v14, "column":Ljava/lang/String;
    :goto_2
    sget-object v6, Landroid/provider/MediaStore$InternalThumbnails;->PROJECTION:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p7

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .local v13, "c":Landroid/database/Cursor;
    if-eqz v13, :cond_7

    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_7

    move-object/from16 v0, p7

    move-object/from16 v1, p0

    move-object/from16 v2, p6

    invoke-static {v13, v0, v1, v2}, Landroid/provider/MediaStore$InternalThumbnails;->getMiniThumbFromFile(Landroid/database/Cursor;Landroid/net/Uri;Landroid/content/ContentResolver;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-object v12

    .local v12, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v12, :cond_7

    if-eqz v13, :cond_5

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_5
    invoke-virtual/range {v17 .. v17}, Landroid/media/MiniThumbFile;->deactivate()V

    const/16 v17, 0x0

    .local v17, "thumbFile":Landroid/media/MiniThumbFile;
    return-object v12

    .end local v14    # "column":Ljava/lang/String;
    .local v12, "bitmap":Landroid/graphics/Bitmap;
    .local v13, "c":Landroid/database/Cursor;
    .local v17, "thumbFile":Landroid/media/MiniThumbFile;
    :cond_6
    :try_start_6
    const-string v14, "image_id="

    .restart local v14    # "column":Ljava/lang/String;
    goto :goto_2

    .end local v12    # "bitmap":Landroid/graphics/Bitmap;
    .end local v13    # "c":Landroid/database/Cursor;
    .end local v14    # "column":Ljava/lang/String;
    :cond_7
    invoke-virtual/range {p7 .. p7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v6, "blocking"

    const-string v8, "1"

    invoke-virtual {v4, v6, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v6, "orig_id"

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v6, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v6, "group_id"

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v6, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .local v5, "blockingUri":Landroid/net/Uri;
    if-eqz v13, :cond_8

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_8
    sget-object v6, Landroid/provider/MediaStore$InternalThumbnails;->PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result-object v13

    .local v13, "c":Landroid/database/Cursor;
    if-nez v13, :cond_a

    const/4 v4, 0x0

    if-eqz v13, :cond_9

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_9
    invoke-virtual/range {v17 .. v17}, Landroid/media/MiniThumbFile;->deactivate()V

    const/16 v17, 0x0

    .local v17, "thumbFile":Landroid/media/MiniThumbFile;
    return-object v4

    .local v17, "thumbFile":Landroid/media/MiniThumbFile;
    :cond_a
    const/4 v4, 0x3

    move/from16 v0, p5

    if-ne v0, v4, :cond_12

    :try_start_7
    sget-object v6, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBufLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    sget-object v4, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    if-nez v4, :cond_b

    const/16 v4, 0x2710

    new-array v4, v4, [B

    sput-object v4, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    :cond_b
    sget-object v4, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    const/4 v8, 0x0

    invoke-static {v4, v8}, Ljava/util/Arrays;->fill([BB)V

    sget-object v4, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    move-object/from16 v0, v17

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2, v4}, Landroid/media/MiniThumbFile;->getMiniThumbFromFile(J[B)[B

    move-result-object v4

    if-eqz v4, :cond_c

    sget-object v4, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    sget-object v8, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    array-length v8, v8

    const/4 v9, 0x0

    invoke-static {v4, v9, v8}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v12

    .local v12, "bitmap":Landroid/graphics/Bitmap;
    if-nez v12, :cond_c

    const-string v4, "MediaStore"

    const-string v8, "couldn\'t decode byte array."

    invoke-static {v4, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .end local v12    # "bitmap":Landroid/graphics/Bitmap;
    :cond_c
    :try_start_9
    monitor-exit v6

    :cond_d
    :goto_3
    if-nez v12, :cond_f

    const-string v4, "MediaStore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Create the thumbnail in memory: origId="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p1

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", kind="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p5

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", isVideo="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p8

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p7 .. p7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "thumbnails"

    const-string v8, "media"

    invoke-virtual {v4, v6, v8}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .local v7, "uri":Landroid/net/Uri;
    if-eqz v13, :cond_e

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_e
    sget-object v8, Landroid/provider/MediaStore$InternalThumbnails;->PROJECTION:[Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v6, p0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    if-eqz v13, :cond_14

    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_14

    const/4 v4, 0x1

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .local v16, "filePath":Ljava/lang/String;
    if-eqz v16, :cond_f

    if-eqz p8, :cond_16

    move-object/from16 v0, v16

    move/from16 v1, p5

    invoke-static {v0, v1}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-result-object v12

    .end local v7    # "uri":Landroid/net/Uri;
    .end local v16    # "filePath":Ljava/lang/String;
    :cond_f
    :goto_4
    if-eqz v13, :cond_10

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_10
    invoke-virtual/range {v17 .. v17}, Landroid/media/MiniThumbFile;->deactivate()V

    goto/16 :goto_1

    :catchall_1
    move-exception v4

    :try_start_a
    monitor-exit v6

    throw v4
    :try_end_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .end local v5    # "blockingUri":Landroid/net/Uri;
    .end local v13    # "c":Landroid/database/Cursor;
    .end local v18    # "magic":J
    :catchall_2
    move-exception v4

    if-eqz v13, :cond_11

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_11
    invoke-virtual/range {v17 .. v17}, Landroid/media/MiniThumbFile;->deactivate()V

    const/16 v17, 0x0

    .local v17, "thumbFile":Landroid/media/MiniThumbFile;
    throw v4

    .restart local v5    # "blockingUri":Landroid/net/Uri;
    .restart local v13    # "c":Landroid/database/Cursor;
    .local v17, "thumbFile":Landroid/media/MiniThumbFile;
    .restart local v18    # "magic":J
    :cond_12
    const/4 v4, 0x1

    move/from16 v0, p5

    if-ne v0, v4, :cond_13

    :try_start_b
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_d

    move-object/from16 v0, p7

    move-object/from16 v1, p0

    move-object/from16 v2, p6

    invoke-static {v13, v0, v1, v2}, Landroid/provider/MediaStore$InternalThumbnails;->getMiniThumbFromFile(Landroid/database/Cursor;Landroid/net/Uri;Landroid/content/ContentResolver;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v12

    .restart local v12    # "bitmap":Landroid/graphics/Bitmap;
    goto/16 :goto_3

    .end local v12    # "bitmap":Landroid/graphics/Bitmap;
    :cond_13
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unsupported kind: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p5

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .restart local v7    # "uri":Landroid/net/Uri;
    :cond_14
    const/4 v4, 0x0

    if-eqz v13, :cond_15

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_15
    invoke-virtual/range {v17 .. v17}, Landroid/media/MiniThumbFile;->deactivate()V

    const/16 v17, 0x0

    .local v17, "thumbFile":Landroid/media/MiniThumbFile;
    return-object v4

    .restart local v16    # "filePath":Ljava/lang/String;
    .local v17, "thumbFile":Landroid/media/MiniThumbFile;
    :cond_16
    :try_start_c
    move-object/from16 v0, v16

    move/from16 v1, p5

    invoke-static {v0, v1}, Landroid/media/ThumbnailUtils;->createImageThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    :try_end_c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    move-result-object v12

    .restart local v12    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_4
.end method
