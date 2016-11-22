.class Lcom/android/bluetooth/opp/BluetoothOppRfcommListener$1;
.super Ljava/lang/Thread;
.source "BluetoothOppRfcommListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->start(Landroid/os/Handler;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;
    .param p2, "$anonymous0"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 112
    :goto_0
    iget-object v6, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;

    invoke-static {v6}, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->-get3(Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 114
    :try_start_0
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->-get0()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string/jumbo v6, "BtOppRfcommListener"

    const-string/jumbo v7, "Accepting connection..."

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_0
    iget-object v6, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;

    invoke-static {v6}, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->-get1(Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v6

    if-nez v6, :cond_1

    .line 118
    :cond_1
    iget-object v6, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;

    invoke-static {v6}, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->-get1(Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v4

    .line 119
    .local v4, "sSocket":Landroid/bluetooth/BluetoothServerSocket;
    if-nez v4, :cond_2

    .line 120
    iget-object v6, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->-set0(Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;Z)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 134
    .end local v4    # "sSocket":Landroid/bluetooth/BluetoothServerSocket;
    :catch_0
    move-exception v1

    .line 135
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v6, "BtOppRfcommListener"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Error accept connection "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const-wide/16 v6, 0x1f4

    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 138
    :catch_1
    move-exception v2

    .line 139
    .local v2, "ie":Ljava/lang/InterruptedException;
    const-string/jumbo v6, "BtOppRfcommListener"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mSocketAcceptThread was interrupted "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v6, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;

    invoke-static {v6, v9}, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->-set0(Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;Z)Z

    goto :goto_0

    .line 123
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "ie":Ljava/lang/InterruptedException;
    .restart local v4    # "sSocket":Landroid/bluetooth/BluetoothServerSocket;
    :cond_2
    :try_start_2
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothServerSocket;->accept()Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    .line 124
    .local v0, "clientSocket":Landroid/bluetooth/BluetoothSocket;
    const-string/jumbo v6, "BtOppRfcommListener"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Accepted connection from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 125
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v8

    .line 124
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    new-instance v5, Lcom/android/bluetooth/BluetoothObexTransport;

    invoke-direct {v5, v0}, Lcom/android/bluetooth/BluetoothObexTransport;-><init>(Landroid/bluetooth/BluetoothSocket;)V

    .line 128
    .local v5, "transport":Lcom/android/bluetooth/BluetoothObexTransport;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 129
    .local v3, "msg":Landroid/os/Message;
    iget-object v6, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;

    invoke-static {v6}, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->-get2(Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 130
    const/16 v6, 0x64

    iput v6, v3, Landroid/os/Message;->what:I

    .line 131
    iput-object v5, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 132
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 144
    .end local v0    # "clientSocket":Landroid/bluetooth/BluetoothSocket;
    .end local v3    # "msg":Landroid/os/Message;
    .end local v4    # "sSocket":Landroid/bluetooth/BluetoothServerSocket;
    .end local v5    # "transport":Lcom/android/bluetooth/BluetoothObexTransport;
    :cond_3
    const-string/jumbo v6, "BtOppRfcommListener"

    const-string/jumbo v7, "BluetoothSocket listen thread finished"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    return-void
.end method
