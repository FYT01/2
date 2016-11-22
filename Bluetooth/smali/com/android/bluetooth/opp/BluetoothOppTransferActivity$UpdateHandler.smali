.class Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$UpdateHandler;
.super Landroid/os/Handler;
.source "BluetoothOppTransferActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;

    .prologue
    .line 354
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$UpdateHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$UpdateHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$UpdateHandler;-><init>(Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 357
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 358
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v3, :cond_0

    .line 359
    const-string/jumbo v1, "BluetoothOppTransferActivity"

    const-string/jumbo v2, "GENERATE_SEND_FILE_INFO_OK"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$UpdateHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;

    .line 362
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$UpdateHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;

    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->-get4(Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;)Landroid/net/Uri;

    move-result-object v2

    .line 361
    invoke-static {v1, v2}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->updateVisibilityToHidden(Landroid/content/Context;Landroid/net/Uri;)V

    .line 365
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$UpdateHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;

    const-string/jumbo v2, "notification"

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 366
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$UpdateHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;

    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->-get3(Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;)Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    move-result-object v2

    iget v2, v2, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mID:I

    .line 365
    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 369
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$UpdateHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$UpdateHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;

    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->-get3(Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;)Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->retryTransfer(Landroid/content/Context;Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;)V

    .line 371
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 373
    .local v0, "remoteDevice":Landroid/bluetooth/BluetoothDevice;
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$UpdateHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;

    .line 374
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$UpdateHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;

    new-array v3, v3, [Ljava/lang/Object;

    .line 375
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$UpdateHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;

    invoke-static {v4}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getDeviceName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 374
    const v4, 0x7f060045

    invoke-virtual {v2, v4, v3}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 373
    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 377
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$UpdateHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;

    invoke-virtual {v1}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->finish()V

    .line 356
    .end local v0    # "remoteDevice":Landroid/bluetooth/BluetoothDevice;
    :cond_0
    return-void
.end method
