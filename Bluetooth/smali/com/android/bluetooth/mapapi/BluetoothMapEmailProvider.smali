.class public abstract Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;
.super Landroid/content/ContentProvider;
.source "BluetoothMapEmailProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider$PipeDataReader;,
        Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider$PipeReader;,
        Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider$PipeWriter;
    }
.end annotation


# static fields
.field private static final D:Z = true

.field private static final MATCH_ACCOUNT:I = 0x1

.field private static final MATCH_FOLDER:I = 0x3

.field private static final MATCH_MESSAGE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "BluetoothMapEmailProvider"


# instance fields
.field private CONTENT_URI:Landroid/net/Uri;

.field private mAuthority:Ljava/lang/String;

.field private mMatcher:Landroid/content/UriMatcher;

.field private mPipeReader:Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider$PipeReader;

.field private mPipeWriter:Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider$PipeWriter;

.field protected mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;->CONTENT_URI:Landroid/net/Uri;

    .line 63
    new-instance v0, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider$PipeReader;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider$PipeReader;-><init>(Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;)V

    iput-object v0, p0, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;->mPipeReader:Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider$PipeReader;

    .line 64
    new-instance v0, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider$PipeWriter;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider$PipeWriter;-><init>(Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;)V

    iput-object v0, p0, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;->mPipeWriter:Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider$PipeWriter;

    .line 47
    return-void
.end method

