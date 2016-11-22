.class public Lcom/android/emailcommon/service/AccountServiceProxy;
.super Lcom/android/emailcommon/service/ServiceProxy;
.source "AccountServiceProxy.java"

# interfaces
.implements Lcom/android/emailcommon/service/IAccountService;


# static fields
.field public static final DEFAULT_ACCOUNT_COLOR:I = -0xffff01


# instance fields
.field private mReturn:Ljava/lang/Object;

.field private mService:Lcom/android/emailcommon/service/IAccountService;


# direct methods
.method static synthetic -get0(Lcom/android/emailcommon/service/AccountServiceProxy;)Lcom/android/emailcommon/service/IAccountService;
    .locals 1

    iget-object v0, p0, Lcom/android/emailcommon/service/AccountServiceProxy;->mService:Lcom/android/emailcommon/service/IAccountService;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/emailcommon/service/AccountServiceProxy;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/android/emailcommon/service/AccountServiceProxy;->mReturn:Ljava/lang/Object;

    return-object p1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "_context"    # Landroid/content/Context;

    .prologue
    .line 32
    const-string/jumbo v0, "ACCOUNT_INTENT"

    invoke-static {p1, v0}, Lcom/android/emailcommon/service/AccountServiceProxy;->getIntentForEmailPackage(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/emailcommon/service/ServiceProxy;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/emailcommon/service/AccountServiceProxy;->mService:Lcom/android/emailcommon/service/IAccountService;

    .line 31
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAccountColor(J)I
    .locals 3
    .param p1, "accountId"    # J

    .prologue
    .line 48
    new-instance v0, Lcom/android/emailcommon/service/AccountServiceProxy$1;

    invoke-direct {v0, p0, p0, p1, p2}, Lcom/android/emailcommon/service/AccountServiceProxy$1;-><init>(Lcom/android/emailcommon/service/AccountServiceProxy;Lcom/android/emailcommon/service/ServiceProxy;J)V

    .line 53
    const-string/jumbo v1, "getAccountColor"

    .line 48
    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/AccountServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    .line 54
    invoke-virtual {p0}, Lcom/android/emailcommon/service/AccountServiceProxy;->waitForCompletion()V

    .line 55
    iget-object v0, p0, Lcom/android/emailcommon/service/AccountServiceProxy;->mReturn:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 56
    const v0, -0xffff01

    return v0

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/android/emailcommon/service/AccountServiceProxy;->mReturn:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getConfigurationData(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .param p1, "accountType"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 65
    new-instance v0, Lcom/android/emailcommon/service/AccountServiceProxy$2;

    invoke-direct {v0, p0, p0, p1}, Lcom/android/emailcommon/service/AccountServiceProxy$2;-><init>(Lcom/android/emailcommon/service/AccountServiceProxy;Lcom/android/emailcommon/service/ServiceProxy;Ljava/lang/String;)V

    .line 70
    const-string/jumbo v1, "getConfigurationData"

    .line 65
    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/AccountServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    .line 71
    invoke-virtual {p0}, Lcom/android/emailcommon/service/AccountServiceProxy;->waitForCompletion()V

    .line 72
    iget-object v0, p0, Lcom/android/emailcommon/service/AccountServiceProxy;->mReturn:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 73
    return-object v2

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/android/emailcommon/service/AccountServiceProxy;->mReturn:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 82
    new-instance v0, Lcom/android/emailcommon/service/AccountServiceProxy$3;

    invoke-direct {v0, p0, p0}, Lcom/android/emailcommon/service/AccountServiceProxy$3;-><init>(Lcom/android/emailcommon/service/AccountServiceProxy;Lcom/android/emailcommon/service/ServiceProxy;)V

    .line 87
    const-string/jumbo v1, "getDeviceId"

    .line 82
    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/AccountServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    .line 88
    invoke-virtual {p0}, Lcom/android/emailcommon/service/AccountServiceProxy;->waitForCompletion()V

    .line 89
    iget-object v0, p0, Lcom/android/emailcommon/service/AccountServiceProxy;->mReturn:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 90
    return-object v2

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/android/emailcommon/service/AccountServiceProxy;->mReturn:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public onConnected(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 37
    invoke-static {p1}, Lcom/android/emailcommon/service/IAccountService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/emailcommon/service/IAccountService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/service/AccountServiceProxy;->mService:Lcom/android/emailcommon/service/IAccountService;

    .line 36
    return-void
.end method
