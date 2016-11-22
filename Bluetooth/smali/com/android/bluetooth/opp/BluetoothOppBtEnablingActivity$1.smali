.class Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity$1;
.super Landroid/os/Handler;
.source "BluetoothOppBtEnablingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 123
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 122
    :goto_0
    return-void

    .line 125
    :pswitch_0
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BluetoothOppEnablingActivity"

    const-string/jumbo v1, "Received BT_ENABLING_TIMEOUT msg."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;->-wrap0(Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;)V

    goto :goto_0

    .line 123
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