.method public static getAccountId(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 690
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 691
    .local v0, "segments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 692
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No AccountId pressent in URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 694
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method private openInversePipeHelper(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider$PipeDataReader;)Landroid/os/ParcelFileDescriptor;
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "opts"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "TT;",
            "Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider$PipeDataReader",
            "<TT;>;)",
            "Landroid/os/ParcelFileDescriptor;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 361
    .local p4, "args":Ljava/lang/Object;, "TT;"
    .local p5, "func":Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider$PipeDataReader;, "Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider$PipeDataReader<TT;>;"
    :try_start_0
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 363
    .local v3, "fds":[Landroid/os/ParcelFileDescriptor;
    new-instance v0, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider$1;

    move-object v1, p0

    move-object v2, p5

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider$1;-><init>(Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider$PipeDataReader;[Landroid/os/ParcelFileDescriptor;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;)V

    .line 375
    .local v0, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;"
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 377
    const/4 v1, 0x1

    aget-object v1, v3, v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 378
    .end local v0    # "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v3    # "fds":[Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v8

    .line 379
    .local v8, "e":Ljava/io/IOException;
    new-instance v1, Ljava/io/FileNotFoundException;

    const-string/jumbo v2, "failure making pipe"

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected abstract UpdateMimeMessageFromStream(Ljava/io/FileInputStream;JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract WriteMessageToStream(JJZZLjava/io/FileOutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Landroid/content/pm/ProviderInfo;

    .prologue
    .line 91
    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;->mAuthority:Ljava/lang/String;

    .line 93
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v0, p0, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;->mMatcher:Landroid/content/UriMatcher;

    .line 94
    iget-object v0, p0, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;->mMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;->mAuthority:Ljava/lang/String;

    const-string/jumbo v2, "Account"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 95
    iget-object v0, p0, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;->mMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;->mAuthority:Ljava/lang/String;

    const-string/jumbo v2, "#/Folder"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 96
    iget-object v0, p0, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;->mMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;->mAuthority:Ljava/lang/String;

    const-string/jumbo v2, "#/Message"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 99
    iget-boolean v0, p2, Landroid/content/pm/ProviderInfo;->exported:Z

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Provider must be exported"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_0
    const-string/jumbo v0, "android.permission.BLUETOOTH_MAP"

    iget-object v1, p2, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 104
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Provider must be protected by android.permission.BLUETOOTH_MAP"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;->mResolver:Landroid/content/ContentResolver;

    .line 108
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    .line 90
    return-void
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 12
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 643
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 644
    .local v2, "callingId":J
    const-string/jumbo v7, "BluetoothMapEmailProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "call(): method="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " arg="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "ThreadId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->getId()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    :try_start_0
    const-string/jumbo v7, "UpdateFolder"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 648
    const-string/jumbo v7, "UpdateAccountId"

    const-wide/16 v8, -0x1

    invoke-virtual {p3, v7, v8, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 649
    .local v0, "accountId":J
    const-wide/16 v8, -0x1

    cmp-long v7, v0, v8

    if-nez v7, :cond_0

    .line 650
    const-string/jumbo v7, "BluetoothMapEmailProvider"

    const-string/jumbo v8, "No account ID in CALL"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 651
    const/4 v7, 0x0

    .line 665
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 651
    return-object v7

    .line 653
    :cond_0
    :try_start_1
    const-string/jumbo v7, "UpdateFolderId"

    const-wide/16 v8, -0x1

    invoke-virtual {p3, v7, v8, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 654
    .local v4, "folderId":J
    const-wide/16 v8, -0x1

    cmp-long v7, v4, v8

    if-nez v7, :cond_1

    .line 655
    const-string/jumbo v7, "BluetoothMapEmailProvider"

    const-string/jumbo v8, "No folder ID in CALL"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 656
    const/4 v7, 0x0

    .line 665
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 656
    return-object v7

    .line 658
    :cond_1
    :try_start_2
    invoke-virtual {p0, v0, v1, v4, v5}, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;->syncFolder(JJ)I

    move-result v6

    .line 659
    .local v6, "ret":I
    if-nez v6, :cond_2

    .line 660
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 665
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 660
    return-object v7

    .line 662
    :cond_2
    const/4 v7, 0x0

    .line 665
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 662
    return-object v7

    .line 665
    .end local v0    # "accountId":J
    .end local v4    # "folderId":J
    .end local v6    # "ret":I
    :cond_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 667
    const/4 v7, 0x0

    return-object v7

    .line 664
    :catchall_0
    move-exception v7

    .line 665
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 664
    throw v7
.end method

.method protected convertProjection([Ljava/lang/String;Ljava/util/Map;)[Ljava/lang/String;
    .locals 4
    .param p1, "projection"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 487
    .local p2, "projectionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    array-length v2, p1

    new-array v1, v2, [Ljava/lang/String;

    .line 488
    .local v1, "newProjection":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 489
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, p1, v0

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " as "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 488
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 491
    :cond_0
    return-object v1
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 391
    const-string/jumbo v5, "BluetoothMapEmailProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "delete(): uri="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 395
    .local v4, "table":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 396
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "Table missing in URI"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 398
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 399
    .local v1, "messageId":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 400
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "Message ID missing in update values!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 403
    :cond_1
    invoke-static {p1}, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;->getAccountId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 404
    .local v0, "accountId":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 405
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "Account ID missing in update values!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 407
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 409
    .local v2, "callingId":J
    :try_start_0
    const-string/jumbo v5, "Message"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 410
    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;->deleteMessage(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    .line 416
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 410
    return v5

    .line 412
    :cond_3
    :try_start_1
    const-string/jumbo v5, "BluetoothMapEmailProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unknown table name: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 392
    const/4 v5, 0x0

    .line 416
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 413
    return v5

    .line 415
    :catchall_0
    move-exception v5

    .line 416
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 415
    throw v5
.end method

.method protected abstract deleteMessage(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected abstract getContentUri()Landroid/net/Uri;
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 286
    const-string/jumbo v0, "Email"

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v9, 0x0

    .line 438
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    .line 439
    .local v5, "table":Ljava/lang/String;
    if-nez v5, :cond_0

    .line 440
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "Table missing in URI"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 442
    :cond_0
    invoke-static {p1}, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;->getAccountId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 443
    .local v0, "accountId":Ljava/lang/String;
    const-string/jumbo v6, "folder_id"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 444
    .local v1, "folderId":Ljava/lang/Long;
    if-nez v1, :cond_1

    .line 445
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "FolderId missing in ContentValues"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 449
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 450
    .local v2, "callingId":J
    const-string/jumbo v6, "BluetoothMapEmailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "insert(): uri="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " - getLastPathSegment() = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 451
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v8

    .line 450
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    :try_start_0
    const-string/jumbo v6, "Message"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 454
    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v0, v6}, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;->insertMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 455
    .local v4, "id":Ljava/lang/String;
    const-string/jumbo v6, "BluetoothMapEmailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "insert() ID: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 462
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 456
    return-object v6

    .line 458
    .end local v4    # "id":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string/jumbo v6, "BluetoothMapEmailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unknown table name: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 462
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 459
    return-object v9

    .line 461
    :catchall_0
    move-exception v6

    .line 462
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 461
    throw v6
.end method

.method protected abstract insertMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method protected onAccountChanged(Ljava/lang/String;)V
    .locals 5
    .param p1, "accountId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 238
    const/4 v0, 0x0

    .line 240
    .local v0, "newUri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;->mAuthority:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 241
    return-void

    .line 243
    :cond_0
    if-nez p1, :cond_1

    .line 244
    iget-object v1, p0, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;->mAuthority:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->buildAccountUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 248
    .local v0, "newUri":Landroid/net/Uri;
    :goto_0
    const-string/jumbo v1, "BluetoothMapEmailProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onAccountChanged() accountId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v1, p0, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1, v0, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 237
    return-void

    .line 246
    .local v0, "newUri":Landroid/net/Uri;
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;->mAuthority:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->buildAccountUriwithId(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .local v0, "newUri":Landroid/net/Uri;
    goto :goto_0
.end method

.method protected onMessageChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "accountId"    # Ljava/lang/String;
    .param p2, "messageId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 261
    const/4 v0, 0x0

    .line 263
    .local v0, "newUri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;->mAuthority:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 264
    return-void

    .line 267
    :cond_0
    if-nez p1, :cond_1

    .line 268
    iget-object v1, p0, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;->mAuthority:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->buildMessageUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 277
    .local v0, "newUri":Landroid/net/Uri;
    :goto_0
    const-string/jumbo v1, "BluetoothMapEmailProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onMessageChanged() accountId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " messageId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object v1, p0, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1, v0, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 260
    return-void

    .line 270
    .local v0, "newUri":Landroid/net/Uri;
    :cond_1
    if-nez p2, :cond_2

    .line 272
    iget-object v1, p0, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;->mAuthority:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->buildMessageUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .local v0, "newUri":Landroid/net/Uri;
    goto :goto_0

    .line 274
    .local v0, "newUri":Landroid/net/Uri;
    :cond_2
    iget-object v1, p0, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;->mAuthority:Ljava/lang/String;

    invoke-static {v1, p1, p2}, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->buildMessageUriWithId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .local v0, "newUri":Landroid/net/Uri;
    goto :goto_0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 321
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 322
    .local v6, "callingId":J
    const-string/jumbo v0, "BluetoothMapEmailProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "openFile(): uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " - getLastPathSegment() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 323
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    .line 322
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :try_start_0
    const-string/jumbo v0, "w"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    iget-object v5, p0, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;->mPipeReader:Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider$PipeReader;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;->openInversePipeHelper(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider$PipeDataReader;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 335
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 328
    return-object v0

    .line 330
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;->mPipeWriter:Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider$PipeWriter;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;->openPipeHelper(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;Landroid/content/ContentProvider$PipeDataWriter;)Landroid/os/ParcelFileDescriptor;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 335
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 330
    return-object v0

    .line 332
    :catch_0
    move-exception v8

    .line 333
    .local v8, "e":Ljava/io/IOException;
    :try_start_2
    const-string/jumbo v0, "BluetoothMapEmailProvider"

    invoke-static {v0, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 335
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 337
    return-object v9

    .line 334
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v0

    .line 335
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 334
    throw v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 500
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 502
    .local v6, "callingId":J
    const/4 v1, 0x0

    .line 503
    .local v1, "accountId":Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;->mMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 513
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unsupported Uri "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 515
    .end local v1    # "accountId":Ljava/lang/String;
    :catchall_0
    move-exception v0

    .line 516
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 515
    throw v0

    .line 505
    .restart local v1    # "accountId":Ljava/lang/String;
    :pswitch_0
    :try_start_1
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;->queryAccount([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 516
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 505
    return-object v0

    .line 507
    :pswitch_1
    :try_start_2
    invoke-static {p1}, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;->getAccountId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .local v1, "accountId":Ljava/lang/String;
    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 508
    invoke-virtual/range {v0 .. v5}, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;->queryFolder(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 516
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 508
    return-object v0

    .line 510
    .local v1, "accountId":Ljava/lang/String;
    :pswitch_2
    :try_start_3
    invoke-static {p1}, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;->getAccountId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .local v1, "accountId":Ljava/lang/String;
    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 511
    invoke-virtual/range {v0 .. v5}, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;->queryMessage(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    .line 516
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 511
    return-object v0

    .line 503
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected abstract queryAccount([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method protected abstract queryFolder(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method protected abstract queryMessage(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method public shutdown()V
    .locals 0

    .prologue
    .line 682
    return-void
.end method

.method protected abstract syncFolder(JJ)I
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 579
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    .line 580
    .local v7, "table":Ljava/lang/String;
    if-nez v7, :cond_0

    .line 581
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "Table missing in URI"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 583
    :cond_0
    if-eqz p3, :cond_1

    .line 584
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "selection shall not be used, ContentValues shall contain the data"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 587
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 588
    .local v2, "callingId":J
    const-string/jumbo v8, "BluetoothMapEmailProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "update(): uri="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " - getLastPathSegment() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 589
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v10

    .line 588
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    :try_start_0
    const-string/jumbo v8, "Account"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 592
    const-string/jumbo v8, "_id"

    invoke-virtual {p2, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 593
    .local v0, "accountId":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 594
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "Account ID missing in update values!"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 616
    .end local v0    # "accountId":Ljava/lang/String;
    :catchall_0
    move-exception v8

    .line 617
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 616
    throw v8

    .line 596
    .restart local v0    # "accountId":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string/jumbo v8, "flag_expose"

    invoke-virtual {p2, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 597
    .local v1, "exposeFlag":Ljava/lang/Integer;
    if-nez v1, :cond_3

    .line 598
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "Expose flag missing in update values!"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 600
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {p0, v0, v8}, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;->updateAccount(Ljava/lang/String;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    .line 617
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 600
    return v8

    .line 601
    .end local v0    # "accountId":Ljava/lang/String;
    .end local v1    # "exposeFlag":Ljava/lang/Integer;
    :cond_4
    :try_start_2
    const-string/jumbo v8, "Folder"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v8

    if-eqz v8, :cond_5

    .line 602
    const/4 v8, 0x0

    .line 617
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 602
    return v8

    .line 603
    :cond_5
    :try_start_3
    const-string/jumbo v8, "Message"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 604
    invoke-static {p1}, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;->getAccountId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 605
    .restart local v0    # "accountId":Ljava/lang/String;
    const-string/jumbo v8, "_id"

    invoke-virtual {p2, v8}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    .line 606
    .local v6, "messageId":Ljava/lang/Long;
    if-nez v6, :cond_6

    .line 607
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "Message ID missing in update values!"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 609
    :cond_6
    const-string/jumbo v8, "folder_id"

    invoke-virtual {p2, v8}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    .line 610
    .local v5, "folderId":Ljava/lang/Long;
    const-string/jumbo v8, "flag_read"

    invoke-virtual {p2, v8}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    .line 611
    .local v4, "flagRead":Ljava/lang/Boolean;
    invoke-virtual {p0, v0, v6, v5, v4}, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;->updateMessage(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v8

    .line 617
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 611
    return v8

    .line 613
    .end local v0    # "accountId":Ljava/lang/String;
    .end local v4    # "flagRead":Ljava/lang/Boolean;
    .end local v5    # "folderId":Ljava/lang/Long;
    .end local v6    # "messageId":Ljava/lang/Long;
    :cond_7
    :try_start_4
    const-string/jumbo v8, "BluetoothMapEmailProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unknown table name: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 614
    const/4 v8, 0x0

    .line 617
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 614
    return v8
.end method

.method protected abstract updateAccount(Ljava/lang/String;I)I
.end method

.method protected abstract updateMessage(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)I
.end method
