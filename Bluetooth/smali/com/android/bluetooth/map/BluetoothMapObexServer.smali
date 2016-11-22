.class public Lcom/android/bluetooth/map/BluetoothMapObexServer;
.super Ljavax/obex/ServerRequestHandler;
.source "BluetoothMapObexServer.java"


# static fields
.field private static final D:Z = true

.field public static final MAP:Landroid/os/ParcelUuid;

.field private static final MAP_TARGET:[B

.field public static final MAS:Landroid/os/ParcelUuid;

.field private static final MAS_INSTANCE_INFORMATION_LENGTH:I = 0xc8

.field public static final MNS:Landroid/os/ParcelUuid;

.field private static final PROVIDER_ANR_TIMEOUT:J = 0x4e20L

.field private static final TAG:Ljava/lang/String; = "BluetoothMapObexServer"

.field private static final THREADED_MAIL_HEADER_ID:I = 0xfa

.field private static final THREAD_MAIL_KEY:J = 0x534c5349L

.field private static final TYPE_GET_CONVO_LISTING:Ljava/lang/String; = "x-bt/MAP-convo-listing"

.field private static final TYPE_GET_FOLDER_LISTING:Ljava/lang/String; = "x-obex/folder-listing"

.field private static final TYPE_GET_MAS_INSTANCE_INFORMATION:Ljava/lang/String; = "x-bt/MASInstanceInformation"

.field private static final TYPE_GET_MESSAGE_LISTING:Ljava/lang/String; = "x-bt/MAP-msg-listing"

.field private static final TYPE_MESSAGE:Ljava/lang/String; = "x-bt/message"

.field private static final TYPE_MESSAGE_UPDATE:Ljava/lang/String; = "x-bt/MAP-messageUpdate"

.field private static final TYPE_SET_MESSAGE_STATUS:Ljava/lang/String; = "x-bt/messageStatus"

.field private static final TYPE_SET_NOTIFICATION_FILTER:Ljava/lang/String; = "x-bt/MAP-notification-filter"

.field private static final TYPE_SET_NOTIFICATION_REGISTRATION:Ljava/lang/String; = "x-bt/MAP-NotificationRegistration"

.field private static final TYPE_SET_OWNER_STATUS:Ljava/lang/String; = "x-bt/participant"

.field private static final UUID_LENGTH:I = 0x10

.field private static final V:Z


# instance fields
.field private mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

.field private mAccountId:J

.field private mAuthority:Ljava/lang/String;

.field private mBaseUriString:Ljava/lang/String;

.field private mCallback:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

.field private mEmailFolderUri:Landroid/net/Uri;

.field private mEnableSmsMms:Z

.field private mIsAborted:Z

.field private mMasId:I

.field private mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

.field private mMessageVersion:Ljava/lang/String;

.field private mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

.field mOutContent:Lcom/android/bluetooth/map/BluetoothMapContent;

.field private mProviderClient:Landroid/content/ContentProviderClient;

.field private mRemoteFeatureMask:I

.field private mResolver:Landroid/content/ContentResolver;

.field private mThreadIdSupport:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 54
    const-string/jumbo v0, "BluetoothMap"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->V:Z

    .line 65
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->MAP_TARGET:[B

    .line 72
    const-string/jumbo v0, "00001134-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    .line 71
    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->MAP:Landroid/os/ParcelUuid;

    .line 74
    const-string/jumbo v0, "00001133-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    .line 73
    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->MNS:Landroid/os/ParcelUuid;

    .line 76
    const-string/jumbo v0, "00001132-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    .line 75
    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->MAS:Landroid/os/ParcelUuid;

    .line 49
    return-void

    .line 65
    nop

    :array_0
    .array-data 1
        -0x45t
        0x58t
        0x2bt
        0x40t
        0x42t
        0xct
        0x11t
        -0x25t
        -0x50t
        -0x22t
        0x8t
        0x0t
        0x20t
        0xct
        -0x66t
        0x66t
    .end array-data
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;Lcom/android/bluetooth/map/BluetoothMapContentObserver;Lcom/android/bluetooth/map/BluetoothMapMasInstance;Lcom/android/bluetooth/map/BluetoothMapAccountItem;Z)V
    .locals 4
    .param p1, "callback"    # Landroid/os/Handler;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "observer"    # Lcom/android/bluetooth/map/BluetoothMapContentObserver;
    .param p4, "mas"    # Lcom/android/bluetooth/map/BluetoothMapMasInstance;
    .param p5, "account"    # Lcom/android/bluetooth/map/BluetoothMapAccountItem;
    .param p6, "enableSmsMms"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 122
    invoke-direct {p0}, Ljavax/obex/ServerRequestHandler;-><init>()V

    .line 95
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    .line 96
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCallback:Landroid/os/Handler;

    .line 98
    iput-boolean v3, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mIsAborted:Z

    .line 100
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mBaseUriString:Ljava/lang/String;

    .line 101
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mAccountId:J

    .line 102
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    .line 103
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mEmailFolderUri:Landroid/net/Uri;

    .line 104
    iput v3, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mMasId:I

    .line 107
    const/16 v0, 0x1f

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mRemoteFeatureMask:I

    .line 108
    iput-boolean v3, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mEnableSmsMms:Z

    .line 109
    iput-boolean v3, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mThreadIdSupport:Z

    .line 111
    const-string/jumbo v0, "1.0"

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mMessageVersion:Ljava/lang/String;

    .line 114
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mProviderClient:Landroid/content/ContentProviderClient;

    .line 123
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCallback:Landroid/os/Handler;

    .line 124
    iput-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mContext:Landroid/content/Context;

    .line 125
    iput-object p3, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    .line 126
    iput-boolean p6, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mEnableSmsMms:Z

    .line 127
    iput-object p5, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    .line 128
    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->getMasId()I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mMasId:I

    .line 129
    iput-object p4, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    .line 130
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->getRemoteFeatureMask()I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mRemoteFeatureMask:I

    .line 132
    if-eqz p5, :cond_1

    invoke-virtual {p5}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getProviderAuthority()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 133
    invoke-virtual {p5}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getAccountId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mAccountId:J

    .line 134
    invoke-virtual {p5}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getProviderAuthority()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mAuthority:Ljava/lang/String;

    .line 135
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mResolver:Landroid/content/ContentResolver;

    .line 136
    const-string/jumbo v0, "BluetoothMapObexServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "BluetoothMapObexServer(): accountId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mAccountId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p5, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mBase_uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mBaseUriString:Ljava/lang/String;

    .line 138
    const-string/jumbo v0, "BluetoothMapObexServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "BluetoothMapObexServer(): baseUri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mBaseUriString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-virtual {p5}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v0

    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne v0, v1, :cond_0

    .line 140
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mAuthority:Ljava/lang/String;

    .line 141
    iget-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mAccountId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 140
    invoke-static {v0, v1}, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->buildFolderUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mEmailFolderUri:Landroid/net/Uri;

    .line 142
    const-string/jumbo v0, "BluetoothMapObexServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "BluetoothMapObexServer(): mEmailFolderUri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mEmailFolderUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->acquireUnstableContentProviderOrThrow()Landroid/content/ContentProviderClient;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mProviderClient:Landroid/content/ContentProviderClient;

    .line 147
    :cond_1
    if-eqz p5, :cond_2

    invoke-virtual {p5}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v0

    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne v0, v1, :cond_2

    .line 148
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapContentEmail;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapContentEmail;-><init>(Landroid/content/Context;Lcom/android/bluetooth/map/BluetoothMapAccountItem;Lcom/android/bluetooth/map/BluetoothMapMasInstance;)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mOutContent:Lcom/android/bluetooth/map/BluetoothMapContent;

    .line 153
    :goto_0
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->buildFolderStructure()V

    .line 155
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getRoot()Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->setFolderStructure(Lcom/android/bluetooth/map/BluetoothMapFolderElement;)V

    .line 121
    return-void

    .line 150
    :cond_2
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapContent;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapContent;-><init>(Landroid/content/Context;Lcom/android/bluetooth/map/BluetoothMapAccountItem;Lcom/android/bluetooth/map/BluetoothMapMasInstance;)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mOutContent:Lcom/android/bluetooth/map/BluetoothMapContent;

    goto :goto_0
.end method

.method private acquireUnstableContentProviderOrThrow()Landroid/content/ContentProviderClient;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 163
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mAuthority:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 164
    .local v0, "providerClient":Landroid/content/ContentProviderClient;
    if-nez v0, :cond_0

    .line 165
    new-instance v1, Landroid/os/RemoteException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to acquire provider for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mAuthority:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 167
    :cond_0
    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderClient;->setDetectNotResponding(J)V

    .line 168
    return-object v0
.end method

.method private addBaseFolders(Lcom/android/bluetooth/map/BluetoothMapFolderElement;)V
    .locals 1
    .param p1, "root"    # Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .prologue
    .line 218
    const-string/jumbo v0, "INBOX"

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->addFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 219
    const-string/jumbo v0, "OUTBOX"

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->addFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 220
    const-string/jumbo v0, "SENT"

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->addFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 221
    const-string/jumbo v0, "DELETED"

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->addFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 217
    return-void
.end method

.method private addEmailFolders(Lcom/android/bluetooth/map/BluetoothMapFolderElement;)V
    .locals 14
    .param p1, "parentFolder"    # Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "parent_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 270
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderId()J

    move-result-wide v12

    .line 269
    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 271
    .local v3, "where":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mProviderClient:Landroid/content/ContentProviderClient;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mEmailFolderUri:Landroid/net/Uri;

    .line 272
    sget-object v2, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->BT_FOLDER_PROJECTION:[Ljava/lang/String;

    move-object v5, v4

    .line 271
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 274
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 275
    const/4 v0, -0x1

    :try_start_0
    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 276
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 278
    const-string/jumbo v0, "name"

    .line 277
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 279
    .local v7, "name":Ljava/lang/String;
    const-string/jumbo v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 280
    .local v8, "id":J
    invoke-virtual {p1, v7, v8, v9}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->addEmailFolder(Ljava/lang/String;J)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v10

    .line 281
    .local v10, "newFolder":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    invoke-direct {p0, v10}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->addEmailFolders(Lcom/android/bluetooth/map/BluetoothMapFolderElement;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 287
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "id":J
    .end local v10    # "newFolder":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    :catchall_0
    move-exception v0

    .line 288
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 287
    :cond_0
    throw v0

    .line 285
    :cond_1
    :try_start_1
    const-string/jumbo v0, "BluetoothMapObexServer"

    const-string/jumbo v1, "addEmailFolders(): no elements found"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 288
    :cond_2
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 265
    :cond_3
    return-void
.end method

.method private addImFolders(Lcom/android/bluetooth/map/BluetoothMapFolderElement;)V
    .locals 4
    .param p1, "root"    # Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 239
    const-string/jumbo v0, "INBOX"

    .line 240
    const-wide/16 v2, 0x1

    .line 239
    invoke-virtual {p1, v0, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->addImFolder(Ljava/lang/String;J)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 241
    const-string/jumbo v0, "OUTBOX"

    .line 242
    const-wide/16 v2, 0x4

    .line 241
    invoke-virtual {p1, v0, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->addImFolder(Ljava/lang/String;J)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 243
    const-string/jumbo v0, "SENT"

    .line 244
    const-wide/16 v2, 0x2

    .line 243
    invoke-virtual {p1, v0, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->addImFolder(Ljava/lang/String;J)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 245
    const-string/jumbo v0, "DELETED"

    .line 246
    const-wide/16 v2, 0x5

    .line 245
    invoke-virtual {p1, v0, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->addImFolder(Ljava/lang/String;J)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 247
    const-string/jumbo v0, "DRAFT"

    .line 248
    const-wide/16 v2, 0x3

    .line 247
    invoke-virtual {p1, v0, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->addImFolder(Ljava/lang/String;J)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 237
    return-void
.end method

.method private addSmsMmsFolders(Lcom/android/bluetooth/map/BluetoothMapFolderElement;)V
    .locals 1
    .param p1, "root"    # Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .prologue
    .line 229
    const-string/jumbo v0, "INBOX"

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->addSmsMmsFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 230
    const-string/jumbo v0, "OUTBOX"

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->addSmsMmsFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 231
    const-string/jumbo v0, "SENT"

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->addSmsMmsFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 232
    const-string/jumbo v0, "DELETED"

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->addSmsMmsFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 233
    const-string/jumbo v0, "DRAFT"

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->addSmsMmsFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 228
    return-void
.end method

.method private buildFolderStructure()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 175
    new-instance v3, Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    const-string/jumbo v4, "root"

    invoke-direct {v3, v4, v5}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;-><init>(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapFolderElement;)V

    iput-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 176
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    iget-boolean v4, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mEnableSmsMms:Z

    invoke-virtual {v3, v4}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->setHasSmsMmsContent(Z)V

    .line 177
    const/4 v1, 0x0

    .line 178
    .local v1, "hasIM":Z
    const/4 v0, 0x0

    .line 179
    .local v0, "hasEmail":Z
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    if-eqz v3, :cond_1

    .line 180
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v3

    sget-object v4, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->IM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne v3, v4, :cond_0

    .line 181
    const/4 v1, 0x1

    .line 182
    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v3

    sget-object v4, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne v3, v4, :cond_1

    .line 183
    const/4 v0, 0x1

    .line 185
    :cond_1
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    invoke-virtual {v3, v1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->setHasImContent(Z)V

    .line 186
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    invoke-virtual {v3, v0}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->setHasEmailContent(Z)V

    .line 189
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    const-string/jumbo v4, "telecom"

    invoke-virtual {v3, v4}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->addFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v2

    .line 190
    .local v2, "tmpFolder":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    iget-boolean v3, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mEnableSmsMms:Z

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->setHasSmsMmsContent(Z)V

    .line 191
    invoke-virtual {v2, v1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->setHasImContent(Z)V

    .line 192
    invoke-virtual {v2, v0}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->setHasEmailContent(Z)V

    .line 194
    const-string/jumbo v3, "msg"

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->addFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v2

    .line 195
    iget-boolean v3, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mEnableSmsMms:Z

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->setHasSmsMmsContent(Z)V

    .line 196
    invoke-virtual {v2, v1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->setHasImContent(Z)V

    .line 197
    invoke-virtual {v2, v0}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->setHasEmailContent(Z)V

    .line 200
    invoke-direct {p0, v2}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->addBaseFolders(Lcom/android/bluetooth/map/BluetoothMapFolderElement;)V

    .line 201
    iget-boolean v3, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mEnableSmsMms:Z

    if-eqz v3, :cond_2

    .line 202
    invoke-direct {p0, v2}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->addSmsMmsFolders(Lcom/android/bluetooth/map/BluetoothMapFolderElement;)V

    .line 204
    :cond_2
    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mOutContent:Lcom/android/bluetooth/map/BluetoothMapContent;

    instance-of v3, v3, Lcom/android/bluetooth/map/BluetoothMapContentEmail;

    if-eqz v3, :cond_3

    .line 205
    const-string/jumbo v3, "BluetoothMapObexServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "buildFolderStructure(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mEmailFolderUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mOutContent:Lcom/android/bluetooth/map/BluetoothMapContent;

    check-cast v3, Lcom/android/bluetooth/map/BluetoothMapContentEmail;

    invoke-virtual {v3, v2}, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->addEmailFolders(Lcom/android/bluetooth/map/BluetoothMapFolderElement;)V

    .line 208
    :cond_3
    if-eqz v1, :cond_4

    .line 209
    invoke-direct {p0, v2}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->addImFolders(Lcom/android/bluetooth/map/BluetoothMapFolderElement;)V

    .line 174
    :cond_4
    return-void
.end method

.method private getFolderElementFromName(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .locals 4
    .param p1, "folderName"    # Ljava/lang/String;

    .prologue
    .line 549
    const/4 v0, 0x0

    .line 551
    .local v0, "folderElement":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 552
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 553
    .local v0, "folderElement":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    const-string/jumbo v1, "BluetoothMapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "no folder name supplied, setting folder to current: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 554
    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getName()Ljava/lang/String;

    move-result-object v3

    .line 553
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    :cond_1
    :goto_0
    return-object v0

    .line 556
    .local v0, "folderElement":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    :cond_2
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getSubFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v0

    .line 557
    .local v0, "folderElement":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    if-eqz v0, :cond_1

    .line 558
    const-string/jumbo v1, "BluetoothMapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Folder name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 559
    const-string/jumbo v3, " resulted in this element: "

    .line 558
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 559
    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getName()Ljava/lang/String;

    move-result-object v3

    .line 558
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static final logHeader(Ljavax/obex/HeaderSet;)V
    .locals 4
    .param p0, "hs"    # Ljavax/obex/HeaderSet;

    .prologue
    .line 1616
    const-string/jumbo v1, "BluetoothMapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Dumping HeaderSet "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljavax/obex/HeaderSet;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1618
    :try_start_0
    const-string/jumbo v1, "BluetoothMapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "CONNECTION_ID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xcb

    invoke-virtual {p0, v3}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1619
    const-string/jumbo v1, "BluetoothMapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "NAME : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1620
    const-string/jumbo v1, "BluetoothMapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "TYPE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x42

    invoke-virtual {p0, v3}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1621
    const-string/jumbo v1, "BluetoothMapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "TARGET : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x46

    invoke-virtual {p0, v3}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1622
    const-string/jumbo v1, "BluetoothMapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "WHO : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x4a

    invoke-virtual {p0, v3}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    const-string/jumbo v1, "BluetoothMapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "APPLICATION_PARAMETER : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x4c

    invoke-virtual {p0, v3}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1627
    :goto_0
    const-string/jumbo v1, "BluetoothMapObexServer"

    const-string/jumbo v2, "NEW!!! Dumping HeaderSet END"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1615
    return-void

    .line 1624
    :catch_0
    move-exception v0

    .line 1625
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v1, "BluetoothMapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "dump HeaderSet error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private notifyUpdateWakeLock()V
    .locals 2

    .prologue
    .line 1608
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCallback:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 1609
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCallback:Landroid/os/Handler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 1610
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x138d

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1611
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1607
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private pushMessage(Ljavax/obex/Operation;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;Ljava/lang/String;)I
    .locals 18
    .param p1, "op"    # Ljavax/obex/Operation;
    .param p2, "folderName"    # Ljava/lang/String;
    .param p3, "appParams"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;
    .param p4, "messageVersion"    # Ljava/lang/String;

    .prologue
    .line 567
    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getCharset()I

    move-result v14

    const/4 v15, -0x1

    if-ne v14, v15, :cond_0

    .line 568
    const-string/jumbo v14, "BluetoothMapObexServer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "pushMessage: Missing charset - unable to decode message content. appParams.getCharset() = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 569
    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getCharset()I

    move-result v16

    .line 568
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    const/16 v14, 0xcc

    return v14

    .line 572
    :cond_0
    const/4 v2, 0x0

    .line 574
    .local v2, "bMsgStream":Ljava/io/InputStream;
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->getFolderElementFromName(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v8

    .line 575
    .local v8, "folderElement":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    if-nez v8, :cond_1

    .line 576
    const-string/jumbo v14, "BluetoothMapObexServer"

    const-string/jumbo v15, "pushMessage: folderElement == null - sending OBEX_HTTP_PRECON_FAILED"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    const/16 v14, 0xcc

    return v14

    .line 579
    :cond_1
    invoke-virtual {v8}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getName()Ljava/lang/String;

    move-result-object p2

    .line 581
    const-string/jumbo v14, "OUTBOX"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 582
    const-string/jumbo v14, "DRAFT"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 594
    :cond_2
    invoke-interface/range {p1 .. p1}, Ljavax/obex/Operation;->openInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 596
    .local v2, "bMsgStream":Ljava/io/InputStream;
    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getCharset()I

    move-result v14

    invoke-static {v2, v14}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->parse(Ljava/io/InputStream;I)Lcom/android/bluetooth/map/BluetoothMapbMessage;

    move-result-object v12

    .line 597
    .local v12, "message":Lcom/android/bluetooth/map/BluetoothMapbMessage;
    move-object/from16 v0, p4

    invoke-virtual {v12, v0}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->setVersionString(Ljava/lang/String;)V

    .line 598
    const-string/jumbo v14, "BluetoothMapObexServer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "pushMessage: charset"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getCharset()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "folderId: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 599
    invoke-virtual {v8}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderId()J

    move-result-wide v16

    .line 598
    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 599
    const-string/jumbo v16, "Name: "

    .line 598
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 599
    const-string/jumbo v16, "TYPE: "

    .line 598
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 600
    invoke-virtual {v12}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v16

    .line 598
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    if-eqz v14, :cond_3

    if-nez v12, :cond_6

    .line 604
    :cond_3
    const-string/jumbo v14, "BluetoothMapObexServer"

    const-string/jumbo v15, "mObserver or parsed message not available"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 605
    const/16 v14, 0xd3

    .line 654
    if-eqz v2, :cond_4

    .line 656
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 605
    :cond_4
    :goto_0
    return v14

    .line 583
    .end local v12    # "message":Lcom/android/bluetooth/map/BluetoothMapbMessage;
    .local v2, "bMsgStream":Ljava/io/InputStream;
    :cond_5
    :try_start_2
    const-string/jumbo v14, "DRAFTS"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 584
    const-string/jumbo v14, "BluetoothMapObexServer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "pushMessage: Is only allowed to outbox and draft. folderName="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    const/16 v14, 0xc6

    return v14

    .line 657
    .local v2, "bMsgStream":Ljava/io/InputStream;
    .restart local v12    # "message":Lcom/android/bluetooth/map/BluetoothMapbMessage;
    :catch_0
    move-exception v4

    .local v4, "e":Ljava/io/IOException;
    goto :goto_0

    .line 608
    .end local v4    # "e":Ljava/io/IOException;
    :cond_6
    invoke-virtual {v12}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v14

    sget-object v15, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v14, v15}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-virtual {v8}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderId()J

    move-result-wide v14

    const-wide/16 v16, -0x1

    cmp-long v14, v14, v16

    if-nez v14, :cond_9

    .line 613
    :cond_7
    const-string/jumbo v14, "BluetoothMapObexServer"

    const-string/jumbo v15, "Wrong message type recieved"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 614
    const/16 v14, 0xc6

    .line 654
    if-eqz v2, :cond_8

    .line 656
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 614
    :cond_8
    :goto_1
    return v14

    .line 609
    :cond_9
    :try_start_4
    invoke-virtual {v12}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v14

    sget-object v15, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_GSM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v14, v15}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_a

    .line 610
    invoke-virtual {v12}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v14

    sget-object v15, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_CDMA:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v14, v15}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->equals(Ljava/lang/Object;)Z

    move-result v14

    .line 609
    if-nez v14, :cond_a

    .line 611
    invoke-virtual {v12}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v14

    sget-object v15, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v14, v15}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->equals(Ljava/lang/Object;)Z

    move-result v14

    .line 609
    if-eqz v14, :cond_b

    .line 612
    :cond_a
    invoke-virtual {v8}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->hasSmsMmsContent()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 617
    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mBaseUriString:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v14, v12, v8, v0, v15}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->pushMessage(Lcom/android/bluetooth/map/BluetoothMapbMessage;Lcom/android/bluetooth/map/BluetoothMapFolderElement;Lcom/android/bluetooth/map/BluetoothMapAppParams;Ljava/lang/String;)J

    move-result-wide v10

    .line 618
    .local v10, "handle":J
    const-string/jumbo v14, "BluetoothMapObexServer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "pushMessage handle: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    const-wide/16 v14, 0x0

    cmp-long v14, v10, v14

    if-gez v14, :cond_d

    .line 620
    const-string/jumbo v14, "BluetoothMapObexServer"

    const-string/jumbo v15, "Message  handle not created"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 621
    const/16 v14, 0xd3

    .line 654
    if-eqz v2, :cond_c

    .line 656
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 621
    :cond_c
    :goto_2
    return v14

    .line 657
    .end local v10    # "handle":J
    :catch_1
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    goto :goto_1

    .end local v4    # "e":Ljava/io/IOException;
    .restart local v10    # "handle":J
    :catch_2
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 623
    .end local v4    # "e":Ljava/io/IOException;
    :cond_d
    :try_start_6
    new-instance v13, Ljavax/obex/HeaderSet;

    invoke-direct {v13}, Ljavax/obex/HeaderSet;-><init>()V

    .line 624
    .local v13, "replyHeaders":Ljavax/obex/HeaderSet;
    invoke-virtual {v12}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v14

    invoke-static {v10, v11, v14}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getMapHandle(JLcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)Ljava/lang/String;

    move-result-object v9

    .line 625
    .local v9, "handleStr":Ljava/lang/String;
    const-string/jumbo v14, "BluetoothMapObexServer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "handleStr: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " message.getType(): "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 626
    invoke-virtual {v12}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v16

    .line 625
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    const/4 v14, 0x1

    invoke-virtual {v13, v14, v9}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 628
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljavax/obex/Operation;->sendHeaders(Ljavax/obex/HeaderSet;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 654
    if-eqz v2, :cond_e

    .line 656
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 660
    :cond_e
    :goto_3
    const/16 v14, 0xa0

    return v14

    .line 657
    :catch_3
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    goto :goto_3

    .line 650
    .end local v2    # "bMsgStream":Ljava/io/InputStream;
    .end local v4    # "e":Ljava/io/IOException;
    .end local v8    # "folderElement":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .end local v9    # "handleStr":Ljava/lang/String;
    .end local v10    # "handle":J
    .end local v12    # "message":Lcom/android/bluetooth/map/BluetoothMapbMessage;
    .end local v13    # "replyHeaders":Ljavax/obex/HeaderSet;
    :catch_4
    move-exception v5

    .line 651
    .local v5, "e":Ljava/lang/Exception;
    :try_start_8
    const-string/jumbo v14, "BluetoothMapObexServer"

    const-string/jumbo v15, "Exception:"

    invoke-static {v14, v15, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 652
    const/16 v14, 0xc0

    .line 654
    if-eqz v2, :cond_f

    .line 656
    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 652
    :cond_f
    :goto_4
    return v14

    .line 657
    :catch_5
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    goto :goto_4

    .line 642
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_6
    move-exception v4

    .line 643
    .restart local v4    # "e":Ljava/io/IOException;
    :try_start_a
    const-string/jumbo v14, "BluetoothMapObexServer"

    const-string/jumbo v15, "Exception occured: "

    invoke-static {v14, v15, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 644
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mIsAborted:Z

    if-eqz v14, :cond_11

    .line 645
    const-string/jumbo v14, "BluetoothMapObexServer"

    const-string/jumbo v15, "PushMessage Operation Aborted"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 646
    const/16 v14, 0xa0

    .line 654
    if-eqz v2, :cond_10

    .line 656
    :try_start_b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 646
    :cond_10
    :goto_5
    return v14

    .line 657
    :catch_7
    move-exception v4

    goto :goto_5

    .line 648
    :cond_11
    const/16 v14, 0xc0

    .line 654
    if-eqz v2, :cond_12

    .line 656
    :try_start_c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    .line 648
    :cond_12
    :goto_6
    return v14

    .line 657
    :catch_8
    move-exception v4

    goto :goto_6

    .line 639
    .end local v4    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v6

    .line 640
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    :try_start_d
    const-string/jumbo v14, "BluetoothMapObexServer"

    const-string/jumbo v15, "Wrongly formatted bMessage received"

    invoke-static {v14, v15, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 641
    const/16 v14, 0xcc

    .line 654
    if-eqz v2, :cond_13

    .line 656
    :try_start_e
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_a

    .line 641
    :cond_13
    :goto_7
    return v14

    .line 657
    :catch_a
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    goto :goto_7

    .line 630
    .end local v4    # "e":Ljava/io/IOException;
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    :catch_b
    move-exception v3

    .line 633
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_f
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->acquireUnstableContentProviderOrThrow()Landroid/content/ContentProviderClient;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mProviderClient:Landroid/content/ContentProviderClient;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_c
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 638
    :goto_8
    const/16 v14, 0xc0

    .line 654
    if-eqz v2, :cond_14

    .line 656
    :try_start_10
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_d

    .line 638
    :cond_14
    :goto_9
    return v14

    .line 634
    :catch_c
    move-exception v7

    .line 636
    .local v7, "e2":Landroid/os/RemoteException;
    :try_start_11
    const-string/jumbo v14, "BluetoothMapObexServer"

    const-string/jumbo v15, "acquireUnstableContentProviderOrThrow FAILED"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto :goto_8

    .line 653
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v7    # "e2":Landroid/os/RemoteException;
    :catchall_0
    move-exception v14

    .line 654
    if-eqz v2, :cond_15

    .line 656
    :try_start_12
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_e

    .line 653
    :cond_15
    :goto_a
    throw v14

    .line 657
    .restart local v3    # "e":Landroid/os/RemoteException;
    :catch_d
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    goto :goto_9

    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v4    # "e":Ljava/io/IOException;
    :catch_e
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    goto :goto_a
.end method

.method private sendConvoListingRsp(Ljavax/obex/Operation;Lcom/android/bluetooth/map/BluetoothMapAppParams;Ljava/lang/String;)I
    .locals 18
    .param p1, "op"    # Ljavax/obex/Operation;
    .param p2, "appParams"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;
    .param p3, "folderName"    # Ljava/lang/String;

    .prologue
    .line 1171
    const/4 v11, 0x0

    .line 1172
    .local v11, "outStream":Ljava/io/OutputStream;
    const/4 v9, 0x0

    .line 1173
    .local v9, "outBytes":[B
    const/4 v3, 0x0

    .line 1175
    .local v3, "bytesWritten":I
    new-instance v12, Ljavax/obex/HeaderSet;

    invoke-direct {v12}, Ljavax/obex/HeaderSet;-><init>()V

    .line 1176
    .local v12, "replyHeaders":Ljavax/obex/HeaderSet;
    new-instance v8, Lcom/android/bluetooth/map/BluetoothMapAppParams;

    invoke-direct {v8}, Lcom/android/bluetooth/map/BluetoothMapAppParams;-><init>()V

    .line 1178
    .local v8, "outAppParams":Lcom/android/bluetooth/map/BluetoothMapAppParams;
    if-nez p2, :cond_0

    .line 1179
    new-instance p2, Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .end local p2    # "appParams":Lcom/android/bluetooth/map/BluetoothMapAppParams;
    invoke-direct/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;-><init>()V

    .line 1180
    .restart local p2    # "appParams":Lcom/android/bluetooth/map/BluetoothMapAppParams;
    const/16 v13, 0x400

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setMaxListCount(I)V

    .line 1181
    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setStartOffset(I)V

    .line 1185
    :cond_0
    const/4 v13, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v13}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->setMsgTypeFilterParams(Lcom/android/bluetooth/map/BluetoothMapAppParams;Z)V

    .line 1190
    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljavax/obex/Operation;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v11

    .line 1192
    .local v11, "outStream":Ljava/io/OutputStream;
    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMaxListCount()I

    move-result v13

    const/4 v14, -0x1

    if-ne v13, v14, :cond_1

    .line 1193
    const/16 v13, 0x400

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setMaxListCount(I)V

    .line 1195
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getStartOffset()I

    move-result v13

    const/4 v14, -0x1

    if-ne v13, v14, :cond_2

    .line 1196
    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setStartOffset(I)V

    .line 1198
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMaxListCount()I

    move-result v13

    if-eqz v13, :cond_3

    .line 1199
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mOutContent:Lcom/android/bluetooth/map/BluetoothMapContent;

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v13, v0, v14}, Lcom/android/bluetooth/map/BluetoothMapContent;->convoListing(Lcom/android/bluetooth/map/BluetoothMapAppParams;Z)Lcom/android/bluetooth/map/BluetoothMapConvoListing;

    move-result-object v10

    .line 1200
    .local v10, "outList":Lcom/android/bluetooth/map/BluetoothMapConvoListing;
    invoke-virtual {v10}, Lcom/android/bluetooth/map/BluetoothMapConvoListing;->getCount()I

    move-result v13

    invoke-virtual {v8, v13}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setConvoListingSize(I)V

    .line 1202
    invoke-virtual {v10}, Lcom/android/bluetooth/map/BluetoothMapConvoListing;->encode()[B

    move-result-object v9

    .line 1204
    .local v9, "outBytes":[B
    const-string/jumbo v13, "BluetoothMapObexServer"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "outBytes size:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    array-length v15, v9

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    .end local v9    # "outBytes":[B
    :goto_0
    const-string/jumbo v13, "BluetoothMapObexServer"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "outList size:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v10}, Lcom/android/bluetooth/map/BluetoothMapConvoListing;->getCount()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1224
    const-string/jumbo v15, " MaxListCount: "

    .line 1223
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1224
    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMaxListCount()I

    move-result v15

    .line 1223
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    const/4 v10, 0x0

    .line 1226
    .local v10, "outList":Lcom/android/bluetooth/map/BluetoothMapConvoListing;
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {v13}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->getDbIdentifier()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v8, v14, v15, v0, v1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setDatabaseIdentifier(JJ)V

    .line 1230
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    invoke-virtual {v8, v14, v15}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setMseTime(J)V

    .line 1231
    invoke-virtual {v8}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->EncodeParams()[B

    move-result-object v13

    const/16 v14, 0x4c

    invoke-virtual {v12, v14, v13}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 1232
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljavax/obex/Operation;->sendHeaders(Ljavax/obex/HeaderSet;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1250
    invoke-interface/range {p1 .. p1}, Ljavax/obex/Operation;->getMaxPacketSize()I

    move-result v7

    .line 1251
    .local v7, "maxChunkSize":I
    if-eqz v9, :cond_f

    .line 1253
    :goto_1
    :try_start_1
    array-length v13, v9

    if-ge v3, v13, :cond_a

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mIsAborted:Z

    if-nez v13, :cond_a

    .line 1254
    array-length v13, v9

    sub-int/2addr v13, v3

    invoke-static {v7, v13}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1255
    .local v2, "bytesToWrite":I
    invoke-virtual {v11, v9, v3, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1256
    add-int/2addr v3, v2

    goto :goto_1

    .line 1206
    .end local v2    # "bytesToWrite":I
    .end local v7    # "maxChunkSize":I
    .end local v10    # "outList":Lcom/android/bluetooth/map/BluetoothMapConvoListing;
    .local v9, "outBytes":[B
    :cond_3
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mOutContent:Lcom/android/bluetooth/map/BluetoothMapContent;

    const/4 v14, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v13, v0, v14}, Lcom/android/bluetooth/map/BluetoothMapContent;->convoListing(Lcom/android/bluetooth/map/BluetoothMapAppParams;Z)Lcom/android/bluetooth/map/BluetoothMapConvoListing;

    move-result-object v10

    .line 1207
    .local v10, "outList":Lcom/android/bluetooth/map/BluetoothMapConvoListing;
    invoke-virtual {v10}, Lcom/android/bluetooth/map/BluetoothMapConvoListing;->getCount()I

    move-result v13

    invoke-virtual {v8, v13}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setConvoListingSize(I)V

    .line 1208
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mEnableSmsMms:Z

    if-eqz v13, :cond_4

    .line 1209
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mOutContent:Lcom/android/bluetooth/map/BluetoothMapContent;

    invoke-virtual {v13}, Lcom/android/bluetooth/map/BluetoothMapContent;->refreshSmsMmsConvoVersions()Z

    .line 1211
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    if-eqz v13, :cond_5

    .line 1212
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mOutContent:Lcom/android/bluetooth/map/BluetoothMapContent;

    invoke-virtual {v13}, Lcom/android/bluetooth/map/BluetoothMapContent;->refreshImEmailConvoVersions()Z

    .line 1215
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-virtual {v13}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->refreshConvoListVersionCounter()V

    .line 1216
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mRemoteFeatureMask:I

    and-int/lit16 v13, v13, 0x2000

    if-lez v13, :cond_6

    .line 1219
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {v13}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->getCombinedConvoListVersionCounter()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    .line 1218
    move-wide/from16 v0, v16

    invoke-virtual {v8, v14, v15, v0, v1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setConvoListingVerCounter(JJ)V

    .line 1221
    :cond_6
    invoke-interface/range {p1 .. p1}, Ljavax/obex/Operation;->noBodyHeader()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 1234
    .end local v9    # "outBytes":[B
    .end local v10    # "outList":Lcom/android/bluetooth/map/BluetoothMapConvoListing;
    .end local v11    # "outStream":Ljava/io/OutputStream;
    :catch_0
    move-exception v4

    .line 1235
    .local v4, "e":Ljava/io/IOException;
    const-string/jumbo v13, "BluetoothMapObexServer"

    const-string/jumbo v14, "sendConvoListingRsp: IOException - sending OBEX_HTTP_BAD_REQUEST"

    invoke-static {v13, v14, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1236
    if-eqz v11, :cond_7

    :try_start_3
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1237
    :cond_7
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mIsAborted:Z

    if-eqz v13, :cond_9

    .line 1238
    const-string/jumbo v13, "BluetoothMapObexServer"

    const-string/jumbo v14, "sendConvoListingRsp Operation Aborted"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    const/16 v13, 0xa0

    return v13

    .line 1243
    .end local v4    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v5

    .line 1244
    .local v5, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v13, "BluetoothMapObexServer"

    const-string/jumbo v14, "sendConvoListingRsp: IllegalArgumentException - sending OBEX_HTTP_BAD_REQUEST"

    invoke-static {v13, v14, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1246
    if-eqz v11, :cond_8

    :try_start_4
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 1247
    :cond_8
    :goto_3
    const/16 v13, 0xc0

    return v13

    .line 1246
    :catch_2
    move-exception v6

    .local v6, "ex":Ljava/io/IOException;
    goto :goto_3

    .line 1236
    .end local v5    # "e":Ljava/lang/IllegalArgumentException;
    .end local v6    # "ex":Ljava/io/IOException;
    .restart local v4    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v6

    .restart local v6    # "ex":Ljava/io/IOException;
    goto :goto_2

    .line 1241
    .end local v6    # "ex":Ljava/io/IOException;
    :cond_9
    const/16 v13, 0xc0

    return v13

    .line 1262
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v7    # "maxChunkSize":I
    .local v10, "outList":Lcom/android/bluetooth/map/BluetoothMapConvoListing;
    .restart local v11    # "outStream":Ljava/io/OutputStream;
    :cond_a
    if-eqz v11, :cond_b

    :try_start_5
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 1264
    :cond_b
    :goto_4
    array-length v13, v9

    if-eq v3, v13, :cond_c

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mIsAborted:Z

    if-eqz v13, :cond_e

    .line 1272
    :cond_c
    :goto_5
    const/16 v13, 0xa0

    return v13

    .line 1262
    :catch_4
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    goto :goto_4

    .line 1258
    .end local v4    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v4

    .line 1259
    .restart local v4    # "e":Ljava/io/IOException;
    :try_start_6
    const-string/jumbo v13, "BluetoothMapObexServer"

    invoke-static {v13, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1262
    if-eqz v11, :cond_b

    :try_start_7
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_4

    :catch_6
    move-exception v4

    goto :goto_4

    .line 1261
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v13

    .line 1262
    if-eqz v11, :cond_d

    :try_start_8
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 1261
    :cond_d
    :goto_6
    throw v13

    .line 1262
    :catch_7
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    goto :goto_6

    .line 1265
    .end local v4    # "e":Ljava/io/IOException;
    :cond_e
    const-string/jumbo v13, "BluetoothMapObexServer"

    const-string/jumbo v14, "sendConvoListingRsp: bytesWritten != outBytes.length - sending OBEX_HTTP_BAD_REQUEST"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    const/16 v13, 0xc0

    return v13

    .line 1270
    :cond_f
    if-eqz v11, :cond_c

    :try_start_9
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    goto :goto_5

    :catch_8
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    goto :goto_5
.end method

.method private sendFolderListingRsp(Ljavax/obex/Operation;Lcom/android/bluetooth/map/BluetoothMapAppParams;)I
    .locals 16
    .param p1, "op"    # Ljavax/obex/Operation;
    .param p2, "appParams"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    .line 1289
    const/4 v11, 0x0

    .line 1290
    .local v11, "outStream":Ljava/io/OutputStream;
    const/4 v10, 0x0

    .line 1291
    .local v10, "outBytes":[B
    new-instance v9, Lcom/android/bluetooth/map/BluetoothMapAppParams;

    invoke-direct {v9}, Lcom/android/bluetooth/map/BluetoothMapAppParams;-><init>()V

    .line 1292
    .local v9, "outAppParams":Lcom/android/bluetooth/map/BluetoothMapAppParams;
    const/4 v2, 0x0

    .line 1293
    .local v2, "bytesWritten":I
    new-instance v12, Ljavax/obex/HeaderSet;

    invoke-direct {v12}, Ljavax/obex/HeaderSet;-><init>()V

    .line 1295
    .local v12, "replyHeaders":Ljavax/obex/HeaderSet;
    if-nez p2, :cond_0

    .line 1296
    new-instance p2, Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .end local p2    # "appParams":Lcom/android/bluetooth/map/BluetoothMapAppParams;
    invoke-direct/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;-><init>()V

    .line 1297
    .restart local p2    # "appParams":Lcom/android/bluetooth/map/BluetoothMapAppParams;
    const/16 v13, 0x400

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setMaxListCount(I)V

    .line 1300
    :cond_0
    sget-boolean v13, Lcom/android/bluetooth/map/BluetoothMapObexServer;->V:Z

    if-eqz v13, :cond_1

    .line 1301
    const-string/jumbo v13, "BluetoothMapObexServer"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "sendFolderList for "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    invoke-virtual {v15}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    :cond_1
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMaxListCount()I

    move-result v8

    .line 1305
    .local v8, "maxListCount":I
    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getStartOffset()I

    move-result v6

    .line 1307
    .local v6, "listStartOffset":I
    const/4 v13, -0x1

    if-ne v6, v13, :cond_2

    .line 1308
    const/4 v6, 0x0

    .line 1310
    :cond_2
    const/4 v13, -0x1

    if-ne v8, v13, :cond_3

    .line 1311
    const/16 v8, 0x400

    .line 1313
    :cond_3
    if-eqz v8, :cond_4

    .line 1315
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    invoke-virtual {v13, v6, v8}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->encode(II)[B

    move-result-object v10

    .line 1316
    .local v10, "outBytes":[B
    invoke-interface/range {p1 .. p1}, Ljavax/obex/Operation;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v11

    .line 1324
    .end local v10    # "outBytes":[B
    .end local v11    # "outStream":Ljava/io/OutputStream;
    :goto_0
    invoke-virtual {v9}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->EncodeParams()[B

    move-result-object v13

    const/16 v14, 0x4c

    invoke-virtual {v12, v14, v13}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 1325
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljavax/obex/Operation;->sendHeaders(Ljavax/obex/HeaderSet;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1344
    invoke-interface/range {p1 .. p1}, Ljavax/obex/Operation;->getMaxPacketSize()I

    move-result v7

    .line 1346
    .local v7, "maxChunkSize":I
    if-eqz v10, :cond_e

    .line 1348
    :goto_1
    :try_start_1
    array-length v13, v10

    if-ge v2, v13, :cond_8

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mIsAborted:Z

    if-nez v13, :cond_8

    .line 1349
    array-length v13, v10

    sub-int/2addr v13, v2

    invoke-static {v7, v13}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1350
    .local v1, "bytesToWrite":I
    invoke-virtual {v11, v10, v2, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1351
    add-int/2addr v2, v1

    goto :goto_1

    .line 1319
    .end local v1    # "bytesToWrite":I
    .end local v7    # "maxChunkSize":I
    .local v10, "outBytes":[B
    .restart local v11    # "outStream":Ljava/io/OutputStream;
    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    invoke-virtual {v13}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getSubFolderCount()I

    move-result v13

    invoke-virtual {v9, v13}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setFolderListingSize(I)V

    .line 1320
    invoke-interface/range {p1 .. p1}, Ljavax/obex/Operation;->noBodyHeader()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1327
    .end local v6    # "listStartOffset":I
    .end local v8    # "maxListCount":I
    .end local v10    # "outBytes":[B
    .end local v11    # "outStream":Ljava/io/OutputStream;
    :catch_0
    move-exception v4

    .line 1328
    .local v4, "e1":Ljava/io/IOException;
    const-string/jumbo v13, "BluetoothMapObexServer"

    const-string/jumbo v14, "sendFolderListingRsp: IOException - sending OBEX_HTTP_BAD_REQUEST Exception:"

    invoke-static {v13, v14, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1330
    if-eqz v11, :cond_5

    :try_start_3
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1331
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mIsAborted:Z

    if-eqz v13, :cond_7

    .line 1332
    const-string/jumbo v13, "BluetoothMapObexServer"

    const-string/jumbo v14, "sendFolderListingRsp Operation Aborted"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    const/16 v13, 0xa0

    return v13

    .line 1337
    .end local v4    # "e1":Ljava/io/IOException;
    :catch_1
    move-exception v5

    .line 1338
    .local v5, "e1":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v13, "BluetoothMapObexServer"

    const-string/jumbo v14, "sendFolderListingRsp: IllegalArgumentException - sending OBEX_HTTP_BAD_REQUEST Exception:"

    invoke-static {v13, v14, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1340
    if-eqz v11, :cond_6

    :try_start_4
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 1341
    :cond_6
    :goto_3
    const/16 v13, 0xcc

    return v13

    .line 1340
    :catch_2
    move-exception v3

    .local v3, "e":Ljava/io/IOException;
    goto :goto_3

    .line 1330
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "e1":Ljava/lang/IllegalArgumentException;
    .restart local v4    # "e1":Ljava/io/IOException;
    :catch_3
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 1335
    .end local v3    # "e":Ljava/io/IOException;
    :cond_7
    const/16 v13, 0xc0

    return v13

    .line 1356
    .end local v4    # "e1":Ljava/io/IOException;
    .restart local v6    # "listStartOffset":I
    .restart local v7    # "maxChunkSize":I
    .restart local v8    # "maxListCount":I
    :cond_8
    if-eqz v11, :cond_9

    :try_start_5
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 1358
    :cond_9
    :goto_4
    sget-boolean v13, Lcom/android/bluetooth/map/BluetoothMapObexServer;->V:Z

    if-eqz v13, :cond_a

    .line 1359
    const-string/jumbo v13, "BluetoothMapObexServer"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "sendFolderList sent "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " bytes out of "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    array-length v15, v10

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    :cond_a
    array-length v13, v10

    if-eq v2, v13, :cond_b

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mIsAborted:Z

    if-eqz v13, :cond_d

    .line 1361
    :cond_b
    const/16 v13, 0xa0

    return v13

    .line 1356
    :catch_4
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    goto :goto_4

    .line 1353
    .end local v3    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v3

    .line 1356
    .restart local v3    # "e":Ljava/io/IOException;
    if-eqz v11, :cond_9

    :try_start_6
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_4

    :catch_6
    move-exception v3

    goto :goto_4

    .line 1355
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v13

    .line 1356
    if-eqz v11, :cond_c

    :try_start_7
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    .line 1355
    :cond_c
    :goto_5
    throw v13

    .line 1356
    :catch_7
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    goto :goto_5

    .line 1363
    .end local v3    # "e":Ljava/io/IOException;
    :cond_d
    const/16 v13, 0xc0

    return v13

    .line 1366
    :cond_e
    const/16 v13, 0xa0

    return v13
.end method

.method private sendGetMessageRsp(Ljavax/obex/Operation;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;Ljava/lang/String;)I
    .locals 15
    .param p1, "op"    # Ljavax/obex/Operation;
    .param p2, "handle"    # Ljava/lang/String;
    .param p3, "appParams"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;
    .param p4, "version"    # Ljava/lang/String;

    .prologue
    .line 1480
    const/4 v11, 0x0

    .line 1481
    .local v11, "outStream":Ljava/io/OutputStream;
    const/4 v10, 0x0

    .line 1482
    .local v10, "outBytes":[B
    const/4 v4, 0x0

    .line 1485
    .local v4, "bytesWritten":I
    :try_start_0
    iget-object v13, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mOutContent:Lcom/android/bluetooth/map/BluetoothMapContent;

    iget-object v14, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v13, v0, v1, v14, v2}, Lcom/android/bluetooth/map/BluetoothMapContent;->getMessage(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapFolderElement;Ljava/lang/String;)[B

    move-result-object v10

    .line 1486
    .local v10, "outBytes":[B
    invoke-interface/range {p1 .. p1}, Ljavax/obex/Operation;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v11

    .line 1489
    .local v11, "outStream":Ljava/io/OutputStream;
    invoke-static/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getMsgTypeFromHandle(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v13

    sget-object v14, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v13, v14}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 1490
    invoke-static/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getMsgTypeFromHandle(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v13

    sget-object v14, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->IM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v13, v14}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->equals(Ljava/lang/Object;)Z

    move-result v13

    .line 1489
    if-eqz v13, :cond_1

    .line 1491
    :cond_0
    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFractionRequest()I

    move-result v13

    if-nez v13, :cond_1

    .line 1493
    new-instance v9, Lcom/android/bluetooth/map/BluetoothMapAppParams;

    invoke-direct {v9}, Lcom/android/bluetooth/map/BluetoothMapAppParams;-><init>()V

    .line 1494
    .local v9, "outAppParams":Lcom/android/bluetooth/map/BluetoothMapAppParams;
    new-instance v12, Ljavax/obex/HeaderSet;

    invoke-direct {v12}, Ljavax/obex/HeaderSet;-><init>()V

    .line 1495
    .local v12, "replyHeaders":Ljavax/obex/HeaderSet;
    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setFractionDeliver(I)V

    .line 1498
    invoke-virtual {v9}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->EncodeParams()[B

    move-result-object v13

    .line 1497
    const/16 v14, 0x4c

    invoke-virtual {v12, v14, v13}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 1499
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljavax/obex/Operation;->sendHeaders(Ljavax/obex/HeaderSet;)V

    .line 1500
    sget-boolean v13, Lcom/android/bluetooth/map/BluetoothMapObexServer;->V:Z

    if-eqz v13, :cond_1

    const-string/jumbo v13, "BluetoothMapObexServer"

    const-string/jumbo v14, "sendGetMessageRsp fractionRequest - set FRACTION_DELIVER_LAST header"

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1520
    .end local v9    # "outAppParams":Lcom/android/bluetooth/map/BluetoothMapAppParams;
    .end local v12    # "replyHeaders":Ljavax/obex/HeaderSet;
    :cond_1
    invoke-interface/range {p1 .. p1}, Ljavax/obex/Operation;->getMaxPacketSize()I

    move-result v8

    .line 1522
    .local v8, "maxChunkSize":I
    if-eqz v10, :cond_b

    .line 1524
    :goto_0
    :try_start_1
    array-length v13, v10

    if-ge v4, v13, :cond_5

    iget-boolean v13, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mIsAborted:Z

    if-nez v13, :cond_5

    .line 1525
    array-length v13, v10

    sub-int/2addr v13, v4

    invoke-static {v8, v13}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1526
    .local v3, "bytesToWrite":I
    invoke-virtual {v11, v10, v4, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1527
    add-int/2addr v4, v3

    goto :goto_0

    .line 1513
    .end local v3    # "bytesToWrite":I
    .end local v8    # "maxChunkSize":I
    .end local v10    # "outBytes":[B
    .end local v11    # "outStream":Ljava/io/OutputStream;
    :catch_0
    move-exception v6

    .line 1514
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v13, "BluetoothMapObexServer"

    const-string/jumbo v14, "sendGetMessageRsp: IllegalArgumentException (e.g. invalid handle) - sending OBEX_HTTP_BAD_REQUEST"

    invoke-static {v13, v14, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1516
    if-eqz v11, :cond_2

    :try_start_2
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1517
    :cond_2
    :goto_1
    const/16 v13, 0xc0

    return v13

    .line 1516
    :catch_1
    move-exception v7

    .local v7, "ex":Ljava/io/IOException;
    goto :goto_1

    .line 1504
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    .end local v7    # "ex":Ljava/io/IOException;
    :catch_2
    move-exception v5

    .line 1505
    .local v5, "e":Ljava/io/IOException;
    const-string/jumbo v13, "BluetoothMapObexServer"

    const-string/jumbo v14, "sendGetMessageRsp: IOException - sending OBEX_HTTP_BAD_REQUEST"

    invoke-static {v13, v14, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1506
    if-eqz v11, :cond_3

    :try_start_3
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1507
    :cond_3
    :goto_2
    iget-boolean v13, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mIsAborted:Z

    if-eqz v13, :cond_4

    .line 1508
    const-string/jumbo v13, "BluetoothMapObexServer"

    const-string/jumbo v14, "sendGetMessageRsp Operation Aborted"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1509
    const/16 v13, 0xa0

    return v13

    .line 1506
    :catch_3
    move-exception v7

    .restart local v7    # "ex":Ljava/io/IOException;
    goto :goto_2

    .line 1511
    .end local v7    # "ex":Ljava/io/IOException;
    :cond_4
    const/16 v13, 0xc0

    return v13

    .line 1535
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v8    # "maxChunkSize":I
    .restart local v10    # "outBytes":[B
    .restart local v11    # "outStream":Ljava/io/OutputStream;
    :cond_5
    if-eqz v11, :cond_6

    :try_start_4
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 1537
    :cond_6
    :goto_3
    array-length v13, v10

    if-eq v4, v13, :cond_7

    iget-boolean v13, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mIsAborted:Z

    if-eqz v13, :cond_a

    .line 1538
    :cond_7
    const/16 v13, 0xa0

    return v13

    .line 1535
    :catch_4
    move-exception v5

    .restart local v5    # "e":Ljava/io/IOException;
    goto :goto_3

    .line 1529
    .end local v5    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v5

    .line 1531
    .restart local v5    # "e":Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "Abort Received"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 1532
    const-string/jumbo v13, "BluetoothMapObexServer"

    const-string/jumbo v14, "getMessage() Aborted..."

    invoke-static {v13, v14, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1535
    :cond_8
    if-eqz v11, :cond_6

    :try_start_6
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_3

    :catch_6
    move-exception v5

    goto :goto_3

    .line 1534
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v13

    .line 1535
    if-eqz v11, :cond_9

    :try_start_7
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    .line 1534
    :cond_9
    :goto_4
    throw v13

    .line 1535
    :catch_7
    move-exception v5

    .restart local v5    # "e":Ljava/io/IOException;
    goto :goto_4

    .line 1540
    .end local v5    # "e":Ljava/io/IOException;
    :cond_a
    const/16 v13, 0xc0

    return v13

    .line 1543
    :cond_b
    const/16 v13, 0xa0

    return v13
.end method

.method private sendMASInstanceInformationRsp(Ljavax/obex/Operation;Lcom/android/bluetooth/map/BluetoothMapAppParams;)I
    .locals 12
    .param p1, "op"    # Ljavax/obex/Operation;
    .param p2, "appParams"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    .line 1381
    const/4 v5, 0x0

    .line 1382
    .local v5, "outStream":Ljava/io/OutputStream;
    const/4 v4, 0x0

    .line 1383
    .local v4, "outBytes":[B
    const/4 v6, 0x0

    .line 1384
    .local v6, "outString":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1387
    .local v1, "bytesWritten":I
    :try_start_0
    iget v9, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mMasId:I

    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMasInstanceId()I

    move-result v10

    if-ne v9, v10, :cond_8

    .line 1388
    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    if-eqz v9, :cond_7

    .line 1389
    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v9}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v9

    sget-object v10, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne v9, v10, :cond_2

    .line 1390
    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v9}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v9}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getName()Ljava/lang/String;

    move-result-object v6

    .line 1422
    .end local v6    # "outString":Ljava/lang/String;
    :cond_0
    :goto_0
    const/16 v9, 0xc8

    .line 1421
    invoke-static {v6, v9}, Lcom/android/bluetooth/map/BluetoothMapUtils;->truncateUtf8StringToBytearray(Ljava/lang/String;I)[B

    move-result-object v4

    .line 1425
    .local v4, "outBytes":[B
    invoke-interface {p1}, Ljavax/obex/Operation;->openOutputStream()Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 1438
    .local v5, "outStream":Ljava/io/OutputStream;
    invoke-interface {p1}, Ljavax/obex/Operation;->getMaxPacketSize()I

    move-result v3

    .line 1440
    .local v3, "maxChunkSize":I
    if-eqz v4, :cond_10

    .line 1442
    :goto_1
    :try_start_1
    array-length v9, v4

    if-ge v1, v9, :cond_a

    iget-boolean v9, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mIsAborted:Z

    if-nez v9, :cond_a

    .line 1443
    array-length v9, v4

    sub-int/2addr v9, v1

    invoke-static {v3, v9}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1444
    .local v0, "bytesToWrite":I
    invoke-virtual {v5, v4, v1, v0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1445
    add-int/2addr v1, v0

    goto :goto_1

    .line 1391
    .end local v0    # "bytesToWrite":I
    .end local v3    # "maxChunkSize":I
    .local v4, "outBytes":[B
    .local v5, "outStream":Ljava/io/OutputStream;
    .restart local v6    # "outString":Ljava/lang/String;
    :cond_1
    :try_start_2
    const-string/jumbo v6, "EMAIL"

    .local v6, "outString":Ljava/lang/String;
    goto :goto_0

    .line 1392
    .local v6, "outString":Ljava/lang/String;
    :cond_2
    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v9}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v9

    sget-object v10, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->IM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne v9, v10, :cond_0

    .line 1393
    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v9}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getUciFull()Ljava/lang/String;

    move-result-object v6

    .line 1394
    .local v6, "outString":Ljava/lang/String;
    if-nez v6, :cond_0

    .line 1395
    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v9}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getUci()Ljava/lang/String;

    move-result-object v8

    .line 1398
    .local v8, "uci":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    if-nez v8, :cond_5

    const/4 v9, 0x5

    :goto_2
    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1399
    .local v7, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v9, "un"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1400
    iget v9, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mMasId:I

    const/16 v10, 0xa

    if-ge v9, v10, :cond_6

    .line 1401
    const-string/jumbo v9, "00"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1405
    :cond_3
    :goto_3
    iget v9, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mMasId:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1406
    if-eqz v8, :cond_4

    .line 1407
    const-string/jumbo v9, ":"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1409
    :cond_4
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 1398
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    :cond_5
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x5

    goto :goto_2

    .line 1402
    .restart local v7    # "sb":Ljava/lang/StringBuilder;
    :cond_6
    iget v9, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mMasId:I

    const/16 v10, 0x64

    if-ge v9, v10, :cond_3

    .line 1403
    const-string/jumbo v9, "0"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 1427
    .end local v4    # "outBytes":[B
    .end local v6    # "outString":Ljava/lang/String;
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    .end local v8    # "uci":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1428
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v9, "BluetoothMapObexServer"

    const-string/jumbo v10, "sendMASInstanceInformationRsp: IOException - sending OBEX_HTTP_BAD_REQUEST"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1430
    iget-boolean v9, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mIsAborted:Z

    if-eqz v9, :cond_9

    .line 1431
    const-string/jumbo v9, "BluetoothMapObexServer"

    const-string/jumbo v10, "sendMASInstanceInformationRsp Operation Aborted"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1432
    const/16 v9, 0xa0

    return v9

    .line 1413
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v4    # "outBytes":[B
    .local v6, "outString":Ljava/lang/String;
    :cond_7
    :try_start_3
    const-string/jumbo v6, "SMS/MMS"
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .local v6, "outString":Ljava/lang/String;
    goto/16 :goto_0

    .line 1417
    .local v6, "outString":Ljava/lang/String;
    :cond_8
    const/16 v9, 0xc0

    return v9

    .line 1434
    .end local v4    # "outBytes":[B
    .end local v6    # "outString":Ljava/lang/String;
    .restart local v2    # "e":Ljava/io/IOException;
    :cond_9
    const/16 v9, 0xc0

    return v9

    .line 1450
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v3    # "maxChunkSize":I
    .local v4, "outBytes":[B
    .local v5, "outStream":Ljava/io/OutputStream;
    :cond_a
    if-eqz v5, :cond_b

    :try_start_4
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 1452
    :cond_b
    :goto_4
    sget-boolean v9, Lcom/android/bluetooth/map/BluetoothMapObexServer;->V:Z

    if-eqz v9, :cond_c

    .line 1453
    const-string/jumbo v9, "BluetoothMapObexServer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "sendMASInstanceInformationRsp sent "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1454
    const-string/jumbo v11, " bytes out of "

    .line 1453
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1454
    array-length v11, v4

    .line 1453
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1455
    :cond_c
    array-length v9, v4

    if-eq v1, v9, :cond_d

    iget-boolean v9, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mIsAborted:Z

    if-eqz v9, :cond_f

    .line 1456
    :cond_d
    const/16 v9, 0xa0

    return v9

    .line 1450
    :catch_1
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_4

    .line 1447
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 1450
    .restart local v2    # "e":Ljava/io/IOException;
    if-eqz v5, :cond_b

    :try_start_5
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    :catch_3
    move-exception v2

    goto :goto_4

    .line 1449
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 1450
    if-eqz v5, :cond_e

    :try_start_6
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 1449
    :cond_e
    :goto_5
    throw v9

    .line 1450
    :catch_4
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_5

    .line 1458
    .end local v2    # "e":Ljava/io/IOException;
    :cond_f
    const/16 v9, 0xc0

    return v9

    .line 1460
    :cond_10
    const/16 v9, 0xa0

    return v9
.end method

.method private sendMessageListingRsp(Ljavax/obex/Operation;Lcom/android/bluetooth/map/BluetoothMapAppParams;Ljava/lang/String;)I
    .locals 24
    .param p1, "op"    # Ljavax/obex/Operation;
    .param p2, "appParams"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;
    .param p3, "folderName"    # Ljava/lang/String;

    .prologue
    .line 980
    const/16 v16, 0x0

    .line 981
    .local v16, "outStream":Ljava/io/OutputStream;
    const/4 v14, 0x0

    .line 982
    .local v14, "outBytes":[B
    const/4 v5, 0x0

    .line 983
    .local v5, "bytesWritten":I
    const/4 v10, 0x0

    .line 984
    .local v10, "hasUnread":Z
    new-instance v17, Ljavax/obex/HeaderSet;

    invoke-direct/range {v17 .. v17}, Ljavax/obex/HeaderSet;-><init>()V

    .line 985
    .local v17, "replyHeaders":Ljavax/obex/HeaderSet;
    new-instance v13, Lcom/android/bluetooth/map/BluetoothMapAppParams;

    invoke-direct {v13}, Lcom/android/bluetooth/map/BluetoothMapAppParams;-><init>()V

    .line 987
    .local v13, "outAppParams":Lcom/android/bluetooth/map/BluetoothMapAppParams;
    if-nez p2, :cond_0

    .line 988
    new-instance p2, Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .end local p2    # "appParams":Lcom/android/bluetooth/map/BluetoothMapAppParams;
    invoke-direct/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;-><init>()V

    .line 989
    .restart local p2    # "appParams":Lcom/android/bluetooth/map/BluetoothMapAppParams;
    const/16 v19, 0x400

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setMaxListCount(I)V

    .line 990
    const/16 v19, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setStartOffset(I)V

    .line 1002
    :cond_0
    const/4 v9, 0x0

    .line 1003
    .local v9, "folderToList":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterMsgHandle()J

    move-result-wide v20

    const-wide/16 v22, -0x1

    cmp-long v19, v20, v22

    if-nez v19, :cond_1

    .line 1004
    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterConvoId()Lcom/android/bluetooth/SignedLongLong;

    move-result-object v19

    if-eqz v19, :cond_6

    .line 1006
    :cond_1
    const-string/jumbo v19, "BluetoothMapObexServer"

    const-string/jumbo v20, "sendMessageListingRsp: ignore folder "

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getRoot()Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v9

    .line 1008
    .local v9, "folderToList":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->setIngore(Z)V

    .line 1023
    :goto_0
    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljavax/obex/Operation;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v16

    .line 1025
    .local v16, "outStream":Ljava/io/OutputStream;
    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMaxListCount()I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    .line 1026
    const/16 v19, 0x400

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setMaxListCount(I)V

    .line 1028
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getStartOffset()I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    .line 1029
    const/16 v19, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setStartOffset(I)V

    .line 1032
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMaxListCount()I

    move-result v19

    if-eqz v19, :cond_9

    .line 1033
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mOutContent:Lcom/android/bluetooth/map/BluetoothMapContent;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v9, v1}, Lcom/android/bluetooth/map/BluetoothMapContent;->msgListing(Lcom/android/bluetooth/map/BluetoothMapFolderElement;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Lcom/android/bluetooth/map/BluetoothMapMessageListing;

    move-result-object v15

    .line 1035
    .local v15, "outList":Lcom/android/bluetooth/map/BluetoothMapMessageListing;
    invoke-virtual {v15}, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->getCount()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setMessageListingSize(I)V

    .line 1037
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mRemoteFeatureMask:I

    move/from16 v19, v0

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x200

    move/from16 v19, v0

    if-lez v19, :cond_8

    .line 1039
    const-string/jumbo v18, "1.1"

    .line 1045
    .local v18, "version":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mThreadIdSupport:Z

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->encode(ZLjava/lang/String;)[B

    move-result-object v14

    .line 1046
    .local v14, "outBytes":[B
    invoke-virtual {v15}, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->hasUnread()Z

    move-result v10

    .line 1053
    .end local v14    # "outBytes":[B
    .end local v15    # "outList":Lcom/android/bluetooth/map/BluetoothMapMessageListing;
    .end local v18    # "version":Ljava/lang/String;
    .local v10, "hasUnread":Z
    :goto_2
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->setIngore(Z)V

    .line 1056
    if-eqz v10, :cond_b

    .line 1057
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setNewMessage(I)V

    .line 1061
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mRemoteFeatureMask:I

    move/from16 v19, v0

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x800

    move/from16 v19, v0

    .line 1062
    const/16 v20, 0x800

    .line 1061
    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 1063
    const-wide/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->getDbIdentifier()J

    move-result-wide v22

    move-wide/from16 v0, v20

    move-wide/from16 v2, v22

    invoke-virtual {v13, v0, v1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setDatabaseIdentifier(JJ)V

    .line 1065
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mRemoteFeatureMask:I

    move/from16 v19, v0

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x1000

    move/from16 v19, v0

    .line 1066
    const/16 v20, 0x1000

    .line 1065
    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    .line 1068
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->refreshFolderVersionCounter()V

    .line 1069
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->getFolderVersionCounter()J

    move-result-wide v20

    const-wide/16 v22, 0x0

    move-wide/from16 v0, v20

    move-wide/from16 v2, v22

    invoke-virtual {v13, v0, v1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setFolderVerCounter(JJ)V

    .line 1071
    :cond_5
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->getTime()J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-virtual {v13, v0, v1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setMseTime(J)V

    .line 1072
    invoke-virtual {v13}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->EncodeParams()[B

    move-result-object v19

    const/16 v20, 0x4c

    move-object/from16 v0, v17

    move/from16 v1, v20

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 1073
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljavax/obex/Operation;->sendHeaders(Ljavax/obex/HeaderSet;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1091
    invoke-interface/range {p1 .. p1}, Ljavax/obex/Operation;->getMaxPacketSize()I

    move-result v12

    .line 1092
    .local v12, "maxChunkSize":I
    if-eqz v14, :cond_13

    .line 1094
    :goto_4
    :try_start_1
    array-length v0, v14

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v5, v0, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mIsAborted:Z

    move/from16 v19, v0

    if-nez v19, :cond_e

    .line 1095
    array-length v0, v14

    move/from16 v19, v0

    sub-int v19, v19, v5

    move/from16 v0, v19

    invoke-static {v12, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1096
    .local v4, "bytesToWrite":I
    move-object/from16 v0, v16

    invoke-virtual {v0, v14, v5, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1097
    add-int/2addr v5, v4

    goto :goto_4

    .line 1010
    .end local v4    # "bytesToWrite":I
    .end local v12    # "maxChunkSize":I
    .local v9, "folderToList":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .local v10, "hasUnread":Z
    .local v14, "outBytes":[B
    .local v16, "outStream":Ljava/io/OutputStream;
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->getFolderElementFromName(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v9

    .line 1011
    .local v9, "folderToList":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    if-nez v9, :cond_7

    .line 1012
    const-string/jumbo v19, "BluetoothMapObexServer"

    const-string/jumbo v20, "sendMessageListingRsp: folderToList == null-sending OBEX_HTTP_BAD_REQUEST"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    const/16 v19, 0xc0

    return v19

    .line 1016
    :cond_7
    const-string/jumbo v19, "BluetoothMapObexServer"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "sendMessageListingRsp: has sms "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v9}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->hasSmsMmsContent()Z

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 1017
    const-string/jumbo v21, "has email "

    .line 1016
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 1017
    invoke-virtual {v9}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->hasEmailContent()Z

    move-result v21

    .line 1016
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 1018
    const-string/jumbo v21, "has IM "

    .line 1016
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 1018
    invoke-virtual {v9}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->hasImContent()Z

    move-result v21

    .line 1016
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1041
    .restart local v15    # "outList":Lcom/android/bluetooth/map/BluetoothMapMessageListing;
    .local v16, "outStream":Ljava/io/OutputStream;
    :cond_8
    :try_start_2
    const-string/jumbo v18, "1.0"

    .restart local v18    # "version":Ljava/lang/String;
    goto/16 :goto_1

    .line 1048
    .end local v15    # "outList":Lcom/android/bluetooth/map/BluetoothMapMessageListing;
    .end local v18    # "version":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mOutContent:Lcom/android/bluetooth/map/BluetoothMapContent;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v9, v1}, Lcom/android/bluetooth/map/BluetoothMapContent;->msgListingSize(Lcom/android/bluetooth/map/BluetoothMapFolderElement;Lcom/android/bluetooth/map/BluetoothMapAppParams;)I

    move-result v11

    .line 1049
    .local v11, "listSize":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mOutContent:Lcom/android/bluetooth/map/BluetoothMapContent;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v9, v1}, Lcom/android/bluetooth/map/BluetoothMapContent;->msgListingHasUnread(Lcom/android/bluetooth/map/BluetoothMapFolderElement;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result v10

    .line 1050
    .local v10, "hasUnread":Z
    invoke-virtual {v13, v11}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setMessageListingSize(I)V

    .line 1051
    invoke-interface/range {p1 .. p1}, Ljavax/obex/Operation;->noBodyHeader()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    .line 1075
    .end local v10    # "hasUnread":Z
    .end local v11    # "listSize":I
    .end local v14    # "outBytes":[B
    .end local v16    # "outStream":Ljava/io/OutputStream;
    :catch_0
    move-exception v6

    .line 1076
    .local v6, "e":Ljava/io/IOException;
    const-string/jumbo v19, "BluetoothMapObexServer"

    const-string/jumbo v20, "sendMessageListingRsp: IOException - sending OBEX_HTTP_BAD_REQUEST"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1077
    if-eqz v16, :cond_a

    :try_start_3
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1078
    :cond_a
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mIsAborted:Z

    move/from16 v19, v0

    if-eqz v19, :cond_d

    .line 1079
    const-string/jumbo v19, "BluetoothMapObexServer"

    const-string/jumbo v20, "sendMessageListingRsp Operation Aborted"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    const/16 v19, 0xa0

    return v19

    .line 1059
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v10    # "hasUnread":Z
    .restart local v16    # "outStream":Ljava/io/OutputStream;
    :cond_b
    const/16 v19, 0x0

    :try_start_4
    move/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setNewMessage(I)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_3

    .line 1084
    .end local v10    # "hasUnread":Z
    .end local v16    # "outStream":Ljava/io/OutputStream;
    :catch_1
    move-exception v7

    .line 1085
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v19, "BluetoothMapObexServer"

    const-string/jumbo v20, "sendMessageListingRsp: IllegalArgumentException - sending OBEX_HTTP_BAD_REQUEST"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1087
    if-eqz v16, :cond_c

    :try_start_5
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 1088
    :cond_c
    :goto_6
    const/16 v19, 0xc0

    return v19

    .line 1087
    :catch_2
    move-exception v8

    .local v8, "ex":Ljava/io/IOException;
    goto :goto_6

    .line 1077
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    .end local v8    # "ex":Ljava/io/IOException;
    .restart local v6    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v8

    .restart local v8    # "ex":Ljava/io/IOException;
    goto :goto_5

    .line 1082
    .end local v8    # "ex":Ljava/io/IOException;
    :cond_d
    const/16 v19, 0xc0

    return v19

    .line 1103
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v10    # "hasUnread":Z
    .restart local v12    # "maxChunkSize":I
    .restart local v16    # "outStream":Ljava/io/OutputStream;
    :cond_e
    if-eqz v16, :cond_f

    :try_start_6
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 1105
    :cond_f
    :goto_7
    array-length v0, v14

    move/from16 v19, v0

    move/from16 v0, v19

    if-eq v5, v0, :cond_10

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mIsAborted:Z

    move/from16 v19, v0

    if-eqz v19, :cond_12

    .line 1113
    :cond_10
    :goto_8
    const/16 v19, 0xa0

    return v19

    .line 1103
    :catch_4
    move-exception v6

    .restart local v6    # "e":Ljava/io/IOException;
    goto :goto_7

    .line 1099
    .end local v6    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v6

    .line 1100
    .restart local v6    # "e":Ljava/io/IOException;
    :try_start_7
    const-string/jumbo v19, "BluetoothMapObexServer"

    move-object/from16 v0, v19

    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1103
    if-eqz v16, :cond_f

    :try_start_8
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_7

    :catch_6
    move-exception v6

    goto :goto_7

    .line 1102
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v19

    .line 1103
    if-eqz v16, :cond_11

    :try_start_9
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 1102
    :cond_11
    :goto_9
    throw v19

    .line 1103
    :catch_7
    move-exception v6

    .restart local v6    # "e":Ljava/io/IOException;
    goto :goto_9

    .line 1106
    .end local v6    # "e":Ljava/io/IOException;
    :cond_12
    const-string/jumbo v19, "BluetoothMapObexServer"

    const-string/jumbo v20, "sendMessageListingRsp: bytesWritten != outBytes.length - sending OBEX_HTTP_BAD_REQUEST"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    const/16 v19, 0xc0

    return v19

    .line 1111
    :cond_13
    if-eqz v16, :cond_10

    :try_start_a
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    goto :goto_8

    :catch_8
    move-exception v6

    .restart local v6    # "e":Ljava/io/IOException;
    goto :goto_8
.end method

.method private setMessageStatus(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;)I
    .locals 12
    .param p1, "msgHandle"    # Ljava/lang/String;
    .param p2, "appParams"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    .line 664
    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getStatusIndicator()I

    move-result v11

    .line 665
    .local v11, "indicator":I
    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getStatusValue()I

    move-result v7

    .line 666
    .local v7, "value":I
    const-string/jumbo v10, ""

    .line 670
    .local v10, "extendedData":Ljava/lang/String;
    const-string/jumbo v1, "BluetoothMapObexServer"

    const-string/jumbo v5, "setMessageStatus():"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    if-nez p1, :cond_0

    .line 673
    const/16 v1, 0xcc

    return v1

    .line 674
    :cond_0
    const/4 v1, -0x1

    if-eq v11, v1, :cond_1

    .line 675
    const/4 v1, -0x1

    if-ne v7, v1, :cond_2

    .line 676
    :cond_1
    if-nez v10, :cond_2

    .line 677
    const/16 v1, 0xcc

    return v1

    .line 679
    :cond_2
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    if-nez v1, :cond_3

    .line 680
    const-string/jumbo v1, "BluetoothMapObexServer"

    const-string/jumbo v5, "Error: no mObserver!"

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    const/16 v1, 0xd3

    return v1

    .line 685
    :cond_3
    :try_start_0
    invoke-static {p1}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getCpHandle(Ljava/lang/String;)J

    move-result-wide v2

    .line 686
    .local v2, "handle":J
    invoke-static {p1}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getMsgTypeFromHandle(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v4

    .line 687
    .local v4, "msgType":Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    const-string/jumbo v1, "BluetoothMapObexServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setMessageStatus. Handle:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", MsgType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 696
    const/4 v1, 0x1

    if-ne v11, v1, :cond_4

    .line 697
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 698
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mBaseUriString:Ljava/lang/String;

    .line 697
    invoke-virtual/range {v1 .. v7}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->setMessageStatusDeleted(JLcom/android/bluetooth/map/BluetoothMapUtils$TYPE;Lcom/android/bluetooth/map/BluetoothMapFolderElement;Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_5

    .line 699
    const-string/jumbo v1, "BluetoothMapObexServer"

    const-string/jumbo v5, "setMessageStatusDeleted failed"

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    const/16 v1, 0xd3

    return v1

    .line 691
    .end local v2    # "handle":J
    .end local v4    # "msgType":Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    :catch_0
    move-exception v8

    .line 692
    .local v8, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v1, "BluetoothMapObexServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Message type not found in handle string: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    const/16 v1, 0xcc

    return v1

    .line 688
    .end local v8    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v9

    .line 689
    .local v9, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v1, "BluetoothMapObexServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Wrongly formatted message handle: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    const/16 v1, 0xcc

    return v1

    .line 702
    .end local v9    # "e":Ljava/lang/NumberFormatException;
    .restart local v2    # "handle":J
    .restart local v4    # "msgType":Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    :cond_4
    if-nez v11, :cond_5

    .line 704
    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mBaseUriString:Ljava/lang/String;

    move v6, v7

    invoke-virtual/range {v1 .. v6}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->setMessageStatusRead(JLcom/android/bluetooth/map/BluetoothMapUtils$TYPE;Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_5

    .line 705
    const-string/jumbo v1, "BluetoothMapObexServer"

    const-string/jumbo v5, "not able to update the message"

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 706
    const/16 v1, 0xd3

    return v1

    .line 708
    :catch_2
    move-exception v0

    .line 709
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothMapObexServer"

    const-string/jumbo v5, "Error in setMessageStatusRead()"

    invoke-static {v1, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 710
    const/16 v1, 0xd3

    return v1

    .line 713
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_5
    if-eqz v10, :cond_6

    .line 717
    :cond_6
    const/16 v1, 0xa0

    return v1
.end method

.method private setMsgTypeFilterParams(Lcom/android/bluetooth/map/BluetoothMapAppParams;Z)V
    .locals 4
    .param p1, "appParams"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;
    .param p2, "overwrite"    # Z

    .prologue
    .line 1125
    const/4 v0, 0x0

    .line 1126
    .local v0, "masFilterMask":I
    iget-boolean v2, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mEnableSmsMms:Z

    if-nez v2, :cond_0

    .line 1127
    const/4 v0, 0x2

    .line 1128
    or-int/lit8 v0, v0, 0x1

    .line 1129
    or-int/lit8 v0, v0, 0x8

    .line 1131
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    if-nez v2, :cond_2

    .line 1132
    or-int/lit8 v0, v0, 0x4

    .line 1133
    or-int/lit8 v0, v0, 0x10

    .line 1142
    :cond_1
    :goto_0
    if-eqz p2, :cond_4

    .line 1143
    invoke-virtual {p1, v0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setFilterMessageType(I)V

    .line 1124
    :goto_1
    return-void

    .line 1135
    :cond_2
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v2

    sget-object v3, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-eq v2, v3, :cond_3

    .line 1136
    or-int/lit8 v0, v0, 0x4

    .line 1138
    :cond_3
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v2

    sget-object v3, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->IM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-eq v2, v3, :cond_1

    .line 1139
    or-int/lit8 v0, v0, 0x10

    goto :goto_0

    .line 1145
    :cond_4
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterMessageType()I

    move-result v1

    .line 1146
    .local v1, "newMask":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_5

    .line 1147
    invoke-virtual {p1, v1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setFilterMessageType(I)V

    goto :goto_1

    .line 1149
    :cond_5
    or-int/2addr v1, v0

    .line 1150
    invoke-virtual {p1, v1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setFilterMessageType(I)V

    goto :goto_1
.end method

.method private setOwnerStatus(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;)I
    .locals 15
    .param p1, "msgHandle"    # Ljava/lang/String;
    .param p2, "appParams"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 723
    iget-object v12, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    if-eqz v12, :cond_6

    iget-object v12, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v12}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v12

    sget-object v13, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->IM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne v12, v13, :cond_6

    .line 724
    new-instance v5, Landroid/os/Bundle;

    const/4 v12, 0x5

    invoke-direct {v5, v12}, Landroid/os/Bundle;-><init>(I)V

    .line 726
    .local v5, "extras":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getPresenceAvailability()I

    move-result v9

    .line 727
    .local v9, "presenceState":I
    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getPresenceStatus()Ljava/lang/String;

    move-result-object v10

    .line 728
    .local v10, "presenceStatus":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getLastActivity()J

    move-result-wide v6

    .line 729
    .local v6, "lastActivity":J
    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getChatState()I

    move-result v0

    .line 730
    .local v0, "chatState":I
    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getChatStateConvoIdString()Ljava/lang/String;

    move-result-object v1

    .line 732
    .local v1, "chatStatusConvoId":Ljava/lang/String;
    const/4 v12, -0x1

    if-ne v9, v12, :cond_0

    .line 733
    if-nez v10, :cond_0

    .line 734
    const-wide/16 v12, -0x1

    cmp-long v12, v6, v12

    if-nez v12, :cond_0

    .line 735
    const/4 v12, -0x1

    if-ne v0, v12, :cond_0

    .line 736
    if-nez v1, :cond_0

    .line 737
    const/16 v12, 0xcc

    return v12

    .line 740
    :cond_0
    const/4 v12, -0x1

    if-eq v9, v12, :cond_1

    .line 741
    const-string/jumbo v12, "PresenceState"

    invoke-virtual {v5, v12, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 743
    :cond_1
    if-eqz v10, :cond_2

    .line 744
    const-string/jumbo v12, "PresenceStatus"

    invoke-virtual {v5, v12, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    :cond_2
    const-wide/16 v12, -0x1

    cmp-long v12, v6, v12

    if-eqz v12, :cond_3

    .line 747
    const-string/jumbo v12, "LastActive"

    invoke-virtual {v5, v12, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 749
    :cond_3
    const/4 v12, -0x1

    if-eq v0, v12, :cond_4

    .line 750
    if-eqz v1, :cond_4

    .line 751
    const-string/jumbo v12, "ChatState"

    invoke-virtual {v5, v12, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 752
    const-string/jumbo v12, "ConversationId"

    invoke-virtual {v5, v12, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    :cond_4
    iget-object v12, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mBaseUriString:Ljava/lang/String;

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 756
    .local v11, "uri":Landroid/net/Uri;
    const-string/jumbo v12, "BluetoothMapObexServer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "setOwnerStatus in: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    :try_start_0
    const-string/jumbo v12, "BluetoothMapObexServer"

    const-string/jumbo v13, "setOwnerStatus call()..."

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    iget-object v12, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mProviderClient:Landroid/content/ContentProviderClient;

    .line 760
    const-string/jumbo v13, "SetOwnerStatus"

    const/4 v14, 0x0

    .line 759
    invoke-virtual {v12, v13, v14, v5}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v8

    .line 761
    .local v8, "myBundle":Landroid/os/Bundle;
    if-eqz v8, :cond_5

    .line 762
    const/16 v12, 0xa0

    return v12

    .line 764
    :cond_5
    const-string/jumbo v12, "BluetoothMapObexServer"

    const-string/jumbo v13, "setOwnerStatus call failed"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 765
    const/16 v12, 0xd1

    return v12

    .line 773
    .end local v8    # "myBundle":Landroid/os/Bundle;
    :catch_0
    move-exception v3

    .line 774
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v12, "BluetoothMapObexServer"

    const-string/jumbo v13, "setOwnerStatus - if uri is not known"

    invoke-static {v12, v13, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 775
    const/16 v12, 0xd3

    return v12

    .line 770
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v4

    .line 771
    .local v4, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v12, "BluetoothMapObexServer"

    const-string/jumbo v13, "setOwnerStatus - if uri or method is null"

    invoke-static {v12, v13, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 772
    const/16 v12, 0xd3

    return v12

    .line 767
    .end local v4    # "e":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v2

    .line 768
    .local v2, "e":Landroid/os/RemoteException;
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->acquireUnstableContentProviderOrThrow()Landroid/content/ContentProviderClient;

    move-result-object v12

    iput-object v12, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mProviderClient:Landroid/content/ContentProviderClient;

    .line 769
    const/16 v12, 0xd3

    return v12

    .line 778
    .end local v0    # "chatState":I
    .end local v1    # "chatStatusConvoId":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v5    # "extras":Landroid/os/Bundle;
    .end local v6    # "lastActivity":J
    .end local v9    # "presenceState":I
    .end local v10    # "presenceStatus":Ljava/lang/String;
    .end local v11    # "uri":Landroid/net/Uri;
    :cond_6
    const/16 v12, 0xd3

    return v12
.end method

.method private updateInbox()I
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 498
    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    if-eqz v9, :cond_2

    .line 499
    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 500
    const-string/jumbo v10, "INBOX"

    .line 499
    invoke-virtual {v9, v10}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderByName(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v7

    .line 501
    .local v7, "inboxFolder":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    if-eqz v7, :cond_2

    .line 502
    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mAccountId:J

    .line 503
    .local v0, "accountId":J
    const-string/jumbo v9, "BluetoothMapObexServer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateInbox inbox="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "id="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 504
    invoke-virtual {v7}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderId()J

    move-result-wide v12

    .line 503
    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    new-instance v6, Landroid/os/Bundle;

    const/4 v9, 0x2

    invoke-direct {v6, v9}, Landroid/os/Bundle;-><init>(I)V

    .line 507
    .local v6, "extras":Landroid/os/Bundle;
    const-wide/16 v10, -0x1

    cmp-long v9, v0, v10

    if-eqz v9, :cond_0

    .line 508
    const-string/jumbo v9, "BluetoothMapObexServer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateInbox accountId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    const-string/jumbo v9, "UpdateFolderId"

    .line 510
    invoke-virtual {v7}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderId()J

    move-result-wide v10

    .line 509
    invoke-virtual {v6, v9, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 511
    const-string/jumbo v9, "UpdateAccountId"

    invoke-virtual {v6, v9, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 519
    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mBaseUriString:Ljava/lang/String;

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 520
    .local v5, "emailUri":Landroid/net/Uri;
    const-string/jumbo v9, "BluetoothMapObexServer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateInbox in: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    :try_start_0
    const-string/jumbo v9, "BluetoothMapObexServer"

    const-string/jumbo v10, "updateInbox call()..."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mProviderClient:Landroid/content/ContentProviderClient;

    .line 524
    const-string/jumbo v10, "UpdateFolder"

    const/4 v11, 0x0

    .line 523
    invoke-virtual {v9, v10, v11, v6}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 525
    .local v8, "myBundle":Landroid/os/Bundle;
    if-eqz v8, :cond_1

    .line 526
    const/16 v9, 0xa0

    return v9

    .line 515
    .end local v5    # "emailUri":Landroid/net/Uri;
    .end local v8    # "myBundle":Landroid/os/Bundle;
    :cond_0
    const-string/jumbo v9, "BluetoothMapObexServer"

    const-string/jumbo v10, "updateInbox accountId=0 -> OBEX_HTTP_NOT_IMPLEMENTED"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    const/16 v9, 0xd1

    return v9

    .line 528
    .restart local v5    # "emailUri":Landroid/net/Uri;
    .restart local v8    # "myBundle":Landroid/os/Bundle;
    :cond_1
    :try_start_1
    const-string/jumbo v9, "BluetoothMapObexServer"

    const-string/jumbo v10, "updateInbox call failed"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 529
    const/16 v9, 0xd1

    return v9

    .line 538
    .end local v8    # "myBundle":Landroid/os/Bundle;
    :catch_0
    move-exception v3

    .line 539
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v9, "BluetoothMapObexServer"

    const-string/jumbo v10, "UpdateInbox - if uri is not known"

    invoke-static {v9, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 540
    const/16 v9, 0xd3

    return v9

    .line 534
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v4

    .line 535
    .local v4, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v9, "BluetoothMapObexServer"

    const-string/jumbo v10, "UpdateInbox - if uri or method is null"

    invoke-static {v9, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 536
    const/16 v9, 0xd3

    return v9

    .line 531
    .end local v4    # "e":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v2

    .line 532
    .local v2, "e":Landroid/os/RemoteException;
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->acquireUnstableContentProviderOrThrow()Landroid/content/ContentProviderClient;

    move-result-object v9

    iput-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mProviderClient:Landroid/content/ContentProviderClient;

    .line 533
    const/16 v9, 0xd3

    return v9

    .line 545
    .end local v0    # "accountId":J
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v5    # "emailUri":Landroid/net/Uri;
    .end local v6    # "extras":Landroid/os/Bundle;
    .end local v7    # "inboxFolder":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    :cond_2
    const/16 v9, 0xd1

    return v9
.end method


# virtual methods
.method public getRemoteFeatureMask()I
    .locals 1

    .prologue
    .line 299
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mRemoteFeatureMask:I

    return v0
.end method

.method public isSrmSupported()Z
    .locals 1

    .prologue
    .line 295
    const/4 v0, 0x1

    return v0
.end method

.method public onAbort(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)I
    .locals 2
    .param p1, "request"    # Ljavax/obex/HeaderSet;
    .param p2, "reply"    # Ljavax/obex/HeaderSet;

    .prologue
    .line 398
    const-string/jumbo v0, "BluetoothMapObexServer"

    const-string/jumbo v1, "onAbort(): enter."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->notifyUpdateWakeLock()V

    .line 400
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mIsAborted:Z

    .line 401
    const/16 v0, 0xa0

    return v0
.end method

.method public onClose()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 834
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCallback:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 835
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCallback:Landroid/os/Handler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 836
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x1388

    iput v1, v0, Landroid/os/Message;->what:I

    .line 837
    iget v1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mMasId:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 838
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 839
    const-string/jumbo v1, "BluetoothMapObexServer"

    const-string/jumbo v2, "onClose(): msg MSG_SERVERSESSION_CLOSE sent out."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mProviderClient:Landroid/content/ContentProviderClient;

    if-eqz v1, :cond_1

    .line 843
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mProviderClient:Landroid/content/ContentProviderClient;

    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    .line 844
    iput-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mProviderClient:Landroid/content/ContentProviderClient;

    .line 833
    :cond_1
    return-void
.end method

.method public onConnect(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)I
    .locals 15
    .param p1, "request"    # Ljavax/obex/HeaderSet;
    .param p2, "reply"    # Ljavax/obex/HeaderSet;

    .prologue
    const/16 v14, 0x10

    const/4 v13, 0x1

    const/4 v12, 0x0

    const/16 v11, 0xc6

    .line 310
    const-string/jumbo v8, "BluetoothMapObexServer"

    const-string/jumbo v9, "onConnect():"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    sget-boolean v8, Lcom/android/bluetooth/map/BluetoothMapObexServer;->V:Z

    if-eqz v8, :cond_0

    invoke-static/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->logHeader(Ljavax/obex/HeaderSet;)V

    .line 312
    :cond_0
    iput-boolean v12, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mThreadIdSupport:Z

    .line 313
    const-string/jumbo v8, "1.0"

    iput-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mMessageVersion:Ljava/lang/String;

    .line 314
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->notifyUpdateWakeLock()V

    .line 315
    const/4 v6, 0x0

    .line 317
    .local v6, "threadedMailKey":Ljava/lang/Long;
    const/16 v8, 0x46

    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 318
    .local v7, "uuid":[B
    const/16 v8, 0xfa

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/lang/Long;

    move-object v6, v0

    .line 319
    .local v6, "threadedMailKey":Ljava/lang/Long;
    if-nez v7, :cond_1

    .line 320
    return v11

    .line 322
    :cond_1
    const-string/jumbo v8, "BluetoothMapObexServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onConnect(): uuid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v7}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    array-length v8, v7

    if-eq v8, v14, :cond_2

    .line 325
    const-string/jumbo v8, "BluetoothMapObexServer"

    const-string/jumbo v9, "Wrong UUID length"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    return v11

    .line 328
    :cond_2
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v14, :cond_4

    .line 329
    aget-byte v8, v7, v3

    sget-object v9, Lcom/android/bluetooth/map/BluetoothMapObexServer;->MAP_TARGET:[B

    aget-byte v9, v9, v3

    if-eq v8, v9, :cond_3

    .line 330
    const-string/jumbo v8, "BluetoothMapObexServer"

    const-string/jumbo v9, "Wrong UUID"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    return v11

    .line 328
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 334
    :cond_4
    const/16 v8, 0x4a

    move-object/from16 v0, p2

    invoke-virtual {v0, v8, v7}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    const/16 v8, 0x4a

    :try_start_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 342
    .local v5, "remote":[B
    if-eqz v5, :cond_5

    .line 343
    const-string/jumbo v8, "BluetoothMapObexServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onConnect(): remote="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v5}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    const/16 v8, 0x46

    move-object/from16 v0, p2

    invoke-virtual {v0, v8, v5}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 346
    :cond_5
    if-eqz v6, :cond_6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/32 v10, 0x534c5349

    cmp-long v8, v8, v10

    if-nez v8, :cond_6

    .line 351
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mThreadIdSupport:Z

    .line 352
    const-wide/32 v8, 0x534c5349

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/16 v9, 0xfa

    move-object/from16 v0, p2

    invoke-virtual {v0, v9, v8}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 360
    :cond_6
    iget v8, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mRemoteFeatureMask:I

    and-int/lit16 v8, v8, 0x200

    .line 361
    const/16 v9, 0x200

    .line 360
    if-ne v8, v9, :cond_7

    .line 362
    iput-boolean v13, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mThreadIdSupport:Z

    .line 365
    :cond_7
    iget v8, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mRemoteFeatureMask:I

    and-int/lit16 v8, v8, 0x100

    .line 366
    const/16 v9, 0x100

    .line 365
    if-ne v8, v9, :cond_8

    .line 367
    const-string/jumbo v8, "1.1"

    iput-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mMessageVersion:Ljava/lang/String;

    .line 370
    :cond_8
    sget-boolean v8, Lcom/android/bluetooth/map/BluetoothMapObexServer;->V:Z

    if-eqz v8, :cond_9

    const-string/jumbo v8, "BluetoothMapObexServer"

    const-string/jumbo v9, "onConnect(): uuid is ok, will send out MSG_SESSION_ESTABLISHED msg."

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :cond_9
    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCallback:Landroid/os/Handler;

    if-eqz v8, :cond_a

    .line 374
    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCallback:Landroid/os/Handler;

    invoke-static {v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v4

    .line 375
    .local v4, "msg":Landroid/os/Message;
    const/16 v8, 0x1389

    iput v8, v4, Landroid/os/Message;->what:I

    .line 376
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 379
    .end local v4    # "msg":Landroid/os/Message;
    :cond_a
    const/16 v8, 0xa0

    return v8

    .line 335
    .end local v3    # "i":I
    .end local v5    # "remote":[B
    .end local v6    # "threadedMailKey":Ljava/lang/Long;
    .end local v7    # "uuid":[B
    :catch_0
    move-exception v2

    .line 336
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v8, "BluetoothMapObexServer"

    const-string/jumbo v9, "Exception during onConnect:"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 337
    const/16 v8, 0xd0

    return v8

    .line 354
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v3    # "i":I
    .restart local v6    # "threadedMailKey":Ljava/lang/Long;
    .restart local v7    # "uuid":[B
    :catch_1
    move-exception v2

    .line 355
    .restart local v2    # "e":Ljava/io/IOException;
    const-string/jumbo v8, "BluetoothMapObexServer"

    const-string/jumbo v9, "Exception during onConnect:"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 356
    iput-boolean v12, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mThreadIdSupport:Z

    .line 357
    const/16 v8, 0xd0

    return v8
.end method

.method public onDelete(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)I
    .locals 12
    .param p1, "request"    # Ljavax/obex/HeaderSet;
    .param p2, "reply"    # Ljavax/obex/HeaderSet;

    .prologue
    .line 1548
    const-string/jumbo v8, "BluetoothMapObexServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onDelete() "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Ljavax/obex/HeaderSet;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mIsAborted:Z

    .line 1550
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->notifyUpdateWakeLock()V

    .line 1553
    const/4 v1, 0x0

    .line 1557
    .local v1, "appParams":Lcom/android/bluetooth/map/BluetoothMapAppParams;
    const/16 v8, 0x42

    :try_start_0
    invoke-virtual {p1, v8}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1559
    .local v7, "type":Ljava/lang/String;
    const/4 v8, 0x1

    invoke-virtual {p1, v8}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1560
    .local v6, "name":Ljava/lang/String;
    const/16 v8, 0x4c

    invoke-virtual {p1, v8}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 1561
    .local v0, "appParamRaw":[B
    if-eqz v0, :cond_0

    .line 1562
    new-instance v2, Lcom/android/bluetooth/map/BluetoothMapAppParams;

    invoke-direct {v2, v0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;-><init>([B)V

    .local v2, "appParams":Lcom/android/bluetooth/map/BluetoothMapAppParams;
    move-object v1, v2

    .line 1563
    .end local v1    # "appParams":Lcom/android/bluetooth/map/BluetoothMapAppParams;
    .end local v2    # "appParams":Lcom/android/bluetooth/map/BluetoothMapAppParams;
    :cond_0
    const-string/jumbo v8, "BluetoothMapObexServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "type = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", name = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1564
    const-string/jumbo v8, "x-bt/MAP-notification-filter"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1565
    sget-boolean v8, Lcom/android/bluetooth/map/BluetoothMapObexServer;->V:Z

    if-eqz v8, :cond_1

    .line 1566
    const-string/jumbo v8, "BluetoothMapObexServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "TYPE_SET_NOTIFICATION_FILTER: NotificationFilter: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1567
    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getNotificationFilter()J

    move-result-wide v10

    .line 1566
    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1569
    :cond_1
    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getNotificationFilter()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->setNotificationFilter(J)V

    .line 1570
    const/16 v8, 0xa0

    return v8

    .line 1571
    :cond_2
    const-string/jumbo v8, "x-bt/participant"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1572
    sget-boolean v8, Lcom/android/bluetooth/map/BluetoothMapObexServer;->V:Z

    if-eqz v8, :cond_3

    .line 1573
    const-string/jumbo v8, "BluetoothMapObexServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "TYPE_SET_OWNER_STATUS: PresenceAvailability "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1574
    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getPresenceAvailability()I

    move-result v10

    .line 1573
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1575
    const-string/jumbo v10, ", PresenceStatus: "

    .line 1573
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1575
    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getPresenceStatus()Ljava/lang/String;

    move-result-object v10

    .line 1573
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1576
    const-string/jumbo v10, ", LastActivity: "

    .line 1573
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1576
    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getLastActivityString()Ljava/lang/String;

    move-result-object v10

    .line 1573
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1577
    const-string/jumbo v10, ", ChatStatus: "

    .line 1573
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1577
    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getChatState()I

    move-result v10

    .line 1573
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1578
    const-string/jumbo v10, ", ChatStatusConvoId: "

    .line 1573
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1578
    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getChatStateConvoIdString()Ljava/lang/String;

    move-result-object v10

    .line 1573
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1580
    :cond_3
    invoke-direct {p0, v6, v1}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->setOwnerStatus(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    return v8

    .line 1591
    .end local v0    # "appParamRaw":[B
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "type":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 1594
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "BluetoothMapObexServer"

    const-string/jumbo v9, "Exception occured while handling request"

    invoke-static {v8, v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1598
    iget-boolean v8, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mIsAborted:Z

    if-eqz v8, :cond_4

    .line 1599
    const/16 v8, 0xa0

    return v8

    .line 1601
    :cond_4
    const/16 v8, 0xc0

    return v8

    .line 1583
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 1586
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_1
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->acquireUnstableContentProviderOrThrow()Landroid/content/ContentProviderClient;

    move-result-object v8

    iput-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mProviderClient:Landroid/content/ContentProviderClient;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1590
    :goto_0
    const/16 v8, 0xc0

    return v8

    .line 1604
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v0    # "appParamRaw":[B
    .restart local v6    # "name":Ljava/lang/String;
    .restart local v7    # "type":Ljava/lang/String;
    :cond_5
    const/16 v8, 0xc0

    return v8

    .line 1587
    .end local v0    # "appParamRaw":[B
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "type":Ljava/lang/String;
    .restart local v3    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v5

    .local v5, "e2":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public onDisconnect(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)V
    .locals 3
    .param p1, "req"    # Ljavax/obex/HeaderSet;
    .param p2, "resp"    # Ljavax/obex/HeaderSet;

    .prologue
    .line 384
    const-string/jumbo v1, "BluetoothMapObexServer"

    const-string/jumbo v2, "onDisconnect(): enter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapObexServer;->V:Z

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->logHeader(Ljavax/obex/HeaderSet;)V

    .line 386
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->notifyUpdateWakeLock()V

    .line 387
    const/16 v1, 0xa0

    iput v1, p2, Ljavax/obex/HeaderSet;->responseCode:I

    .line 388
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCallback:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 389
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCallback:Landroid/os/Handler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 390
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x138a

    iput v1, v0, Landroid/os/Message;->what:I

    .line 391
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 392
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapObexServer;->V:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "BluetoothMapObexServer"

    const-string/jumbo v2, "onDisconnect(): msg MSG_SESSION_DISCONNECTED sent out."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    return-void
.end method

.method public onGet(Ljavax/obex/Operation;)I
    .locals 20
    .param p1, "op"    # Ljavax/obex/Operation;

    .prologue
    .line 851
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->notifyUpdateWakeLock()V

    .line 852
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mIsAborted:Z

    .line 856
    const/4 v2, 0x0

    .line 857
    .local v2, "appParamRaw":[B
    const/4 v3, 0x0

    .line 859
    .local v3, "appParams":Lcom/android/bluetooth/map/BluetoothMapAppParams;
    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljavax/obex/Operation;->getReceivedHeader()Ljavax/obex/HeaderSet;

    move-result-object v9

    .line 860
    .local v9, "request":Ljavax/obex/HeaderSet;
    const/16 v14, 0x42

    invoke-virtual {v9, v14}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 862
    .local v13, "type":Ljava/lang/String;
    const/16 v14, 0x4c

    invoke-virtual {v9, v14}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v14

    move-object v0, v14

    check-cast v0, [B

    move-object v2, v0

    .line 863
    .local v2, "appParamRaw":[B
    if-eqz v2, :cond_0

    .line 864
    new-instance v4, Lcom/android/bluetooth/map/BluetoothMapAppParams;

    invoke-direct {v4, v2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;-><init>([B)V

    .local v4, "appParams":Lcom/android/bluetooth/map/BluetoothMapAppParams;
    move-object v3, v4

    .line 866
    .end local v3    # "appParams":Lcom/android/bluetooth/map/BluetoothMapAppParams;
    .end local v4    # "appParams":Lcom/android/bluetooth/map/BluetoothMapAppParams;
    :cond_0
    sget-boolean v14, Lcom/android/bluetooth/map/BluetoothMapObexServer;->V:Z

    if-eqz v14, :cond_1

    invoke-static {v9}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->logHeader(Ljavax/obex/HeaderSet;)V

    .line 867
    :cond_1
    const-string/jumbo v14, "BluetoothMapObexServer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "OnGet type is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    if-nez v13, :cond_3

    .line 870
    sget-boolean v14, Lcom/android/bluetooth/map/BluetoothMapObexServer;->V:Z

    if-eqz v14, :cond_2

    const-string/jumbo v14, "BluetoothMapObexServer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "type is null?"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    :cond_2
    const/16 v14, 0xc0

    return v14

    .line 874
    :cond_3
    const-string/jumbo v14, "x-obex/folder-listing"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 875
    sget-boolean v14, Lcom/android/bluetooth/map/BluetoothMapObexServer;->V:Z

    if-eqz v14, :cond_4

    if-eqz v3, :cond_4

    .line 876
    const-string/jumbo v14, "BluetoothMapObexServer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "TYPE_GET_FOLDER_LISTING: MaxListCount = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 877
    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMaxListCount()I

    move-result v16

    .line 876
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 878
    const-string/jumbo v16, ", ListStartOffset = "

    .line 876
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 878
    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getStartOffset()I

    move-result v16

    .line 876
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->sendFolderListingRsp(Ljavax/obex/Operation;Lcom/android/bluetooth/map/BluetoothMapAppParams;)I

    move-result v14

    return v14

    .line 882
    :cond_5
    const-string/jumbo v14, "x-bt/MAP-msg-listing"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 883
    const/4 v14, 0x1

    invoke-virtual {v9, v14}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 884
    .local v8, "name":Ljava/lang/String;
    sget-boolean v14, Lcom/android/bluetooth/map/BluetoothMapObexServer;->V:Z

    if-eqz v14, :cond_6

    if-eqz v3, :cond_6

    .line 885
    const-string/jumbo v14, "BluetoothMapObexServer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "TYPE_GET_MESSAGE_LISTING: folder name is: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 886
    const-string/jumbo v16, ", MaxListCount = "

    .line 885
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 886
    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMaxListCount()I

    move-result v16

    .line 885
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 887
    const-string/jumbo v16, ", ListStartOffset = "

    .line 885
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 887
    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getStartOffset()I

    move-result v16

    .line 885
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    const-string/jumbo v14, "BluetoothMapObexServer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "SubjectLength = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getSubjectLength()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 889
    const-string/jumbo v16, ", ParameterMask = "

    .line 888
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 889
    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v16

    .line 888
    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    const-string/jumbo v14, "BluetoothMapObexServer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "FilterMessageType = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterMessageType()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    const-string/jumbo v14, "BluetoothMapObexServer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "FilterPeriodBegin = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPeriodBeginString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 892
    const-string/jumbo v16, ", FilterPeriodEnd = "

    .line 891
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 892
    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPeriodEndString()Ljava/lang/String;

    move-result-object v16

    .line 891
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 893
    const-string/jumbo v16, ", FilterReadStatus = "

    .line 891
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 893
    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterReadStatus()I

    move-result v16

    .line 891
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    const-string/jumbo v14, "BluetoothMapObexServer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "FilterRecipient = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterRecipient()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 895
    const-string/jumbo v16, ", FilterOriginator = "

    .line 894
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 895
    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterOriginator()Ljava/lang/String;

    move-result-object v16

    .line 894
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    const-string/jumbo v14, "BluetoothMapObexServer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "FilterPriority = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPriority()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterMsgHandle()J

    move-result-wide v10

    .line 898
    .local v10, "tmpLong":J
    const-string/jumbo v15, "BluetoothMapObexServer"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "FilterMsgHandle = "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 899
    const-wide/16 v18, -0x1

    cmp-long v14, v10, v18

    if-nez v14, :cond_7

    const-string/jumbo v14, ""

    .line 898
    :goto_0
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v15, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterConvoId()Lcom/android/bluetooth/SignedLongLong;

    move-result-object v12

    .line 902
    .local v12, "tmpLongLong":Lcom/android/bluetooth/SignedLongLong;
    const-string/jumbo v15, "BluetoothMapObexServer"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "FilterConvoId = "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    if-nez v12, :cond_8

    const-string/jumbo v14, ""

    :goto_1
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v15, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    .end local v10    # "tmpLong":J
    .end local v12    # "tmpLongLong":Lcom/android/bluetooth/SignedLongLong;
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v8}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->sendMessageListingRsp(Ljavax/obex/Operation;Lcom/android/bluetooth/map/BluetoothMapAppParams;Ljava/lang/String;)I

    move-result v14

    return v14

    .line 900
    .restart local v10    # "tmpLong":J
    :cond_7
    invoke-static {v10, v11}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v14

    goto :goto_0

    .line 903
    .restart local v12    # "tmpLongLong":Lcom/android/bluetooth/SignedLongLong;
    :cond_8
    invoke-virtual {v12}, Lcom/android/bluetooth/SignedLongLong;->getLeastSignificantBits()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v14

    goto :goto_1

    .line 908
    .end local v8    # "name":Ljava/lang/String;
    .end local v10    # "tmpLong":J
    .end local v12    # "tmpLongLong":Lcom/android/bluetooth/SignedLongLong;
    :cond_9
    const-string/jumbo v14, "x-bt/MAP-convo-listing"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 909
    const/4 v14, 0x1

    invoke-virtual {v9, v14}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 910
    .restart local v8    # "name":Ljava/lang/String;
    sget-boolean v14, Lcom/android/bluetooth/map/BluetoothMapObexServer;->V:Z

    if-eqz v14, :cond_a

    if-eqz v3, :cond_a

    .line 911
    const-string/jumbo v14, "BluetoothMapObexServer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "TYPE_GET_CONVO_LISTING: name is"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 912
    const-string/jumbo v16, ", MaxListCount = "

    .line 911
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 912
    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMaxListCount()I

    move-result v16

    .line 911
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 913
    const-string/jumbo v16, ", ListStartOffset = "

    .line 911
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 913
    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getStartOffset()I

    move-result v16

    .line 911
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    const-string/jumbo v14, "BluetoothMapObexServer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "FilterLastActivityBegin = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterLastActivityBegin()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    const-string/jumbo v14, "BluetoothMapObexServer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "FilterLastActivityEnd = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterLastActivityEnd()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    const-string/jumbo v14, "BluetoothMapObexServer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "FilterReadStatus = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterReadStatus()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    const-string/jumbo v14, "BluetoothMapObexServer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "FilterRecipient = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterRecipient()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v8}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->sendConvoListingRsp(Ljavax/obex/Operation;Lcom/android/bluetooth/map/BluetoothMapAppParams;Ljava/lang/String;)I

    move-result v14

    return v14

    .line 921
    .end local v8    # "name":Ljava/lang/String;
    :cond_b
    const-string/jumbo v14, "x-bt/MASInstanceInformation"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 922
    sget-boolean v14, Lcom/android/bluetooth/map/BluetoothMapObexServer;->V:Z

    if-eqz v14, :cond_c

    if-eqz v3, :cond_c

    .line 923
    const-string/jumbo v14, "BluetoothMapObexServer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "TYPE_MESSAGE (GET): MASInstandeId = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 924
    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMasInstanceId()I

    move-result v16

    .line 923
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->sendMASInstanceInformationRsp(Ljavax/obex/Operation;Lcom/android/bluetooth/map/BluetoothMapAppParams;)I

    move-result v14

    return v14

    .line 928
    :cond_d
    const-string/jumbo v14, "x-bt/message"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f

    .line 929
    const/4 v14, 0x1

    invoke-virtual {v9, v14}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 930
    .restart local v8    # "name":Ljava/lang/String;
    sget-boolean v14, Lcom/android/bluetooth/map/BluetoothMapObexServer;->V:Z

    if-eqz v14, :cond_e

    if-eqz v3, :cond_e

    .line 931
    const-string/jumbo v14, "BluetoothMapObexServer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "TYPE_MESSAGE (GET): name is"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 932
    const-string/jumbo v16, ", Attachment = "

    .line 931
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 932
    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getAttachment()I

    move-result v16

    .line 931
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 933
    const-string/jumbo v16, ", Charset = "

    .line 931
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 933
    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getCharset()I

    move-result v16

    .line 931
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 934
    const-string/jumbo v16, ", FractionRequest = "

    .line 931
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 934
    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFractionRequest()I

    move-result v16

    .line 931
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    :cond_e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mMessageVersion:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8, v3, v14}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->sendGetMessageRsp(Ljavax/obex/Operation;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;Ljava/lang/String;)I

    move-result v14

    return v14

    .line 939
    .end local v8    # "name":Ljava/lang/String;
    :cond_f
    const-string/jumbo v14, "BluetoothMapObexServer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "unknown type request: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 940
    const/16 v14, 0xc6

    return v14

    .line 949
    .end local v2    # "appParamRaw":[B
    .end local v9    # "request":Ljavax/obex/HeaderSet;
    .end local v13    # "type":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 951
    .local v5, "e":Ljava/lang/Exception;
    const-string/jumbo v14, "BluetoothMapObexServer"

    const-string/jumbo v15, "Exception occured while handling request"

    invoke-static {v14, v15, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 955
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mIsAborted:Z

    if-eqz v14, :cond_10

    .line 956
    const-string/jumbo v14, "BluetoothMapObexServer"

    const-string/jumbo v15, "onGet Operation Aborted"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    const/16 v14, 0xa0

    return v14

    .line 959
    :cond_10
    const/16 v14, 0xc0

    return v14

    .line 946
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v7

    .line 947
    .local v7, "e":Ljava/text/ParseException;
    const-string/jumbo v14, "BluetoothMapObexServer"

    const-string/jumbo v15, "Exception:"

    invoke-static {v14, v15, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 948
    const/16 v14, 0xcc

    return v14

    .line 943
    .end local v7    # "e":Ljava/text/ParseException;
    :catch_2
    move-exception v6

    .line 944
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v14, "BluetoothMapObexServer"

    const-string/jumbo v15, "Exception:"

    invoke-static {v14, v15, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 945
    const/16 v14, 0xcc

    return v14
.end method

.method public onPut(Ljavax/obex/Operation;)I
    .locals 14
    .param p1, "op"    # Ljavax/obex/Operation;

    .prologue
    .line 406
    const-string/jumbo v9, "BluetoothMapObexServer"

    const-string/jumbo v10, "onPut(): enter"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mIsAborted:Z

    .line 408
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->notifyUpdateWakeLock()V

    .line 409
    const/4 v7, 0x0

    .line 412
    .local v7, "request":Ljavax/obex/HeaderSet;
    const/4 v1, 0x0

    .line 415
    .local v1, "appParams":Lcom/android/bluetooth/map/BluetoothMapAppParams;
    :try_start_0
    invoke-interface {p1}, Ljavax/obex/Operation;->getReceivedHeader()Ljavax/obex/HeaderSet;

    move-result-object v7

    .line 416
    .local v7, "request":Ljavax/obex/HeaderSet;
    sget-boolean v9, Lcom/android/bluetooth/map/BluetoothMapObexServer;->V:Z

    if-eqz v9, :cond_0

    invoke-static {v7}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->logHeader(Ljavax/obex/HeaderSet;)V

    .line 417
    :cond_0
    const/16 v9, 0x42

    invoke-virtual {v7, v9}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 418
    .local v8, "type":Ljava/lang/String;
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 419
    .local v6, "name":Ljava/lang/String;
    const/16 v9, 0x4c

    invoke-virtual {v7, v9}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 420
    .local v0, "appParamRaw":[B
    if-eqz v0, :cond_1

    .line 421
    new-instance v2, Lcom/android/bluetooth/map/BluetoothMapAppParams;

    invoke-direct {v2, v0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;-><init>([B)V

    .local v2, "appParams":Lcom/android/bluetooth/map/BluetoothMapAppParams;
    move-object v1, v2

    .line 422
    .end local v1    # "appParams":Lcom/android/bluetooth/map/BluetoothMapAppParams;
    .end local v2    # "appParams":Lcom/android/bluetooth/map/BluetoothMapAppParams;
    :cond_1
    const-string/jumbo v9, "BluetoothMapObexServer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "type = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", name = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    const-string/jumbo v9, "x-bt/MAP-messageUpdate"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 424
    sget-boolean v9, Lcom/android/bluetooth/map/BluetoothMapObexServer;->V:Z

    if-eqz v9, :cond_2

    .line 425
    const-string/jumbo v9, "BluetoothMapObexServer"

    const-string/jumbo v10, "TYPE_MESSAGE_UPDATE:"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    :cond_2
    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v9}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v9

    sget-object v10, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne v9, v10, :cond_3

    .line 428
    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mOutContent:Lcom/android/bluetooth/map/BluetoothMapContent;

    instance-of v9, v9, Lcom/android/bluetooth/map/BluetoothMapContentEmail;

    .line 427
    if-eqz v9, :cond_3

    .line 429
    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mOutContent:Lcom/android/bluetooth/map/BluetoothMapContent;

    check-cast v9, Lcom/android/bluetooth/map/BluetoothMapContentEmail;

    invoke-virtual {v9}, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->msgUpdate()V

    .line 430
    const/16 v9, 0xa0

    return v9

    .line 432
    :cond_3
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->updateInbox()I

    move-result v9

    return v9

    .line 433
    :cond_4
    const-string/jumbo v9, "x-bt/MAP-NotificationRegistration"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 434
    sget-boolean v9, Lcom/android/bluetooth/map/BluetoothMapObexServer;->V:Z

    if-eqz v9, :cond_5

    .line 435
    const-string/jumbo v9, "BluetoothMapObexServer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "TYPE_SET_NOTIFICATION_REGISTRATION: NotificationStatus: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 436
    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getNotificationStatus()I

    move-result v11

    .line 435
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    :cond_5
    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getNotificationStatus()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->setNotificationRegistration(I)I

    move-result v9

    return v9

    .line 439
    :cond_6
    const-string/jumbo v9, "x-bt/MAP-notification-filter"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 440
    sget-boolean v9, Lcom/android/bluetooth/map/BluetoothMapObexServer;->V:Z

    if-eqz v9, :cond_7

    .line 441
    const-string/jumbo v9, "BluetoothMapObexServer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "TYPE_SET_NOTIFICATION_FILTER: NotificationFilter: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 442
    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getNotificationFilter()J

    move-result-wide v12

    .line 441
    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :cond_7
    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getNotificationFilter()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->setNotificationFilter(J)V

    .line 445
    const/16 v9, 0xa0

    return v9

    .line 446
    :cond_8
    const-string/jumbo v9, "x-bt/messageStatus"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 447
    sget-boolean v9, Lcom/android/bluetooth/map/BluetoothMapObexServer;->V:Z

    if-eqz v9, :cond_9

    .line 448
    const-string/jumbo v9, "BluetoothMapObexServer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "TYPE_SET_MESSAGE_STATUS: StatusIndicator: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 449
    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getStatusIndicator()I

    move-result v11

    .line 448
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 450
    const-string/jumbo v11, ", StatusValue: "

    .line 448
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 450
    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getStatusValue()I

    move-result v11

    .line 448
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 451
    const-string/jumbo v11, ", ExtentedData: "

    .line 448
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 451
    const-string/jumbo v11, ""

    .line 448
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    :cond_9
    invoke-direct {p0, v6, v1}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->setMessageStatus(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;)I

    move-result v9

    return v9

    .line 454
    :cond_a
    const-string/jumbo v9, "x-bt/message"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 455
    sget-boolean v9, Lcom/android/bluetooth/map/BluetoothMapObexServer;->V:Z

    if-eqz v9, :cond_b

    .line 456
    const-string/jumbo v9, "BluetoothMapObexServer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "TYPE_MESSAGE: Transparet: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getTransparent()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 457
    const-string/jumbo v11, ", retry: "

    .line 456
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 457
    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getRetry()I

    move-result v11

    .line 456
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 458
    const-string/jumbo v11, ", charset: "

    .line 456
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 458
    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getCharset()I

    move-result v11

    .line 456
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    :cond_b
    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mMessageVersion:Ljava/lang/String;

    invoke-direct {p0, p1, v6, v1, v9}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->pushMessage(Ljavax/obex/Operation;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;Ljava/lang/String;)I

    move-result v9

    return v9

    .line 461
    :cond_c
    const-string/jumbo v9, "x-bt/participant"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 462
    sget-boolean v9, Lcom/android/bluetooth/map/BluetoothMapObexServer;->V:Z

    if-eqz v9, :cond_d

    .line 463
    const-string/jumbo v9, "BluetoothMapObexServer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "TYPE_SET_OWNER_STATUS: PresenceAvailability "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 464
    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getPresenceAvailability()I

    move-result v11

    .line 463
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 465
    const-string/jumbo v11, ", PresenceStatus: "

    .line 463
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 465
    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getPresenceStatus()Ljava/lang/String;

    move-result-object v11

    .line 463
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 466
    const-string/jumbo v11, ", LastActivity: "

    .line 463
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 466
    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getLastActivityString()Ljava/lang/String;

    move-result-object v11

    .line 463
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 467
    const-string/jumbo v11, ", ChatStatus: "

    .line 463
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 467
    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getChatState()I

    move-result v11

    .line 463
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 468
    const-string/jumbo v11, ", ChatStatusConvoId: "

    .line 463
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 468
    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getChatStateConvoIdString()Ljava/lang/String;

    move-result-object v11

    .line 463
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    :cond_d
    invoke-direct {p0, v6, v1}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->setOwnerStatus(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    return v9

    .line 481
    .end local v0    # "appParamRaw":[B
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "request":Ljavax/obex/HeaderSet;
    .end local v8    # "type":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 484
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v9, "BluetoothMapObexServer"

    const-string/jumbo v10, "Exception occured while handling request"

    invoke-static {v9, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 488
    iget-boolean v9, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mIsAborted:Z

    if-eqz v9, :cond_e

    .line 489
    const/16 v9, 0xa0

    return v9

    .line 491
    :cond_e
    const/16 v9, 0xc0

    return v9

    .line 473
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 476
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_1
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->acquireUnstableContentProviderOrThrow()Landroid/content/ContentProviderClient;

    move-result-object v9

    iput-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mProviderClient:Landroid/content/ContentProviderClient;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 480
    :goto_0
    const/16 v9, 0xc0

    return v9

    .line 494
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v0    # "appParamRaw":[B
    .restart local v6    # "name":Ljava/lang/String;
    .restart local v7    # "request":Ljavax/obex/HeaderSet;
    .restart local v8    # "type":Ljava/lang/String;
    :cond_f
    const/16 v9, 0xc0

    return v9

    .line 477
    .end local v0    # "appParamRaw":[B
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "request":Ljavax/obex/HeaderSet;
    .end local v8    # "type":Ljava/lang/String;
    .restart local v3    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v5

    .local v5, "e2":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public onSetPath(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;ZZ)I
    .locals 7
    .param p1, "request"    # Ljavax/obex/HeaderSet;
    .param p2, "reply"    # Ljavax/obex/HeaderSet;
    .param p3, "backup"    # Z
    .param p4, "create"    # Z

    .prologue
    const/16 v6, 0xc0

    .line 786
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->notifyUpdateWakeLock()V

    .line 788
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p1, v3}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 798
    .local v2, "folderName":Ljava/lang/String;
    sget-boolean v3, Lcom/android/bluetooth/map/BluetoothMapObexServer;->V:Z

    if-eqz v3, :cond_0

    invoke-static {p1}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->logHeader(Ljavax/obex/HeaderSet;)V

    .line 799
    :cond_0
    const-string/jumbo v3, "BluetoothMapObexServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onSetPath name is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 800
    const-string/jumbo v5, " backup: "

    .line 799
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 801
    const-string/jumbo v5, " create: "

    .line 799
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    if-eqz p3, :cond_1

    .line 804
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getParent()Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 805
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getParent()Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v3

    iput-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 810
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 811
    :cond_2
    if-nez p3, :cond_3

    .line 812
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getRoot()Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v3

    iput-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 828
    :cond_3
    :goto_0
    sget-boolean v3, Lcom/android/bluetooth/map/BluetoothMapObexServer;->V:Z

    if-eqz v3, :cond_4

    const-string/jumbo v3, "BluetoothMapObexServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Current Folder: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    invoke-virtual {v5}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    :cond_4
    const/16 v3, 0xa0

    return v3

    .line 789
    .end local v2    # "folderName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 791
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "BluetoothMapObexServer"

    const-string/jumbo v4, "request headers error"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 795
    return v6

    .line 807
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "folderName":Ljava/lang/String;
    :cond_5
    return v6

    .line 815
    :cond_6
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v3

    sget-object v4, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne v3, v4, :cond_7

    .line 816
    const-string/jumbo v3, "DRAFT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 817
    const-string/jumbo v2, "DRAFTS"

    .line 820
    :cond_7
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    invoke-virtual {v3, v2}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getSubFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v1

    .line 821
    .local v1, "folder":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    if-eqz v1, :cond_8

    .line 822
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    goto :goto_0

    .line 824
    :cond_8
    const-string/jumbo v3, "BluetoothMapObexServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SubFolder Not found! : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    invoke-virtual {v5}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    return v6
.end method

.method public setRemoteFeatureMask(I)V
    .locals 3
    .param p1, "mRemoteFeatureMask"    # I

    .prologue
    .line 303
    const-string/jumbo v0, "BluetoothMapObexServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRemoteFeatureMask() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mRemoteFeatureMask:I

    .line 305
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mOutContent:Lcom/android/bluetooth/map/BluetoothMapContent;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/map/BluetoothMapContent;->setRemoteFeatureMask(I)V

    .line 302
    return-void
.end method
