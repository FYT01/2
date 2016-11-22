.class public Lcom/android/bluetooth/map/BluetoothMapMasInstance;
.super Ljava/lang/Object;
.source "BluetoothMapMasInstance.java"

# interfaces
.implements Lcom/android/bluetooth/IObexConnectionHandler;


# static fields
.field private static final D:Z = true

.field private static final SDP_MAP_MAS_FEATURES:I = 0x7f

.field private static final SDP_MAP_MAS_VERSION:I = 0x102

.field private static final SDP_MAP_MSG_TYPE_EMAIL:I = 0x1

.field private static final SDP_MAP_MSG_TYPE_IM:I = 0x10

.field private static final SDP_MAP_MSG_TYPE_MMS:I = 0x8

.field private static final SDP_MAP_MSG_TYPE_SMS_CDMA:I = 0x4

.field private static final SDP_MAP_MSG_TYPE_SMS_GSM:I = 0x2

.field public static final TYPE_EMAIL_STR:Ljava/lang/String; = "EMAIL"

.field public static final TYPE_IM_STR:Ljava/lang/String; = "IM"

.field public static final TYPE_SMS_MMS_STR:Ljava/lang/String; = "SMS/MMS"

.field private static final V:Z

.field private static volatile sInstanceCounter:I


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBaseUri:Ljava/lang/String;

.field private mConnSocket:Landroid/bluetooth/BluetoothSocket;

.field private mContactList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDbIndetifier:Ljava/util/concurrent/atomic/AtomicLong;

.field private mEnableSmsMms:Z

.field private mFolderVersionCounter:Ljava/util/concurrent/atomic/AtomicLong;

.field private mImEmailConvoList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;",
            ">;"
        }
    .end annotation
.end field

.field private mImEmailConvoListVersionCounter:Ljava/util/concurrent/atomic/AtomicLong;

.field private volatile mInterrupted:Z

.field private mMapService:Lcom/android/bluetooth/map/BluetoothMapService;

.field private mMasInstanceId:I

.field private mMnsClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

.field private mMsgListMms:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;",
            ">;"
        }
    .end annotation
.end field

.field private mMsgListMsg:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;",
            ">;"
        }
    .end annotation
.end field

.field private mMsgListSms:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;",
            ">;"
        }
    .end annotation
.end field

.field mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

.field private mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

.field private mRemoteFeatureMask:I

.field private mSdpHandle:I

.field private mServerSession:Ljavax/obex/ServerSession;

.field private mServerSockets:Lcom/android/bluetooth/ObexServerSockets;

.field private mServiceHandler:Landroid/os/Handler;

.field private volatile mShutdown:Z

.field private mSmsMmsConvoList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;",
            ">;"
        }
    .end annotation
.end field

.field private mSmsMmsConvoListVersionCounter:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    const/4 v0, 0x0

    sput v0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->sInstanceCounter:I

    .line 48
    const-string/jumbo v0, "BluetoothMap"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->V:Z

    .line 43
    return-void
.end method

