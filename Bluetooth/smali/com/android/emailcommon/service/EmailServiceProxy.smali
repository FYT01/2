.class public Lcom/android/emailcommon/service/EmailServiceProxy;
.super Lcom/android/emailcommon/service/ServiceProxy;
.source "EmailServiceProxy.java"

# interfaces
.implements Lcom/android/emailcommon/service/IEmailService;


# static fields
.field public static final AUTO_DISCOVER_BUNDLE_ERROR_CODE:Ljava/lang/String; = "autodiscover_error_code"

.field public static final AUTO_DISCOVER_BUNDLE_HOST_AUTH:Ljava/lang/String; = "autodiscover_host_auth"

.field public static final AUTO_DISCOVER_BUNDLE_MESSAGING_ERROR_CODE:Ljava/lang/String; = "autodiscover_messaging_error_code"

.field public static final CAPABILITY_PUSH:I = 0x1

.field public static final DEBUG_BIT:I = 0x1

.field public static final DEBUG_ENABLE_STRICT_MODE:I = 0x8

.field public static final DEBUG_EXCHANGE_BIT:I = 0x2

.field public static final DEBUG_FILE_BIT:I = 0x4

.field public static final SETTINGS_BUNDLE_CAPABILITIES:Ljava/lang/String; = "settings_capabilities"

.field private static final TAG:Ljava/lang/String; = "EmailServiceProxy"

.field public static final VALIDATE_BUNDLE_ERROR_MESSAGE:Ljava/lang/String; = "validate_error_message"

.field public static final VALIDATE_BUNDLE_POLICY_SET:Ljava/lang/String; = "validate_policy_set"

.field public static final VALIDATE_BUNDLE_PROTOCOL_VERSION:Ljava/lang/String; = "validate_protocol_version"

.field public static final VALIDATE_BUNDLE_REDIRECT_ADDRESS:Ljava/lang/String; = "validate_redirect_address"

.field public static final VALIDATE_BUNDLE_RESULT_CODE:Ljava/lang/String; = "validate_result_code"

.field public static final VALIDATE_BUNDLE_UNSUPPORTED_POLICIES:Ljava/lang/String; = "validate_unsupported_policies"


# instance fields
.field private final isRemote:Z

.field private mReturn:Ljava/lang/Object;

.field private mService:Lcom/android/emailcommon/service/IEmailService;


# direct methods
.method static synthetic -get0(Lcom/android/emailcommon/service/EmailServiceProxy;)Lcom/android/emailcommon/service/IEmailService;
    .locals 1

    iget-object v0, p0, Lcom/android/emailcommon/service/EmailServiceProxy;->mService:Lcom/android/emailcommon/service/IEmailService;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/emailcommon/service/EmailServiceProxy;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/android/emailcommon/service/EmailServiceProxy;->mReturn:Ljava/lang/Object;

    return-object p1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "_context"    # Landroid/content/Context;
    .param p2, "_intent"    # Landroid/content/Intent;

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Lcom/android/emailcommon/service/ServiceProxy;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .line 77
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/emailcommon/service/EmailServiceProxy;->mReturn:Ljava/lang/Object;

    .line 102
    :try_start_0
    invoke-static {p1}, Lcom/android/emailcommon/Device;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_0
    invoke-static {p1}, Lcom/android/emailcommon/TempDirectory;->setTempDirectory(Landroid/content/Context;)V

    .line 106
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/emailcommon/service/EmailServiceProxy;->isRemote:Z

    .line 99
    return-void

    .line 103
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 1
    .param p1, "_context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p2, "_class":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {p0, p1, v0}, Lcom/android/emailcommon/service/ServiceProxy;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/emailcommon/service/EmailServiceProxy;->mReturn:Ljava/lang/Object;

    .line 93
    invoke-static {p1}, Lcom/android/emailcommon/TempDirectory;->setTempDirectory(Landroid/content/Context;)V

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/emailcommon/service/EmailServiceProxy;->isRemote:Z

    .line 91
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 372
    const/4 v0, 0x0

    return-object v0
.end method

