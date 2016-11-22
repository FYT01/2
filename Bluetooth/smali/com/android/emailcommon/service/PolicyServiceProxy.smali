.class public Lcom/android/emailcommon/service/PolicyServiceProxy;
.super Lcom/android/emailcommon/service/ServiceProxy;
.source "PolicyServiceProxy.java"

# interfaces
.implements Lcom/android/emailcommon/service/IPolicyService;


# static fields
.field private static final DEBUG_PROXY:Z = false

.field private static final TAG:Ljava/lang/String; = "PolicyServiceProxy"


# instance fields
.field private mReturn:Ljava/lang/Object;

.field private mService:Lcom/android/emailcommon/service/IPolicyService;


# direct methods
.method static synthetic -get0(Lcom/android/emailcommon/service/PolicyServiceProxy;)Lcom/android/emailcommon/service/IPolicyService;
    .locals 1

    iget-object v0, p0, Lcom/android/emailcommon/service/PolicyServiceProxy;->mService:Lcom/android/emailcommon/service/IPolicyService;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/emailcommon/service/PolicyServiceProxy;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/android/emailcommon/service/PolicyServiceProxy;->mReturn:Ljava/lang/Object;

    return-object p1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "_context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 35
    const-string/jumbo v0, "POLICY_INTENT"

    invoke-static {p1, v0}, Lcom/android/emailcommon/service/PolicyServiceProxy;->getIntentForEmailPackage(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/emailcommon/service/ServiceProxy;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .line 31
    iput-object v1, p0, Lcom/android/emailcommon/service/PolicyServiceProxy;->mService:Lcom/android/emailcommon/service/IPolicyService;

    .line 32
    iput-object v1, p0, Lcom/android/emailcommon/service/PolicyServiceProxy;->mReturn:Ljava/lang/Object;

    .line 34
    return-void
.end method

.method public static canDisableCamera(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 169
    :try_start_0
    new-instance v1, Lcom/android/emailcommon/service/PolicyServiceProxy;

    invoke-direct {v1, p0}, Lcom/android/emailcommon/service/PolicyServiceProxy;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/android/emailcommon/service/PolicyServiceProxy;->canDisableCamera()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 170
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public static isActive(Landroid/content/Context;Lcom/android/emailcommon/provider/Policy;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "policies"    # Lcom/android/emailcommon/provider/Policy;

    .prologue
    .line 129
    :try_start_0
    new-instance v1, Lcom/android/emailcommon/service/PolicyServiceProxy;

    invoke-direct {v1, p0}, Lcom/android/emailcommon/service/PolicyServiceProxy;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Lcom/android/emailcommon/service/PolicyServiceProxy;->isActive(Lcom/android/emailcommon/provider/Policy;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 130
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public static remoteWipe(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 145
    :try_start_0
    new-instance v1, Lcom/android/emailcommon/service/PolicyServiceProxy;

    invoke-direct {v1, p0}, Lcom/android/emailcommon/service/PolicyServiceProxy;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/android/emailcommon/service/PolicyServiceProxy;->remoteWipe()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    return-void

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "PolicyService transaction failed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static setAccountHoldFlag(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/android/emailcommon/provider/Account;
    .param p2, "newState"    # Z

    .prologue
    .line 137
    :try_start_0
    new-instance v1, Lcom/android/emailcommon/service/PolicyServiceProxy;

    invoke-direct {v1, p0}, Lcom/android/emailcommon/service/PolicyServiceProxy;-><init>(Landroid/content/Context;)V

    iget-wide v2, p1, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-virtual {v1, v2, v3, p2}, Lcom/android/emailcommon/service/PolicyServiceProxy;->setAccountHoldFlag(JZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    return-void

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "PolicyService transaction failed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static setAccountPolicy(Landroid/content/Context;JLcom/android/emailcommon/provider/Policy;Ljava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountId"    # J
    .param p3, "policy"    # Lcom/android/emailcommon/provider/Policy;
    .param p4, "securityKey"    # Ljava/lang/String;

    .prologue
    .line 153
    const/4 v6, 0x1

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v1 .. v6}, Lcom/android/emailcommon/service/PolicyServiceProxy;->setAccountPolicy2(Landroid/content/Context;JLcom/android/emailcommon/provider/Policy;Ljava/lang/String;Z)V

    .line 152
    return-void
.end method

.method public static setAccountPolicy2(Landroid/content/Context;JLcom/android/emailcommon/provider/Policy;Ljava/lang/String;Z)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountId"    # J
    .param p3, "policy"    # Lcom/android/emailcommon/provider/Policy;
    .param p4, "securityKey"    # Ljava/lang/String;
    .param p5, "notify"    # Z

    .prologue
    .line 159
    :try_start_0
    new-instance v1, Lcom/android/emailcommon/service/PolicyServiceProxy;

    invoke-direct {v1, p0}, Lcom/android/emailcommon/service/PolicyServiceProxy;-><init>(Landroid/content/Context;)V

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/emailcommon/service/PolicyServiceProxy;->setAccountPolicy2(JLcom/android/emailcommon/provider/Policy;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    return-void

    .line 162
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "PolicyService transaction failed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return-object v0
.end method

.method public canDisableCamera()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 89
    new-instance v0, Lcom/android/emailcommon/service/PolicyServiceProxy$3;

    invoke-direct {v0, p0, p0}, Lcom/android/emailcommon/service/PolicyServiceProxy$3;-><init>(Lcom/android/emailcommon/service/PolicyServiceProxy;Lcom/android/emailcommon/service/ServiceProxy;)V

    .line 94
    const-string/jumbo v1, "canDisableCamera"

    .line 89
    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/PolicyServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    .line 95
    invoke-virtual {p0}, Lcom/android/emailcommon/service/PolicyServiceProxy;->waitForCompletion()V

    .line 96
    iget-object v0, p0, Lcom/android/emailcommon/service/PolicyServiceProxy;->mReturn:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 99
    const-string/jumbo v0, "PolicyServiceProxy"

    const-string/jumbo v1, "PolicyService unavailable in canDisableCamera; assuming false"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 100
    return v3

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/android/emailcommon/service/PolicyServiceProxy;->mReturn:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isActive(Lcom/android/emailcommon/provider/Policy;)Z
    .locals 4
    .param p1, "arg0"    # Lcom/android/emailcommon/provider/Policy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 50
    new-instance v0, Lcom/android/emailcommon/service/PolicyServiceProxy$1;

    invoke-direct {v0, p0, p0, p1}, Lcom/android/emailcommon/service/PolicyServiceProxy$1;-><init>(Lcom/android/emailcommon/service/PolicyServiceProxy;Lcom/android/emailcommon/service/ServiceProxy;Lcom/android/emailcommon/provider/Policy;)V

    .line 55
    const-string/jumbo v1, "isActive"

    .line 50
    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/PolicyServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    .line 56
    invoke-virtual {p0}, Lcom/android/emailcommon/service/PolicyServiceProxy;->waitForCompletion()V

    .line 60
    iget-object v0, p0, Lcom/android/emailcommon/service/PolicyServiceProxy;->mReturn:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 63
    const-string/jumbo v0, "PolicyServiceProxy"

    const-string/jumbo v1, "PolicyService unavailable in isActive; assuming false"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 64
    return v3

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/android/emailcommon/service/PolicyServiceProxy;->mReturn:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public onConnected(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 40
    invoke-static {p1}, Lcom/android/emailcommon/service/IPolicyService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/emailcommon/service/IPolicyService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/service/PolicyServiceProxy;->mService:Lcom/android/emailcommon/service/IPolicyService;

    .line 39
    return-void
.end method

.method public remoteWipe()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 108
    new-instance v0, Lcom/android/emailcommon/service/PolicyServiceProxy$4;

    invoke-direct {v0, p0, p0}, Lcom/android/emailcommon/service/PolicyServiceProxy$4;-><init>(Lcom/android/emailcommon/service/PolicyServiceProxy;Lcom/android/emailcommon/service/ServiceProxy;)V

    .line 113
    const-string/jumbo v1, "remoteWipe"

    .line 108
    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/PolicyServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    .line 107
    return-void
.end method

.method public setAccountHoldFlag(JZ)V
    .locals 7
    .param p1, "arg0"    # J
    .param p3, "arg1"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 118
    new-instance v1, Lcom/android/emailcommon/service/PolicyServiceProxy$5;

    move-object v2, p0

    move-object v3, p0

    move-wide v4, p1

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/emailcommon/service/PolicyServiceProxy$5;-><init>(Lcom/android/emailcommon/service/PolicyServiceProxy;Lcom/android/emailcommon/service/ServiceProxy;JZ)V

    .line 123
    const-string/jumbo v0, "setAccountHoldFlag"

    .line 118
    invoke-virtual {p0, v1, v0}, Lcom/android/emailcommon/service/PolicyServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    .line 117
    return-void
.end method

.method public setAccountPolicy(JLcom/android/emailcommon/provider/Policy;Ljava/lang/String;)V
    .locals 7
    .param p1, "accountId"    # J
    .param p3, "policy"    # Lcom/android/emailcommon/provider/Policy;
    .param p4, "securityKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 73
    const/4 v6, 0x1

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/emailcommon/service/PolicyServiceProxy;->setAccountPolicy2(JLcom/android/emailcommon/provider/Policy;Ljava/lang/String;Z)V

    .line 72
    return-void
.end method

.method public setAccountPolicy2(JLcom/android/emailcommon/provider/Policy;Ljava/lang/String;Z)V
    .locals 9
    .param p1, "accountId"    # J
    .param p3, "policy"    # Lcom/android/emailcommon/provider/Policy;
    .param p4, "securityKey"    # Ljava/lang/String;
    .param p5, "notify"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 79
    new-instance v1, Lcom/android/emailcommon/service/PolicyServiceProxy$2;

    move-object v2, p0

    move-object v3, p0

    move-wide v4, p1

    move-object v6, p3

    move-object v7, p4

    move v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/android/emailcommon/service/PolicyServiceProxy$2;-><init>(Lcom/android/emailcommon/service/PolicyServiceProxy;Lcom/android/emailcommon/service/ServiceProxy;JLcom/android/emailcommon/provider/Policy;Ljava/lang/String;Z)V

    .line 84
    const-string/jumbo v0, "setAccountPolicy2"

    .line 79
    invoke-virtual {p0, v1, v0}, Lcom/android/emailcommon/service/PolicyServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    .line 85
    invoke-virtual {p0}, Lcom/android/emailcommon/service/PolicyServiceProxy;->waitForCompletion()V

    .line 78
    return-void
.end method
