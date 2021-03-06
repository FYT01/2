.class public abstract Landroid/os/CountDownTimer;
.super Ljava/lang/Object;
.source "CountDownTimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/CountDownTimer$1;
    }
.end annotation


# static fields
.field private static final MSG:I = 0x1


# instance fields
.field private mCancelled:Z

.field private final mCountdownInterval:J

.field private mHandler:Landroid/os/Handler;

.field private final mMillisInFuture:J

.field private mStopTimeInFuture:J


# direct methods
.method static synthetic -get0(Landroid/os/CountDownTimer;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/os/CountDownTimer;->mCancelled:Z

    return v0
.end method

.method static synthetic -get1(Landroid/os/CountDownTimer;)J
    .locals 2

    iget-wide v0, p0, Landroid/os/CountDownTimer;->mCountdownInterval:J

    return-wide v0
.end method

.method static synthetic -get2(Landroid/os/CountDownTimer;)J
    .locals 2

    iget-wide v0, p0, Landroid/os/CountDownTimer;->mStopTimeInFuture:J

    return-wide v0
.end method

.method public constructor <init>(JJ)V
    .locals 1
    .param p1, "millisInFuture"    # J
    .param p3, "countDownInterval"    # J

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/CountDownTimer;->mCancelled:Z

    new-instance v0, Landroid/os/CountDownTimer$1;

    invoke-direct {v0, p0}, Landroid/os/CountDownTimer$1;-><init>(Landroid/os/CountDownTimer;)V

    iput-object v0, p0, Landroid/os/CountDownTimer;->mHandler:Landroid/os/Handler;

    iput-wide p1, p0, Landroid/os/CountDownTimer;->mMillisInFuture:J

    iput-wide p3, p0, Landroid/os/CountDownTimer;->mCountdownInterval:J

    return-void
.end method


# virtual methods
.method public final declared-synchronized cancel()V
    .locals 2

    .prologue
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Landroid/os/CountDownTimer;->mCancelled:Z

    iget-object v0, p0, Landroid/os/CountDownTimer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract onFinish()V
.end method

.method public abstract onTick(J)V
.end method

.method public final declared-synchronized start()Landroid/os/CountDownTimer;
    .locals 4

    .prologue
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Landroid/os/CountDownTimer;->mCancelled:Z

    iget-wide v0, p0, Landroid/os/CountDownTimer;->mMillisInFuture:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Landroid/os/CountDownTimer;->onFinish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p0

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/os/CountDownTimer;->mMillisInFuture:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/CountDownTimer;->mStopTimeInFuture:J

    iget-object v0, p0, Landroid/os/CountDownTimer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/os/CountDownTimer;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
