.class public Lcom/android/bluetooth/map/BluetoothMapAppObserver;
.super Ljava/lang/Object;
.source "BluetoothMapAppObserver.java"


# static fields
.field private static final D:Z = true

.field private static final TAG:Ljava/lang/String; = "BluetoothMapAppObserver"

.field private static final V:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFullList:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Lcom/android/bluetooth/map/BluetoothMapAccountItem;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/bluetooth/map/BluetoothMapAccountItem;",
            ">;>;"
        }
    .end annotation
.end field

.field mLoader:Lcom/android/bluetooth/map/BluetoothMapAccountEmailLoader;

.field mMapService:Lcom/android/bluetooth/map/BluetoothMapService;

.field private mObserverMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/database/ContentObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRegisteredReceiver:Z

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->V:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/bluetooth/map/BluetoothMapAppObserver;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/bluetooth/map/BluetoothMapAppObserver;)Ljava/util/LinkedHashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mFullList:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/bluetooth/map/BluetoothMapAppObserver;)Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/bluetooth/map/BluetoothMapAppObserver;Landroid/content/pm/PackageManager;)Landroid/content/pm/PackageManager;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/bluetooth/map/BluetoothMapAppObserver;Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapAccountItem;
    .locals 1
    .param p1, "authoritiesName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->getApp(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/bluetooth/map/BluetoothMapAppObserver;Ljava/lang/String;)V
    .locals 0
    .param p1, "packageNameWithProvider"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->handleAccountChanges(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 47
    const-string/jumbo v0, "BluetoothMap"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->V:Z

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/bluetooth/map/BluetoothMapService;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mapService"    # Lcom/android/bluetooth/map/BluetoothMapService;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 50
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mObserverMap:Ljava/util/LinkedHashMap;

    .line 55
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 57
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mMapService:Lcom/android/bluetooth/map/BluetoothMapService;

    .line 58
    iput-boolean v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mRegisteredReceiver:Z

    .line 61
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mContext:Landroid/content/Context;

    .line 62
    iput-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mMapService:Lcom/android/bluetooth/map/BluetoothMapService;

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mResolver:Landroid/content/ContentResolver;

    .line 64
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapAccountEmailLoader;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapAccountEmailLoader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mLoader:Lcom/android/bluetooth/map/BluetoothMapAccountEmailLoader;

    .line 65
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mLoader:Lcom/android/bluetooth/map/BluetoothMapAccountEmailLoader;

    invoke-virtual {v0, v2}, Lcom/android/bluetooth/map/BluetoothMapAccountEmailLoader;->parsePackages(Z)Ljava/util/LinkedHashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mFullList:Ljava/util/LinkedHashMap;

    .line 66
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->createReceiver()V

    .line 67
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->initObservers()V

    .line 60
    return-void
.end method

.method private createReceiver()V
    .locals 4

    .prologue
    .line 207
    const-string/jumbo v2, "BluetoothMapAppObserver"

    const-string/jumbo v3, "createReceiver()\n"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 209
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 210
    const-string/jumbo v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 211
    const-string/jumbo v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 212
    new-instance v2, Lcom/android/bluetooth/map/BluetoothMapAppObserver$2;

    invoke-direct {v2, p0}, Lcom/android/bluetooth/map/BluetoothMapAppObserver$2;-><init>(Lcom/android/bluetooth/map/BluetoothMapAppObserver;)V

    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 287
    iget-boolean v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mRegisteredReceiver:Z

    if-nez v2, :cond_0

    .line 289
    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 290
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mRegisteredReceiver:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 291
    :catch_0
    move-exception v0

    .line 292
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "BluetoothMapAppObserver"

    const-string/jumbo v3, "Unable to register MapAppObserver receiver"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private deinitObservers()V
    .locals 4

    .prologue
    .line 200
    const-string/jumbo v2, "BluetoothMapAppObserver"

    const-string/jumbo v3, "deinitObservers()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mFullList:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "app$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    .line 202
    .local v0, "app":Lcom/android/bluetooth/map/BluetoothMapAccountItem;
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->unregisterObserver(Lcom/android/bluetooth/map/BluetoothMapAccountItem;)V

    goto :goto_0

    .line 199
    .end local v0    # "app":Lcom/android/bluetooth/map/BluetoothMapAccountItem;
    :cond_0
    return-void
.end method

.method private getApp(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapAccountItem;
    .locals 5
    .param p1, "authoritiesName"    # Ljava/lang/String;

    .prologue
    .line 72
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->V:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "BluetoothMapAppObserver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getApp(): Looking for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mFullList:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "app$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    .line 74
    .local v0, "app":Lcom/android/bluetooth/map/BluetoothMapAccountItem;
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->V:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "BluetoothMapAppObserver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "  Comparing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getProviderAuthority()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_2
    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getProviderAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 76
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->V:Z

    if-eqz v2, :cond_3

    const-string/jumbo v2, "BluetoothMapAppObserver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "  found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mBase_uri_no_account:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_3
    return-object v0

    .line 80
    .end local v0    # "app":Lcom/android/bluetooth/map/BluetoothMapAccountItem;
    :cond_4
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->V:Z

    if-eqz v2, :cond_5

    const-string/jumbo v2, "BluetoothMapAppObserver"

    const-string/jumbo v3, "  NOT FOUND!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_5
    const/4 v2, 0x0

    return-object v2
.end method

.method private handleAccountChanges(Ljava/lang/String;)V
    .locals 17
    .param p1, "packageNameWithProvider"    # Ljava/lang/String;

    .prologue
    .line 86
    const-string/jumbo v14, "BluetoothMapAppObserver"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "handleAccountChanges (packageNameWithProvider: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 87
    const-string/jumbo v16, "\n"

    .line 86
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-direct/range {p0 .. p1}, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->getApp(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    move-result-object v4

    .line 90
    .local v4, "app":Lcom/android/bluetooth/map/BluetoothMapAccountItem;
    if-eqz v4, :cond_a

    .line 91
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mLoader:Lcom/android/bluetooth/map/BluetoothMapAccountEmailLoader;

    invoke-virtual {v14, v4}, Lcom/android/bluetooth/map/BluetoothMapAccountEmailLoader;->parseAccounts(Lcom/android/bluetooth/map/BluetoothMapAccountItem;)Ljava/util/ArrayList;

    move-result-object v7

    .line 92
    .local v7, "newAccountList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/bluetooth/map/BluetoothMapAccountItem;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mFullList:Ljava/util/LinkedHashMap;

    invoke-virtual {v14, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    .line 94
    .local v10, "oldAccountList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/bluetooth/map/BluetoothMapAccountItem;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 95
    .local v3, "addedAccountList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/bluetooth/map/BluetoothMapAccountItem;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mFullList:Ljava/util/LinkedHashMap;

    invoke-virtual {v14, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    .line 96
    .local v13, "removedAccountList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/bluetooth/map/BluetoothMapAccountItem;>;"
    if-nez v10, :cond_0

    .line 97
    new-instance v10, Ljava/util/ArrayList;

    .end local v10    # "oldAccountList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/bluetooth/map/BluetoothMapAccountItem;>;"
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .restart local v10    # "oldAccountList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/bluetooth/map/BluetoothMapAccountItem;>;"
    :cond_0
    if-nez v13, :cond_1

    .line 99
    new-instance v13, Ljava/util/ArrayList;

    .end local v13    # "removedAccountList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/bluetooth/map/BluetoothMapAccountItem;>;"
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .restart local v13    # "removedAccountList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/bluetooth/map/BluetoothMapAccountItem;>;"
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mFullList:Ljava/util/LinkedHashMap;

    invoke-virtual {v14, v4, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "newAcc$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    .line 103
    .local v5, "newAcc":Lcom/android/bluetooth/map/BluetoothMapAccountItem;
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "oldAcc$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    .line 104
    .local v8, "oldAcc":Lcom/android/bluetooth/map/BluetoothMapAccountItem;
    invoke-virtual {v5}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getId()Ljava/lang/String;

    move-result-object v15

    if-ne v14, v15, :cond_3

    .line 106
    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 107
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 108
    invoke-virtual {v5}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    iget-boolean v14, v5, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mIsChecked:Z

    if-eqz v14, :cond_4

    .line 110
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mMapService:Lcom/android/bluetooth/map/BluetoothMapService;

    .line 111
    const/4 v15, 0x2

    .line 110
    invoke-virtual {v14, v15}, Lcom/android/bluetooth/map/BluetoothMapService;->updateMasInstances(I)V

    .line 112
    sget-boolean v14, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->V:Z

    if-eqz v14, :cond_4

    const-string/jumbo v14, "BluetoothMapAppObserver"

    const-string/jumbo v15, "    UPDATE_MAS_INSTANCES_ACCOUNT_RENAMED"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_4
    iget-boolean v14, v5, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mIsChecked:Z

    iget-boolean v15, v8, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mIsChecked:Z

    if-eq v14, v15, :cond_2

    .line 116
    iget-boolean v14, v5, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mIsChecked:Z

    if-eqz v14, :cond_5

    .line 118
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mMapService:Lcom/android/bluetooth/map/BluetoothMapService;

    .line 119
    const/4 v15, 0x0

    .line 118
    invoke-virtual {v14, v15}, Lcom/android/bluetooth/map/BluetoothMapService;->updateMasInstances(I)V

    .line 120
    sget-boolean v14, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->V:Z

    if-eqz v14, :cond_2

    const-string/jumbo v14, "BluetoothMapAppObserver"

    const-string/jumbo v15, "UPDATE_MAS_INSTANCES_ACCOUNT_ADDED isChecked changed"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 124
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mMapService:Lcom/android/bluetooth/map/BluetoothMapService;

    .line 125
    const/4 v15, 0x1

    .line 124
    invoke-virtual {v14, v15}, Lcom/android/bluetooth/map/BluetoothMapService;->updateMasInstances(I)V

    .line 126
    sget-boolean v14, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->V:Z

    if-eqz v14, :cond_2

    const-string/jumbo v14, "BluetoothMapAppObserver"

    const-string/jumbo v15, "    UPDATE_MAS_INSTANCES_ACCOUNT_REMOVED isChecked changed"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 135
    .end local v5    # "newAcc":Lcom/android/bluetooth/map/BluetoothMapAccountItem;
    .end local v8    # "oldAcc":Lcom/android/bluetooth/map/BluetoothMapAccountItem;
    .end local v9    # "oldAcc$iterator":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "removedAcc$iterator":Ljava/util/Iterator;
    :cond_7
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    .line 136
    .local v11, "removedAcc":Lcom/android/bluetooth/map/BluetoothMapAccountItem;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mMapService:Lcom/android/bluetooth/map/BluetoothMapService;

    .line 137
    const/4 v15, 0x1

    .line 136
    invoke-virtual {v14, v15}, Lcom/android/bluetooth/map/BluetoothMapService;->updateMasInstances(I)V

    .line 138
    sget-boolean v14, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->V:Z

    if-eqz v14, :cond_7

    const-string/jumbo v14, "BluetoothMapAppObserver"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "    UPDATE_MAS_INSTANCES_ACCOUNT_REMOVED "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 141
    .end local v11    # "removedAcc":Lcom/android/bluetooth/map/BluetoothMapAccountItem;
    :cond_8
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "addedAcc$iterator":Ljava/util/Iterator;
    :cond_9
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    .line 142
    .local v1, "addedAcc":Lcom/android/bluetooth/map/BluetoothMapAccountItem;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mMapService:Lcom/android/bluetooth/map/BluetoothMapService;

    .line 143
    const/4 v15, 0x0

    .line 142
    invoke-virtual {v14, v15}, Lcom/android/bluetooth/map/BluetoothMapService;->updateMasInstances(I)V

    .line 144
    sget-boolean v14, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->V:Z

    if-eqz v14, :cond_9

    const-string/jumbo v14, "BluetoothMapAppObserver"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "    UPDATE_MAS_INSTANCES_ACCOUNT_ADDED "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 148
    .end local v1    # "addedAcc":Lcom/android/bluetooth/map/BluetoothMapAccountItem;
    .end local v2    # "addedAcc$iterator":Ljava/util/Iterator;
    .end local v3    # "addedAccountList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/bluetooth/map/BluetoothMapAccountItem;>;"
    .end local v6    # "newAcc$iterator":Ljava/util/Iterator;
    .end local v7    # "newAccountList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/bluetooth/map/BluetoothMapAccountItem;>;"
    .end local v10    # "oldAccountList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/bluetooth/map/BluetoothMapAccountItem;>;"
    .end local v12    # "removedAcc$iterator":Ljava/util/Iterator;
    .end local v13    # "removedAccountList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/bluetooth/map/BluetoothMapAccountItem;>;"
    :cond_a
    const-string/jumbo v14, "BluetoothMapAppObserver"

    const-string/jumbo v15, "Received change notification on package not registered for notifications!"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_b
    return-void
.end method

.method private initObservers()V
    .locals 4

    .prologue
    .line 193
    const-string/jumbo v2, "BluetoothMapAppObserver"

    const-string/jumbo v3, "initObservers()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mFullList:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "app$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    .line 195
    .local v0, "app":Lcom/android/bluetooth/map/BluetoothMapAccountItem;
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->registerObserver(Lcom/android/bluetooth/map/BluetoothMapAccountItem;)V

    goto :goto_0

    .line 192
    .end local v0    # "app":Lcom/android/bluetooth/map/BluetoothMapAccountItem;
    :cond_0
    return-void
.end method

.method private removeReceiver()V
    .locals 3

    .prologue
    .line 298
    const-string/jumbo v1, "BluetoothMapAppObserver"

    const-string/jumbo v2, "removeReceiver()\n"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mRegisteredReceiver:Z

    if-eqz v1, :cond_0

    .line 301
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mRegisteredReceiver:Z

    .line 302
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    :cond_0
    :goto_0
    return-void

    .line 303
    :catch_0
    move-exception v0

    .line 304
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "BluetoothMapAppObserver"

    const-string/jumbo v2, "Unable to unregister mapAppObserver receiver"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public getAllAccountItems()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/bluetooth/map/BluetoothMapAccountItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 341
    const-string/jumbo v4, "BluetoothMapAppObserver"

    const-string/jumbo v5, "getAllAccountItems()\n"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 343
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/bluetooth/map/BluetoothMapAccountItem;>;"
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mFullList:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "app$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    .line 344
    .local v1, "app":Lcom/android/bluetooth/map/BluetoothMapAccountItem;
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mFullList:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 345
    .local v0, "accountList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/bluetooth/map/BluetoothMapAccountItem;>;"
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 347
    .end local v0    # "accountList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/bluetooth/map/BluetoothMapAccountItem;>;"
    .end local v1    # "app":Lcom/android/bluetooth/map/BluetoothMapAccountItem;
    :cond_0
    return-object v3
.end method

.method public getEnabledAccountItems()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/bluetooth/map/BluetoothMapAccountItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 315
    const-string/jumbo v6, "BluetoothMapAppObserver"

    const-string/jumbo v7, "getEnabledAccountItems()\n"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 317
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/bluetooth/map/BluetoothMapAccountItem;>;"
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mFullList:Ljava/util/LinkedHashMap;

    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "app$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    .line 318
    .local v3, "app":Lcom/android/bluetooth/map/BluetoothMapAccountItem;
    if-eqz v3, :cond_3

    .line 319
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mFullList:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 320
    .local v2, "accountList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/bluetooth/map/BluetoothMapAccountItem;>;"
    if-eqz v2, :cond_2

    .line 321
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "acc$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    .line 322
    .local v0, "acc":Lcom/android/bluetooth/map/BluetoothMapAccountItem;
    iget-boolean v6, v0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mIsChecked:Z

    if-eqz v6, :cond_1

    .line 323
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 327
    .end local v0    # "acc":Lcom/android/bluetooth/map/BluetoothMapAccountItem;
    .end local v1    # "acc$iterator":Ljava/util/Iterator;
    :cond_2
    const-string/jumbo v6, "BluetoothMapAppObserver"

    const-string/jumbo v7, "getEnabledAccountItems() - No AccountList enabled\n"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 330
    .end local v2    # "accountList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/bluetooth/map/BluetoothMapAccountItem;>;"
    :cond_3
    const-string/jumbo v6, "BluetoothMapAppObserver"

    const-string/jumbo v7, "getEnabledAccountItems() - No Account in App enabled\n"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 333
    .end local v3    # "app":Lcom/android/bluetooth/map/BluetoothMapAccountItem;
    :cond_4
    return-object v5
.end method

.method public registerObserver(Lcom/android/bluetooth/map/BluetoothMapAccountItem;)V
    .locals 5
    .param p1, "app"    # Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    .prologue
    .line 160
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getProviderAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->buildAccountUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 161
    .local v1, "uri":Landroid/net/Uri;
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->V:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "BluetoothMapAppObserver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerObserver for URI "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_0
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapAppObserver$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/bluetooth/map/BluetoothMapAppObserver$1;-><init>(Lcom/android/bluetooth/map/BluetoothMapAppObserver;Landroid/os/Handler;)V

    .line 180
    .local v0, "observer":Landroid/database/ContentObserver;
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mObserverMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 159
    return-void
.end method

.method public shutdown()V
    .locals 0

    .prologue
    .line 355
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->deinitObservers()V

    .line 356
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->removeReceiver()V

    .line 354
    return-void
.end method

.method public unregisterObserver(Lcom/android/bluetooth/map/BluetoothMapAccountItem;)V
    .locals 4
    .param p1, "app"    # Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    .prologue
    .line 186
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getProviderAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->buildAccountUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 187
    .local v0, "uri":Landroid/net/Uri;
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->V:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "BluetoothMapAppObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterObserver("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mObserverMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/ContentObserver;

    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 189
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mObserverMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    return-void
.end method
