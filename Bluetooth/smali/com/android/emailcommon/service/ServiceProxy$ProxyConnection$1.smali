.class Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection$1;
.super Landroid/os/AsyncTask;
.source "ServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection;


# direct methods
.method constructor <init>(Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection$1;->this$1:Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 115
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v5, 0x0

    .line 117
    :try_start_0
    iget-object v2, p0, Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection$1;->this$1:Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection;

    iget-object v2, v2, Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection;->this$0:Lcom/android/emailcommon/service/ServiceProxy;

    invoke-static {v2}, Lcom/android/emailcommon/service/ServiceProxy;->-get3(Lcom/android/emailcommon/service/ServiceProxy;)Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;->run()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    :try_start_1
    iget-object v2, p0, Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection$1;->this$1:Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection;

    iget-object v2, v2, Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection;->this$0:Lcom/android/emailcommon/service/ServiceProxy;

    invoke-static {v2}, Lcom/android/emailcommon/service/ServiceProxy;->-get1(Lcom/android/emailcommon/service/ServiceProxy;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection$1;->this$1:Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection;

    iget-object v3, v3, Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection;->this$0:Lcom/android/emailcommon/service/ServiceProxy;

    invoke-static {v3}, Lcom/android/emailcommon/service/ServiceProxy;->-get0(Lcom/android/emailcommon/service/ServiceProxy;)Landroid/content/ServiceConnection;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 138
    :goto_0
    iget-object v2, p0, Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection$1;->this$1:Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection;

    iget-object v2, v2, Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection;->this$0:Lcom/android/emailcommon/service/ServiceProxy;

    invoke-static {v2}, Lcom/android/emailcommon/service/ServiceProxy;->-get0(Lcom/android/emailcommon/service/ServiceProxy;)Landroid/content/ServiceConnection;

    move-result-object v3

    monitor-enter v3

    .line 139
    :try_start_2
    iget-object v2, p0, Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection$1;->this$1:Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection;

    iget-object v2, v2, Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection;->this$0:Lcom/android/emailcommon/service/ServiceProxy;

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lcom/android/emailcommon/service/ServiceProxy;->-set0(Lcom/android/emailcommon/service/ServiceProxy;Z)Z

    .line 143
    iget-object v2, p0, Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection$1;->this$1:Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection;

    iget-object v2, v2, Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection;->this$0:Lcom/android/emailcommon/service/ServiceProxy;

    invoke-static {v2}, Lcom/android/emailcommon/service/ServiceProxy;->-get0(Lcom/android/emailcommon/service/ServiceProxy;)Landroid/content/ServiceConnection;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v3

    .line 145
    const/4 v2, 0x0

    return-object v2

    .line 127
    :catch_0
    move-exception v1

    .line 134
    .local v1, "e":Ljava/lang/RuntimeException;
    iget-object v2, p0, Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection$1;->this$1:Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection;

    iget-object v2, v2, Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection;->this$0:Lcom/android/emailcommon/service/ServiceProxy;

    invoke-static {v2}, Lcom/android/emailcommon/service/ServiceProxy;->-get2(Lcom/android/emailcommon/service/ServiceProxy;)Ljava/lang/String;

    move-result-object v2

    .line 135
    const-string/jumbo v3, "RuntimeException when trying to unbind from service"

    .line 134
    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v1, v3, v4}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 118
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 119
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    iget-object v2, p0, Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection$1;->this$1:Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection;

    iget-object v2, v2, Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection;->this$0:Lcom/android/emailcommon/service/ServiceProxy;

    invoke-static {v2}, Lcom/android/emailcommon/service/ServiceProxy;->-get2(Lcom/android/emailcommon/service/ServiceProxy;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "RemoteException thrown running mTask!"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v4}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 126
    :try_start_4
    iget-object v2, p0, Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection$1;->this$1:Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection;

    iget-object v2, v2, Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection;->this$0:Lcom/android/emailcommon/service/ServiceProxy;

    invoke-static {v2}, Lcom/android/emailcommon/service/ServiceProxy;->-get1(Lcom/android/emailcommon/service/ServiceProxy;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection$1;->this$1:Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection;

    iget-object v3, v3, Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection;->this$0:Lcom/android/emailcommon/service/ServiceProxy;

    invoke-static {v3}, Lcom/android/emailcommon/service/ServiceProxy;->-get0(Lcom/android/emailcommon/service/ServiceProxy;)Landroid/content/ServiceConnection;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 127
    :catch_2
    move-exception v1

    .line 134
    .restart local v1    # "e":Ljava/lang/RuntimeException;
    iget-object v2, p0, Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection$1;->this$1:Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection;

    iget-object v2, v2, Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection;->this$0:Lcom/android/emailcommon/service/ServiceProxy;

    invoke-static {v2}, Lcom/android/emailcommon/service/ServiceProxy;->-get2(Lcom/android/emailcommon/service/ServiceProxy;)Ljava/lang/String;

    move-result-object v2

    .line 135
    const-string/jumbo v3, "RuntimeException when trying to unbind from service"

    .line 134
    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v1, v3, v4}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 120
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v2

    .line 126
    :try_start_5
    iget-object v3, p0, Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection$1;->this$1:Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection;

    iget-object v3, v3, Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection;->this$0:Lcom/android/emailcommon/service/ServiceProxy;

    invoke-static {v3}, Lcom/android/emailcommon/service/ServiceProxy;->-get1(Lcom/android/emailcommon/service/ServiceProxy;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection$1;->this$1:Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection;

    iget-object v4, v4, Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection;->this$0:Lcom/android/emailcommon/service/ServiceProxy;

    invoke-static {v4}, Lcom/android/emailcommon/service/ServiceProxy;->-get0(Lcom/android/emailcommon/service/ServiceProxy;)Landroid/content/ServiceConnection;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_3

    .line 120
    :goto_1
    throw v2

    .line 127
    :catch_3
    move-exception v1

    .line 134
    .restart local v1    # "e":Ljava/lang/RuntimeException;
    iget-object v3, p0, Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection$1;->this$1:Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection;

    iget-object v3, v3, Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection;->this$0:Lcom/android/emailcommon/service/ServiceProxy;

    invoke-static {v3}, Lcom/android/emailcommon/service/ServiceProxy;->-get2(Lcom/android/emailcommon/service/ServiceProxy;)Ljava/lang/String;

    move-result-object v3

    .line 135
    const-string/jumbo v4, "RuntimeException when trying to unbind from service"

    .line 134
    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v1, v4, v5}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 138
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2
.end method
