.class public Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider$PipeReader;
.super Ljava/lang/Object;
.source "BluetoothMapEmailProvider.java"

# interfaces
.implements Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider$PipeDataReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PipeReader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider$PipeDataReader",
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
    .line 134
    iput-object p1, p0, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider$PipeReader;->this$0:Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public readDataFromPipe(Landroid/os/ParcelFileDescriptor;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/database/Cursor;)V
    .locals 10
    .param p1, "input"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "opts"    # Landroid/os/Bundle;
    .param p5, "args"    # Landroid/database/Cursor;

    .prologue
    .line 142
    const-string/jumbo v0, "BluetoothMapEmailProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "readDataFromPipe(): uri="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const/4 v7, 0x0

    .line 145
    .local v7, "fIn":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    .end local v7    # "fIn":Ljava/io/FileInputStream;
    .local v1, "fIn":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 147
    .local v4, "messageId":J
    invoke-static {p2}, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;->getAccountId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 148
    .local v2, "accountId":J
    iget-object v0, p0, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider$PipeReader;->this$0:Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;

    invoke-virtual/range {v0 .. v5}, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;->UpdateMimeMessageFromStream(Ljava/io/FileInputStream;JJ)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 156
    if-eqz v1, :cond_0

    .line 157
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 141
    .end local v2    # "accountId":J
    .end local v4    # "messageId":J
    :cond_0
    :goto_0
    return-void

    .line 158
    .restart local v2    # "accountId":J
    .restart local v4    # "messageId":J
    :catch_0
    move-exception v6

    .line 159
    .local v6, "e":Ljava/io/IOException;
    const-string/jumbo v0, "BluetoothMapEmailProvider"

    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 149
    .end local v1    # "fIn":Ljava/io/FileInputStream;
    .end local v2    # "accountId":J
    .end local v4    # "messageId":J
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v7    # "fIn":Ljava/io/FileInputStream;
    :catch_1
    move-exception v6

    .restart local v6    # "e":Ljava/io/IOException;
    move-object v1, v7

    .line 150
    .end local v7    # "fIn":Ljava/io/FileInputStream;
    .restart local v1    # "fIn":Ljava/io/FileInputStream;
    :goto_1
    :try_start_3
    const-string/jumbo v0, "BluetoothMapEmailProvider"

    const-string/jumbo v8, "IOException: "

    invoke-static {v0, v8, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 156
    if-eqz v1, :cond_0

    .line 157
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 158
    :catch_2
    move-exception v6

    .line 159
    const-string/jumbo v0, "BluetoothMapEmailProvider"

    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 154
    .end local v1    # "fIn":Ljava/io/FileInputStream;
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v7    # "fIn":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v0

    move-object v1, v7

    .line 156
    .end local v7    # "fIn":Ljava/io/FileInputStream;
    .restart local v1    # "fIn":Ljava/io/FileInputStream;
    :goto_2
    if-eqz v1, :cond_1

    .line 157
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 154
    :cond_1
    :goto_3
    throw v0

    .line 158
    :catch_3
    move-exception v6

    .line 159
    .restart local v6    # "e":Ljava/io/IOException;
    const-string/jumbo v8, "BluetoothMapEmailProvider"

    invoke-static {v8, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 154
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 149
    :catch_4
    move-exception v6

    .restart local v6    # "e":Ljava/io/IOException;
    goto :goto_1
.end method

.method public bridge synthetic readDataFromPipe(Landroid/os/ParcelFileDescriptor;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;)V
    .locals 6
    .param p1, "input"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "opts"    # Landroid/os/Bundle;
    .param p5, "args"    # Ljava/lang/Object;

    .prologue
    move-object v5, p5

    .line 140
    check-cast v5, Landroid/database/Cursor;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider$PipeReader;->readDataFromPipe(Landroid/os/ParcelFileDescriptor;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/database/Cursor;)V

    return-void
.end method
