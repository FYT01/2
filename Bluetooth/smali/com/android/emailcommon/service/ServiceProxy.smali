.class public abstract Lcom/android/emailcommon/service/ServiceProxy;
.super Ljava/lang/Object;
.source "ServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection;,
        Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;
    }
.end annotation


# static fields
.field private static final DEBUG_PROXY:Z = false

.field public static final EXTRA_FORCE_SHUTDOWN:Ljava/lang/String; = "ServiceProxy.FORCE_SHUTDOWN"


# instance fields
.field private final mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field protected final mIntent:Landroid/content/Intent;

.field private mName:Ljava/lang/String;

.field private mStartTime:J

.field private final mTag:Ljava/lang/String;

.field private mTask:Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;

.field private mTaskCompleted:Z

.field private mTaskSet:Z

.field private mTimeout:I


# direct methods
.method static synthetic -get0(Lcom/android/emailcommon/service/ServiceProxy;)Landroid/content/ServiceConnection;
    .locals 1

    iget-object v0, p0, Lcom/android/emailcommon/service/ServiceProxy;->mConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/emailcommon/service/ServiceProxy;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/emailcommon/service/ServiceProxy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/emailcommon/service/ServiceProxy;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/emailcommon/service/ServiceProxy;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/emailcommon/service/ServiceProxy;)Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;
    .locals 1

    iget-object v0, p0, Lcom/android/emailcommon/service/ServiceProxy;->mTask:Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/emailcommon/service/ServiceProxy;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/emailcommon/service/ServiceProxy;->mTaskCompleted:Z

    return p1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "_context"    # Landroid/content/Context;
    .param p2, "_intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const-string/jumbo v0, " unnamed"

    iput-object v0, p0, Lcom/android/emailcommon/service/ServiceProxy;->mName:Ljava/lang/String;

    .line 58
    new-instance v0, Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection;-><init>(Lcom/android/emailcommon/service/ServiceProxy;Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection;)V

    iput-object v0, p0, Lcom/android/emailcommon/service/ServiceProxy;->mConnection:Landroid/content/ServiceConnection;

    .line 60
    const/16 v0, 0x2d

    iput v0, p0, Lcom/android/emailcommon/service/ServiceProxy;->mTimeout:I

    .line 62
    iput-boolean v2, p0, Lcom/android/emailcommon/service/ServiceProxy;->mTaskSet:Z

    .line 63
    iput-boolean v2, p0, Lcom/android/emailcommon/service/ServiceProxy;->mTaskCompleted:Z

    .line 93
    iput-object p1, p0, Lcom/android/emailcommon/service/ServiceProxy;->mContext:Landroid/content/Context;

    .line 94
    iput-object p2, p0, Lcom/android/emailcommon/service/ServiceProxy;->mIntent:Landroid/content/Intent;

    .line 95
    invoke-virtual {p0}, Lcom/android/emailcommon/service/ServiceProxy;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/service/ServiceProxy;->mTag:Ljava/lang/String;

    .line 96
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget v0, p0, Lcom/android/emailcommon/service/ServiceProxy;->mTimeout:I

    shl-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/emailcommon/service/ServiceProxy;->mTimeout:I

    .line 92
    :cond_0
    return-void
.end method

.method public static getIntentForEmailPackage(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "actionName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 73
    new-instance v1, Landroid/content/Intent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/emailcommon/provider/EmailContent;->EMAIL_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 74
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 75
    sget-object v4, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    .line 74
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    .line 76
    .local v0, "info":Landroid/content/pm/ProviderInfo;
    if-eqz v0, :cond_0

    .line 77
    iget-object v2, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 78
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    .end local v2    # "packageName":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 80
    :cond_0
    sget-object v3, Lcom/android/mail/utils/LogUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Could not find the Email Content Provider"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method


# virtual methods
.method public getTimeout()I
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lcom/android/emailcommon/service/ServiceProxy;->mTimeout:I

    return v0
.end method

.method public abstract onConnected(Landroid/os/IBinder;)V
.end method

.method protected setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z
    .locals 4
    .param p1, "task"    # Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 176
    iget-boolean v0, p0, Lcom/android/emailcommon/service/ServiceProxy;->mTaskSet:Z

    if-eqz v0, :cond_0

    .line 177
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot call setTask twice on the same ServiceProxy."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_0
    iput-boolean v3, p0, Lcom/android/emailcommon/service/ServiceProxy;->mTaskSet:Z

    .line 180
    iput-object p2, p0, Lcom/android/emailcommon/service/ServiceProxy;->mName:Ljava/lang/String;

    .line 181
    iput-object p1, p0, Lcom/android/emailcommon/service/ServiceProxy;->mTask:Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;

    .line 182
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/service/ServiceProxy;->mStartTime:J

    .line 186
    iget-object v0, p0, Lcom/android/emailcommon/service/ServiceProxy;->mConnection:Landroid/content/ServiceConnection;

    monitor-enter v0

    .line 187
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/emailcommon/service/ServiceProxy;->mTaskCompleted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 189
    iget-object v0, p0, Lcom/android/emailcommon/service/ServiceProxy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/emailcommon/service/ServiceProxy;->mIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/emailcommon/service/ServiceProxy;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    return v0

    .line 186
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public setTimeout(I)Lcom/android/emailcommon/service/ServiceProxy;
    .locals 0
    .param p1, "secs"    # I

    .prologue
    .line 167
    iput p1, p0, Lcom/android/emailcommon/service/ServiceProxy;->mTimeout:I

    .line 168
    return-object p0
.end method

.method public test()Z
    .locals 3

    .prologue
    .line 234
    :try_start_0
    new-instance v1, Lcom/android/emailcommon/service/ServiceProxy$1;

    invoke-direct {v1, p0, p0}, Lcom/android/emailcommon/service/ServiceProxy$1;-><init>(Lcom/android/emailcommon/service/ServiceProxy;Lcom/android/emailcommon/service/ServiceProxy;)V

    .line 242
    const-string/jumbo v2, "test"

    .line 234
    invoke-virtual {p0, v1, v2}, Lcom/android/emailcommon/service/ServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 243
    :catch_0
    move-exception v0

    .line 245
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return v1
.end method

.method protected waitForCompletion()V
    .locals 10

    .prologue
    .line 204
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    if-ne v1, v4, :cond_0

    .line 205
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "This cannot be called on the main thread."

    invoke-direct {v1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 208
    :cond_0
    iget-object v4, p0, Lcom/android/emailcommon/service/ServiceProxy;->mConnection:Landroid/content/ServiceConnection;

    monitor-enter v4

    .line 209
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 214
    .local v2, "time":J
    :try_start_1
    iget-boolean v1, p0, Lcom/android/emailcommon/service/ServiceProxy;->mTaskCompleted:Z

    if-nez v1, :cond_1

    .line 215
    iget-object v1, p0, Lcom/android/emailcommon/service/ServiceProxy;->mConnection:Landroid/content/ServiceConnection;

    iget v5, p0, Lcom/android/emailcommon/service/ServiceProxy;->mTimeout:I

    int-to-long v6, v5

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    invoke-virtual {v1, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v4

    .line 197
    return-void

    .line 208
    .end local v2    # "time":J
    :catchall_0
    move-exception v1

    monitor-exit v4

    throw v1

    .line 217
    .restart local v2    # "time":J
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_0
.end method
