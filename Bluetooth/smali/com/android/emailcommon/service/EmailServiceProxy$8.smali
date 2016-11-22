.class Lcom/android/emailcommon/service/EmailServiceProxy$8;
.super Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;
.source "EmailServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/emailcommon/service/EmailServiceProxy;->searchMessages(JLcom/android/emailcommon/service/SearchParams;J)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/emailcommon/service/EmailServiceProxy;

.field final synthetic val$accountId:J

.field final synthetic val$destMailboxId:J

.field final synthetic val$searchParams:Lcom/android/emailcommon/service/SearchParams;


# direct methods
.method constructor <init>(Lcom/android/emailcommon/service/EmailServiceProxy;Lcom/android/emailcommon/service/ServiceProxy;JLcom/android/emailcommon/service/SearchParams;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/emailcommon/service/EmailServiceProxy;
    .param p2, "this$0_1"    # Lcom/android/emailcommon/service/ServiceProxy;
    .param p3, "val$accountId"    # J
    .param p5, "val$searchParams"    # Lcom/android/emailcommon/service/SearchParams;
    .param p6, "val$destMailboxId"    # J

    .prologue
    .line 308
    iput-object p1, p0, Lcom/android/emailcommon/service/EmailServiceProxy$8;->this$0:Lcom/android/emailcommon/service/EmailServiceProxy;

    iput-wide p3, p0, Lcom/android/emailcommon/service/EmailServiceProxy$8;->val$accountId:J

    iput-object p5, p0, Lcom/android/emailcommon/service/EmailServiceProxy$8;->val$searchParams:Lcom/android/emailcommon/service/SearchParams;

    iput-wide p6, p0, Lcom/android/emailcommon/service/EmailServiceProxy$8;->val$destMailboxId:J

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
    .line 311
    iget-object v6, p0, Lcom/android/emailcommon/service/EmailServiceProxy$8;->this$0:Lcom/android/emailcommon/service/EmailServiceProxy;

    iget-object v0, p0, Lcom/android/emailcommon/service/EmailServiceProxy$8;->this$0:Lcom/android/emailcommon/service/EmailServiceProxy;

    invoke-static {v0}, Lcom/android/emailcommon/service/EmailServiceProxy;->-get0(Lcom/android/emailcommon/service/EmailServiceProxy;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/emailcommon/service/EmailServiceProxy$8;->val$accountId:J

    iget-object v3, p0, Lcom/android/emailcommon/service/EmailServiceProxy$8;->val$searchParams:Lcom/android/emailcommon/service/SearchParams;

    iget-wide v4, p0, Lcom/android/emailcommon/service/EmailServiceProxy$8;->val$destMailboxId:J

    invoke-interface/range {v0 .. v5}, Lcom/android/emailcommon/service/IEmailService;->searchMessages(JLcom/android/emailcommon/service/SearchParams;J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/android/emailcommon/service/EmailServiceProxy;->-set0(Lcom/android/emailcommon/service/EmailServiceProxy;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    return-void
.end method
