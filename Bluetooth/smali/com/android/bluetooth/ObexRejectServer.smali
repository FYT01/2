.class public Lcom/android/bluetooth/ObexRejectServer;
.super Ljavax/obex/ServerRequestHandler;
.source "ObexRejectServer.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final MSG_ID_TIMEOUT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ObexRejectServer"

.field private static final TIMEOUT_VALUE:I = 0x1388

.field private static final V:Z = true


# instance fields
.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private final mMessageHandler:Landroid/os/Handler;

.field private final mResult:I

.field private final mSocket:Landroid/bluetooth/BluetoothSocket;


# direct methods
.method public constructor <init>(ILandroid/bluetooth/BluetoothSocket;)V
    .locals 5
    .param p1, "result"    # I
    .param p2, "socket"    # Landroid/bluetooth/BluetoothSocket;

    .prologue
    .line 52
    invoke-direct {p0}, Ljavax/obex/ServerRequestHandler;-><init>()V

    .line 53
    iput p1, p0, Lcom/android/bluetooth/ObexRejectServer;->mResult:I

    .line 54
    iput-object p2, p0, Lcom/android/bluetooth/ObexRejectServer;->mSocket:Landroid/bluetooth/BluetoothSocket;

    .line 55
    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "TestTimeoutHandler"

    .line 56
    const/16 v3, 0xa

    .line 55
    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/bluetooth/ObexRejectServer;->mHandlerThread:Landroid/os/HandlerThread;

    .line 57
    iget-object v1, p0, Lcom/android/bluetooth/ObexRejectServer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 58
    iget-object v1, p0, Lcom/android/bluetooth/ObexRejectServer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 59
    .local v0, "timeoutLooper":Landroid/os/Looper;
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/android/bluetooth/ObexRejectServer;->mMessageHandler:Landroid/os/Handler;

    .line 61
    iget-object v1, p0, Lcom/android/bluetooth/ObexRejectServer;->mMessageHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    const/4 v4, 0x1

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 51
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 84
    const-string/jumbo v0, "ObexRejectServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Handling message ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 91
    const/4 v0, 0x0

    return v0

    .line 87
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/bluetooth/ObexRejectServer;->shutdown()V

    .line 93
    const/4 v0, 0x1

    return v0

    .line 85
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onConnect(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)I
    .locals 2
    .param p1, "request"    # Ljavax/obex/HeaderSet;
    .param p2, "reply"    # Ljavax/obex/HeaderSet;

    .prologue
    .line 67
    const-string/jumbo v0, "ObexRejectServer"

    const-string/jumbo v1, "onConnect() returning error"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget v0, p0, Lcom/android/bluetooth/ObexRejectServer;->mResult:I

    return v0
.end method

.method public shutdown()V
    .locals 3

    .prologue
    .line 72
    iget-object v1, p0, Lcom/android/bluetooth/ObexRejectServer;->mMessageHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 73
    iget-object v1, p0, Lcom/android/bluetooth/ObexRejectServer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 76
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/ObexRejectServer;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v1, "ObexRejectServer"

    const-string/jumbo v2, "Unable to close socket - ignoring"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
