.class Lcom/android/emailcommon/service/EmailServiceProxy$5;
.super Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;
.source "EmailServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/emailcommon/service/EmailServiceProxy;->setLogging(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/emailcommon/service/EmailServiceProxy;

.field final synthetic val$flags:I


# direct methods
.method constructor <init>(Lcom/android/emailcommon/service/EmailServiceProxy;Lcom/android/emailcommon/service/ServiceProxy;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/emailcommon/service/EmailServiceProxy;
    .param p2, "this$0_1"    # Lcom/android/emailcommon/service/ServiceProxy;
    .param p3, "val$flags"    # I

    .prologue
    .line 239
    iput-object p1, p0, Lcom/android/emailcommon/service/EmailServiceProxy$5;->this$0:Lcom/android/emailcommon/service/EmailServiceProxy;

    iput p3, p0, Lcom/android/emailcommon/service/EmailServiceProxy$5;->val$flags:I

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
    .line 242
    iget-object v0, p0, Lcom/android/emailcommon/service/EmailServiceProxy$5;->this$0:Lcom/android/emailcommon/service/EmailServiceProxy;

    invoke-static {v0}, Lcom/android/emailcommon/service/EmailServiceProxy;->-get0(Lcom/android/emailcommon/service/EmailServiceProxy;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v0

    iget v1, p0, Lcom/android/emailcommon/service/EmailServiceProxy$5;->val$flags:I

    invoke-interface {v0, v1}, Lcom/android/emailcommon/service/IEmailService;->setLogging(I)V

    .line 241
    return-void
.end method
