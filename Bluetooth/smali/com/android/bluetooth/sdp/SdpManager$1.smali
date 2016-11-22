.class Lcom/android/bluetooth/sdp/SdpManager$1;
.super Landroid/os/Handler;
.source "SdpManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/sdp/SdpManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/sdp/SdpManager;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/sdp/SdpManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/bluetooth/sdp/SdpManager;

    .prologue
    .line 491
    iput-object p1, p0, Lcom/android/bluetooth/sdp/SdpManager$1;->this$0:Lcom/android/bluetooth/sdp/SdpManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 494
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 493
    :goto_0
    return-void

    .line 496
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;

    .line 497
    .local v0, "msgObj":Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;
    const-string/jumbo v1, "SdpManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Search timedout for UUID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;->getUuid()Landroid/os/ParcelUuid;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    sget-object v2, Lcom/android/bluetooth/sdp/SdpManager;->mTrackerLock:Ljava/lang/Object;

    monitor-enter v2

    .line 499
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/sdp/SdpManager$1;->this$0:Lcom/android/bluetooth/sdp/SdpManager;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v0, v3, v4}, Lcom/android/bluetooth/sdp/SdpManager;->-wrap0(Lcom/android/bluetooth/sdp/SdpManager;Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;Landroid/os/Parcelable;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    goto :goto_0

    .line 498
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 494
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
