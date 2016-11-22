.class Lcom/android/emailcommon/service/PolicyServiceProxy$5;
.super Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;
.source "PolicyServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/emailcommon/service/PolicyServiceProxy;->setAccountHoldFlag(JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/emailcommon/service/PolicyServiceProxy;

.field final synthetic val$arg0:J

.field final synthetic val$arg1:Z


# direct methods
.method constructor <init>(Lcom/android/emailcommon/service/PolicyServiceProxy;Lcom/android/emailcommon/service/ServiceProxy;JZ)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/emailcommon/service/PolicyServiceProxy;
    .param p2, "this$0_1"    # Lcom/android/emailcommon/service/ServiceProxy;
    .param p3, "val$arg0"    # J
    .param p5, "val$arg1"    # Z

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/emailcommon/service/PolicyServiceProxy$5;->this$0:Lcom/android/emailcommon/service/PolicyServiceProxy;

    iput-wide p3, p0, Lcom/android/emailcommon/service/PolicyServiceProxy$5;->val$arg0:J

    iput-boolean p5, p0, Lcom/android/emailcommon/service/PolicyServiceProxy$5;->val$arg1:Z

    invoke-direct {p0, p2}, Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;-><init>(Lcom/android/emailcommon/service/ServiceProxy;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/emailcommon/service/PolicyServiceProxy$5;->this$0:Lcom/android/emailcommon/service/PolicyServiceProxy;

    invoke-static {v0}, Lcom/android/emailcommon/service/PolicyServiceProxy;->-get0(Lcom/android/emailcommon/service/PolicyServiceProxy;)Lcom/android/emailcommon/service/IPolicyService;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/emailcommon/service/PolicyServiceProxy$5;->val$arg0:J

    iget-boolean v1, p0, Lcom/android/emailcommon/service/PolicyServiceProxy$5;->val$arg1:Z

    invoke-interface {v0, v2, v3, v1}, Lcom/android/emailcommon/service/IPolicyService;->setAccountHoldFlag(JZ)V

    .line 120
    return-void
.end method
