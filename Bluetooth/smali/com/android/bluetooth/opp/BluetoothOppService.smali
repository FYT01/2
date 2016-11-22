.class public Lcom/android/bluetooth/opp/BluetoothOppService;
.super Landroid/app/Service;
.source "BluetoothOppService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/opp/BluetoothOppService$BluetoothShareContentObserver;,
        Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;,
        Lcom/android/bluetooth/opp/BluetoothOppService$MediaScannerNotifier;,
        Lcom/android/bluetooth/opp/BluetoothOppService$1;,
        Lcom/android/bluetooth/opp/BluetoothOppService$2;
    }
.end annotation


# static fields
.field private static final D:Z = true

.field private static final MEDIA_SCANNED:I = 0x2

.field private static final MEDIA_SCANNED_FAILED:I = 0x3

.field private static final MSG_INCOMING_CONNECTION_RETRY:I = 0x4

.field private static final START_LISTENER:I = 0x1

.field private static final STOP_LISTENER:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "BtOppService"

.field private static V:Z


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBatchId:I

.field private mBatchs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/bluetooth/opp/BluetoothOppBatch;",
            ">;"
        }
    .end annotation
.end field

.field private final mBluetoothReceiver:Landroid/content/BroadcastReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mIncomingRetries:I

.field private mL2cSocketListener:Lcom/android/bluetooth/opp/BluetoothOppL2capListener;

.field private mListenStarted:Z

.field private mMediaScanInProgress:Z

.field private mNewChars:Landroid/database/CharArrayBuffer;

.field private mNotifier:Lcom/android/bluetooth/opp/BluetoothOppNotification;

.field private mObserver:Lcom/android/bluetooth/opp/BluetoothOppService$BluetoothShareContentObserver;

.field private mOldChars:Landroid/database/CharArrayBuffer;

.field private mOppSdpHandle:I

.field private mPendingConnection:Ljavax/obex/ObexTransport;

.field private mPendingUpdate:Z

.field private mPowerManager:Landroid/os/PowerManager;

.field private mServerSession:Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;

.field private mServerTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

.field private mShares:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/bluetooth/opp/BluetoothOppShareInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSocketListener:Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;

.field private mTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

.field private mUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;

.field private userAccepted:Z


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppService;->V:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/bluetooth/opp/BluetoothOppService;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/bluetooth/opp/BluetoothOppService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mPendingUpdate:Z

    return v0
.end method

.method static synthetic -get11(Lcom/android/bluetooth/opp/BluetoothOppService;)Landroid/os/PowerManager;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/bluetooth/opp/BluetoothOppService;)Lcom/android/bluetooth/opp/BluetoothOppTransfer;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mServerTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/bluetooth/opp/BluetoothOppService;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mShares:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/bluetooth/opp/BluetoothOppService;)Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mSocketListener:Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/bluetooth/opp/BluetoothOppService;)Lcom/android/bluetooth/opp/BluetoothOppTransfer;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/bluetooth/opp/BluetoothOppService;)Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;

    return-object v0
.end method

.method static synthetic -get17(Lcom/android/bluetooth/opp/BluetoothOppService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->userAccepted:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/bluetooth/opp/BluetoothOppService;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBatchs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/bluetooth/opp/BluetoothOppService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/bluetooth/opp/BluetoothOppService;)I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mIncomingRetries:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/bluetooth/opp/BluetoothOppService;)Lcom/android/bluetooth/opp/BluetoothOppL2capListener;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mL2cSocketListener:Lcom/android/bluetooth/opp/BluetoothOppL2capListener;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/bluetooth/opp/BluetoothOppService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mListenStarted:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/bluetooth/opp/BluetoothOppService;)Lcom/android/bluetooth/opp/BluetoothOppNotification;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mNotifier:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/bluetooth/opp/BluetoothOppService;)I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mOppSdpHandle:I

    return v0
.end method

.method static synthetic -get9(Lcom/android/bluetooth/opp/BluetoothOppService;)Ljavax/obex/ObexTransport;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mPendingConnection:Ljavax/obex/ObexTransport;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/bluetooth/opp/BluetoothOppService;I)I
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mIncomingRetries:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/bluetooth/opp/BluetoothOppService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mListenStarted:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/bluetooth/opp/BluetoothOppService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mMediaScanInProgress:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/bluetooth/opp/BluetoothOppService;I)I
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mOppSdpHandle:I

    return p1
.end method

.method static synthetic -set4(Lcom/android/bluetooth/opp/BluetoothOppService;Ljavax/obex/ObexTransport;)Ljavax/obex/ObexTransport;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mPendingConnection:Ljavax/obex/ObexTransport;

    return-object p1
.end method

.method static synthetic -set5(Lcom/android/bluetooth/opp/BluetoothOppService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mPendingUpdate:Z

    return p1
.end method

.method static synthetic -set6(Lcom/android/bluetooth/opp/BluetoothOppService;Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppTransfer;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mServerTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    return-object p1
.end method

.method static synthetic -set7(Lcom/android/bluetooth/opp/BluetoothOppService;Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppTransfer;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    return-object p1
.end method

.method static synthetic -set8(Lcom/android/bluetooth/opp/BluetoothOppService;Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;)Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/bluetooth/opp/BluetoothOppService;I)Z
    .locals 1
    .param p1, "arrayPos"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/opp/BluetoothOppService;->needAction(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/bluetooth/opp/BluetoothOppService;Landroid/database/Cursor;I)Z
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "arrayPos"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/opp/BluetoothOppService;->scanFile(Landroid/database/Cursor;I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/bluetooth/opp/BluetoothOppService;Landroid/database/Cursor;IZ)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "arrayPos"    # I
    .param p3, "userAccepted"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/opp/BluetoothOppService;->updateShare(Landroid/database/Cursor;IZ)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/bluetooth/opp/BluetoothOppService;I)Z
    .locals 1
    .param p1, "arrayPos"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/opp/BluetoothOppService;->shouldScanFile(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/bluetooth/opp/BluetoothOppService;I)Z
    .locals 1
    .param p1, "arrayPos"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/opp/BluetoothOppService;->visibleNotification(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/android/bluetooth/opp/BluetoothOppService;Ljavax/obex/ObexTransport;)V
    .locals 0
    .param p1, "transport"    # Ljavax/obex/ObexTransport;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/opp/BluetoothOppService;->createServerSession(Ljavax/obex/ObexTransport;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/bluetooth/opp/BluetoothOppService;I)V
    .locals 0
    .param p1, "arrayPos"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/opp/BluetoothOppService;->deleteShare(I)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/bluetooth/opp/BluetoothOppService;Landroid/database/Cursor;I)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "arrayPos"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/opp/BluetoothOppService;->insertShare(Landroid/database/Cursor;I)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/bluetooth/opp/BluetoothOppService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppService;->startSocketListener()V

    return-void