.method public autoDiscover(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4
    .param p1, "userName"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 197
    new-instance v1, Lcom/android/emailcommon/service/EmailServiceProxy$3;

    invoke-direct {v1, p0, p0, p1, p2}, Lcom/android/emailcommon/service/EmailServiceProxy$3;-><init>(Lcom/android/emailcommon/service/EmailServiceProxy;Lcom/android/emailcommon/service/ServiceProxy;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string/jumbo v2, "autoDiscover"

    .line 197
    invoke-virtual {p0, v1, v2}, Lcom/android/emailcommon/service/EmailServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    .line 203
    invoke-virtual {p0}, Lcom/android/emailcommon/service/EmailServiceProxy;->waitForCompletion()V

    .line 204
    iget-object v1, p0, Lcom/android/emailcommon/service/EmailServiceProxy;->mReturn:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 205
    return-object v3

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/android/emailcommon/service/EmailServiceProxy;->mReturn:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 208
    .local v0, "bundle":Landroid/os/Bundle;
    const-class v1, Lcom/android/emailcommon/provider/HostAuth;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 209
    const-string/jumbo v1, "EmailServiceProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "autoDiscover returns "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 210
    const-string/jumbo v3, "autodiscover_error_code"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 209
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 211
    return-object v0
.end method

.method public deleteExternalAccountPIMData(Ljava/lang/String;)V
    .locals 2
    .param p1, "emailAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 274
    new-instance v0, Lcom/android/emailcommon/service/EmailServiceProxy$7;

    invoke-direct {v0, p0, p0, p1}, Lcom/android/emailcommon/service/EmailServiceProxy$7;-><init>(Lcom/android/emailcommon/service/EmailServiceProxy;Lcom/android/emailcommon/service/ServiceProxy;Ljava/lang/String;)V

    .line 284
    const-string/jumbo v1, "deleteAccountPIMData"

    .line 274
    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/EmailServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    .line 288
    invoke-virtual {p0}, Lcom/android/emailcommon/service/EmailServiceProxy;->waitForCompletion()V

    .line 273
    return-void
.end method

.method public getApiVersion()I
    .locals 3

    .prologue
    .line 376
    new-instance v0, Lcom/android/emailcommon/service/EmailServiceProxy$12;

    invoke-direct {v0, p0, p0}, Lcom/android/emailcommon/service/EmailServiceProxy$12;-><init>(Lcom/android/emailcommon/service/EmailServiceProxy;Lcom/android/emailcommon/service/ServiceProxy;)V

    .line 381
    const-string/jumbo v1, "getApiVersion"

    .line 376
    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/EmailServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    .line 382
    invoke-virtual {p0}, Lcom/android/emailcommon/service/EmailServiceProxy;->waitForCompletion()V

    .line 383
    iget-object v0, p0, Lcom/android/emailcommon/service/EmailServiceProxy;->mReturn:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 385
    const-string/jumbo v0, "EmailServiceProxy"

    const-string/jumbo v1, "failed to get api version"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 386
    const/4 v0, -0x1

    return v0

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/android/emailcommon/service/EmailServiceProxy;->mReturn:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public isRemote()Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/android/emailcommon/service/EmailServiceProxy;->isRemote:Z

    return v0
.end method

.method public loadAttachment(Lcom/android/emailcommon/service/IEmailServiceCallback;JJZ)V
    .locals 10
    .param p1, "cb"    # Lcom/android/emailcommon/service/IEmailServiceCallback;
    .param p2, "accountId"    # J
    .param p4, "attachmentId"    # J
    .param p6, "background"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 134
    new-instance v0, Lcom/android/emailcommon/service/EmailServiceProxy$1;

    move-object v1, p0

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/emailcommon/service/EmailServiceProxy$1;-><init>(Lcom/android/emailcommon/service/EmailServiceProxy;Lcom/android/emailcommon/service/ServiceProxy;Lcom/android/emailcommon/service/IEmailServiceCallback;JJZ)V

    .line 150
    const-string/jumbo v1, "loadAttachment"

    .line 134
    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/EmailServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    .line 133
    return-void
.end method

.method public onConnected(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 111
    invoke-static {p1}, Lcom/android/emailcommon/service/IEmailService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/service/EmailServiceProxy;->mService:Lcom/android/emailcommon/service/IEmailService;

    .line 110
    return-void
.end method

.method public pushModify(J)V
    .locals 3
    .param p1, "accountId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 344
    new-instance v0, Lcom/android/emailcommon/service/EmailServiceProxy$10;

    invoke-direct {v0, p0, p0, p1, p2}, Lcom/android/emailcommon/service/EmailServiceProxy$10;-><init>(Lcom/android/emailcommon/service/EmailServiceProxy;Lcom/android/emailcommon/service/ServiceProxy;J)V

    .line 349
    const-string/jumbo v1, "pushModify"

    .line 344
    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/EmailServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    .line 343
    return-void
.end method

.method public searchMessages(JLcom/android/emailcommon/service/SearchParams;J)I
    .locals 8
    .param p1, "accountId"    # J
    .param p3, "searchParams"    # Lcom/android/emailcommon/service/SearchParams;
    .param p4, "destMailboxId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 308
    new-instance v0, Lcom/android/emailcommon/service/EmailServiceProxy$8;

    move-object v1, p0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-wide v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/emailcommon/service/EmailServiceProxy$8;-><init>(Lcom/android/emailcommon/service/EmailServiceProxy;Lcom/android/emailcommon/service/ServiceProxy;JLcom/android/emailcommon/service/SearchParams;J)V

    .line 313
    const-string/jumbo v1, "searchMessages"

    .line 308
    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/EmailServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    .line 314
    invoke-virtual {p0}, Lcom/android/emailcommon/service/EmailServiceProxy;->waitForCompletion()V

    .line 315
    iget-object v0, p0, Lcom/android/emailcommon/service/EmailServiceProxy;->mReturn:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 316
    const/4 v0, 0x0

    return v0

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/android/emailcommon/service/EmailServiceProxy;->mReturn:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public sendMail(J)V
    .locals 3
    .param p1, "accountId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 329
    new-instance v0, Lcom/android/emailcommon/service/EmailServiceProxy$9;

    invoke-direct {v0, p0, p0, p1, p2}, Lcom/android/emailcommon/service/EmailServiceProxy$9;-><init>(Lcom/android/emailcommon/service/EmailServiceProxy;Lcom/android/emailcommon/service/ServiceProxy;J)V

    .line 334
    const-string/jumbo v1, "sendMail"

    .line 329
    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/EmailServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    .line 328
    return-void
.end method

.method public sendMeetingResponse(JI)V
    .locals 7
    .param p1, "messageId"    # J
    .param p3, "response"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 256
    new-instance v1, Lcom/android/emailcommon/service/EmailServiceProxy$6;

    move-object v2, p0

    move-object v3, p0

    move-wide v4, p1

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/emailcommon/service/EmailServiceProxy$6;-><init>(Lcom/android/emailcommon/service/EmailServiceProxy;Lcom/android/emailcommon/service/ServiceProxy;JI)V

    .line 261
    const-string/jumbo v0, "sendMeetingResponse"

    .line 256
    invoke-virtual {p0, v1, v0}, Lcom/android/emailcommon/service/EmailServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    .line 255
    return-void
.end method

.method public setLogging(I)V
    .locals 2
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 239
    new-instance v0, Lcom/android/emailcommon/service/EmailServiceProxy$5;

    invoke-direct {v0, p0, p0, p1}, Lcom/android/emailcommon/service/EmailServiceProxy$5;-><init>(Lcom/android/emailcommon/service/EmailServiceProxy;Lcom/android/emailcommon/service/ServiceProxy;I)V

    .line 244
    const-string/jumbo v1, "setLogging"

    .line 239
    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/EmailServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    .line 238
    return-void
.end method

.method public sync(JLandroid/os/Bundle;)I
    .locals 7
    .param p1, "accountId"    # J
    .param p3, "syncExtras"    # Landroid/os/Bundle;

    .prologue
    .line 354
    new-instance v1, Lcom/android/emailcommon/service/EmailServiceProxy$11;

    move-object v2, p0

    move-object v3, p0

    move-wide v4, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/emailcommon/service/EmailServiceProxy$11;-><init>(Lcom/android/emailcommon/service/EmailServiceProxy;Lcom/android/emailcommon/service/ServiceProxy;JLandroid/os/Bundle;)V

    .line 359
    const-string/jumbo v0, "sync"

    .line 354
    invoke-virtual {p0, v1, v0}, Lcom/android/emailcommon/service/EmailServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    .line 360
    invoke-virtual {p0}, Lcom/android/emailcommon/service/EmailServiceProxy;->waitForCompletion()V

    .line 361
    iget-object v0, p0, Lcom/android/emailcommon/service/EmailServiceProxy;->mReturn:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 364
    const/16 v0, 0x23

    return v0

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/android/emailcommon/service/EmailServiceProxy;->mReturn:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public updateFolderList(J)V
    .locals 3
    .param p1, "accountId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 223
    new-instance v0, Lcom/android/emailcommon/service/EmailServiceProxy$4;

    invoke-direct {v0, p0, p0, p1, p2}, Lcom/android/emailcommon/service/EmailServiceProxy$4;-><init>(Lcom/android/emailcommon/service/EmailServiceProxy;Lcom/android/emailcommon/service/ServiceProxy;J)V

    .line 228
    const-string/jumbo v1, "updateFolderList"

    .line 223
    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/EmailServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    .line 222
    return-void
.end method

.method public validate(Lcom/android/emailcommon/service/HostAuthCompat;)Landroid/os/Bundle;
    .locals 5
    .param p1, "hostAuthCom"    # Lcom/android/emailcommon/service/HostAuthCompat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 165
    new-instance v1, Lcom/android/emailcommon/service/EmailServiceProxy$2;

    invoke-direct {v1, p0, p0, p1}, Lcom/android/emailcommon/service/EmailServiceProxy$2;-><init>(Lcom/android/emailcommon/service/EmailServiceProxy;Lcom/android/emailcommon/service/ServiceProxy;Lcom/android/emailcommon/service/HostAuthCompat;)V

    .line 170
    const-string/jumbo v2, "validate"

    .line 165
    invoke-virtual {p0, v1, v2}, Lcom/android/emailcommon/service/EmailServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    .line 171
    invoke-virtual {p0}, Lcom/android/emailcommon/service/EmailServiceProxy;->waitForCompletion()V

    .line 172
    iget-object v1, p0, Lcom/android/emailcommon/service/EmailServiceProxy;->mReturn:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 173
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 174
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "validate_result_code"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 175
    return-object v0

    .line 177
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    iget-object v0, p0, Lcom/android/emailcommon/service/EmailServiceProxy;->mReturn:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 178
    .restart local v0    # "bundle":Landroid/os/Bundle;
    const-class v1, Lcom/android/emailcommon/provider/Policy;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 179
    const-string/jumbo v1, "EmailServiceProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "validate returns "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "validate_result_code"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 180
    return-object v0
.end method
