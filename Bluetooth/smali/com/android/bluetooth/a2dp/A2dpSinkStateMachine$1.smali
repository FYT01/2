.class Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$1;
.super Ljava/lang/Object;
.source "A2dpSinkStateMachine.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioPortUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$1;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioPatchListUpdate([Landroid/media/AudioPatch;)V
    .locals 4
    .param p1, "patchList"    # [Landroid/media/AudioPatch;

    .prologue
    .line 283
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$1;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    const-string/jumbo v2, "onAudioPatchListUpdate"

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap9(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V

    .line 284
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 285
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$1;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Patch List "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap9(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V

    .line 284
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 282
    :cond_0
    return-void
.end method

.method public onAudioPortListUpdate([Landroid/media/AudioPort;)V
    .locals 7
    .param p1, "portList"    # [Landroid/media/AudioPort;

    .prologue
    .line 252
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$1;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v4}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get11(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 253
    :try_start_0
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$1;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    const-string/jumbo v6, "onAudioPortListUpdate"

    invoke-static {v4, v6}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap9(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V

    .line 254
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$1;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    const/4 v6, 0x0

    invoke-static {v4, v6}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-set4(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/media/AudioDevicePort;)Landroid/media/AudioDevicePort;

    .line 255
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$1;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    const/4 v6, 0x0

    invoke-static {v4, v6}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-set2(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/media/AudioDevicePort;)Landroid/media/AudioDevicePort;

    .line 257
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, p1

    if-ge v2, v4, :cond_2

    .line 258
    aget-object v3, p1, v2

    .line 259
    .local v3, "port":Landroid/media/AudioPort;
    instance-of v4, v3, Landroid/media/AudioDevicePort;

    if-eqz v4, :cond_0

    .line 260
    move-object v0, v3

    check-cast v0, Landroid/media/AudioDevicePort;

    move-object v1, v0

    .line 261
    .local v1, "devicePort":Landroid/media/AudioDevicePort;
    invoke-virtual {v1}, Landroid/media/AudioDevicePort;->type()I

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_1

    .line 262
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$1;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    const-string/jumbo v6, "Updating Speaker Port"

    invoke-static {v4, v6}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap9(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V

    .line 263
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$1;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v4, v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-set4(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/media/AudioDevicePort;)Landroid/media/AudioDevicePort;

    .line 257
    .end local v1    # "devicePort":Landroid/media/AudioDevicePort;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 264
    .restart local v1    # "devicePort":Landroid/media/AudioDevicePort;
    :cond_1
    invoke-virtual {v1}, Landroid/media/AudioDevicePort;->type()I

    move-result v4

    const/high16 v6, -0x7ffe0000

    if-ne v4, v6, :cond_0

    .line 265
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$1;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    const-string/jumbo v6, "Updating In Port A2DP Sink"

    invoke-static {v4, v6}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap9(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V

    .line 266
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$1;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v4, v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-set2(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/media/AudioDevicePort;)Landroid/media/AudioDevicePort;

    .line 268
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$1;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v4}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get2(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_0

    .line 269
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$1;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v4}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get9(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/media/AudioDevicePort;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$1;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v4}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-get0(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/media/AudioPatch;

    move-result-object v4

    if-nez v4, :cond_0

    .line 273
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$1;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    const-string/jumbo v6, " Sink Port updated, but patch not made"

    invoke-static {v4, v6}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap9(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V

    .line 274
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$1;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-static {v4}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap14(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 252
    .end local v1    # "devicePort":Landroid/media/AudioDevicePort;
    .end local v2    # "i":I
    .end local v3    # "port":Landroid/media/AudioPort;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .restart local v2    # "i":I
    :cond_2
    monitor-exit v5

    .line 251
    return-void
.end method

.method public onServiceDied()V
    .locals 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$1;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    const-string/jumbo v1, " Service Died"

    invoke-static {v0, v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->-wrap9(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V

    .line 289
    return-void
.end method
