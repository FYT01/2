.class public Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider$PipeWriter;
.super Ljava/lang/Object;
.source "BluetoothMapEmailProvider.java"

# interfaces
.implements Landroid/content/ContentProvider$PipeDataWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PipeWriter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/content/ContentProvider$PipeDataWriter",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider$PipeWriter;->this$0:Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public writeDataToPipe(Landroid/os/ParcelFileDescriptor;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/database/Cursor;)V
    .locals 14
    .param p1, "output"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "opts"    # Landroid/os/Bundle;
    .param p5, "c"    # Landroid/database/Cursor;

    .prologue
    .line 185
    const-string/jumbo v1, "BluetoothMapEmailProvider"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "writeDataToPipe(): uri="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 186
    const-string/jumbo v13, " - getLastPathSegment() = "

    .line 185
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 186
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v13

    .line 185
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v1, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const/4 v10, 0x0

    .line 191
    .local v10, "fout":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v8, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    .end local v10    # "fout":Ljava/io/FileOutputStream;
    .local v8, "fout":Ljava/io/FileOutputStream;
    const/4 v6, 0x1

    .line 194
    .local v6, "includeAttachments":Z
    const/4 v7, 0x0

    .line 195
    .local v7, "download":Z
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v11

    .line 196
    .local v11, "segments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x2

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 197
    .local v4, "messageId":J
    invoke-static/range {p2 .. p2}, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;->getAccountId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 198
    .local v2, "accountId":J
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    const/4 v12, 0x4

    if-lt v1, v12, :cond_0

    .line 199
    const/4 v1, 0x3

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 200
    .local v9, "format":Ljava/lang/String;
    const-string/jumbo v1, "NO_ATTACHMENTS"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 201
    const/4 v6, 0x0

    .line 210
    .end local v9    # "format":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider$PipeWriter;->this$0:Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;

    invoke-virtual/range {v1 .. v8}, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;->WriteMessageToStream(JJZZLjava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 218
    :try_start_2
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 223
    :goto_1
    :try_start_3
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 184
    .end local v2    # "accountId":J
    .end local v4    # "messageId":J
    .end local v6    # "includeAttachments":Z
    .end local v7    # "download":Z
    .end local v11    # "segments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_2
    return-void

    .line 202
    .restart local v2    # "accountId":J
    .restart local v4    # "messageId":J
    .restart local v6    # "includeAttachments":Z
    .restart local v7    # "download":Z
    .restart local v9    # "format":Ljava/lang/String;
    .restart local v11    # "segments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    :try_start_4
    const-string/jumbo v1, "DOWNLOAD_NO_ATTACHMENTS"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 203
    const/4 v6, 0x0

    .line 204
    const/4 v7, 0x1

    goto :goto_0

    .line 205
    :cond_2
    const-string/jumbo v1, "DOWNLOAD"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v1

    if-eqz v1, :cond_0

    .line 206
    const/4 v7, 0x1

    goto :goto_0

    .line 219
    .end local v9    # "format":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v1, "BluetoothMapEmailProvider"

    const-string/jumbo v12, "IOException: "

    invoke-static {v1, v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 224
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 225
    .restart local v0    # "e":Ljava/io/IOException;
    const-string/jumbo v1, "BluetoothMapEmailProvider"

    const-string/jumbo v12, "IOException: "

    invoke-static {v1, v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 211
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "accountId":J
    .end local v4    # "messageId":J
    .end local v6    # "includeAttachments":Z
    .end local v7    # "download":Z
    .end local v8    # "fout":Ljava/io/FileOutputStream;
    .end local v11    # "segments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10    # "fout":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    move-object v8, v10

    .line 212
    .end local v10    # "fout":Ljava/io/FileOutputStream;
    .restart local v8    # "fout":Ljava/io/FileOutputStream;
    :goto_3
    :try_start_5
    const-string/jumbo v1, "BluetoothMapEmailProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 218
    :try_start_6
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->flush()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 223
    :goto_4
    :try_start_7
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_2

    .line 224
    :catch_3
    move-exception v0

    .line 225
    const-string/jumbo v1, "BluetoothMapEmailProvider"

    const-string/jumbo v12, "IOException: "

    invoke-static {v1, v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 219
    :catch_4
    move-exception v0

    .line 220
    const-string/jumbo v1, "BluetoothMapEmailProvider"

    const-string/jumbo v12, "IOException: "

    invoke-static {v1, v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 216
    .end local v0    # "e":Ljava/io/IOException;
    .end local v8    # "fout":Ljava/io/FileOutputStream;
    .restart local v10    # "fout":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v1

    move-object v8, v10

    .line 218
    .end local v10    # "fout":Ljava/io/FileOutputStream;
    .restart local v8    # "fout":Ljava/io/FileOutputStream;
    :goto_5
    :try_start_8
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->flush()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 223
    :goto_6
    :try_start_9
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 216
    :goto_7
    throw v1

    .line 219
    :catch_5
    move-exception v0

    .line 220
    .restart local v0    # "e":Ljava/io/IOException;
    const-string/jumbo v12, "BluetoothMapEmailProvider"

    const-string/jumbo v13, "IOException: "

    invoke-static {v12, v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 224
    .end local v0    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v0

    .line 225
    .restart local v0    # "e":Ljava/io/IOException;
    const-string/jumbo v12, "BluetoothMapEmailProvider"

    const-string/jumbo v13, "IOException: "

    invoke-static {v12, v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 216
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v1

    goto :goto_5

    .line 211
    .restart local v6    # "includeAttachments":Z
    .restart local v7    # "download":Z
    :catch_7
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_3
.end method

.method public bridge synthetic writeDataToPipe(Landroid/os/ParcelFileDescriptor;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;)V
    .locals 6
    .param p1, "output"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "opts"    # Landroid/os/Bundle;
    .param p5, "c"    # Ljava/lang/Object;

    .prologue
    move-object v5, p5

    .line 183
    check-cast v5, Landroid/database/Cursor;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider$PipeWriter;->writeDataToPipe(Landroid/os/ParcelFileDescriptor;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/database/Cursor;)V

    return-void
.end method
