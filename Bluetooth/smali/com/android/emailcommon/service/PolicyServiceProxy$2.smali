.class Lcom/android/emailcommon/service/PolicyServiceProxy$2;
.super Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;
.source "PolicyServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/emailcommon/service/PolicyServiceProxy;->setAccountPolicy2(JLcom/android/emailcommon/provider/Policy;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/emailcommon/service/PolicyServiceProxy;

.field final synthetic val$accountId:J

.field final synthetic val$notify:Z

.field final synthetic val$policy:Lcom/android/emailcommon/provider/Policy;

.field final synthetic val$securityKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/emailcommon/service/PolicyServiceProxy;Lcom/android/emailcommon/service/ServiceProxy;JLcom/android/emailcommon/provider/Policy;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/emailcommon/service/PolicyServiceProxy;
    .param p2, "this$0_1"    # Lcom/android/emailcommon/service/ServiceProxy;
    .param p3, "val$accountId"    # J
    .param p5, "val$policy"    # Lcom/android/emailcommon/provider/Policy;
    .param p6, "val$securityKey"    # Ljava/lang/String;
    .param p7, "val$notify"    # Z

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/emailcommon/service/PolicyServiceProxy$2;->this$0:Lcom/android/emailcommon/service/PolicyServiceProxy;

    iput-wide p3, p0, Lcom/android/emailcommon/service/PolicyServiceProxy$2;->val$accountId:J

    iput-object p5, p0, Lcom/android/emailcommon/service/PolicyServiceProxy$2;->val$policy:Lcom/android/emailcommon/provider/Policy;

    iput-object p6, p0, Lcom/android/emailcommon/service/PolicyServiceProxy$2;->val$securityKey:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/android/emailcommon/service/PolicyServiceProxy$2;->val$notify:Z

    invoke-direct {p0, p2}, Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;-><init>(Lcom/android/emailcommon/service/ServiceProxy;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/emailcommon/service/PolicyServiceProxy$2;->this$0:Lcom/android/emailcommon/service/PolicyServiceProxy;

    invoke-static {v0}, Lcom/android/emailcommon/service/PolicyServiceProxy;->-get0(Lcom/android/emailcommon/service/PolicyServiceProxy;)Lcom/android/emailcommon/service/IPolicyService;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/emailcommon/service/PolicyServiceProxy$2;->val$accountId:J

    iget-object v4, p0, Lcom/android/emailcommon/service/PolicyServiceProxy$2;->val$policy:Lcom/android/emailcommon/provider/Policy;

    iget-object v5, p0, Lcom/android/emailcommon/service/PolicyServiceProxy$2;->val$securityKey:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/android/emailcommon/service/PolicyServiceProxy$2;->val$notify:Z

    invoke-interface/range {v1 .. v6}, Lcom/android/emailcommon/service/IPolicyService;->setAccountPolicy2(JLcom/android/emailcommon/provider/Policy;Ljava/lang/String;Z)V

    .line 81
    return-void
.end method
