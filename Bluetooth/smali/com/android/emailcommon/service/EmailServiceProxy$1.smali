.class Lcom/android/emailcommon/service/EmailServiceProxy$1;
.super Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;
.source "EmailServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/emailcommon/service/EmailServiceProxy;->loadAttachment(Lcom/android/emailcommon/service/IEmailServiceCallback;JJZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/emailcommon/service/EmailServiceProxy;

.field final synthetic val$accountId:J

.field final synthetic val$attachmentId:J

.field final synthetic val$background:Z

.field final synthetic val$cb:Lcom/android/emailcommon/service/IEmailServiceCallback;


# direct methods
.method constructor <init>(Lcom/android/emailcommon/service/EmailServiceProxy;Lcom/android/emailcommon/service/ServiceProxy;Lcom/android/emailcommon/service/IEmailServiceCallback;JJZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/emailcommon/service/EmailServiceProxy;
    .param p2, "this$0_1"    # Lcom/android/emailcommon/service/ServiceProxy;
    .param p3, "val$cb"    # Lcom/android/emailcommon/service/IEmailServiceCallback;
    .param p4, "val$accountId"    # J
    .param p6, "val$attachmentId"    # J
    .param p8, "val$background"    # Z

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/emailcommon/service/EmailServiceProxy$1;->this$0:Lcom/android/emailcommon/service/EmailServiceProxy;

    iput-object p3, p0, Lcom/android/emailcommon/service/EmailServiceProxy$1;->val$cb:Lcom/android/emailcommon/service/IEmailServiceCallback;

    iput-wide p4, p0, Lcom/android/emailcommon/service/EmailServiceProxy$1;->val$accountId:J

    iput-wide p6, p0, Lcom/android/emailcommon/service/EmailServiceProxy$1;->val$attachmentId:J

    iput-boolean p8, p0, Lcom/android/emailcommon/service/EmailServiceProxy$1;->val$background:Z

    invoke-direct {p0, p2}, Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;-><init>(Lcom/android/emailcommon/service/ServiceProxy;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 138
    :try_start_0
    iget-object v0, p0, Lcom/android/emailcommon/service/EmailServiceProxy$1;->this$0:Lcom/android/emailcommon/service/EmailServiceProxy;

    invoke-static {v0}, Lcom/android/emailcommon/service/EmailServiceProxy;->-get0(Lcom/android/emailcommon/service/EmailServiceProxy;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/emailcommon/service/EmailServiceProxy$1;->val$cb:Lcom/android/emailcommon/service/IEmailServiceCallback;

    iget-wide v2, p0, Lcom/android/emailcommon/service/EmailServiceProxy$1;->val$accountId:J

    iget-wide v4, p0, Lcom/android/emailcommon/service/EmailServiceProxy$1;->val$attachmentId:J

    iget-boolean v6, p0, Lcom/android/emailcommon/service/EmailServiceProxy$1;->val$background:Z

    invoke-interface/range {v0 .. v6}, Lcom/android/emailcommon/service/IEmailService;->loadAttachment(Lcom/android/emailcommon/service/IEmailServiceCallback;JJZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 139
    :catch_0
    move-exception v8

    .line 142
    .local v8, "e":Landroid/os/RemoteException;
    :try_start_1
    iget-object v0, p0, Lcom/android/emailcommon/service/EmailServiceProxy$1;->val$cb:Lcom/android/emailcommon/service/IEmailServiceCallback;

    if-eqz v0, :cond_0

    .line 143
    iget-object v1, p0, Lcom/android/emailcommon/service/EmailServiceProxy$1;->val$cb:Lcom/android/emailcommon/service/IEmailServiceCallback;

    const-wide/16 v2, -0x1

    iget-wide v4, p0, Lcom/android/emailcommon/service/EmailServiceProxy$1;->val$attachmentId:J

    .line 144
    const/16 v6, 0x15

    const/4 v7, 0x0

    .line 143
    invoke-interface/range {v1 .. v7}, Lcom/android/emailcommon/service/IEmailServiceCallback;->loadAttachmentStatus(JJII)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 146
    :catch_1
    move-exception v9

    .local v9, "e1":Landroid/os/RemoteException;
    goto :goto_0
.end method
