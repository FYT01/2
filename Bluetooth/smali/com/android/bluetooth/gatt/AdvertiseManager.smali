.class Lcom/android/bluetooth/gatt/AdvertiseManager;
.super Ljava/lang/Object;
.source "AdvertiseManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;,
        Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiseNative;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final MSG_START_ADVERTISING:I = 0x0

.field private static final MSG_STOP_ADVERTISING:I = 0x1

.field private static final OPERATION_TIME_OUT_MILLIS:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "BtGatt.AdvertiseManager"


# instance fields
.field private final mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

.field private final mAdvertiseClients:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/bluetooth/gatt/AdvertiseClient;",
            ">;"
        }
    .end annotation
.end field

.field private final mAdvertiseNative:Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiseNative;

.field private mHandler:Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;

.field private mLatch:Ljava/util/concurrent/CountDownLatch;

.field private final mService:Lcom/android/bluetooth/gatt/GattService;


# direct methods
.method static synthetic -get0(Lcom/android/bluetooth/gatt/AdvertiseManager;)Lcom/android/bluetooth/btservice/AdapterService;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/gatt/AdvertiseManager;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/bluetooth/gatt/AdvertiseManager;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/gatt/AdvertiseManager;->mAdvertiseClients:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/bluetooth/gatt/AdvertiseManager;)Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiseNative;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/gatt/AdvertiseManager;->mAdvertiseNative:Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiseNative;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/bluetooth/gatt/AdvertiseManager;)Ljava/util/concurrent/CountDownLatch;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/gatt/AdvertiseManager;->mLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/bluetooth/gatt/AdvertiseManager;)Lcom/android/bluetooth/gatt/GattService;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/gatt/AdvertiseManager;->mService:Lcom/android/bluetooth/gatt/GattService;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/bluetooth/gatt/AdvertiseManager;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/gatt/AdvertiseManager;->mLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/bluetooth/gatt/AdvertiseManager;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/AdvertiseManager;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/bluetooth/gatt/AdvertiseManager;II)V
    .locals 0
    .param p1, "clientIf"    # I
    .param p2, "status"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/gatt/AdvertiseManager;->postCallback(II)V

    return-void
.end method

.method constructor <init>(Lcom/android/bluetooth/gatt/GattService;Lcom/android/bluetooth/btservice/AdapterService;)V
    .locals 2
    .param p1, "service"    # Lcom/android/bluetooth/gatt/GattService;
    .param p2, "adapterService"    # Lcom/android/bluetooth/btservice/AdapterService;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const-string/jumbo v0, "advertise manager created"

    invoke-direct {p0, v0}, Lcom/android/bluetooth/gatt/AdvertiseManager;->logd(Ljava/lang/String;)V

    .line 74
    iput-object p1, p0, Lcom/android/bluetooth/gatt/AdvertiseManager;->mService:Lcom/android/bluetooth/gatt/GattService;

    .line 75
    iput-object p2, p0, Lcom/android/bluetooth/gatt/AdvertiseManager;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    .line 76
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/gatt/AdvertiseManager;->mAdvertiseClients:Ljava/util/Set;

    .line 77
    new-instance v0, Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiseNative;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiseNative;-><init>(Lcom/android/bluetooth/gatt/AdvertiseManager;Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiseNative;)V

    iput-object v0, p0, Lcom/android/bluetooth/gatt/AdvertiseManager;->mAdvertiseNative:Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiseNative;

    .line 72
    return-void
.end method

.method private getAdvertiseClient(I)Lcom/android/bluetooth/gatt/AdvertiseClient;
    .locals 3
    .param p1, "clientIf"    # I

    .prologue
    .line 151
    iget-object v2, p0, Lcom/android/bluetooth/gatt/AdvertiseManager;->mAdvertiseClients:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "client$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/AdvertiseClient;

    .line 152
    .local v0, "client":Lcom/android/bluetooth/gatt/AdvertiseClient;
    iget v2, v0, Lcom/android/bluetooth/gatt/AdvertiseClient;->clientIf:I

    if-ne v2, p1, :cond_0

    .line 153
    return-object v0

    .line 156
    .end local v0    # "client":Lcom/android/bluetooth/gatt/AdvertiseClient;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 504
    const-string/jumbo v0, "BtGatt.AdvertiseManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    return-void
.end method

