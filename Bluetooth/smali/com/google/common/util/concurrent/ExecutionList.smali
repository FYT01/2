.class public final Lcom/google/common/util/concurrent/ExecutionList;
.super Ljava/lang/Object;
.source "ExecutionList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/ExecutionList$RunnableExecutorPair;
    }
.end annotation


# static fields
.field static final log:Ljava/util/logging/Logger;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private executed:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private runnables:Lcom/google/common/util/concurrent/ExecutionList$RunnableExecutorPair;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/google/common/util/concurrent/ExecutionList;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/ExecutionList;->log:Ljava/util/logging/Logger;

    .line 47
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static executeListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 5
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 156
    :try_start_0
    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :goto_0
    return-void

    .line 157
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v1, Lcom/google/common/util/concurrent/ExecutionList;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "RuntimeException while executing runnable "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 162
    const-string/jumbo v4, " with executor "

    .line 161
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public add(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 85
    const-string/jumbo v0, "Runnable was null."

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string/jumbo v0, "Executor was null."

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    monitor-enter p0

    .line 92
    :try_start_0
    iget-boolean v0, p0, Lcom/google/common/util/concurrent/ExecutionList;->executed:Z

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Lcom/google/common/util/concurrent/ExecutionList$RunnableExecutorPair;

    iget-object v1, p0, Lcom/google/common/util/concurrent/ExecutionList;->runnables:Lcom/google/common/util/concurrent/ExecutionList$RunnableExecutorPair;

    invoke-direct {v0, p1, p2, v1}, Lcom/google/common/util/concurrent/ExecutionList$RunnableExecutorPair;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;Lcom/google/common/util/concurrent/ExecutionList$RunnableExecutorPair;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/ExecutionList;->runnables:Lcom/google/common/util/concurrent/ExecutionList$RunnableExecutorPair;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 94
    return-void

    :cond_0
    monitor-exit p0

    .line 101
    invoke-static {p1, p2}, Lcom/google/common/util/concurrent/ExecutionList;->executeListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 81
    return-void

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public execute()V
    .locals 5

    .prologue
    .line 120
    monitor-enter p0

    .line 121
    :try_start_0
    iget-boolean v3, p0, Lcom/google/common/util/concurrent/ExecutionList;->executed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    monitor-exit p0

    .line 122
    return-void

    .line 124
    :cond_0
    const/4 v3, 0x1

    :try_start_1
    iput-boolean v3, p0, Lcom/google/common/util/concurrent/ExecutionList;->executed:Z

    .line 125
    iget-object v0, p0, Lcom/google/common/util/concurrent/ExecutionList;->runnables:Lcom/google/common/util/concurrent/ExecutionList$RunnableExecutorPair;

    .line 126
    .local v0, "list":Lcom/google/common/util/concurrent/ExecutionList$RunnableExecutorPair;
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/common/util/concurrent/ExecutionList;->runnables:Lcom/google/common/util/concurrent/ExecutionList$RunnableExecutorPair;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 137
    const/4 v1, 0x0

    .line 138
    :goto_0
    if-eqz v0, :cond_1

    .line 139
    move-object v2, v0

    .line 140
    .local v2, "tmp":Lcom/google/common/util/concurrent/ExecutionList$RunnableExecutorPair;
    iget-object v0, v0, Lcom/google/common/util/concurrent/ExecutionList$RunnableExecutorPair;->next:Lcom/google/common/util/concurrent/ExecutionList$RunnableExecutorPair;

    .line 141
    iput-object v1, v2, Lcom/google/common/util/concurrent/ExecutionList$RunnableExecutorPair;->next:Lcom/google/common/util/concurrent/ExecutionList$RunnableExecutorPair;

    .line 142
    move-object v1, v2

    .local v1, "reversedList":Lcom/google/common/util/concurrent/ExecutionList$RunnableExecutorPair;
    goto :goto_0

    .line 120
    .end local v0    # "list":Lcom/google/common/util/concurrent/ExecutionList$RunnableExecutorPair;
    .end local v1    # "reversedList":Lcom/google/common/util/concurrent/ExecutionList$RunnableExecutorPair;
    .end local v2    # "tmp":Lcom/google/common/util/concurrent/ExecutionList$RunnableExecutorPair;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 144
    .restart local v0    # "list":Lcom/google/common/util/concurrent/ExecutionList$RunnableExecutorPair;
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 145
    iget-object v3, v1, Lcom/google/common/util/concurrent/ExecutionList$RunnableExecutorPair;->runnable:Ljava/lang/Runnable;

    iget-object v4, v1, Lcom/google/common/util/concurrent/ExecutionList$RunnableExecutorPair;->executor:Ljava/util/concurrent/Executor;

    invoke-static {v3, v4}, Lcom/google/common/util/concurrent/ExecutionList;->executeListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 146
    iget-object v1, v1, Lcom/google/common/util/concurrent/ExecutionList$RunnableExecutorPair;->next:Lcom/google/common/util/concurrent/ExecutionList$RunnableExecutorPair;

    .restart local v1    # "reversedList":Lcom/google/common/util/concurrent/ExecutionList$RunnableExecutorPair;
    goto :goto_1

    .line 116
    .end local v1    # "reversedList":Lcom/google/common/util/concurrent/ExecutionList$RunnableExecutorPair;
    :cond_2
    return-void
.end method
