.class public Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;
.super Ljava/lang/Object;
.source "BluetoothOppObexClientSession.java"

# interfaces
.implements Lcom/android/bluetooth/opp/BluetoothOppObexSession;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;,
        Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;
    }
.end annotation


# static fields
.field private static final D:Z = true

.field private static final TAG:Ljava/lang/String; = "BtOppObexClient"

.field private static final V:Z


# instance fields
.field private final MIN_FILE_LEN_FOR_TPUT_MEASUREMENT:I

.field private mCallback:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private volatile mInterrupted:Z

.field private mThread:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;

.field private mTransport:Ljavax/obex/ObexTransport;

.field private volatile mWaitingForRemote:Z

.field private position:J


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->V:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mCallback:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mInterrupted:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mWaitingForRemote:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->position:J

    return-wide v0
.end method

.method static synthetic -set0(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mInterrupted:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mWaitingForRemote:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->position:J

    return-wide p1
.end method

.method static synthetic -wrap0(Ljava/io/InputStream;[BI)I
    .locals 1
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "buffer"    # [B
    .param p2, "size"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->readFully(Ljava/io/InputStream;[BI)I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 64
    const-string/jumbo v0, "BluetoothOpp"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->V:Z

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljavax/obex/ObexTransport;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "transport"    # Ljavax/obex/ObexTransport;

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const v0, 0x7a120

    iput v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->MIN_FILE_LEN_FOR_TPUT_MEASUREMENT:I

    .line 83
    if-nez p2, :cond_0

    .line 84
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "transport is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_0
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mContext:Landroid/content/Context;

    .line 87
    iput-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mTransport:Ljavax/obex/ObexTransport;

    .line 82
    return-void
.end method

.method public static applyRemoteDeviceQuirks(Ljavax/obex/HeaderSet;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "request"    # Ljavax/obex/HeaderSet;
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    .line 709
    if-nez p1, :cond_0

    .line 710
    return-void

    .line 712
    :cond_0
    const-string/jumbo v5, "00:04:48"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 717
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 718
    .local v0, "c":[C
    const/4 v1, 0x1

    .line 719
    .local v1, "firstDot":Z
    const/4 v3, 0x0

    .line 720
    .local v3, "modified":Z
    array-length v5, v0

    add-int/lit8 v2, v5, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_3

    .line 721
    aget-char v5, v0, v2

    const/16 v6, 0x2e

    if-ne v5, v6, :cond_2

    .line 722
    if-nez v1, :cond_1

    .line 723
    const/4 v3, 0x1

    .line 724
    const/16 v5, 0x5f

    aput-char v5, v0, v2

    .line 726
    :cond_1
    const/4 v1, 0x0

    .line 720
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 730
    :cond_3
    if-eqz v3, :cond_4

    .line 731
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([C)V

    .line 732
    .local v4, "newFilename":Ljava/lang/String;
    const/4 v5, 0x1

    invoke-virtual {p0, v5, v4}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 733
    const-string/jumbo v5, "BtOppObexClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Sending file \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\" as \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 734
    const-string/jumbo v7, "\" to workaround Poloroid filename quirk"

    .line 733
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    .end local v0    # "c":[C
    .end local v1    # "firstDot":Z
    .end local v2    # "i":I
    .end local v3    # "modified":Z
    .end local v4    # "newFilename":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private static readFully(Ljava/io/InputStream;[BI)I
    .locals 3
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "buffer"    # [B
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    const/4 v0, 0x0

    .line 119
    .local v0, "done":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 120
    sub-int v2, p2, v0

    invoke-virtual {p0, p1, v0, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 121
    .local v1, "got":I
    if-gtz v1, :cond_1

    .line 124
    .end local v1    # "got":I
    :cond_0
    return v0

    .line 122
    .restart local v1    # "got":I
    :cond_1
    add-int/2addr v0, v1

    goto :goto_0
.end method


# virtual methods
.method public addShare(Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V
    .locals 1
    .param p1, "share"    # Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mThread:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->addShare(Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V

    .line 113
    return-void
.end method

.method public start(Landroid/os/Handler;I)V
    .locals 3
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "numShares"    # I

    .prologue
    .line 91
    const-string/jumbo v0, "BtOppObexClient"

    const-string/jumbo v1, "Start!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mCallback:Landroid/os/Handler;

    .line 93
    new-instance v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mTransport:Ljavax/obex/ObexTransport;

    invoke-direct {v0, p0, v1, v2, p2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;-><init>(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Landroid/content/Context;Ljavax/obex/ObexTransport;I)V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mThread:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;

    .line 94
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mThread:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;

    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->start()V

    .line 90
    return-void
.end method

.method public stop()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 98
    const-string/jumbo v1, "BtOppObexClient"

    const-string/jumbo v2, "Stop!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mThread:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;

    if-eqz v1, :cond_1

    .line 100
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mInterrupted:Z

    .line 102
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mThread:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;

    invoke-virtual {v1}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->interrupt()V

    .line 103
    sget-boolean v1, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->V:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "BtOppObexClient"

    const-string/jumbo v2, "waiting for thread to terminate"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mThread:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;

    invoke-virtual {v1}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->join()V

    .line 105
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mThread:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :cond_1
    :goto_0
    iput-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mCallback:Landroid/os/Handler;

    .line 97
    return-void

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/InterruptedException;
    sget-boolean v1, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->V:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "BtOppObexClient"

    const-string/jumbo v2, "Interrupted waiting for thread to join"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unblock()V
    .locals 0

    .prologue
    .line 739
    return-void
.end method
