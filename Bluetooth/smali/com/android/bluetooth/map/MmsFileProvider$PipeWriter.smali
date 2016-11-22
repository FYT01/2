.class public Lcom/android/bluetooth/map/MmsFileProvider$PipeWriter;
.super Ljava/lang/Object;
.source "MmsFileProvider.java"

# interfaces
.implements Landroid/content/ContentProvider$PipeDataWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/MmsFileProvider;
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
.field final synthetic this$0:Lcom/android/bluetooth/map/MmsFileProvider;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/map/MmsFileProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/bluetooth/map/MmsFileProvider;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/bluetooth/map/MmsFileProvider$PipeWriter;->this$0:Lcom/android/bluetooth/map/MmsFileProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public writeDataToPipe(Landroid/os/ParcelFileDescriptor;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/database/Cursor;)V
    .locals 10
    .param p1, "output"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "opts"    # Landroid/os/Bundle;
    .param p5, "c"    # Landroid/database/Cursor;

    .prologue
    .line 110
    const-string/jumbo v7, "BluetoothMmsFileProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "writeDataToPipe(): uri="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 111
    const-string/jumbo v9, " - getLastPathSegment() = "

    .line 110
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 111
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v9

    .line 110
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const/4 v3, 0x0

    .line 114
    .local v3, "fout":Ljava/io/FileOutputStream;
    const/4 v5, 0x0

    .line 115
    .local v5, "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    const/4 v6, 0x0

    .line 118
    .local v6, "pduPersister":Lcom/google/android/mms/pdu/PduPersister;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    .end local v3    # "fout":Ljava/io/FileOutputStream;
    .local v4, "fout":Ljava/io/FileOutputStream;
    :try_start_1
    iget-object v7, p0, Lcom/android/bluetooth/map/MmsFileProvider$PipeWriter;->this$0:Lcom/android/bluetooth/map/MmsFileProvider;

    invoke-virtual {v7}, Lcom/android/bluetooth/map/MmsFileProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v6

    .line 120
    .local v6, "pduPersister":Lcom/google/android/mms/pdu/PduPersister;
    invoke-virtual {v6, p2}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v5

    .line 121
    .local v5, "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    new-instance v7, Lcom/google/android/mms/pdu/PduComposer;

    iget-object v8, p0, Lcom/android/bluetooth/map/MmsFileProvider$PipeWriter;->this$0:Lcom/android/bluetooth/map/MmsFileProvider;

    invoke-virtual {v8}, Lcom/android/bluetooth/map/MmsFileProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8, v5}, Lcom/google/android/mms/pdu/PduComposer;-><init>(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)V

    invoke-virtual {v7}, Lcom/google/android/mms/pdu/PduComposer;->make()[B

    move-result-object v0

    .line 122
    .local v0, "bytes":[B
    invoke-virtual {v4, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 135
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/google/android/mms/pdu/PduPersister;->release()V

    .line 137
    :cond_0
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 142
    :goto_0
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_1
    move-object v3, v4

    .line 109
    .end local v0    # "bytes":[B
    .end local v4    # "fout":Ljava/io/FileOutputStream;
    .end local v5    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .end local v6    # "pduPersister":Lcom/google/android/mms/pdu/PduPersister;
    :goto_2
    return-void

    .line 138
    .restart local v0    # "bytes":[B
    .restart local v4    # "fout":Ljava/io/FileOutputStream;
    .restart local v5    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v6    # "pduPersister":Lcom/google/android/mms/pdu/PduPersister;
    :catch_0
    move-exception v2

    .line 139
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v7, "BluetoothMmsFileProvider"

    const-string/jumbo v8, "IOException: "

    invoke-static {v7, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 143
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 144
    .restart local v2    # "e":Ljava/io/IOException;
    const-string/jumbo v7, "BluetoothMmsFileProvider"

    const-string/jumbo v8, "IOException: "

    invoke-static {v7, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 129
    .end local v0    # "bytes":[B
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "fout":Ljava/io/FileOutputStream;
    .restart local v3    # "fout":Ljava/io/FileOutputStream;
    .local v5, "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .local v6, "pduPersister":Lcom/google/android/mms/pdu/PduPersister;
    :catch_2
    move-exception v1

    .line 130
    .end local v3    # "fout":Ljava/io/FileOutputStream;
    .end local v5    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .end local v6    # "pduPersister":Lcom/google/android/mms/pdu/PduPersister;
    .local v1, "e":Lcom/google/android/mms/MmsException;
    :goto_3
    :try_start_4
    const-string/jumbo v7, "BluetoothMmsFileProvider"

    invoke-static {v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 135
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/google/android/mms/pdu/PduPersister;->release()V

    .line 137
    :cond_1
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 142
    :goto_4
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    .line 143
    :catch_3
    move-exception v2

    .line 144
    .restart local v2    # "e":Ljava/io/IOException;
    const-string/jumbo v7, "BluetoothMmsFileProvider"

    const-string/jumbo v8, "IOException: "

    invoke-static {v7, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 138
    .end local v2    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 139
    .restart local v2    # "e":Ljava/io/IOException;
    const-string/jumbo v7, "BluetoothMmsFileProvider"

    const-string/jumbo v8, "IOException: "

    invoke-static {v7, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 124
    .end local v1    # "e":Lcom/google/android/mms/MmsException;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v3    # "fout":Ljava/io/FileOutputStream;
    .restart local v5    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v6    # "pduPersister":Lcom/google/android/mms/pdu/PduPersister;
    :catch_5
    move-exception v2

    .line 125
    .end local v3    # "fout":Ljava/io/FileOutputStream;
    .end local v5    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .end local v6    # "pduPersister":Lcom/google/android/mms/pdu/PduPersister;
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_5
    :try_start_7
    const-string/jumbo v7, "BluetoothMmsFileProvider"

    invoke-static {v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 135
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/google/android/mms/pdu/PduPersister;->release()V

    .line 137
    :cond_2
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 142
    :goto_6
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_2

    .line 143
    :catch_6
    move-exception v2

    .line 144
    const-string/jumbo v7, "BluetoothMmsFileProvider"

    const-string/jumbo v8, "IOException: "

    invoke-static {v7, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 138
    :catch_7
    move-exception v2

    .line 139
    const-string/jumbo v7, "BluetoothMmsFileProvider"

    const-string/jumbo v8, "IOException: "

    invoke-static {v7, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 134
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 135
    :goto_7
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/google/android/mms/pdu/PduPersister;->release()V

    .line 137
    :cond_3
    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    .line 142
    :goto_8
    :try_start_b
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    .line 134
    :goto_9
    throw v7

    .line 138
    :catch_8
    move-exception v2

    .line 139
    .restart local v2    # "e":Ljava/io/IOException;
    const-string/jumbo v8, "BluetoothMmsFileProvider"

    const-string/jumbo v9, "IOException: "

    invoke-static {v8, v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 143
    .end local v2    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v2

    .line 144
    .restart local v2    # "e":Ljava/io/IOException;
    const-string/jumbo v8, "BluetoothMmsFileProvider"

    const-string/jumbo v9, "IOException: "

    invoke-static {v8, v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 134
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v4    # "fout":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "fout":Ljava/io/FileOutputStream;
    .local v3, "fout":Ljava/io/FileOutputStream;
    goto :goto_7

    .line 124
    .end local v3    # "fout":Ljava/io/FileOutputStream;
    .restart local v4    # "fout":Ljava/io/FileOutputStream;
    :catch_a
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    move-object v3, v4

    .end local v4    # "fout":Ljava/io/FileOutputStream;
    .restart local v3    # "fout":Ljava/io/FileOutputStream;
    goto :goto_5

    .line 129
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "fout":Ljava/io/FileOutputStream;
    .restart local v4    # "fout":Ljava/io/FileOutputStream;
    :catch_b
    move-exception v1

    .restart local v1    # "e":Lcom/google/android/mms/MmsException;
    move-object v3, v4

    .end local v4    # "fout":Ljava/io/FileOutputStream;
    .restart local v3    # "fout":Ljava/io/FileOutputStream;
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

    .line 108
    check-cast v5, Landroid/database/Cursor;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/bluetooth/map/MmsFileProvider$PipeWriter;->writeDataToPipe(Landroid/os/ParcelFileDescriptor;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/database/Cursor;)V

    return-void
.end method