.method protected constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v0, -0x1

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mServerSession:Ljavax/obex/ServerSession;

    .line 63
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mServerSockets:Lcom/android/bluetooth/ObexServerSockets;

    .line 64
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mSdpHandle:I

    .line 67
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    .line 69
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    .line 73
    iput-boolean v4, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mShutdown:Z

    .line 75
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mServiceHandler:Landroid/os/Handler;

    .line 76
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMapService:Lcom/android/bluetooth/map/BluetoothMapService;

    .line 77
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mContext:Landroid/content/Context;

    .line 78
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMnsClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    .line 79
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    .line 80
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mBaseUri:Ljava/lang/String;

    .line 81
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMasInstanceId:I

    .line 82
    iput-boolean v4, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mEnableSmsMms:Z

    .line 85
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mDbIndetifier:Ljava/util/concurrent/atomic/AtomicLong;

    .line 86
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mFolderVersionCounter:Ljava/util/concurrent/atomic/AtomicLong;

    .line 87
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mSmsMmsConvoListVersionCounter:Ljava/util/concurrent/atomic/AtomicLong;

    .line 88
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mImEmailConvoListVersionCounter:Ljava/util/concurrent/atomic/AtomicLong;

    .line 90
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMsgListSms:Ljava/util/Map;

    .line 91
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMsgListMms:Ljava/util/Map;

    .line 92
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMsgListMsg:Ljava/util/Map;

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 96
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mSmsMmsConvoList:Ljava/util/HashMap;

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 99
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mImEmailConvoList:Ljava/util/HashMap;

    .line 102
    const/16 v0, 0x1f

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mRemoteFeatureMask:I

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "BluetoothMapMasInstance"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->sInstanceCounter:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->sInstanceCounter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->TAG:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public constructor <init>(Lcom/android/bluetooth/map/BluetoothMapService;Landroid/content/Context;Lcom/android/bluetooth/map/BluetoothMapAccountItem;IZ)V
    .locals 5
    .param p1, "mapService"    # Lcom/android/bluetooth/map/BluetoothMapService;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "account"    # Lcom/android/bluetooth/map/BluetoothMapAccountItem;
    .param p4, "masId"    # I
    .param p5, "enableSmsMms"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v0, -0x1

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mServerSession:Ljavax/obex/ServerSession;

    .line 63
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mServerSockets:Lcom/android/bluetooth/ObexServerSockets;

    .line 64
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mSdpHandle:I

    .line 67
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    .line 69
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    .line 73
    iput-boolean v4, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mShutdown:Z

    .line 75
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mServiceHandler:Landroid/os/Handler;

    .line 76
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMapService:Lcom/android/bluetooth/map/BluetoothMapService;

    .line 77
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mContext:Landroid/content/Context;

    .line 78
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMnsClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    .line 79
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    .line 80
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mBaseUri:Ljava/lang/String;

    .line 81
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMasInstanceId:I

    .line 82
    iput-boolean v4, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mEnableSmsMms:Z

    .line 85
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mDbIndetifier:Ljava/util/concurrent/atomic/AtomicLong;

    .line 86
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mFolderVersionCounter:Ljava/util/concurrent/atomic/AtomicLong;

    .line 87
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mSmsMmsConvoListVersionCounter:Ljava/util/concurrent/atomic/AtomicLong;

    .line 88
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mImEmailConvoListVersionCounter:Ljava/util/concurrent/atomic/AtomicLong;

    .line 90
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMsgListSms:Ljava/util/Map;

    .line 91
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMsgListMms:Ljava/util/Map;

    .line 92
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMsgListMsg:Ljava/util/Map;

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 96
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mSmsMmsConvoList:Ljava/util/HashMap;

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 99
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mImEmailConvoList:Ljava/util/HashMap;

    .line 102
    const/16 v0, 0x1f

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mRemoteFeatureMask:I

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "BluetoothMapMasInstance"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->sInstanceCounter:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->sInstanceCounter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->TAG:Ljava/lang/String;

    .line 121
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMapService:Lcom/android/bluetooth/map/BluetoothMapService;

    .line 122
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mServiceHandler:Landroid/os/Handler;

    .line 123
    iput-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mContext:Landroid/content/Context;

    .line 124
    iput-object p3, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    .line 125
    if-eqz p3, :cond_0

    .line 126
    iget-object v0, p3, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mBase_uri:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mBaseUri:Ljava/lang/String;

    .line 128
    :cond_0
    iput p4, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMasInstanceId:I

    .line 129
    iput-boolean p5, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mEnableSmsMms:Z

    .line 130
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->init()V

    .line 119
    return-void
.end method

