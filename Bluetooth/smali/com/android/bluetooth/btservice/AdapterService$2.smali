.class Lcom/android/bluetooth/btservice/AdapterService$2;
.super Landroid/content/BroadcastReceiver;
.source "AdapterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/btservice/AdapterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/btservice/AdapterService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/btservice/AdapterService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/bluetooth/btservice/AdapterService;

    .prologue
    .line 2526
    iput-object p1, p0, Lcom/android/bluetooth/btservice/AdapterService$2;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2529
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService$2;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    monitor-enter v1

    .line 2530
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService$2;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/bluetooth/btservice/AdapterService;->-set0(Lcom/android/bluetooth/btservice/AdapterService;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    .line 2531
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService$2;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-static {v0}, Lcom/android/bluetooth/btservice/AdapterService;->-wrap3(Lcom/android/bluetooth/btservice/AdapterService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 2528
    return-void

    .line 2529
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
