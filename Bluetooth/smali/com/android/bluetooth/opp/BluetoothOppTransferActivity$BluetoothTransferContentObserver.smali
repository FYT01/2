.class Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$BluetoothTransferContentObserver;
.super Landroid/database/ContentObserver;
.source "BluetoothOppTransferActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BluetoothTransferContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$BluetoothTransferContentObserver;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;

    .line 124
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 123
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 129
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BluetoothOppTransferActivity"

    const-string/jumbo v1, "received db changes."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$BluetoothTransferContentObserver;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->-set0(Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;Z)Z

    .line 131
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$BluetoothTransferContentObserver;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->-wrap0(Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;)V

    .line 128
    return-void
.end method