.method private final declared-synchronized closeConnectionSocket()V
    .locals 3

    .prologue
    monitor-enter p0

    .line 449
    :try_start_0
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->V:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "closeConnectionSock"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mConnSocket:Landroid/bluetooth/BluetoothSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 452
    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 456
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mConnSocket:Landroid/bluetooth/BluetoothSocket;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    .line 448
    return-void

    .line 453
    :catch_0
    move-exception v0

    .line 454
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Close Connection Socket error: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 456
    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mConnSocket:Landroid/bluetooth/BluetoothSocket;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 455
    :catchall_1
    move-exception v1

    .line 456
    const/4 v2, 0x0

    :try_start_5
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    .line 455
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method private final declared-synchronized closeServerSockets(Z)V
    .locals 3
    .param p1, "block"    # Z

    .prologue
    monitor-enter p0

    .line 439
    :try_start_0
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->V:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "closeServerSock"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mServerSockets:Lcom/android/bluetooth/ObexServerSockets;

    .line 442
    .local v0, "sockets":Lcom/android/bluetooth/ObexServerSockets;
    if-eqz v0, :cond_1

    .line 443
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/ObexServerSockets;->shutdown(Z)V

    .line 444
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mServerSockets:Lcom/android/bluetooth/ObexServerSockets;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    .line 438
    return-void

    .end local v0    # "sockets":Lcom/android/bluetooth/ObexServerSockets;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private createMasSdpRecord(II)I
    .locals 8
    .param p1, "rfcommChannel"    # I
    .param p2, "l2capPsm"    # I

    .prologue
    .line 303
    const-string/jumbo v1, ""

    .line 304
    .local v1, "masName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 305
    .local v6, "messageTypeFlags":I
    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mEnableSmsMms:Z

    if-eqz v0, :cond_0

    .line 306
    const-string/jumbo v1, "SMS/MMS"

    .line 307
    const/16 v6, 0xe

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mBaseUri:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 313
    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mEnableSmsMms:Z

    if-eqz v0, :cond_4

    .line 314
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v0

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne v0, v2, :cond_3

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "/EMAIL"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 323
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v0

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne v0, v2, :cond_5

    .line 324
    or-int/lit8 v6, v6, 0x1

    .line 330
    :cond_2
    :goto_1
    invoke-static {}, Lcom/android/bluetooth/sdp/SdpManager;->getDefaultManager()Lcom/android/bluetooth/sdp/SdpManager;

    move-result-object v0

    .line 331
    iget v2, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMasInstanceId:I

    .line 334
    const/16 v5, 0x102

    .line 336
    const/16 v7, 0x7f

    move v3, p1

    move v4, p2

    .line 330
    invoke-virtual/range {v0 .. v7}, Lcom/android/bluetooth/sdp/SdpManager;->createMapMasRecord(Ljava/lang/String;IIIIII)I

    move-result v0

    return v0

    .line 316
    :cond_3
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v0

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->IM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne v0, v2, :cond_1

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "/IM"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 320
    :cond_4
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 325
    :cond_5
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v0

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->IM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne v0, v2, :cond_2

    .line 326
    or-int/lit8 v6, v6, 0x10

    goto :goto_1
.end method

.method private init()V
    .locals 1

    .prologue
    .line 144
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 143
    return-void
.end method

.method private updateDbIdentifier()V
    .locals 4

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mDbIndetifier:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 157
    return-void
.end method


# virtual methods
.method getCombinedConvoListVersionCounter()J
    .locals 4

    .prologue
    .line 248
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mSmsMmsConvoListVersionCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 249
    .local v0, "combinedVersionCounter":J
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mImEmailConvoListVersionCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 250
    return-wide v0
.end method

.method getContactList()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mContactList:Ljava/util/Map;

    return-object v0
.end method

.method getDbIdentifier()J
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mDbIndetifier:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method getFolderVersionCounter()J
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mFolderVersionCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method getImEmailConvoList()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mImEmailConvoList:Ljava/util/HashMap;

    return-object v0
.end method

.method getMasId()I
    .locals 1

    .prologue
    .line 233
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMasInstanceId:I

    return v0
.end method

.method getMsgListMms()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;",
            ">;"
        }
    .end annotation

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMsgListMms:Ljava/util/Map;

    return-object v0
.end method

.method getMsgListMsg()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;",
            ">;"
        }
    .end annotation

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMsgListMsg:Ljava/util/Map;

    return-object v0
.end method

.method getMsgListSms()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;",
            ">;"
        }
    .end annotation

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMsgListSms:Ljava/util/Map;

    return-object v0
.end method

.method public getRemoteFeatureMask()I
    .locals 1

    .prologue
    .line 471
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mRemoteFeatureMask:I

    return v0
.end method

.method getSmsMmsConvoList()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mSmsMmsConvoList:Ljava/util/HashMap;

    return-object v0
.end method

