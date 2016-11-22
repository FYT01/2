.class Lcom/android/emailcommon/service/EmailServiceProxy$12;
.super Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;
.source "EmailServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/emailcommon/service/EmailServiceProxy;->getApiVersion()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/emailcommon/service/EmailServiceProxy;


# direct methods
.method constructor <init>(Lcom/android/emailcommon/service/EmailServiceProxy;Lcom/android/emailcommon/service/ServiceProxy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/emailcommon/service/EmailServiceProxy;
    .param p2, "this$0_1"    # Lcom/android/emailcommon/service/ServiceProxy;

    .prologue
    .line 376
    iput-object p1, p0, Lcom/android/emailcommon/service/EmailServiceProxy$12;->this$0:Lcom/android/emailcommon/service/EmailServiceProxy;

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
    .line 379
    iget-object v0, p0, Lcom/android/emailcommon/service/EmailServiceProxy$12;->this$0:Lcom/android/emailcommon/service/EmailServiceProxy;

    iget-object v1, p0, Lcom/android/emailcommon/service/EmailServiceProxy$12;->this$0:Lcom/android/emailcommon/service/EmailServiceProxy;

    invoke-static {v1}, Lcom/android/emailcommon/service/EmailServiceProxy;->-get0(Lcom/android/emailcommon/service/EmailServiceProxy;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/emailcommon/service/IEmailService;->getApiVersion()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/emailcommon/service/EmailServiceProxy;->-set0(Lcom/android/emailcommon/service/EmailServiceProxy;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    return-void
.end method
