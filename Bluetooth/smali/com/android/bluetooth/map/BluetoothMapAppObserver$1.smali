.class Lcom/android/bluetooth/map/BluetoothMapAppObserver$1;
.super Landroid/database/ContentObserver;
.source "BluetoothMapAppObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/map/BluetoothMapAppObserver;->registerObserver(Lcom/android/bluetooth/map/BluetoothMapAccountItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/map/BluetoothMapAppObserver;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/map/BluetoothMapAppObserver;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/bluetooth/map/BluetoothMapAppObserver;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver$1;->this$0:Lcom/android/bluetooth/map/BluetoothMapAppObserver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 165
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/bluetooth/map/BluetoothMapAppObserver$1;->onChange(ZLandroid/net/Uri;)V

    .line 164
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 4
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 170
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BluetoothMapAppObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onChange on thread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 171
    const-string/jumbo v2, " Uri: "

    .line 170
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 171
    const-string/jumbo v2, " selfchange: "

    .line 170
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_0
    if-eqz p2, :cond_1

    .line 173
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver$1;->this$0:Lcom/android/bluetooth/map/BluetoothMapAppObserver;

    invoke-virtual {p2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->-wrap1(Lcom/android/bluetooth/map/BluetoothMapAppObserver;Ljava/lang/String;)V

    .line 169
    :goto_0
    return-void

    .line 175
    :cond_1
    const-string/jumbo v0, "BluetoothMapAppObserver"

    const-string/jumbo v1, "Unable to handle change as the URI is NULL!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
