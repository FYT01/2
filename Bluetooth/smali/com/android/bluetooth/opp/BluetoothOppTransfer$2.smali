.class Lcom/android/bluetooth/opp/BluetoothOppTransfer$2;
.super Ljava/lang/Thread;
.source "BluetoothOppTransfer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/opp/BluetoothOppTransfer;->confirmStatusChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/bluetooth/opp/BluetoothOppTransfer;
    .param p2, "$anonymous0"    # Ljava/lang/String;

    .prologue
    .line 552
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 554
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get5(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppObexSession;

    move-result-object v1

    monitor-enter v1

    .line 555
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get5(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppObexSession;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/bluetooth/opp/BluetoothOppObexSession;->unblock()V

    .line 556
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get5(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppObexSession;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 553
    return-void

    .line 554
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
