.class Lcom/android/bluetooth/avrcp/Avrcp$AvrcpRemoteControllerWeak;
.super Ljava/lang/Object;
.source "Avrcp.java"

# interfaces
.implements Landroid/media/RemoteController$OnClientAvrcpUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/avrcp/Avrcp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AvrcpRemoteControllerWeak"
.end annotation


# instance fields
.field private final mLocalHandler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 764
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 765
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpRemoteControllerWeak;->mLocalHandler:Ljava/lang/ref/WeakReference;

    .line 764
    return-void
.end method


# virtual methods
.method public onClientFolderInfoBrowsedPlayer(Ljava/lang/String;)V
    .locals 13
    .param p1, "stringUri"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x0

    const/16 v10, 0xcc

    const/4 v9, 0x4

    const/4 v8, 0x0

    .line 770
    const-string/jumbo v5, "Avrcp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onClientFolderInfoBrowsedPlayer: stringUri: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpRemoteControllerWeak;->mLocalHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Handler;

    .line 772
    .local v3, "handler":Landroid/os/Handler;
    if-eqz p1, :cond_4

    .line 773
    const-string/jumbo v5, "/"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 774
    .local v0, "ExternalPath":[Ljava/lang/String;
    array-length v5, v0

    if-ge v5, v9, :cond_0

    .line 775
    const-string/jumbo v5, "Avrcp"

    const-string/jumbo v6, "Wrong entries."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    invoke-virtual {v3, v10, v11, v12, v8}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 778
    return-void

    .line 780
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 781
    .local v4, "uri":Landroid/net/Uri;
    const-string/jumbo v5, "Avrcp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "URI received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    array-length v5, v0

    add-int/lit8 v5, v5, -0x3

    new-array v1, v5, [Ljava/lang/String;

    .line 783
    .local v1, "SplitPath":[Ljava/lang/String;
    const/4 v2, 0x2

    .local v2, "count":I
    :goto_0
    array-length v5, v0

    add-int/lit8 v5, v5, -0x1

    if-ge v2, v5, :cond_1

    .line 784
    add-int/lit8 v5, v2, -0x2

    aget-object v6, v0, v2

    aput-object v6, v1, v5

    .line 785
    const-string/jumbo v5, "Avrcp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "SplitPath["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v2, -0x2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "] = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v2, -0x2

    aget-object v7, v1, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 787
    :cond_1
    const-string/jumbo v5, "Avrcp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "folderDepth: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    const/4 v2, 0x0

    :goto_1
    array-length v5, v1

    if-ge v2, v5, :cond_2

    .line 789
    const-string/jumbo v5, "Avrcp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "folderName: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v1, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 791
    :cond_2
    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp;->-set0(Landroid/net/Uri;)Landroid/net/Uri;

    .line 792
    if-eqz v3, :cond_3

    .line 795
    invoke-virtual {v3, v10, v9, v9, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 769
    .end local v0    # "ExternalPath":[Ljava/lang/String;
    .end local v1    # "SplitPath":[Ljava/lang/String;
    .end local v2    # "count":I
    .end local v4    # "uri":Landroid/net/Uri;
    :cond_3
    :goto_2
    return-void

    .line 799
    :cond_4
    invoke-virtual {v3, v10, v11, v12, v8}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2
.end method

.method public onClientNowPlayingContentChange()V
    .locals 3

    .prologue
    .line 816
    const-string/jumbo v1, "Avrcp"

    const-string/jumbo v2, "onClientNowPlayingContentChange"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpRemoteControllerWeak;->mLocalHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 818
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 819
    const/16 v1, 0xcd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 815
    :cond_0
    return-void
.end method

.method public onClientPlayItemResponse(Z)V
    .locals 4
    .param p1, "success"    # Z

    .prologue
    const/4 v3, 0x0

    .line 825
    const-string/jumbo v1, "Avrcp"

    const-string/jumbo v2, "onClientPlayItemResponse"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpRemoteControllerWeak;->mLocalHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 827
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 828
    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p1}, Ljava/lang/Boolean;-><init>(Z)V

    const/16 v2, 0xce

    invoke-virtual {v0, v2, v3, v3, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 824
    :cond_0
    return-void
.end method

.method public onClientUpdateNowPlayingEntries([J)V
    .locals 4
    .param p1, "playList"    # [J

    .prologue
    const/4 v3, 0x0

    .line 806
    const-string/jumbo v1, "Avrcp"

    const-string/jumbo v2, "onClientUpdateNowPlayingEntries"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpRemoteControllerWeak;->mLocalHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 808
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 809
    const/16 v1, 0xcf

    invoke-virtual {v0, v1, v3, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 805
    :cond_0
    return-void
.end method
