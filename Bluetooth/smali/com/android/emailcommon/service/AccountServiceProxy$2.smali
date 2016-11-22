.class Lcom/android/emailcommon/service/AccountServiceProxy$2;
.super Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;
.source "AccountServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/emailcommon/service/AccountServiceProxy;->getConfigurationData(Ljava/lang/String;)Landroid/os/Bundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/emailcommon/service/AccountServiceProxy;

.field final synthetic val$accountType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/emailcommon/service/AccountServiceProxy;Lcom/android/emailcommon/service/ServiceProxy;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/emailcommon/service/AccountServiceProxy;
    .param p2, "this$0_1"    # Lcom/android/emailcommon/service/ServiceProxy;
    .param p3, "val$accountType"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/emailcommon/service/AccountServiceProxy$2;->this$0:Lcom/android/emailcommon/service/AccountServiceProxy;

    iput-object p3, p0, Lcom/android/emailcommon/service/AccountServiceProxy$2;->val$accountType:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;-><init>(Lcom/android/emailcommon/service/ServiceProxy;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/emailcommon/service/AccountServiceProxy$2;->this$0:Lcom/android/emailcommon/service/AccountServiceProxy;

    iget-object v1, p0, Lcom/android/emailcommon/service/AccountServiceProxy$2;->this$0:Lcom/android/emailcommon/service/AccountServiceProxy;

    invoke-static {v1}, Lcom/android/emailcommon/service/AccountServiceProxy;->-get0(Lcom/android/emailcommon/service/AccountServiceProxy;)Lcom/android/emailcommon/service/IAccountService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/emailcommon/service/AccountServiceProxy$2;->val$accountType:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/android/emailcommon/service/IAccountService;->getConfigurationData(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/emailcommon/service/AccountServiceProxy;->-set0(Lcom/android/emailcommon/service/AccountServiceProxy;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    return-void
.end method