.end method

.method static synthetic -wrap8(Landroid/content/ContentResolver;)V
    .locals 0
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    invoke-static {p0}, Lcom/android/bluetooth/opp/BluetoothOppService;->trimDatabase(Landroid/content/ContentResolver;)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/bluetooth/opp/BluetoothOppService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppService;->updateFromProvider()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 78
    const-string/jumbo v0, "BluetoothOpp"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppService;->V:Z

    .line 76
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 76
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 80
    iput-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->userAccepted:Z

    .line 135
    iput-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mListenStarted:Z

    .line 139
    iput v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mIncomingRetries:I

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mPendingConnection:Ljavax/obex/ObexTransport;

    .line 142
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mOppSdpHandle:I

    .line 231
    new-instance v0, Lcom/android/bluetooth/opp/BluetoothOppService$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/opp/BluetoothOppService$1;-><init>(Lcom/android/bluetooth/opp/BluetoothOppService;)V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mHandler:Landroid/os/Handler;

    .line 408
    new-instance v0, Lcom/android/bluetooth/opp/BluetoothOppService$2;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/opp/BluetoothOppService$2;-><init>(Lcom/android/bluetooth/opp/BluetoothOppService;)V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    .line 76
    return-void
.end method

.method private createServerSession(Ljavax/obex/ObexTransport;)V
    .locals 3
    .param p1, "transport"    # Ljavax/obex/ObexTransport;

    .prologue
    .line 402
    new-instance v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;

    invoke-direct {v0, p0, p1}, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;-><init>(Landroid/content/Context;Ljavax/obex/ObexTransport;)V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mServerSession:Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;

    .line 403
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mServerSession:Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;

    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->preStart()V

    .line 404
    const-string/jumbo v0, "BtOppService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Get ServerSession "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mServerSession:Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;

    invoke-virtual {v2}, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 405
    const-string/jumbo v2, " for incoming connection"

    .line 404
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 405
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 404
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    return-void
.end method

