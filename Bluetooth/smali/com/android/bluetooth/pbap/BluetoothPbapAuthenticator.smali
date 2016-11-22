.class public Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;
.super Ljava/lang/Object;
.source "BluetoothPbapAuthenticator.java"

# interfaces
.implements Ljavax/obex/Authenticator;


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothPbapAuthenticator"


# instance fields
.field private mAuthCancelled:Z

.field private mCallback:Landroid/os/Handler;

.field private mChallenged:Z

.field private mSessionKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .param p1, "callback"    # Landroid/os/Handler;

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;->mCallback:Landroid/os/Handler;

    .line 59
    iput-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;->mChallenged:Z

    .line 60
    iput-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;->mAuthCancelled:Z

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;->mSessionKey:Ljava/lang/String;

    .line 57
    return-void
.end method

.method private waitUserConfirmation()V
    .locals 4

    .prologue
    .line 77
    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;->mCallback:Landroid/os/Handler;

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 78
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x138b

    iput v2, v1, Landroid/os/Message;->what:I

    .line 79
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 80
    monitor-enter p0

    .line 81
    :goto_0
    :try_start_0
    iget-boolean v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;->mChallenged:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;->mAuthCancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    :cond_0
    monitor-exit p0

    .line 76
    return-void

    .line 83
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string/jumbo v2, "BluetoothPbapAuthenticator"

    const-string/jumbo v3, "Interrupted while waiting on isChalled"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 80
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method public onAuthenticationChallenge(Ljava/lang/String;ZZ)Ljavax/obex/PasswordAuthentication;
    .locals 3
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "isUserIdRequired"    # Z
    .param p3, "isFullAccess"    # Z

    .prologue
    const/4 v2, 0x0

    .line 93
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;->waitUserConfirmation()V

    .line 94
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;->mSessionKey:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    new-instance v0, Ljavax/obex/PasswordAuthentication;

    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;->mSessionKey:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v2, v1}, Ljavax/obex/PasswordAuthentication;-><init>([B[B)V

    .line 96
    .local v0, "pa":Ljavax/obex/PasswordAuthentication;
    return-object v0

    .line 98
    .end local v0    # "pa":Ljavax/obex/PasswordAuthentication;
    :cond_0
    return-object v2
.end method

.method public onAuthenticationResponse([B)[B
    .locals 1
    .param p1, "userName"    # [B

    .prologue
    .line 103
    const/4 v0, 0x0

    .line 104
    .local v0, "b":[B
    return-object v0
.end method

.method public final declared-synchronized setCancelled(Z)V
    .locals 1
    .param p1, "bool"    # Z

    .prologue
    monitor-enter p0

    .line 69
    :try_start_0
    iput-boolean p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;->mAuthCancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 68
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setChallenged(Z)V
    .locals 1
    .param p1, "bool"    # Z

    .prologue
    monitor-enter p0

    .line 65
    :try_start_0
    iput-boolean p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;->mChallenged:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 64
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setSessionKey(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 73
    :try_start_0
    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;->mSessionKey:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 72
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
