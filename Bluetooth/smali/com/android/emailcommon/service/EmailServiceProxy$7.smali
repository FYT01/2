.class Lcom/android/emailcommon/service/EmailServiceProxy$7;
.super Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;
.source "EmailServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/emailcommon/service/EmailServiceProxy;->deleteExternalAccountPIMData(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/emailcommon/service/EmailServiceProxy;

.field final synthetic val$emailAddress:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/emailcommon/service/EmailServiceProxy;Lcom/android/emailcommon/service/ServiceProxy;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/emailcommon/service/EmailServiceProxy;
    .param p2, "this$0_1"    # Lcom/android/emailcommon/service/ServiceProxy;
    .param p3, "val$emailAddress"    # Ljava/lang/String;

    .prologue
    .line 274
    iput-object p1, p0, Lcom/android/emailcommon/service/EmailServiceProxy$7;->this$0:Lcom/android/emailcommon/service/EmailServiceProxy;

    iput-object p3, p0, Lcom/android/emailcommon/service/EmailServiceProxy$7;->val$emailAddress:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;-><init>(Lcom/android/emailcommon/service/ServiceProxy;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/emailcommon/service/EmailServiceProxy$7;->this$0:Lcom/android/emailcommon/service/EmailServiceProxy;

    invoke-static {v0}, Lcom/android/emailcommon/service/EmailServiceProxy;->-get0(Lcom/android/emailcommon/service/EmailServiceProxy;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/emailcommon/service/EmailServiceProxy$7;->val$emailAddress:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/emailcommon/service/IEmailService;->deleteExternalAccountPIMData(Ljava/lang/String;)V

    .line 281
    return-void
.end method

.method public runInExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 277
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    return-object v0
.end method
