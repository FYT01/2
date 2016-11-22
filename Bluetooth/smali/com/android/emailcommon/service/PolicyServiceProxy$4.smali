.class Lcom/android/emailcommon/service/PolicyServiceProxy$4;
.super Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;
.source "PolicyServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/emailcommon/service/PolicyServiceProxy;->remoteWipe()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/emailcommon/service/PolicyServiceProxy;


# direct methods
.method constructor <init>(Lcom/android/emailcommon/service/PolicyServiceProxy;Lcom/android/emailcommon/service/ServiceProxy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/emailcommon/service/PolicyServiceProxy;
    .param p2, "this$0_1"    # Lcom/android/emailcommon/service/ServiceProxy;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/emailcommon/service/PolicyServiceProxy$4;->this$0:Lcom/android/emailcommon/service/PolicyServiceProxy;

    invoke-direct {p0, p2}, Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;-><init>(Lcom/android/emailcommon/service/ServiceProxy;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/emailcommon/service/PolicyServiceProxy$4;->this$0:Lcom/android/emailcommon/service/PolicyServiceProxy;

    invoke-static {v0}, Lcom/android/emailcommon/service/PolicyServiceProxy;->-get0(Lcom/android/emailcommon/service/PolicyServiceProxy;)Lcom/android/emailcommon/service/IPolicyService;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/emailcommon/service/IPolicyService;->remoteWipe()V

    .line 110
    return-void
.end method