.method private loge(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 509
    const-string/jumbo v0, "BtGatt.AdvertiseManager"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 508
    return-void
.end method

.method private postCallback(II)V
    .locals 5
    .param p1, "clientIf"    # I
    .param p2, "status"    # I

    .prologue
    .line 141
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/AdvertiseManager;->getAdvertiseClient(I)Lcom/android/bluetooth/gatt/AdvertiseClient;

    move-result-object v0

    .line 142
    .local v0, "client":Lcom/android/bluetooth/gatt/AdvertiseClient;
    if-nez v0, :cond_0

    const/4 v3, 0x0

    .line 143
    :goto_0
    const/4 v2, 0x1

    .line 144
    .local v2, "isStart":Z
    iget-object v4, p0, Lcom/android/bluetooth/gatt/AdvertiseManager;->mService:Lcom/android/bluetooth/gatt/GattService;

    invoke-virtual {v4, p1, p2, v2, v3}, Lcom/android/bluetooth/gatt/GattService;->onMultipleAdvertiseCallback(IIZLandroid/bluetooth/le/AdvertiseSettings;)V

    .line 139
    .end local v0    # "client":Lcom/android/bluetooth/gatt/AdvertiseClient;
    .end local v2    # "isStart":Z
    :goto_1
    return-void

    .line 142
    .restart local v0    # "client":Lcom/android/bluetooth/gatt/AdvertiseClient;
    :cond_0
    iget-object v3, v0, Lcom/android/bluetooth/gatt/AdvertiseClient;->settings:Landroid/bluetooth/le/AdvertiseSettings;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .local v3, "settings":Landroid/bluetooth/le/AdvertiseSettings;
    goto :goto_0

    .line 145
    .end local v0    # "client":Lcom/android/bluetooth/gatt/AdvertiseClient;
    .end local v3    # "settings":Landroid/bluetooth/le/AdvertiseSettings;
    :catch_0
    move-exception v1

    .line 146
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "failed onMultipleAdvertiseCallback"

    invoke-direct {p0, v4, v1}, Lcom/android/bluetooth/gatt/AdvertiseManager;->loge(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method


# virtual methods
.method callbackDone(II)V
    .locals 1
    .param p1, "clientIf"    # I
    .param p2, "status"    # I

    .prologue
    .line 129
    if-nez p2, :cond_0

    .line 130
    iget-object v0, p0, Lcom/android/bluetooth/gatt/AdvertiseManager;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 128
    :goto_0
    return-void

    .line 134
    :cond_0
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/android/bluetooth/gatt/AdvertiseManager;->postCallback(II)V

    goto :goto_0
.end method

.method cleanup()V
    .locals 1

    .prologue
    .line 90
    const-string/jumbo v0, "advertise clients cleared"

    invoke-direct {p0, v0}, Lcom/android/bluetooth/gatt/AdvertiseManager;->logd(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/android/bluetooth/gatt/AdvertiseManager;->mAdvertiseClients:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 89
    return-void
.end method

.method start()V
    .locals 3

    .prologue
    .line 84
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "BluetoothAdvertiseManager"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 85
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 86
    new-instance v1, Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;-><init>(Lcom/android/bluetooth/gatt/AdvertiseManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/bluetooth/gatt/AdvertiseManager;->mHandler:Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;

    .line 83
    return-void
.end method

.method startAdvertising(Lcom/android/bluetooth/gatt/AdvertiseClient;)V
    .locals 2
    .param p1, "client"    # Lcom/android/bluetooth/gatt/AdvertiseClient;

    .prologue
    .line 100
    if-nez p1, :cond_0

    .line 101
    return-void

    .line 103
    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 104
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 105
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 106
    iget-object v1, p0, Lcom/android/bluetooth/gatt/AdvertiseManager;->mHandler:Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;->sendMessage(Landroid/os/Message;)Z

    .line 99
    return-void
.end method

.method stopAdvertising(Lcom/android/bluetooth/gatt/AdvertiseClient;)V
    .locals 2
    .param p1, "client"    # Lcom/android/bluetooth/gatt/AdvertiseClient;

    .prologue
    .line 113
    if-nez p1, :cond_0

    .line 114
    return-void

    .line 116
    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 117
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 118
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 119
    iget-object v1, p0, Lcom/android/bluetooth/gatt/AdvertiseManager;->mHandler:Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;->sendMessage(Landroid/os/Message;)Z

    .line 112
    return-void
.end method
