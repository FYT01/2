.class Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection;
.super Ljava/lang/Object;
.source "ServiceProxy.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/service/ServiceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProxyConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/emailcommon/service/ServiceProxy;


# direct methods
.method private constructor <init>(Lcom/android/emailcommon/service/ServiceProxy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/emailcommon/service/ServiceProxy;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection;->this$0:Lcom/android/emailcommon/service/ServiceProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/emailcommon/service/ServiceProxy;Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/emailcommon/service/ServiceProxy;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection;-><init>(Lcom/android/emailcommon/service/ServiceProxy;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection;->this$0:Lcom/android/emailcommon/service/ServiceProxy;

    invoke-virtual {v0, p2}, Lcom/android/emailcommon/service/ServiceProxy;->onConnected(Landroid/os/IBinder;)V

    .line 113
    new-instance v0, Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection$1;

    invoke-direct {v0, p0}, Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection$1;-><init>(Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection;)V

    .line 147
    iget-object v1, p0, Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection;->this$0:Lcom/android/emailcommon/service/ServiceProxy;

    invoke-static {v1}, Lcom/android/emailcommon/service/ServiceProxy;->-get3(Lcom/android/emailcommon/service/ServiceProxy;)Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;->runInExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 113
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 103
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 151
    return-void
.end method
