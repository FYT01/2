.class Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider$1;
.super Landroid/os/AsyncTask;
.source "BluetoothMapEmailProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;->openInversePipeHelper(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider$PipeDataReader;)Landroid/os/ParcelFileDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;

.field final synthetic val$args:Ljava/lang/Object;

.field final synthetic val$fds:[Landroid/os/ParcelFileDescriptor;

.field final synthetic val$func:Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider$PipeDataReader;

.field final synthetic val$mimeType:Ljava/lang/String;

.field final synthetic val$opts:Landroid/os/Bundle;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider$PipeDataReader;[Landroid/os/ParcelFileDescriptor;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;
    .param p3, "val$fds"    # [Landroid/os/ParcelFileDescriptor;
    .param p4, "val$uri"    # Landroid/net/Uri;
    .param p5, "val$mimeType"    # Ljava/lang/String;
    .param p6, "val$opts"    # Landroid/os/Bundle;

    .prologue
    .line 363
    .local p2, "val$func":Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider$PipeDataReader;, "Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider$PipeDataReader<TT;>;"
    .local p7, "val$args":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider$1;->this$0:Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;

    iput-object p2, p0, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider$1;->val$func:Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider$PipeDataReader;

    iput-object p3, p0, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider$1;->val$fds:[Landroid/os/ParcelFileDescriptor;

    iput-object p4, p0, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider$1;->val$uri:Landroid/net/Uri;

    iput-object p5, p0, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider$1;->val$mimeType:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider$1;->val$opts:Landroid/os/Bundle;

    iput-object p7, p0, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider$1;->val$args:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 366
    iget-object v0, p0, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider$1;->val$func:Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider$PipeDataReader;

    iget-object v1, p0, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider$1;->val$fds:[Landroid/os/ParcelFileDescriptor;

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider$1;->val$uri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider$1;->val$mimeType:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider$1;->val$opts:Landroid/os/Bundle;

    iget-object v5, p0, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider$1;->val$args:Ljava/lang/Object;

    invoke-interface/range {v0 .. v5}, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider$PipeDataReader;->readDataFromPipe(Landroid/os/ParcelFileDescriptor;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;)V

    .line 368
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider$1;->val$fds:[Landroid/os/ParcelFileDescriptor;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 369
    :catch_0
    move-exception v6

    .line 370
    .local v6, "e":Ljava/io/IOException;
    const-string/jumbo v0, "BluetoothMapEmailProvider"

    const-string/jumbo v1, "Failure closing pipe"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
