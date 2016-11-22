.class Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$1;
.super Ljava/lang/Thread;
.source "BluetoothOppTransferActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;

.field uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;
    .param p2, "$anonymous0"    # Ljava/lang/String;

    .prologue
    .line 399
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 400
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->-get3(Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;)Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->originalUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$1;->uri:Landroid/net/Uri;

    .line 399
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 403
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;

    .line 404
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$1;->uri:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;

    invoke-static {v5}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->-get3(Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;)Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileType:Ljava/lang/String;

    .line 403
    invoke-static {v3, v4, v5}, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->generateFileInfo(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    move-result-object v2

    .line 405
    .local v2, "sendFileInfo":Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$1;->uri:Landroid/net/Uri;

    invoke-static {v3, v2}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->generateUri(Landroid/net/Uri;Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$1;->uri:Landroid/net/Uri;

    .line 406
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$1;->uri:Landroid/net/Uri;

    invoke-static {v3, v2}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->putSendFileInfo(Landroid/net/Uri;Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;)V

    .line 407
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;

    invoke-static {v3}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->-get3(Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;)Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$1;->uri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileUri:Ljava/lang/String;

    .line 410
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;

    invoke-static {v3}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->-get1(Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;

    invoke-static {v4}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->-get3(Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;)Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDestAddr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 411
    .local v1, "remoteDevice":Landroid/bluetooth/BluetoothDevice;
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;

    invoke-static {v3}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->-get2(Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;)Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$UpdateHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$UpdateHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 412
    .local v0, "message":Landroid/os/Message;
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 413
    const/4 v3, 0x1

    iput v3, v0, Landroid/os/Message;->what:I

    .line 414
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 401
    return-void
.end method