.method public handleSmsSendIntent(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 388
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->handleSmsSendIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    return v0

    .line 391
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isStarted()Z
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized onAcceptFailed()V
    .locals 2

    .prologue
    monitor-enter p0

    .line 496
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mServerSockets:Lcom/android/bluetooth/ObexServerSockets;

    .line 497
    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mShutdown:Z

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Failed to accept incomming connection - shutdown"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    .line 495
    return-void

    .line 500
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Failed to accept incomming connection - restarting"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->startRfcommSocketListener()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onConnect(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothSocket;)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "socket"    # Landroid/bluetooth/BluetoothSocket;

    .prologue
    monitor-enter p0

    .line 478
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMapService:Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-virtual {v1, p1, p0}, Lcom/android/bluetooth/map/BluetoothMapService;->onConnect(Landroid/bluetooth/BluetoothDevice;Lcom/android/bluetooth/map/BluetoothMapMasInstance;)Z

    move-result v0

    .line 479
    .local v0, "isValid":Z
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->V:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onConnect"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :cond_0
    if-eqz v0, :cond_1

    .line 482
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    .line 483
    iput-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mConnSocket:Landroid/bluetooth/BluetoothSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    .line 486
    return v0

    .end local v0    # "isValid":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public restartObexServerSession()V
    .locals 2

    .prologue
    .line 433
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "MAP Service restartObexServerSession()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->startRfcommSocketListener()V

    .line 432
    return-void
.end method

.method setContactList(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 212
    .local p1, "contactList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;>;"
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mContactList:Ljava/util/Map;

    .line 211
    return-void
.end method

.method setImEmailConvoList(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 228
    .local p1, "imEmailConvoList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;>;"
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mImEmailConvoList:Ljava/util/HashMap;

    .line 227
    return-void
.end method

.method setMsgListMms(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 196
    .local p1, "msgListMms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;>;"
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMsgListMms:Ljava/util/Map;

    .line 195
    return-void
.end method

.method setMsgListMsg(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 204
    .local p1, "msgListMsg":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;>;"
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMsgListMsg:Ljava/util/Map;

    .line 203
    return-void
.end method

.method setMsgListSms(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 188
    .local p1, "msgListSms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;>;"
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMsgListSms:Ljava/util/Map;

    .line 187
    return-void
.end method

.method public setRemoteFeatureMask(I)V
    .locals 3
    .param p1, "supportedFeatures"    # I

    .prologue
    .line 462
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->V:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRemoteFeatureMask : Curr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mRemoteFeatureMask:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    :cond_0
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mRemoteFeatureMask:I

    .line 464
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getObserverRemoteFeatureMask()I

    move-result v0

    iget v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mRemoteFeatureMask:I

    if-eq v0, v1, :cond_1

    .line 465
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    iget v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mRemoteFeatureMask:I

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->setObserverRemoteFeatureMask(I)V

    .line 466
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->V:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRemoteFeatureMask : set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mRemoteFeatureMask:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    :cond_1
    return-void
.end method

.method setSmsMmsConvoList(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 220
    .local p1, "smsMmsConvoList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;>;"
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mSmsMmsConvoList:Ljava/util/HashMap;

    .line 219
    return-void
.end method

.method public declared-synchronized shutdown()V
    .locals 4

    .prologue
    monitor-enter p0

    .line 403
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "MAP Service shutdown"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mServerSession:Ljavax/obex/ServerSession;

    if-eqz v1, :cond_0

    .line 406
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mServerSession:Ljavax/obex/ServerSession;

    invoke-virtual {v1}, Ljavax/obex/ServerSession;->close()V

    .line 407
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mServerSession:Ljavax/obex/ServerSession;

    .line 409
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    if-eqz v1, :cond_1

    .line 410
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->deinit()V

    .line 411
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    .line 413
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mSdpHandle:I

    if-ltz v1, :cond_3

    .line 414
    invoke-static {}, Lcom/android/bluetooth/sdp/SdpManager;->getDefaultManager()Lcom/android/bluetooth/sdp/SdpManager;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 415
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->V:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Removing SDP record for MAS instance: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMasInstanceId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 416
    const-string/jumbo v3, " Object reference: "

    .line 415
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 416
    const-string/jumbo v3, "SDP handle: "

    .line 415
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 416
    iget v3, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mSdpHandle:I

    .line 415
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :cond_2
    invoke-static {}, Lcom/android/bluetooth/sdp/SdpManager;->getDefaultManager()Lcom/android/bluetooth/sdp/SdpManager;

    move-result-object v1

    iget v2, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mSdpHandle:I

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/sdp/SdpManager;->removeSdpRecord(I)Z

    move-result v0

    .line 418
    .local v0, "status":Z
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "RemoveSDPrecord returns "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mSdpHandle:I

    .line 422
    .end local v0    # "status":Z
    :cond_3
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->closeConnectionSocket()V

    .line 424
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->V:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Block acceptThreads: TRUE"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :cond_4
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->closeServerSockets(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 402
    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public startObexServerSession(Lcom/android/bluetooth/map/BluetoothMnsObexClient;)Z
    .locals 10
    .param p1, "mnsClient"    # Lcom/android/bluetooth/map/BluetoothMnsObexClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 344
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Map Service startObexServerSession masid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMasInstanceId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    if-eqz v1, :cond_2

    .line 347
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mServerSession:Ljavax/obex/ServerSession;

    if-eqz v1, :cond_0

    .line 349
    return v9

    .line 352
    :cond_0
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMnsClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    .line 354
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v1

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne v1, v2, :cond_1

    .line 355
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startObexServerSession getType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mContext:Landroid/content/Context;

    .line 357
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMnsClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    .line 359
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    .line 360
    iget-boolean v5, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mEnableSmsMms:Z

    move-object v3, p0

    .line 356
    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;-><init>(Landroid/content/Context;Lcom/android/bluetooth/map/BluetoothMnsObexClient;Lcom/android/bluetooth/map/BluetoothMapMasInstance;Lcom/android/bluetooth/map/BluetoothMapAccountItem;Z)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    .line 368
    :goto_0
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->init()V

    .line 369
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mServiceHandler:Landroid/os/Handler;

    .line 370
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mContext:Landroid/content/Context;

    .line 371
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    .line 373
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    .line 374
    iget-boolean v6, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mEnableSmsMms:Z

    move-object v4, p0

    .line 369
    invoke-direct/range {v0 .. v6}, Lcom/android/bluetooth/map/BluetoothMapObexServer;-><init>(Landroid/os/Handler;Landroid/content/Context;Lcom/android/bluetooth/map/BluetoothMapContentObserver;Lcom/android/bluetooth/map/BluetoothMapMasInstance;Lcom/android/bluetooth/map/BluetoothMapAccountItem;Z)V

    .line 377
    .local v0, "mapServer":Lcom/android/bluetooth/map/BluetoothMapObexServer;
    new-instance v7, Lcom/android/bluetooth/BluetoothObexTransport;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-direct {v7, v1}, Lcom/android/bluetooth/BluetoothObexTransport;-><init>(Landroid/bluetooth/BluetoothSocket;)V

    .line 378
    .local v7, "transport":Lcom/android/bluetooth/BluetoothObexTransport;
    new-instance v1, Ljavax/obex/ServerSession;

    invoke-direct {v1, v7, v0, v8}, Ljavax/obex/ServerSession;-><init>(Ljavax/obex/ObexTransport;Ljavax/obex/ServerRequestHandler;Ljavax/obex/Authenticator;)V

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mServerSession:Ljavax/obex/ServerSession;

    .line 379
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "    ServerSession started."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    return v9

    .line 362
    .end local v0    # "mapServer":Lcom/android/bluetooth/map/BluetoothMapObexServer;
    .end local v7    # "transport":Lcom/android/bluetooth/BluetoothObexTransport;
    :cond_1
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mContext:Landroid/content/Context;

    .line 363
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMnsClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    .line 365
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    .line 366
    iget-boolean v5, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mEnableSmsMms:Z

    move-object v3, p0

    .line 362
    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;-><init>(Landroid/content/Context;Lcom/android/bluetooth/map/BluetoothMnsObexClient;Lcom/android/bluetooth/map/BluetoothMapMasInstance;Lcom/android/bluetooth/map/BluetoothMapAccountItem;Z)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    goto :goto_0

    .line 383
    :cond_2
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "    No connection for this instance"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    const/4 v1, 0x0

    return v1
.end method

.method public declared-synchronized startRfcommSocketListener()V
    .locals 4

    .prologue
    monitor-enter p0

    .line 254
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Map Service startRfcommSocketListener"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mServerSession:Ljavax/obex/ServerSession;

    if-eqz v1, :cond_0

    .line 257
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "mServerSession exists - shutting it down..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mServerSession:Ljavax/obex/ServerSession;

    invoke-virtual {v1}, Ljavax/obex/ServerSession;->close()V

    .line 259
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mServerSession:Ljavax/obex/ServerSession;

    .line 261
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    if-eqz v1, :cond_1

    .line 262
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "mObserver exists - shutting it down..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->deinit()V

    .line 264
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    .line 267
    :cond_1
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->closeConnectionSocket()V

    .line 269
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mServerSockets:Lcom/android/bluetooth/ObexServerSockets;

    if-eqz v1, :cond_2

    .line 270
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mServerSockets:Lcom/android/bluetooth/ObexServerSockets;

    invoke-virtual {v1}, Lcom/android/bluetooth/ObexServerSockets;->prepareForNewConnect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    .line 253
    return-void

    .line 273
    :cond_2
    :try_start_1
    invoke-static {p0}, Lcom/android/bluetooth/ObexServerSockets;->create(Lcom/android/bluetooth/IObexConnectionHandler;)Lcom/android/bluetooth/ObexServerSockets;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mServerSockets:Lcom/android/bluetooth/ObexServerSockets;

    .line 275
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mServerSockets:Lcom/android/bluetooth/ObexServerSockets;

    if-nez v1, :cond_3

    .line 277
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed to start the listeners"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 278
    return-void

    .line 280
    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mSdpHandle:I

    if-ltz v1, :cond_5

    .line 281
    invoke-static {}, Lcom/android/bluetooth/sdp/SdpManager;->getDefaultManager()Lcom/android/bluetooth/sdp/SdpManager;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 282
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->V:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Removing SDP record for MAS instance: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMasInstanceId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 283
    const-string/jumbo v3, " Object reference: "

    .line 282
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 283
    const-string/jumbo v3, "SDP handle: "

    .line 282
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 283
    iget v3, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mSdpHandle:I

    .line 282
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_4
    invoke-static {}, Lcom/android/bluetooth/sdp/SdpManager;->getDefaultManager()Lcom/android/bluetooth/sdp/SdpManager;

    move-result-object v1

    iget v2, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mSdpHandle:I

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/sdp/SdpManager;->removeSdpRecord(I)Z

    move-result v0

    .line 285
    .local v0, "status":Z
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "RemoveSDPrecord returns "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mSdpHandle:I

    .line 288
    .end local v0    # "status":Z
    :cond_5
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mServerSockets:Lcom/android/bluetooth/ObexServerSockets;

    invoke-virtual {v1}, Lcom/android/bluetooth/ObexServerSockets;->getRfcommChannel()I

    move-result v1

    .line 289
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mServerSockets:Lcom/android/bluetooth/ObexServerSockets;

    invoke-virtual {v2}, Lcom/android/bluetooth/ObexServerSockets;->getL2capPsm()I

    move-result v2

    .line 288
    invoke-direct {p0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->createMasSdpRecord(II)I

    move-result v1

    iput v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mSdpHandle:I

    .line 291
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->V:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Creating new SDP record for MAS instance: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMasInstanceId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 292
    const-string/jumbo v3, " Object reference: "

    .line 291
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 292
    const-string/jumbo v3, "SDP handle: "

    .line 291
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 292
    iget v3, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mSdpHandle:I

    .line 291
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_6
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->updateDbIdentifier()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "MasId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMasInstanceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " Uri:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mBaseUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " SMS/MMS:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mEnableSmsMms:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method updateFolderVersionCounter()V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mFolderVersionCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 166
    return-void
.end method

.method updateImEmailConvoListVersionCounter()V
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mImEmailConvoListVersionCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 179
    return-void
.end method

.method updateSmsMmsConvoListVersionCounter()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mSmsMmsConvoListVersionCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 175
    return-void
.end method
