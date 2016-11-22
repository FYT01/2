.class Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;
.super Ljava/lang/Thread;
.source "BluetoothOppNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/BluetoothOppNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationUpdateThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppNotification;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppNotification;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/bluetooth/opp/BluetoothOppNotification;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    .line 202
    const-string/jumbo v0, "Notification Update Thread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 201
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 207
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 208
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    monitor-enter v1

    .line 209
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->-get3(Lcom/android/bluetooth/opp/BluetoothOppNotification;)Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 210
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 211
    const-string/jumbo v2, "multiple UpdateThreads in BluetoothOppNotification"

    .line 210
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 213
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->-set0(Lcom/android/bluetooth/opp/BluetoothOppNotification;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 215
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->-wrap0(Lcom/android/bluetooth/opp/BluetoothOppNotification;)V

    .line 216
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->-wrap1(Lcom/android/bluetooth/opp/BluetoothOppNotification;)V

    .line 217
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->-wrap2(Lcom/android/bluetooth/opp/BluetoothOppNotification;)V

    .line 218
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    monitor-enter v1

    .line 219
    :try_start_2
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->-set1(Lcom/android/bluetooth/opp/BluetoothOppNotification;Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;)Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    .line 206
    return-void

    .line 218
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method
