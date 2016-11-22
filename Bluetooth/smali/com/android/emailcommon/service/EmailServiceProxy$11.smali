.class Lcom/android/emailcommon/service/EmailServiceProxy$11;
.super Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;
.source "EmailServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/emailcommon/service/EmailServiceProxy;->sync(JLandroid/os/Bundle;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/emailcommon/service/EmailServiceProxy;

.field final synthetic val$accountId:J

.field final synthetic val$syncExtras:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/android/emailcommon/service/EmailServiceProxy;Lcom/android/emailcommon/service/ServiceProxy;JLandroid/os/Bundle;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/emailcommon/service/EmailServiceProxy;
    .param p2, "this$0_1"    # Lcom/android/emailcommon/service/ServiceProxy;
    .param p3, "val$accountId"    # J
    .param p5, "val$syncExtras"    # Landroid/os/Bundle;

    .prologue
    .line 354
    iput-object p1, p0, Lcom/android/emailcommon/service/EmailServiceProxy$11;->this$0:Lcom/android/emailcommon/service/EmailServiceProxy;

    iput-wide p3, p0, Lcom/android/emailcommon/service/EmailServiceProxy$11;->val$accountId:J

    iput-object p5, p0, Lcom/android/emailcommon/service/EmailServiceProxy$11;->val$syncExtras:Landroid/os/Bundle;

    invoke-direct {p0, p2}, Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;-><init>(Lcom/android/emailcommon/service/ServiceProxy;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 357
    iget-object v0, p0, Lcom/android/emailcommon/service/EmailServiceProxy$11;->this$0:Lcom/android/emailcommon/service/EmailServiceProxy;

    iget-object v1, p0, Lcom/android/emailcommon/service/EmailServiceProxy$11;->this$0:Lcom/android/emailcommon/service/EmailServiceProxy;

    invoke-static {v1}, Lcom/android/emailcommon/service/EmailServiceProxy;->-get0(Lcom/android/emailcommon/service/EmailServiceProxy;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/emailcommon/service/EmailServiceProxy$11;->val$accountId:J

    iget-object v4, p0, Lcom/android/emailcommon/service/EmailServiceProxy$11;->val$syncExtras:Landroid/os/Bundle;

    invoke-interface {v1, v2, v3, v4}, Lcom/android/emailcommon/service/IEmailService;->sync(JLandroid/os/Bundle;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/emailcommon/service/EmailServiceProxy;->-set0(Lcom/android/emailcommon/service/EmailServiceProxy;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    return-void
.end method
