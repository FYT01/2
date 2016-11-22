.class public abstract Lcom/android/emailcommon/utility/EmailAsyncTask;
.super Ljava/lang/Object;
.source "EmailAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;,
        Lcom/android/emailcommon/utility/EmailAsyncTask$InnerTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final PARALLEL_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static final SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;


# instance fields
.field private volatile mCancelled:Z

.field private final mInnerTask:Lcom/android/emailcommon/utility/EmailAsyncTask$InnerTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/emailcommon/utility/EmailAsyncTask$InnerTask",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation
.end field

.field private final mTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;


# direct methods
.method static synthetic -get0(Lcom/android/emailcommon/utility/EmailAsyncTask;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/emailcommon/utility/EmailAsyncTask;->mCancelled:Z

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    sget-object v0, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    sput-object v0, Lcom/android/emailcommon/utility/EmailAsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 43
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    sput-object v0, Lcom/android/emailcommon/utility/EmailAsyncTask;->PARALLEL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 41
    return-void
.end method

.method public constructor <init>(Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;)V
    .locals 1
    .param p1, "tracker"    # Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    .prologue
    .line 144
    .local p0, "this":Lcom/android/emailcommon/utility/EmailAsyncTask;, "Lcom/android/emailcommon/utility/EmailAsyncTask<TParams;TProgress;TResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput-object p1, p0, Lcom/android/emailcommon/utility/EmailAsyncTask;->mTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    .line 146
    iget-object v0, p0, Lcom/android/emailcommon/utility/EmailAsyncTask;->mTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/emailcommon/utility/EmailAsyncTask;->mTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    invoke-static {v0, p0}, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;->-wrap0(Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;Lcom/android/emailcommon/utility/EmailAsyncTask;)V

    .line 149
    :cond_0
    new-instance v0, Lcom/android/emailcommon/utility/EmailAsyncTask$InnerTask;

    invoke-direct {v0, p0}, Lcom/android/emailcommon/utility/EmailAsyncTask$InnerTask;-><init>(Lcom/android/emailcommon/utility/EmailAsyncTask;)V

    iput-object v0, p0, Lcom/android/emailcommon/utility/EmailAsyncTask;->mInnerTask:Lcom/android/emailcommon/utility/EmailAsyncTask$InnerTask;

    .line 144
    return-void
.end method

.method private varargs executeInternal(Ljava/util/concurrent/Executor;Z[Ljava/lang/Object;)Lcom/android/emailcommon/utility/EmailAsyncTask;
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "cancelPrevious"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Z[TParams;)",
            "Lcom/android/emailcommon/utility/EmailAsyncTask",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 220
    .local p0, "this":Lcom/android/emailcommon/utility/EmailAsyncTask;, "Lcom/android/emailcommon/utility/EmailAsyncTask<TParams;TProgress;TResult;>;"
    .local p3, "params":[Ljava/lang/Object;, "[TParams;"
    if-eqz p2, :cond_1

    .line 221
    iget-object v0, p0, Lcom/android/emailcommon/utility/EmailAsyncTask;->mTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    if-nez v0, :cond_0

    .line 222
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/android/emailcommon/utility/EmailAsyncTask;->mTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    invoke-virtual {v0, p0}, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;->cancelOthers(Lcom/android/emailcommon/utility/EmailAsyncTask;)V

    .line 227
    :cond_1
    iget-object v0, p0, Lcom/android/emailcommon/utility/EmailAsyncTask;->mInnerTask:Lcom/android/emailcommon/utility/EmailAsyncTask$InnerTask;

    invoke-virtual {v0, p1, p3}, Lcom/android/emailcommon/utility/EmailAsyncTask$InnerTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 228
    return-object p0
.end method

.method private static runAsyncInternal(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Lcom/android/emailcommon/utility/EmailAsyncTask;
    .locals 3
    .param p0, "executor"    # Ljava/util/concurrent/Executor;
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/lang/Runnable;",
            ")",
            "Lcom/android/emailcommon/utility/EmailAsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 247
    new-instance v0, Lcom/android/emailcommon/utility/EmailAsyncTask$1;

    invoke-direct {v0, v1, p1}, Lcom/android/emailcommon/utility/EmailAsyncTask$1;-><init>(Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;Ljava/lang/Runnable;)V

    .line 254
    .local v0, "task":Lcom/android/emailcommon/utility/EmailAsyncTask;, "Lcom/android/emailcommon/utility/EmailAsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    check-cast v1, [Ljava/lang/Void;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v1}, Lcom/android/emailcommon/utility/EmailAsyncTask;->executeInternal(Ljava/util/concurrent/Executor;Z[Ljava/lang/Object;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    move-result-object v1

    return-object v1
.end method

.method public static runAsyncParallel(Ljava/lang/Runnable;)Lcom/android/emailcommon/utility/EmailAsyncTask;
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Lcom/android/emailcommon/utility/EmailAsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 235
    sget-object v0, Lcom/android/emailcommon/utility/EmailAsyncTask;->PARALLEL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-static {v0, p0}, Lcom/android/emailcommon/utility/EmailAsyncTask;->runAsyncInternal(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public static runAsyncSerial(Ljava/lang/Runnable;)Lcom/android/emailcommon/utility/EmailAsyncTask;
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Lcom/android/emailcommon/utility/EmailAsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 242
    sget-object v0, Lcom/android/emailcommon/utility/EmailAsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-static {v0, p0}, Lcom/android/emailcommon/utility/EmailAsyncTask;->runAsyncInternal(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method final varargs callDoInBackgroundForTest([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation

    .prologue
    .line 267
    .local p0, "this":Lcom/android/emailcommon/utility/EmailAsyncTask;, "Lcom/android/emailcommon/utility/EmailAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "params":[Ljava/lang/Object;, "[TParams;"
    iget-object v0, p0, Lcom/android/emailcommon/utility/EmailAsyncTask;->mInnerTask:Lcom/android/emailcommon/utility/EmailAsyncTask$InnerTask;

    invoke-virtual {v0, p1}, Lcom/android/emailcommon/utility/EmailAsyncTask$InnerTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final callOnCancelledForTest(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 271
    .local p0, "this":Lcom/android/emailcommon/utility/EmailAsyncTask;, "Lcom/android/emailcommon/utility/EmailAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    iget-object v0, p0, Lcom/android/emailcommon/utility/EmailAsyncTask;->mInnerTask:Lcom/android/emailcommon/utility/EmailAsyncTask$InnerTask;

    invoke-virtual {v0, p1}, Lcom/android/emailcommon/utility/EmailAsyncTask$InnerTask;->onCancelled(Ljava/lang/Object;)V

    .line 270
    return-void
.end method

.method final callOnPostExecuteForTest(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 275
    .local p0, "this":Lcom/android/emailcommon/utility/EmailAsyncTask;, "Lcom/android/emailcommon/utility/EmailAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    iget-object v0, p0, Lcom/android/emailcommon/utility/EmailAsyncTask;->mInnerTask:Lcom/android/emailcommon/utility/EmailAsyncTask$InnerTask;

    invoke-virtual {v0, p1}, Lcom/android/emailcommon/utility/EmailAsyncTask$InnerTask;->onPostExecute(Ljava/lang/Object;)V

    .line 274
    return-void
.end method

.method public final cancel(Z)V
    .locals 1
    .param p1, "mayInterruptIfRunning"    # Z

    .prologue
    .line 164
    .local p0, "this":Lcom/android/emailcommon/utility/EmailAsyncTask;, "Lcom/android/emailcommon/utility/EmailAsyncTask<TParams;TProgress;TResult;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/emailcommon/utility/EmailAsyncTask;->mCancelled:Z

    .line 165
    iget-object v0, p0, Lcom/android/emailcommon/utility/EmailAsyncTask;->mInnerTask:Lcom/android/emailcommon/utility/EmailAsyncTask$InnerTask;

    invoke-virtual {v0, p1}, Lcom/android/emailcommon/utility/EmailAsyncTask$InnerTask;->cancel(Z)Z

    .line 163
    return-void
.end method

.method public final varargs cancelPreviousAndExecuteParallel([Ljava/lang/Object;)Lcom/android/emailcommon/utility/EmailAsyncTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)",
            "Lcom/android/emailcommon/utility/EmailAsyncTask",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 206
    .local p0, "this":Lcom/android/emailcommon/utility/EmailAsyncTask;, "Lcom/android/emailcommon/utility/EmailAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "params":[Ljava/lang/Object;, "[TParams;"
    sget-object v0, Lcom/android/emailcommon/utility/EmailAsyncTask;->PARALLEL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/emailcommon/utility/EmailAsyncTask;->executeInternal(Ljava/util/concurrent/Executor;Z[Ljava/lang/Object;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public final varargs cancelPreviousAndExecuteSerial([Ljava/lang/Object;)Lcom/android/emailcommon/utility/EmailAsyncTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)",
            "Lcom/android/emailcommon/utility/EmailAsyncTask",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 215
    .local p0, "this":Lcom/android/emailcommon/utility/EmailAsyncTask;, "Lcom/android/emailcommon/utility/EmailAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "params":[Ljava/lang/Object;, "[TParams;"
    sget-object v0, Lcom/android/emailcommon/utility/EmailAsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/emailcommon/utility/EmailAsyncTask;->executeInternal(Ljava/util/concurrent/Executor;Z[Ljava/lang/Object;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method protected varargs abstract doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation
.end method

.method public final varargs executeParallel([Ljava/lang/Object;)Lcom/android/emailcommon/utility/EmailAsyncTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)",
            "Lcom/android/emailcommon/utility/EmailAsyncTask",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 188
    .local p0, "this":Lcom/android/emailcommon/utility/EmailAsyncTask;, "Lcom/android/emailcommon/utility/EmailAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "params":[Ljava/lang/Object;, "[TParams;"
    sget-object v0, Lcom/android/emailcommon/utility/EmailAsyncTask;->PARALLEL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/emailcommon/utility/EmailAsyncTask;->executeInternal(Ljava/util/concurrent/Executor;Z[Ljava/lang/Object;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public final varargs executeSerial([Ljava/lang/Object;)Lcom/android/emailcommon/utility/EmailAsyncTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)",
            "Lcom/android/emailcommon/utility/EmailAsyncTask",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 197
    .local p0, "this":Lcom/android/emailcommon/utility/EmailAsyncTask;, "Lcom/android/emailcommon/utility/EmailAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "params":[Ljava/lang/Object;, "[TParams;"
    sget-object v0, Lcom/android/emailcommon/utility/EmailAsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/emailcommon/utility/EmailAsyncTask;->executeInternal(Ljava/util/concurrent/Executor;Z[Ljava/lang/Object;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public final get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 263
    .local p0, "this":Lcom/android/emailcommon/utility/EmailAsyncTask;, "Lcom/android/emailcommon/utility/EmailAsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/android/emailcommon/utility/EmailAsyncTask;->mInnerTask:Lcom/android/emailcommon/utility/EmailAsyncTask$InnerTask;

    invoke-virtual {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask$InnerTask;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 169
    .local p0, "this":Lcom/android/emailcommon/utility/EmailAsyncTask;, "Lcom/android/emailcommon/utility/EmailAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    return-void
.end method

.method protected onSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 179
    .local p0, "this":Lcom/android/emailcommon/utility/EmailAsyncTask;, "Lcom/android/emailcommon/utility/EmailAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    return-void
.end method

.method final unregisterSelf()V
    .locals 1

    .prologue
    .line 153
    .local p0, "this":Lcom/android/emailcommon/utility/EmailAsyncTask;, "Lcom/android/emailcommon/utility/EmailAsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/android/emailcommon/utility/EmailAsyncTask;->mTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/android/emailcommon/utility/EmailAsyncTask;->mTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    invoke-static {v0, p0}, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;->-wrap1(Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;Lcom/android/emailcommon/utility/EmailAsyncTask;)V

    .line 152
    :cond_0
    return-void
.end method
