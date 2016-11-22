.class Lcom/android/emailcommon/service/EmailServiceProxy$6;
.super Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;
.source "EmailServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/emailcommon/service/EmailServiceProxy;->sendMeetingResponse(JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/emailcommon/service/EmailServiceProxy;

.field final synthetic val$messageId:J

.field final synthetic val$response:I


# direct methods
.method constructor <init>(Lcom/android/emailcommon/service/EmailServiceProxy;Lcom/android/emailcommon/service/ServiceProxy;JI)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/emailcommon/service/EmailServiceProxy;
    .param p2, "this$0_1"    # Lcom/android/emailcommon/service/ServiceProxy;
    .param p3, "val$messageId"    # J
    .param p5, "val$response"    # I

    .prologue
    .line 256
    iput-object p1, p0, Lcom/android/emailcommon/service/EmailServiceProxy$6;->this$0:Lcom/android/emailcommon/service/EmailServiceProxy;

    iput-wide p3, p0, Lcom/android/emailcommon/service/EmailServiceProxy$6;->val$messageId:J

    iput p5, p0, Lcom/android/emailcommon/service/EmailServiceProxy$6;->val$response:I

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
    .line 259
    iget-object v0, p0, Lcom/android/emailcommon/service/EmailServiceProxy$6;->this$0:Lcom/android/emailcommon/service/EmailServiceProxy;

    invoke-static {v0}, Lcom/android/emailcommon/service/EmailServiceProxy;->-get0(Lcom/android/emailcommon/service/EmailServiceProxy;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/emailcommon/service/EmailServiceProxy$6;->val$messageId:J

    iget v1, p0, Lcom/android/emailcommon/service/EmailServiceProxy$6;->val$response:I

    invoke-interface {v0, v2, v3, v1}, Lcom/android/emailcommon/service/IEmailService;->sendMeetingResponse(JI)V

    .line 258
    return-void
.end method
