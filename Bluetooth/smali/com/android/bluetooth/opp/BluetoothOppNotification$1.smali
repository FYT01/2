.class Lcom/android/bluetooth/opp/BluetoothOppNotification$1;
.super Landroid/os/Handler;
.source "BluetoothOppNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/BluetoothOppNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppNotification;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppNotification;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/bluetooth/opp/BluetoothOppNotification;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 180
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 179
    :goto_0
    return-void

    .line 182
    :pswitch_0
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    monitor-enter v1

    .line 183
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->-get2(Lcom/android/bluetooth/opp/BluetoothOppNotification;)I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->-get3(Lcom/android/bluetooth/opp/BluetoothOppNotification;)Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;

    move-result-object v0

    if-nez v0, :cond_3

    .line 184
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BluetoothOppNotification"

    const-string/jumbo v2, "new notify threadi!"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    new-instance v2, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    invoke-direct {v2, v3}, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;-><init>(Lcom/android/bluetooth/opp/BluetoothOppNotification;)V

    invoke-static {v0, v2}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->-set1(Lcom/android/bluetooth/opp/BluetoothOppNotification;Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;)Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;

    .line 186
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->-get3(Lcom/android/bluetooth/opp/BluetoothOppNotification;)Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;->start()V

    .line 187
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->-get0()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "BluetoothOppNotification"

    const-string/jumbo v2, "send delay message"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->-get1(Lcom/android/bluetooth/opp/BluetoothOppNotification;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->-get1(Lcom/android/bluetooth/opp/BluetoothOppNotification;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x64

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_1
    monitor-exit v1

    goto :goto_0

    .line 189
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->-get2(Lcom/android/bluetooth/opp/BluetoothOppNotification;)I

    move-result v0

    if-lez v0, :cond_2

    .line 190
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->-get0()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "BluetoothOppNotification"

    const-string/jumbo v2, "previous thread is not finished yet"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_4
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->-get1(Lcom/android/bluetooth/opp/BluetoothOppNotification;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->-get1(Lcom/android/bluetooth/opp/BluetoothOppNotification;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x64

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 182
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 180
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
