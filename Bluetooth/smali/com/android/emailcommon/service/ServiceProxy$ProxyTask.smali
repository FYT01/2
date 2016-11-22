.class public abstract Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;
.super Ljava/lang/Object;
.source "ServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/service/ServiceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "ProxyTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/emailcommon/service/ServiceProxy;


# direct methods
.method protected constructor <init>(Lcom/android/emailcommon/service/ServiceProxy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/emailcommon/service/ServiceProxy;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;->this$0:Lcom/android/emailcommon/service/ServiceProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract run()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public runInExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 161
    sget-object v0, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    return-object v0
.end method
