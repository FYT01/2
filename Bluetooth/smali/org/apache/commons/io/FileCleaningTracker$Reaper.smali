.class final Lorg/apache/commons/io/FileCleaningTracker$Reaper;
.super Ljava/lang/Thread;
.source "FileCleaningTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/FileCleaningTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Reaper"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/io/FileCleaningTracker;


# direct methods
.method constructor <init>(Lorg/apache/commons/io/FileCleaningTracker;)V
    .locals 1
    .param p1, "this$0"    # Lorg/apache/commons/io/FileCleaningTracker;

    .prologue
    .line 189
    iput-object p1, p0, Lorg/apache/commons/io/FileCleaningTracker$Reaper;->this$0:Lorg/apache/commons/io/FileCleaningTracker;

    .line 190
    const-string/jumbo v0, "File Reaper"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 191
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lorg/apache/commons/io/FileCleaningTracker$Reaper;->setPriority(I)V

    .line 192
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/io/FileCleaningTracker$Reaper;->setDaemon(Z)V

    .line 189
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 202
    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/io/FileCleaningTracker$Reaper;->this$0:Lorg/apache/commons/io/FileCleaningTracker;

    iget-boolean v2, v2, Lorg/apache/commons/io/FileCleaningTracker;->exitWhenFinished:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/apache/commons/io/FileCleaningTracker$Reaper;->this$0:Lorg/apache/commons/io/FileCleaningTracker;

    iget-object v2, v2, Lorg/apache/commons/io/FileCleaningTracker;->trackers:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 203
    :cond_1
    const/4 v1, 0x0

    .line 206
    .local v1, "tracker":Lorg/apache/commons/io/FileCleaningTracker$Tracker;
    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/io/FileCleaningTracker$Reaper;->this$0:Lorg/apache/commons/io/FileCleaningTracker;

    iget-object v2, v2, Lorg/apache/commons/io/FileCleaningTracker;->q:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v2}, Ljava/lang/ref/ReferenceQueue;->remove()Ljava/lang/ref/Reference;

    move-result-object v1

    .end local v1    # "tracker":Lorg/apache/commons/io/FileCleaningTracker$Tracker;
    check-cast v1, Lorg/apache/commons/io/FileCleaningTracker$Tracker;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    .local v1, "tracker":Lorg/apache/commons/io/FileCleaningTracker$Tracker;
    if-eqz v1, :cond_0

    .line 211
    invoke-virtual {v1}, Lorg/apache/commons/io/FileCleaningTracker$Tracker;->delete()Z

    .line 212
    invoke-virtual {v1}, Lorg/apache/commons/io/FileCleaningTracker$Tracker;->clear()V

    .line 213
    iget-object v2, p0, Lorg/apache/commons/io/FileCleaningTracker$Reaper;->this$0:Lorg/apache/commons/io/FileCleaningTracker;

    iget-object v2, v2, Lorg/apache/commons/io/FileCleaningTracker;->trackers:Ljava/util/Collection;

    invoke-interface {v2, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 200
    .end local v1    # "tracker":Lorg/apache/commons/io/FileCleaningTracker$Tracker;
    :cond_2
    return-void

    .line 207
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method