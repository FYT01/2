.class Lcom/android/emailcommon/service/EmailServiceProxy$2;
.super Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;
.source "EmailServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/emailcommon/service/EmailServiceProxy;->validate(Lcom/android/emailcommon/service/HostAuthCompat;)Landroid/os/Bundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/emailcommon/service/EmailServiceProxy;

.field final synthetic val$hostAuthCom:Lcom/android/emailcommon/service/HostAuthCompat;


# direct methods
.method constructor <init>(Lcom/android/emailcommon/service/EmailServiceProxy;Lcom/android/emailcommon/service/ServiceProxy;Lcom/android/emailcommon/service/HostAuthCompat;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/emailcommon/service/EmailServiceProxy;
    .param p2, "this$0_1"    # Lcom/android/emailcommon/service/ServiceProxy;
    .param p3, "val$hostAuthCom"    # Lcom/android/emailcommon/service/HostAuthCompat;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/emailcommon/service/EmailServiceProxy$2;->this$0:Lcom/android/emailcommon/service/EmailServiceProxy;

    iput-object p3, p0, Lcom/android/emailcommon/service/EmailServiceProxy$2;->val$hostAuthCom:Lcom/android/emailcommon/service/HostAuthCompat;

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
    .line 168
    iget-object v0, p0, Lcom/android/emailcommon/service/EmailServiceProxy$2;->this$0:Lcom/android/emailcommon/service/EmailServiceProxy;

    iget-object v1, p0, Lcom/android/emailcommon/service/EmailServiceProxy$2;->this$0:Lcom/android/emailcommon/service/EmailServiceProxy;

    invoke-static {v1}, Lcom/android/emailcommon/service/EmailServiceProxy;->-get0(Lcom/android/emailcommon/service/EmailServiceProxy;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/emailcommon/service/EmailServiceProxy$2;->val$hostAuthCom:Lcom/android/emailcommon/service/HostAuthCompat;

    invoke-interface {v1, v2}, Lcom/android/emailcommon/service/IEmailService;->validate(Lcom/android/emailcommon/service/HostAuthCompat;)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/emailcommon/service/EmailServiceProxy;->-set0(Lcom/android/emailcommon/service/EmailServiceProxy;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    return-void
.end method
