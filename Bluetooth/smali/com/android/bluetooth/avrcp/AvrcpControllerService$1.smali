.class Lcom/android/bluetooth/avrcp/AvrcpControllerService$1;
.super Landroid/content/BroadcastReceiver;
.source "AvrcpControllerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/avrcp/AvrcpControllerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/avrcp/AvrcpControllerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    .prologue
    .line 390
    iput-object p1, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$1;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x3

    const/4 v9, -0x1

    .line 393
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 394
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v8, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 395
    const-string/jumbo v8, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 396
    .local v6, "streamType":I
    if-ne v6, v10, :cond_2

    .line 398
    const-string/jumbo v8, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    .line 397
    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 400
    .local v7, "streamValue":I
    const-string/jumbo v8, "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE"

    .line 399
    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 401
    .local v5, "streamPrevValue":I
    if-eq v7, v9, :cond_2

    if-eq v7, v5, :cond_2

    .line 402
    iget-object v8, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$1;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    iget-object v8, v8, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    if-eqz v8, :cond_0

    .line 403
    iget-object v8, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$1;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    iget-object v8, v8, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    iget v8, v8, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->mRemoteFeatures:I

    and-int/lit8 v8, v8, 0x2

    if-nez v8, :cond_1

    .line 405
    :cond_0
    return-void

    .line 404
    :cond_1
    iget-object v8, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$1;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    invoke-static {v8}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->-get1(Lcom/android/bluetooth/avrcp/AvrcpControllerService;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    .line 402
    if-nez v8, :cond_0

    .line 406
    iget-object v8, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$1;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    iget-object v8, v8, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    iget v8, v8, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->absVolNotificationState:I

    if-ne v8, v11, :cond_3

    .line 407
    invoke-static {}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->-get0()Landroid/media/AudioManager;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    .line 409
    .local v2, "maxVol":I
    invoke-static {}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->-get0()Landroid/media/AudioManager;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 411
    .local v1, "currIndex":I
    mul-int/lit8 v8, v1, 0x7f

    div-int v3, v8, v2

    .line 412
    .local v3, "percentageVol":I
    const/16 v4, 0xd

    .line 413
    .local v4, "rspType":B
    const-string/jumbo v8, "AvrcpControllerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, " Abs Vol Notify Rsp Changed val = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-object v8, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$1;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    iget-object v8, v8, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    const/4 v9, 0x1

    iput v9, v8, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->absVolNotificationState:I

    .line 415
    iget-object v8, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$1;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    invoke-static {v8, v4, v3}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->-wrap17(Lcom/android/bluetooth/avrcp/AvrcpControllerService;BI)V

    .line 392
    .end local v1    # "currIndex":I
    .end local v2    # "maxVol":I
    .end local v3    # "percentageVol":I
    .end local v4    # "rspType":B
    .end local v5    # "streamPrevValue":I
    .end local v6    # "streamType":I
    .end local v7    # "streamValue":I
    :cond_2
    :goto_0
    return-void

    .line 417
    .restart local v5    # "streamPrevValue":I
    .restart local v6    # "streamType":I
    .restart local v7    # "streamValue":I
    :cond_3
    iget-object v8, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$1;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    iget-object v8, v8, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    iget v8, v8, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->absVolNotificationState:I

    if-ne v8, v10, :cond_2

    .line 418
    const-string/jumbo v8, "AvrcpControllerService"

    const-string/jumbo v9, " Don\'t Complete Notification Rsp. "

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iget-object v8, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$1;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    iget-object v8, v8, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    iput v11, v8, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->absVolNotificationState:I

    goto :goto_0
.end method
