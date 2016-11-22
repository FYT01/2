.class Lcom/android/emailcommon/service/PolicyServiceProxy$1;
.super Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;
.source "PolicyServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/emailcommon/service/PolicyServiceProxy;->isActive(Lcom/android/emailcommon/provider/Policy;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/emailcommon/service/PolicyServiceProxy;

.field final synthetic val$arg0:Lcom/android/emailcommon/provider/Policy;


# direct methods
.method constructor <init>(Lcom/android/emailcommon/service/PolicyServiceProxy;Lcom/android/emailcommon/service/ServiceProxy;Lcom/android/emailcommon/provider/Policy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/emailcommon/service/PolicyServiceProxy;
    .param p2, "this$0_1"    # Lcom/android/emailcommon/service/ServiceProxy;
    .param p3, "val$arg0"    # Lcom/android/emailcommon/provider/Policy;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/emailcommon/service/PolicyServiceProxy$1;->this$0:Lcom/android/emailcommon/service/PolicyServiceProxy;

    iput-object p3, p0, Lcom/android/emailcommon/service/PolicyServiceProxy$1;->val$arg0:Lcom/android/emailcommon/provider/Policy;

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
    .line 53
    iget-object v0, p0, Lcom/android/emailcommon/service/PolicyServiceProxy$1;->this$0:Lcom/android/emailcommon/service/PolicyServiceProxy;

    iget-object v1, p0, Lcom/android/emailcommon/service/PolicyServiceProxy$1;->this$0:Lcom/android/emailcommon/service/PolicyServiceProxy;

    invoke-static {v1}, Lcom/android/emailcommon/service/PolicyServiceProxy;->-get0(Lcom/android/emailcommon/service/PolicyServiceProxy;)Lcom/android/emailcommon/service/IPolicyService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/emailcommon/service/PolicyServiceProxy$1;->val$arg0:Lcom/android/emailcommon/provider/Policy;

    invoke-interface {v1, v2}, Lcom/android/emailcommon/service/IPolicyService;->isActive(Lcom/android/emailcommon/provider/Policy;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/emailcommon/service/PolicyServiceProxy;->-set0(Lcom/android/emailcommon/service/PolicyServiceProxy;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    return-void
.end method
