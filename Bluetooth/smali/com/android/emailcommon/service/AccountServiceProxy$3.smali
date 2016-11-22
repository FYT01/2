.class Lcom/android/emailcommon/service/AccountServiceProxy$3;
.super Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;
.source "AccountServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/emailcommon/service/AccountServiceProxy;->getDeviceId()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/emailcommon/service/AccountServiceProxy;


# direct methods
.method constructor <init>(Lcom/android/emailcommon/service/AccountServiceProxy;Lcom/android/emailcommon/service/ServiceProxy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/emailcommon/service/AccountServiceProxy;
    .param p2, "this$0_1"    # Lcom/android/emailcommon/service/ServiceProxy;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/emailcommon/service/AccountServiceProxy$3;->this$0:Lcom/android/emailcommon/service/AccountServiceProxy;

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
    .line 85
    iget-object v0, p0, Lcom/android/emailcommon/service/AccountServiceProxy$3;->this$0:Lcom/android/emailcommon/service/AccountServiceProxy;

    iget-object v1, p0, Lcom/android/emailcommon/service/AccountServiceProxy$3;->this$0:Lcom/android/emailcommon/service/AccountServiceProxy;

    invoke-static {v1}, Lcom/android/emailcommon/service/AccountServiceProxy;->-get0(Lcom/android/emailcommon/service/AccountServiceProxy;)Lcom/android/emailcommon/service/IAccountService;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/emailcommon/service/IAccountService;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/emailcommon/service/AccountServiceProxy;->-set0(Lcom/android/emailcommon/service/AccountServiceProxy;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    return-void
.end method