.method private deleteShare(I)V
    .locals 6
    .param p1, "arrayPos"    # I

    .prologue
    .line 845
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mShares:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .line 853
    .local v2, "info":Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    iget-wide v4, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mTimestamp:J

    invoke-direct {p0, v4, v5}, Lcom/android/bluetooth/opp/BluetoothOppService;->findBatchWithTimeStamp(J)I

    move-result v1

    .line 854
    .local v1, "i":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_3

    .line 855
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBatchs:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;

    .line 856
    .local v0, "batch":Lcom/android/bluetooth/opp/BluetoothOppBatch;
    invoke-virtual {v0, v2}, Lcom/android/bluetooth/opp/BluetoothOppBatch;->hasShare(Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 857
    sget-boolean v3, Lcom/android/bluetooth/opp/BluetoothOppService;->V:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "BtOppService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Service cancel batch for share "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothOppBatch;->cancelBatch()V

    .line 860
    :cond_1
    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothOppBatch;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 861
    sget-boolean v3, Lcom/android/bluetooth/opp/BluetoothOppService;->V:Z

    if-eqz v3, :cond_2

    const-string/jumbo v3, "BtOppService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Service remove batch  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/bluetooth/opp/BluetoothOppService;->removeBatch(Lcom/android/bluetooth/opp/BluetoothOppBatch;)V

    .line 865
    .end local v0    # "batch":Lcom/android/bluetooth/opp/BluetoothOppBatch;
    :cond_3
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mShares:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 844
    return-void
.end method

.method private findBatchWithTimeStamp(J)I
    .locals 5
    .param p1, "timestamp"    # J

    .prologue
    .line 896
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBatchs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 897
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBatchs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/opp/BluetoothOppBatch;

    iget-wide v2, v1, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mTimestamp:J

    cmp-long v1, v2, p1

    if-nez v1, :cond_0

    .line 898
    return v0

    .line 896
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 901
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method private insertShare(Landroid/database/Cursor;I)V
    .locals 24
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "arrayPos"    # I

    .prologue
    .line 620
    const-string/jumbo v4, "uri"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 622
    .local v23, "uriString":Ljava/lang/String;
    if-eqz v23, :cond_3

    .line 623
    invoke-static/range {v23 .. v23}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 624
    .local v5, "uri":Landroid/net/Uri;
    const-string/jumbo v4, "BtOppService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "insertShare parsed URI: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    .end local v5    # "uri":Landroid/net/Uri;
    :goto_0
    new-instance v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .line 630
    const-string/jumbo v4, "_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 632
    const-string/jumbo v6, "hint"

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 633
    const-string/jumbo v7, "_data"

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 634
    const-string/jumbo v8, "mimetype"

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 635
    const-string/jumbo v9, "direction"

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 636
    const-string/jumbo v10, "destination"

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 637
    const-string/jumbo v11, "visibility"

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 638
    const-string/jumbo v12, "confirm"

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 639
    const-string/jumbo v13, "status"

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 640
    const-string/jumbo v14, "total_bytes"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 641
    const-string/jumbo v16, "current_bytes"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 642
    const-string/jumbo v18, "timestamp"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 643
    const-string/jumbo v20, "scanned"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    if-eqz v20, :cond_4

    const/16 v20, 0x1

    .line 629
    :goto_1
    invoke-direct/range {v3 .. v20}, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;-><init>(ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIIJJJZ)V

    .line 645
    .local v3, "info":Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    sget-boolean v4, Lcom/android/bluetooth/opp/BluetoothOppService;->V:Z

    if-eqz v4, :cond_0

    .line 646
    const-string/jumbo v4, "BtOppService"

    const-string/jumbo v6, "Service adding new entry"

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    const-string/jumbo v4, "BtOppService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ID      : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    const-string/jumbo v4, "BtOppService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "URI     : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    const-string/jumbo v4, "BtOppService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "HINT    : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mHint:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    const-string/jumbo v4, "BtOppService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "FILENAME: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    const-string/jumbo v4, "BtOppService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "MIMETYPE: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mMimetype:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    const-string/jumbo v4, "BtOppService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "DIRECTION: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDirection:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    const-string/jumbo v4, "BtOppService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "DESTINAT: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDestination:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    const-string/jumbo v4, "BtOppService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "VISIBILI: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mVisibility:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    const-string/jumbo v4, "BtOppService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "CONFIRM : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mConfirm:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    const-string/jumbo v4, "BtOppService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "STATUS  : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    const-string/jumbo v4, "BtOppService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "TOTAL   : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mTotalBytes:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    const-string/jumbo v4, "BtOppService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "CURRENT : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mCurrentBytes:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    const-string/jumbo v4, "BtOppService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "TIMESTAMP : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mTimestamp:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    const-string/jumbo v4, "BtOppService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "SCANNED : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mMediaScanned:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppService;->mShares:Ljava/util/ArrayList;

    move/from16 v0, p2

    invoke-virtual {v4, v0, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 667
    invoke-virtual {v3}, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->isObsolete()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 668
    iget v4, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    const/16 v6, 0x1eb

    move-object/from16 v0, p0

    invoke-static {v0, v4, v6}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 680
    :cond_1
    invoke-virtual {v3}, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->isReadyToStart()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 681
    iget v4, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDirection:I

    if-nez v4, :cond_5

    .line 684
    iget-object v4, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Landroid/net/Uri;

    .line 683
    invoke-static {v4}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->getSendFileInfo(Landroid/net/Uri;)Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    move-result-object v22

    .line 685
    .local v22, "sendFileInfo":Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;
    if-eqz v22, :cond_2

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mInputStream:Ljava/io/FileInputStream;

    if-nez v4, :cond_5

    .line 686
    :cond_2
    const-string/jumbo v4, "BtOppService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Can\'t open file for OUTBOUND info "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    iget v4, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    const/16 v6, 0x190

    move-object/from16 v0, p0

    invoke-static {v0, v4, v6}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 688
    iget-object v4, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Landroid/net/Uri;

    invoke-static {v4}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->closeSendFileInfo(Landroid/net/Uri;)V

    .line 689
    return-void

    .line 626
    .end local v3    # "info":Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    .end local v22    # "sendFileInfo":Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;
    :cond_3
    const/4 v5, 0x0

    .line 627
    .local v5, "uri":Landroid/net/Uri;
    const-string/jumbo v4, "BtOppService"

    const-string/jumbo v6, "insertShare found null URI at cursor!"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 643
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_4
    const/16 v20, 0x0

    goto/16 :goto_1

    .line 692
    .restart local v3    # "info":Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBatchs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_e

    .line 693
    new-instance v21, Lcom/android/bluetooth/opp/BluetoothOppBatch;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3}, Lcom/android/bluetooth/opp/BluetoothOppBatch;-><init>(Landroid/content/Context;Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V

    .line 694
    .local v21, "newBatch":Lcom/android/bluetooth/opp/BluetoothOppBatch;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBatchId:I

    move-object/from16 v0, v21

    iput v4, v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mId:I

    .line 695
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBatchId:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBatchId:I

    .line 696
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBatchs:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 697
    iget v4, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDirection:I

    if-nez v4, :cond_a

    .line 698
    sget-boolean v4, Lcom/android/bluetooth/opp/BluetoothOppService;->V:Z

    if-eqz v4, :cond_6

    const-string/jumbo v4, "BtOppService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Service create new Batch "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v21

    iget v7, v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 699
    const-string/jumbo v7, " for OUTBOUND info "

    .line 698
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 699
    iget v7, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    .line 698
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    :cond_6
    new-instance v4, Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/opp/BluetoothOppService;->mPowerManager:Landroid/os/PowerManager;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v4, v0, v6, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;-><init>(Landroid/content/Context;Landroid/os/PowerManager;Lcom/android/bluetooth/opp/BluetoothOppBatch;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppService;->mTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    .line 708
    :cond_7
    :goto_2
    iget v4, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDirection:I

    if-nez v4, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppService;->mTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    if-eqz v4, :cond_c

    .line 709
    sget-boolean v4, Lcom/android/bluetooth/opp/BluetoothOppService;->V:Z

    if-eqz v4, :cond_8

    const-string/jumbo v4, "BtOppService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Service start transfer new Batch "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v21

    iget v7, v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 710
    const-string/jumbo v7, " for info "

    .line 709
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 710
    iget v7, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    .line 709
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppService;->mTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-virtual {v4}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->start()V

    .line 619
    .end local v21    # "newBatch":Lcom/android/bluetooth/opp/BluetoothOppBatch;
    :cond_9
    :goto_3
    return-void

    .line 701
    .restart local v21    # "newBatch":Lcom/android/bluetooth/opp/BluetoothOppBatch;
    :cond_a
    iget v4, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDirection:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_7

    .line 702
    sget-boolean v4, Lcom/android/bluetooth/opp/BluetoothOppService;->V:Z

    if-eqz v4, :cond_b

    const-string/jumbo v4, "BtOppService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Service create new Batch "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v21

    iget v7, v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 703
    const-string/jumbo v7, " for INBOUND info "

    .line 702
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 703
    iget v7, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    .line 702
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    :cond_b
    new-instance v4, Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/opp/BluetoothOppService;->mPowerManager:Landroid/os/PowerManager;

    .line 705
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/bluetooth/opp/BluetoothOppService;->mServerSession:Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;

    .line 704
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v4, v0, v6, v1, v7}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;-><init>(Landroid/content/Context;Landroid/os/PowerManager;Lcom/android/bluetooth/opp/BluetoothOppBatch;Lcom/android/bluetooth/opp/BluetoothOppObexSession;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppService;->mServerTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    goto/16 :goto_2

    .line 712
    :cond_c
    iget v4, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDirection:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_9

    .line 713
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppService;->mServerTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    if-eqz v4, :cond_9

    .line 714
    sget-boolean v4, Lcom/android/bluetooth/opp/BluetoothOppService;->V:Z

    if-eqz v4, :cond_d

    const-string/jumbo v4, "BtOppService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Service start server transfer new Batch "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v21

    iget v7, v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 715
    const-string/jumbo v7, " for info "

    .line 714
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 715
    iget v7, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    .line 714
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppService;->mServerTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-virtual {v4}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->start()V

    goto/16 :goto_3

    .line 720
    .end local v21    # "newBatch":Lcom/android/bluetooth/opp/BluetoothOppBatch;
    :cond_e
    iget-wide v6, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mTimestamp:J

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/android/bluetooth/opp/BluetoothOppService;->findBatchWithTimeStamp(J)I

    move-result v2

    .line 721
    .local v2, "i":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_10

    .line 722
    sget-boolean v4, Lcom/android/bluetooth/opp/BluetoothOppService;->V:Z

    if-eqz v4, :cond_f

    const-string/jumbo v6, "BtOppService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Service add info "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v7, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, " to existing batch "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 723
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBatchs:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/bluetooth/opp/BluetoothOppBatch;

    iget v4, v4, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mId:I

    .line 722
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBatchs:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/bluetooth/opp/BluetoothOppBatch;

    invoke-virtual {v4, v3}, Lcom/android/bluetooth/opp/BluetoothOppBatch;->addShare(Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V

    goto/16 :goto_3

    .line 727
    :cond_10
    new-instance v21, Lcom/android/bluetooth/opp/BluetoothOppBatch;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3}, Lcom/android/bluetooth/opp/BluetoothOppBatch;-><init>(Landroid/content/Context;Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V

    .line 728
    .restart local v21    # "newBatch":Lcom/android/bluetooth/opp/BluetoothOppBatch;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBatchId:I

    move-object/from16 v0, v21

    iput v4, v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mId:I

    .line 729
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBatchId:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBatchId:I

    .line 730
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBatchs:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 731
    sget-boolean v4, Lcom/android/bluetooth/opp/BluetoothOppService;->V:Z

    if-eqz v4, :cond_9

    const-string/jumbo v4, "BtOppService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Service add new Batch "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v21

    iget v7, v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " for info "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 732
    iget v7, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    .line 731
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method private needAction(I)Z
    .locals 2
    .param p1, "arrayPos"    # I

    .prologue
    .line 941
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mShares:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .line 942
    .local v0, "info":Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    iget v1, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    invoke-static {v1}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusCompleted(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 943
    const/4 v1, 0x0

    return v1

    .line 945
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private removeBatch(Lcom/android/bluetooth/opp/BluetoothOppBatch;)V
    .locals 6
    .param p1, "batch"    # Lcom/android/bluetooth/opp/BluetoothOppBatch;

    .prologue
    const/4 v5, 0x1

    .line 905
    sget-boolean v2, Lcom/android/bluetooth/opp/BluetoothOppService;->V:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "BtOppService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Remove batch "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBatchs:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 908
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBatchs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 909
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBatchs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_7

    .line 911
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBatchs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/opp/BluetoothOppBatch;

    .line 912
    .local v1, "nextBatch":Lcom/android/bluetooth/opp/BluetoothOppBatch;
    iget v2, v1, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mStatus:I

    if-ne v2, v5, :cond_1

    .line 913
    return-void

    .line 916
    :cond_1
    iget v2, v1, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDirection:I

    if-nez v2, :cond_3

    .line 917
    sget-boolean v2, Lcom/android/bluetooth/opp/BluetoothOppService;->V:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "BtOppService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Start pending outbound batch "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    :cond_2
    new-instance v2, Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mPowerManager:Landroid/os/PowerManager;

    invoke-direct {v2, p0, v3, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;-><init>(Landroid/content/Context;Landroid/os/PowerManager;Lcom/android/bluetooth/opp/BluetoothOppBatch;)V

    iput-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    .line 919
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-virtual {v2}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->start()V

    .line 920
    return-void

    .line 921
    :cond_3
    iget v2, v1, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDirection:I

    if-ne v2, v5, :cond_6

    .line 922
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mServerSession:Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;

    if-eqz v2, :cond_6

    .line 925
    sget-boolean v2, Lcom/android/bluetooth/opp/BluetoothOppService;->V:Z

    if-eqz v2, :cond_4

    const-string/jumbo v2, "BtOppService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Start pending inbound batch "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    :cond_4
    new-instance v2, Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mPowerManager:Landroid/os/PowerManager;

    .line 927
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mServerSession:Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;

    .line 926
    invoke-direct {v2, p0, v3, v1, v4}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;-><init>(Landroid/content/Context;Landroid/os/PowerManager;Lcom/android/bluetooth/opp/BluetoothOppBatch;Lcom/android/bluetooth/opp/BluetoothOppObexSession;)V

    iput-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mServerTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    .line 928
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mServerTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-virtual {v2}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->start()V

    .line 929
    invoke-virtual {v1}, Lcom/android/bluetooth/opp/BluetoothOppBatch;->getPendingShare()Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object v2

    iget v2, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mConfirm:I

    if-ne v2, v5, :cond_5

    .line 931
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mServerTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-virtual {v2}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->confirmStatusChanged()V

    .line 933
    :cond_5
    return-void

    .line 909
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 904
    .end local v0    # "i":I
    .end local v1    # "nextBatch":Lcom/android/bluetooth/opp/BluetoothOppBatch;
    :cond_7
    return-void
.end method

.method private scanFile(Landroid/database/Cursor;I)Z
    .locals 5
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "arrayPos"    # I

    .prologue
    const/4 v4, 0x1

    .line 954
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mShares:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .line 955
    .local v0, "info":Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    monitor-enter p0

    .line 956
    :try_start_0
    const-string/jumbo v1, "BtOppService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Scanning file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    iget-boolean v1, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mMediaScanInProgress:Z

    if-nez v1, :cond_0

    .line 958
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mMediaScanInProgress:Z

    .line 959
    new-instance v1, Lcom/android/bluetooth/opp/BluetoothOppService$MediaScannerNotifier;

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v0, v2}, Lcom/android/bluetooth/opp/BluetoothOppService$MediaScannerNotifier;-><init>(Landroid/content/Context;Lcom/android/bluetooth/opp/BluetoothOppShareInfo;Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 960
    return v4

    .line 962
    :cond_0
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 955
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private shouldScanFile(I)Z
    .locals 5
    .param p1, "arrayPos"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 968
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mShares:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .line 969
    .local v0, "info":Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    iget v3, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    invoke-static {v3}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusSuccess(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 970
    iget v3, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDirection:I

    if-ne v3, v1, :cond_0

    iget-boolean v3, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mMediaScanned:Z

    if-eqz v3, :cond_2

    :cond_0
    move v1, v2

    .line 969
    :cond_1
    :goto_0
    return v1

    .line 971
    :cond_2
    iget v3, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mConfirm:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_1

    move v1, v2

    goto :goto_0
.end method

.method private startListener()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 209
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppService;->V:Z

    if-nez v0, :cond_0

    .line 210
    const-string/jumbo v0, "BluetoothOpp"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppService;->V:Z

    .line 211
    :cond_0
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppService;->V:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "BtOppService"

    const-string/jumbo v1, "startListener"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_1
    iget-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mListenStarted:Z

    if-nez v0, :cond_3

    .line 213
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 214
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppService;->V:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "BtOppService"

    const-string/jumbo v1, "Starting RfcommListener"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 216
    iput-boolean v2, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mListenStarted:Z

    .line 208
    :cond_3
    return-void
.end method

.method private startSocketListener()V
    .locals 6

    .prologue
    .line 363
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppService;->V:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BtOppService"

    const-string/jumbo v1, "start Socket Listeners"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mSocketListener:Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mL2cSocketListener:Lcom/android/bluetooth/opp/BluetoothOppL2capListener;

    if-eqz v0, :cond_1

    .line 365
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mSocketListener:Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;

    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->openRfcommSocket()Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 366
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mL2cSocketListener:Lcom/android/bluetooth/opp/BluetoothOppL2capListener;

    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothOppL2capListener;->openL2capSocket()Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 367
    invoke-static {}, Lcom/android/bluetooth/sdp/SdpManager;->getDefaultManager()Lcom/android/bluetooth/sdp/SdpManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 368
    invoke-static {}, Lcom/android/bluetooth/sdp/SdpManager;->getDefaultManager()Lcom/android/bluetooth/sdp/SdpManager;

    move-result-object v0

    .line 369
    const-string/jumbo v1, "OBEX Object Push"

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mSocketListener:Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;

    invoke-virtual {v2}, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->getRfcommChannel()I

    move-result v2

    .line 370
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mL2cSocketListener:Lcom/android/bluetooth/opp/BluetoothOppL2capListener;

    invoke-virtual {v3}, Lcom/android/bluetooth/opp/BluetoothOppL2capListener;->getL2capPsm()I

    move-result v3

    sget-object v5, Lcom/android/bluetooth/sdp/SdpManager;->OPP_FORMAT_ALL:[B

    const/16 v4, 0x102

    .line 368
    invoke-virtual/range {v0 .. v5}, Lcom/android/bluetooth/sdp/SdpManager;->createOppOpsRecord(Ljava/lang/String;III[B)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mOppSdpHandle:I

    .line 371
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mSocketListener:Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->start(Landroid/os/Handler;)Z

    .line 372
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mL2cSocketListener:Lcom/android/bluetooth/opp/BluetoothOppL2capListener;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/opp/BluetoothOppL2capListener;->start(Landroid/os/Handler;)Z

    .line 361
    :cond_1
    :goto_0
    return-void

    .line 374
    :cond_2
    const-string/jumbo v0, "BtOppService"

    const-string/jumbo v1, "ERROR:serversocket object is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private stringFromCursor(Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "old"    # Ljava/lang/String;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "column"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 869
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 870
    .local v1, "index":I
    if-nez p1, :cond_0

    .line 871
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 873
    :cond_0
    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mNewChars:Landroid/database/CharArrayBuffer;

    if-nez v5, :cond_1

    .line 874
    new-instance v5, Landroid/database/CharArrayBuffer;

    const/16 v6, 0x80

    invoke-direct {v5, v6}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mNewChars:Landroid/database/CharArrayBuffer;

    .line 876
    :cond_1
    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mNewChars:Landroid/database/CharArrayBuffer;

    invoke-interface {p2, v1, v5}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 877
    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mNewChars:Landroid/database/CharArrayBuffer;

    iget v2, v5, Landroid/database/CharArrayBuffer;->sizeCopied:I

    .line 878
    .local v2, "length":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v2, v5, :cond_2

    .line 879
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 881
    :cond_2
    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mOldChars:Landroid/database/CharArrayBuffer;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mOldChars:Landroid/database/CharArrayBuffer;

    iget v5, v5, Landroid/database/CharArrayBuffer;->sizeCopied:I

    if-ge v5, v2, :cond_4

    .line 882
    :cond_3
    new-instance v5, Landroid/database/CharArrayBuffer;

    invoke-direct {v5, v2}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mOldChars:Landroid/database/CharArrayBuffer;

    .line 884
    :cond_4
    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mOldChars:Landroid/database/CharArrayBuffer;

    iget-object v4, v5, Landroid/database/CharArrayBuffer;->data:[C

    .line 885
    .local v4, "oldArray":[C
    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mNewChars:Landroid/database/CharArrayBuffer;

    iget-object v3, v5, Landroid/database/CharArrayBuffer;->data:[C

    .line 886
    .local v3, "newArray":[C
    invoke-virtual {p1, v7, v2, v4, v7}, Ljava/lang/String;->getChars(II[CI)V

    .line 887
    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_6

    .line 888
    aget-char v5, v4, v0

    aget-char v6, v3, v0

    if-eq v5, v6, :cond_5

    .line 889
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3, v7, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v5

    .line 887
    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 892
    :cond_6
    return-object p1
.end method

.method private static trimDatabase(Landroid/content/ContentResolver;)V
    .locals 24
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 976
    const-string/jumbo v8, "visibility=1"

    .line 980
    .local v8, "INVISIBLE":Ljava/lang/String;
    const-string/jumbo v13, "direction=0 AND status>=200 AND visibility=1"

    .line 983
    .local v13, "WHERE_INVISIBLE_COMPLETE_OUTBOUND":Ljava/lang/String;
    sget-object v2, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    .line 984
    const-string/jumbo v3, "direction=0 AND status>=200 AND visibility=1"

    const/4 v4, 0x0

    .line 983
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v17

    .line 985
    .local v17, "delNum":I
    sget-boolean v2, Lcom/android/bluetooth/opp/BluetoothOppService;->V:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "BtOppService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Deleted complete outbound shares, number =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    :cond_0
    const-string/jumbo v12, "direction=1 AND status>200 AND visibility=1"

    .line 991
    .local v12, "WHERE_INVISIBLE_COMPLETE_INBOUND_FAILED":Ljava/lang/String;
    sget-object v2, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    .line 992
    const-string/jumbo v3, "direction=1 AND status>200 AND visibility=1"

    const/4 v4, 0x0

    .line 991
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v17

    .line 993
    sget-boolean v2, Lcom/android/bluetooth/opp/BluetoothOppService;->V:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "BtOppService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Deleted complete inbound failed shares, number = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    :cond_1
    const-string/jumbo v10, "direction=1 AND status=192"

    .line 999
    .local v10, "WHERE_INBOUND_INTERRUPTED_ON_POWER_OFF":Ljava/lang/String;
    sget-object v3, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    .line 1000
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const-string/jumbo v2, "_data"

    const/4 v5, 0x0

    aput-object v2, v4, v5

    .line 1001
    const-string/jumbo v5, "direction=1 AND status=192"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    .line 999
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 1005
    .local v16, "cursorToFile":Landroid/database/Cursor;
    if-eqz v16, :cond_3

    .line 1006
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1007
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 1008
    .local v18, "fileName":Ljava/lang/String;
    const-string/jumbo v2, "BtOppService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "File to be deleted: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    new-instance v19, Ljava/io/File;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1010
    .local v19, "fileToDelete":Ljava/io/File;
    if-eqz v19, :cond_2

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->delete()Z

    .line 1011
    :cond_2
    sget-object v2, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    .line 1012
    const-string/jumbo v3, "direction=1 AND status=192"

    const/4 v4, 0x0

    .line 1011
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v17

    .line 1013
    sget-boolean v2, Lcom/android/bluetooth/opp/BluetoothOppService;->V:Z

    if-eqz v2, :cond_3

    const-string/jumbo v2, "BtOppService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Delete aborted inbound share, number = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    .end local v18    # "fileName":Ljava/lang/String;
    .end local v19    # "fileToDelete":Ljava/io/File;
    :cond_3
    const-string/jumbo v9, "direction=1 AND confirm=0"

    .line 1021
    .local v9, "WHERE_CONFIRMATION_PENDING_INBOUND":Ljava/lang/String;
    sget-object v2, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    .line 1022
    const-string/jumbo v3, "direction=1 AND confirm=0"

    const/4 v4, 0x0

    .line 1021
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v17

    .line 1023
    sget-boolean v2, Lcom/android/bluetooth/opp/BluetoothOppService;->V:Z

    if-eqz v2, :cond_4

    const-string/jumbo v2, "BtOppService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Deleted unconfirmed incoming shares, number = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    :cond_4
    const-string/jumbo v11, "direction=1 AND status=200 AND visibility=1"

    .line 1030
    .local v11, "WHERE_INBOUND_SUCCESS":Ljava/lang/String;
    sget-object v3, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    .line 1031
    const-string/jumbo v2, "_id"

    const/4 v5, 0x0

    aput-object v2, v4, v5

    .line 1032
    const-string/jumbo v5, "direction=1 AND status=200 AND visibility=1"

    const-string/jumbo v7, "_id"

    const/4 v6, 0x0

    move-object/from16 v2, p0

    .line 1030
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 1034
    .local v15, "cursor":Landroid/database/Cursor;
    if-nez v15, :cond_5

    .line 1035
    return-void

    .line 1038
    :cond_5
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v23

    .line 1039
    .local v23, "recordNum":I
    const/16 v2, 0x3e8

    move/from16 v0, v23

    if-le v0, v2, :cond_6

    .line 1040
    move/from16 v0, v23

    add-int/lit16 v0, v0, -0x3e8

    move/from16 v22, v0

    .line 1042
    .local v22, "numToDelete":I
    move/from16 v0, v22

    invoke-interface {v15, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1043
    const-string/jumbo v2, "_id"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 1044
    .local v14, "columnId":I
    invoke-interface {v15, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 1045
    .local v20, "id":J
    sget-object v2, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    .line 1046
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "_id < "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v20

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 1045
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v17

    .line 1047
    sget-boolean v2, Lcom/android/bluetooth/opp/BluetoothOppService;->V:Z

    if-eqz v2, :cond_6

    const-string/jumbo v2, "BtOppService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Deleted old inbound success share: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    .end local v14    # "columnId":I
    .end local v20    # "id":J
    .end local v22    # "numToDelete":I
    :cond_6
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 1051
    const/4 v15, 0x0

    .line 975
    .local v15, "cursor":Landroid/database/Cursor;
    return-void
.end method

.method private updateFromProvider()V
    .locals 2

    .prologue
    .line 441
    monitor-enter p0

    .line 442
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mPendingUpdate:Z

    .line 443
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_1

    .line 444
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    .line 443
    if-eqz v0, :cond_1

    .line 445
    const-string/jumbo v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/opp/BluetoothOppService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mPowerManager:Landroid/os/PowerManager;

    .line 446
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppService;->V:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BtOppService"

    const-string/jumbo v1, "Starting a new thread"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    :cond_0
    new-instance v0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;-><init>(Lcom/android/bluetooth/opp/BluetoothOppService;)V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;

    .line 448
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;

    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    .line 440
    return-void

    .line 441
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private updateShare(Landroid/database/Cursor;IZ)V
    .locals 11
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "arrayPos"    # I
    .param p3, "userAccepted"    # Z

    .prologue
    .line 749
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mShares:Ljava/util/ArrayList;

    invoke-virtual {v8, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .line 750
    .local v3, "info":Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    const-string/jumbo v8, "status"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 752
    .local v7, "statusColumn":I
    const-string/jumbo v8, "_id"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    .line 753
    iget-object v8, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Landroid/net/Uri;

    if-eqz v8, :cond_9

    .line 754
    iget-object v8, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    .line 755
    const-string/jumbo v9, "uri"

    .line 754
    invoke-direct {p0, v8, p1, v9}, Lcom/android/bluetooth/opp/BluetoothOppService;->stringFromCursor(Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iput-object v8, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Landroid/net/Uri;

    .line 759
    :goto_0
    iget-object v8, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mHint:Ljava/lang/String;

    const-string/jumbo v9, "hint"

    invoke-direct {p0, v8, p1, v9}, Lcom/android/bluetooth/opp/BluetoothOppService;->stringFromCursor(Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mHint:Ljava/lang/String;

    .line 760
    iget-object v8, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    const-string/jumbo v9, "_data"

    invoke-direct {p0, v8, p1, v9}, Lcom/android/bluetooth/opp/BluetoothOppService;->stringFromCursor(Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    .line 761
    iget-object v8, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mMimetype:Ljava/lang/String;

    const-string/jumbo v9, "mimetype"

    invoke-direct {p0, v8, p1, v9}, Lcom/android/bluetooth/opp/BluetoothOppService;->stringFromCursor(Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mMimetype:Ljava/lang/String;

    .line 762
    const-string/jumbo v8, "direction"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDirection:I

    .line 763
    iget-object v8, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDestination:Ljava/lang/String;

    const-string/jumbo v9, "destination"

    invoke-direct {p0, v8, p1, v9}, Lcom/android/bluetooth/opp/BluetoothOppService;->stringFromCursor(Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDestination:Ljava/lang/String;

    .line 764
    const-string/jumbo v8, "visibility"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 766
    .local v6, "newVisibility":I
    const/4 v1, 0x0

    .line 768
    .local v1, "confirmUpdated":Z
    const-string/jumbo v8, "confirm"

    .line 767
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 770
    .local v4, "newConfirm":I
    iget v8, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mVisibility:I

    if-nez v8, :cond_1

    .line 771
    if-eqz v6, :cond_1

    .line 772
    iget v8, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    invoke-static {v8}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusCompleted(I)Z

    move-result v8

    if-nez v8, :cond_0

    if-nez v4, :cond_1

    .line 773
    :cond_0
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mNotifier:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    iget-object v8, v8, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    iget v9, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v8, v9}, Landroid/app/NotificationManager;->cancel(I)V

    .line 776
    :cond_1
    iput v6, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mVisibility:I

    .line 778
    iget v8, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mConfirm:I

    if-nez v8, :cond_2

    .line 779
    if-eqz v4, :cond_2

    .line 780
    const/4 v1, 0x1

    .line 783
    :cond_2
    const-string/jumbo v8, "confirm"

    .line 782
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mConfirm:I

    .line 784
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 785
    .local v5, "newStatus":I
    iget v8, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    invoke-static {v8}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusCompleted(I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 786
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mNotifier:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    iget-object v8, v8, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    iget v9, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v8, v9}, Landroid/app/NotificationManager;->cancel(I)V

    .line 789
    :cond_3
    iput v5, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    .line 790
    const-string/jumbo v8, "total_bytes"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mTotalBytes:J

    .line 792
    const-string/jumbo v8, "current_bytes"

    .line 791
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mCurrentBytes:J

    .line 793
    const-string/jumbo v8, "timestamp"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mTimestamp:J

    .line 794
    const-string/jumbo v8, "scanned"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-eqz v8, :cond_a

    const/4 v8, 0x1

    :goto_1
    iput-boolean v8, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mMediaScanned:Z

    .line 796
    if-eqz v1, :cond_5

    .line 797
    sget-boolean v8, Lcom/android/bluetooth/opp/BluetoothOppService;->V:Z

    if-eqz v8, :cond_4

    const-string/jumbo v8, "BtOppService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Service handle info "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " confirmation updated"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    :cond_4
    iget-wide v8, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mTimestamp:J

    invoke-direct {p0, v8, v9}, Lcom/android/bluetooth/opp/BluetoothOppService;->findBatchWithTimeStamp(J)I

    move-result v2

    .line 800
    .local v2, "i":I
    const/4 v8, -0x1

    if-eq v2, v8, :cond_5

    .line 801
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBatchs:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;

    .line 802
    .local v0, "batch":Lcom/android/bluetooth/opp/BluetoothOppBatch;
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mServerTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    if-eqz v8, :cond_5

    iget v8, v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mId:I

    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mServerTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-virtual {v9}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->getBatchId()I

    move-result v9

    if-ne v8, v9, :cond_5

    .line 803
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mServerTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-virtual {v8}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->confirmStatusChanged()V

    .line 807
    .end local v0    # "batch":Lcom/android/bluetooth/opp/BluetoothOppBatch;
    .end local v2    # "i":I
    :cond_5
    iget-wide v8, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mTimestamp:J

    invoke-direct {p0, v8, v9}, Lcom/android/bluetooth/opp/BluetoothOppService;->findBatchWithTimeStamp(J)I

    move-result v2

    .line 808
    .restart local v2    # "i":I
    const/4 v8, -0x1

    if-eq v2, v8, :cond_8

    .line 809
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBatchs:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;

    .line 810
    .restart local v0    # "batch":Lcom/android/bluetooth/opp/BluetoothOppBatch;
    iget v8, v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mStatus:I

    const/4 v9, 0x2

    if-eq v8, v9, :cond_6

    .line 811
    iget v8, v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mStatus:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_8

    .line 812
    :cond_6
    sget-boolean v8, Lcom/android/bluetooth/opp/BluetoothOppService;->V:Z

    if-eqz v8, :cond_7

    const-string/jumbo v8, "BtOppService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Batch "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " is finished"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    :cond_7
    iget v8, v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDirection:I

    if-nez v8, :cond_d

    .line 814
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    if-nez v8, :cond_b

    .line 815
    const-string/jumbo v8, "BtOppService"

    const-string/jumbo v9, "Unexpected error! mTransfer is null"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    :goto_2
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    .line 836
    :goto_3
    invoke-direct {p0, v0}, Lcom/android/bluetooth/opp/BluetoothOppService;->removeBatch(Lcom/android/bluetooth/opp/BluetoothOppBatch;)V

    .line 748
    .end local v0    # "batch":Lcom/android/bluetooth/opp/BluetoothOppBatch;
    :cond_8
    return-void

    .line 757
    .end local v1    # "confirmUpdated":Z
    .end local v2    # "i":I
    .end local v4    # "newConfirm":I
    .end local v5    # "newStatus":I
    .end local v6    # "newVisibility":I
    :cond_9
    const-string/jumbo v8, "BtOppService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateShare() called for ID "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " with null URI"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 794
    .restart local v1    # "confirmUpdated":Z
    .restart local v4    # "newConfirm":I
    .restart local v5    # "newStatus":I
    .restart local v6    # "newVisibility":I
    :cond_a
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 816
    .restart local v0    # "batch":Lcom/android/bluetooth/opp/BluetoothOppBatch;
    .restart local v2    # "i":I
    :cond_b
    iget v8, v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mId:I

    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-virtual {v9}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->getBatchId()I

    move-result v9

    if-ne v8, v9, :cond_c

    .line 817
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-virtual {v8}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->stop()V

    goto :goto_2

    .line 819
    :cond_c
    const-string/jumbo v8, "BtOppService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unexpected error! batch id "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 820
    const-string/jumbo v10, " doesn\'t match mTransfer id "

    .line 819
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 820
    iget-object v10, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-virtual {v10}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->getBatchId()I

    move-result v10

    .line 819
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 824
    :cond_d
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mServerTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    if-nez v8, :cond_e

    .line 825
    const-string/jumbo v8, "BtOppService"

    const-string/jumbo v9, "Unexpected error! mServerTransfer is null"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    :goto_4
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mServerTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    goto :goto_3

    .line 826
    :cond_e
    iget v8, v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mId:I

    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mServerTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-virtual {v9}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->getBatchId()I

    move-result v9

    if-ne v8, v9, :cond_10

    .line 827
    sget-boolean v8, Lcom/android/bluetooth/opp/BluetoothOppService;->V:Z

    if-eqz v8, :cond_f

    const-string/jumbo v8, "BtOppService"

    const-string/jumbo v9, " Stopping Inbound Transfer "

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    :cond_f
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mServerTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-virtual {v8}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->stop()V

    goto :goto_4

    .line 830
    :cond_10
    const-string/jumbo v8, "BtOppService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unexpected error! batch id "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 831
    const-string/jumbo v10, " doesn\'t match mServerTransfer id "

    .line 830
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 832
    iget-object v10, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mServerTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-virtual {v10}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->getBatchId()I

    move-result v10

    .line 830
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method private visibleNotification(I)Z
    .locals 2
    .param p1, "arrayPos"    # I

    .prologue
    .line 949
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mShares:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .line 950
    .local v0, "info":Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->hasCompletionNotification()Z

    move-result v1

    return v1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 153
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Cannot bind to Bluetooth OPP Service"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 158
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 159
    const-string/jumbo v2, "BtOppService"

    const-string/jumbo v3, "onCreate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 161
    new-instance v2, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-direct {v2, v3}, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;-><init>(Landroid/bluetooth/BluetoothAdapter;)V

    iput-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mSocketListener:Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;

    .line 162
    new-instance v2, Lcom/android/bluetooth/opp/BluetoothOppL2capListener;

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-direct {v2, v3}, Lcom/android/bluetooth/opp/BluetoothOppL2capListener;-><init>(Landroid/bluetooth/BluetoothAdapter;)V

    iput-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mL2cSocketListener:Lcom/android/bluetooth/opp/BluetoothOppL2capListener;

    .line 163
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mShares:Ljava/util/ArrayList;

    .line 164
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBatchs:Ljava/util/ArrayList;

    .line 165
    new-instance v2, Lcom/android/bluetooth/opp/BluetoothOppService$BluetoothShareContentObserver;

    invoke-direct {v2, p0}, Lcom/android/bluetooth/opp/BluetoothOppService$BluetoothShareContentObserver;-><init>(Lcom/android/bluetooth/opp/BluetoothOppService;)V

    iput-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mObserver:Lcom/android/bluetooth/opp/BluetoothOppService$BluetoothShareContentObserver;

    .line 166
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mObserver:Lcom/android/bluetooth/opp/BluetoothOppService$BluetoothShareContentObserver;

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 167
    iput v5, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBatchId:I

    .line 168
    new-instance v2, Lcom/android/bluetooth/opp/BluetoothOppNotification;

    invoke-direct {v2, p0}, Lcom/android/bluetooth/opp/BluetoothOppNotification;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mNotifier:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    .line 169
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mNotifier:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    iget-object v2, v2, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    invoke-virtual {v2}, Landroid/app/NotificationManager;->cancelAll()V

    .line 170
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mNotifier:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    invoke-virtual {v2}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->updateNotification()V

    .line 172
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 173
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    new-instance v2, Lcom/android/bluetooth/opp/BluetoothOppService$3;

    const-string/jumbo v3, "trimDatabase"

    invoke-direct {v2, p0, v3, v0}, Lcom/android/bluetooth/opp/BluetoothOppService$3;-><init>(Lcom/android/bluetooth/opp/BluetoothOppService;Ljava/lang/String;Landroid/content/ContentResolver;)V

    invoke-virtual {v2}, Lcom/android/bluetooth/opp/BluetoothOppService$3;->start()V

    .line 179
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 180
    .local v1, "filter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/android/bluetooth/opp/BluetoothOppService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 182
    monitor-enter p0

    .line 183
    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v2, :cond_1

    .line 184
    const-string/jumbo v2, "BtOppService"

    const-string/jumbo v3, "Local BT device is not enabled"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    .line 189
    sget-boolean v2, Lcom/android/bluetooth/opp/BluetoothOppService;->V:Z

    if-eqz v2, :cond_0

    invoke-static {p0}, Lcom/android/bluetooth/opp/BluetoothOppPreference;->getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/bluetooth/opp/BluetoothOppPreference;->dump()V

    .line 190
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppService;->updateFromProvider()V

    .line 157
    return-void

    .line 186
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppService;->startListener()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 182
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 382
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppService;->V:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BtOppService"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 384
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mObserver:Lcom/android/bluetooth/opp/BluetoothOppService$BluetoothShareContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 385
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/opp/BluetoothOppService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 386
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mSocketListener:Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;

    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->stop()V

    .line 387
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mL2cSocketListener:Lcom/android/bluetooth/opp/BluetoothOppL2capListener;

    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothOppL2capListener;->stop()V

    .line 389
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBatchs:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 390
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBatchs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 392
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mShares:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 393
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mShares:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 395
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 396
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 381
    :cond_3
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 195
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppService;->V:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BtOppService"

    const-string/jumbo v1, "onStartCommand"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_1

    .line 199
    const-string/jumbo v0, "BtOppService"

    const-string/jumbo v1, "Local BT device is not enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :goto_0
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppService;->updateFromProvider()V

    .line 205
    const/4 v0, 0x2

    return v0

    .line 201
    :cond_1
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppService;->startListener()V

    goto :goto_0
.end method
