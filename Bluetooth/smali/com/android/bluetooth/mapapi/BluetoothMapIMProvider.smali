.class public abstract Lcom/android/bluetooth/mapapi/BluetoothMapIMProvider;
.super Landroid/content/ContentProvider;
.source "BluetoothMapIMProvider.java"


# static fields
.field private static final D:Z = true

.field private static final MATCH_ACCOUNT:I = 0x1

.field private static final MATCH_CONVERSATION:I = 0x4

.field private static final MATCH_CONVOCONTACT:I = 0x5

.field private static final MATCH_MESSAGE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "BluetoothMapIMProvider"


# instance fields
.field private CONTENT_URI:Landroid/net/Uri;

.field private mAuthority:Ljava/lang/String;

.field private mMatcher:Landroid/content/UriMatcher;

.field protected mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/mapapi/BluetoothMapIMProvider;->CONTENT_URI:Landroid/net/Uri;

    .line 46
    return-void
.end method

.method public static getAccountId(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 683
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 684
    .local v0, "segments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 685
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

    .line 687
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method


# virtual methods
.method public attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Landroid/content/pm/ProviderInfo;

    .prologue
    .line 72
    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/bluetooth/mapapi/BluetoothMapIMProvider;->mAuthority:Ljava/lang/String;

    .line 74
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v0, p0, Lcom/android/bluetooth/mapapi/BluetoothMapIMProvider;->mMatcher:Landroid/content/UriMatcher;

    .line 75
    iget-object v0, p0, Lcom/android/bluetooth/mapapi/BluetoothMapIMProvider;->mMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/android/bluetooth/mapapi/BluetoothMapIMProvider;->mAuthority:Ljava/lang/String;

    const-string/jumbo v2, "Account"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 76
    iget-object v0, p0, Lcom/android/bluetooth/mapapi/BluetoothMapIMProvider;->mMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/android/bluetooth/mapapi/BluetoothMapIMProvider;->mAuthority:Ljava/lang/String;

    const-string/jumbo v2, "#/Message"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 77
    iget-object v0, p0, Lcom/android/bluetooth/mapapi/BluetoothMapIMProvider;->mMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/android/bluetooth/mapapi/BluetoothMapIMProvider;->mAuthority:Ljava/lang/String;

    const-string/jumbo v2, "#/Conversation"

    .line 78
    const/4 v3, 0x4

    .line 77
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 79
    iget-object v0, p0, Lcom/android/bluetooth/mapapi/BluetoothMapIMProvider;->mMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/android/bluetooth/mapapi/BluetoothMapIMProvider;->mAuthority:Ljava/lang/String;

    const-string/jumbo v2, "#/ConvoContact"

    .line 80
    const/4 v3, 0x5

    .line 79
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 83
    iget-boolean v0, p2, Landroid/content/pm/ProviderInfo;->exported:Z

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Provider must be exported"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_0
    const-string/jumbo v0, "android.permission.BLUETOOTH_MAP"

    iget-object v1, p2, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 88
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Provider must be protected by android.permission.BLUETOOTH_MAP"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_1
    const-string/jumbo v0, "BluetoothMapIMProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "attachInfo() mAuthority = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/mapapi/BluetoothMapIMProvider;->mAuthority:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/mapapi/BluetoothMapIMProvider;->mResolver:Landroid/content/ContentResolver;

    .line 94
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    .line 71
    return-void
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 22
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 600
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 601
    .local v14, "callingId":J
    const-string/jumbo v5, "BluetoothMapIMProvider"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "call(): method="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " arg="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "ThreadId: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 602
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Thread;->getId()J

    move-result-wide v20

    .line 601
    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    const/16 v18, -0x1

    .line 605
    .local v18, "ret":I
    :try_start_0
    const-string/jumbo v5, "UpdateFolder"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 606
    const-string/jumbo v5, "UpdateAccountId"

    const-wide/16 v20, -0x1

    move-object/from16 v0, p3

    move-wide/from16 v1, v20

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v12

    .line 607
    .local v12, "accountId":J
    const-wide/16 v20, -0x1

    cmp-long v5, v12, v20

    if-nez v5, :cond_0

    .line 608
    const-string/jumbo v5, "BluetoothMapIMProvider"

    const-string/jumbo v19, "No account ID in CALL"

    move-object/from16 v0, v19

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 609
    const/4 v5, 0x0

    .line 632
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 609
    return-object v5

    .line 611
    :cond_0
    :try_start_1
    const-string/jumbo v5, "UpdateFolderId"

    const-wide/16 v20, -0x1

    move-object/from16 v0, p3

    move-wide/from16 v1, v20

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v16

    .line 612
    .local v16, "folderId":J
    const-wide/16 v20, -0x1

    cmp-long v5, v16, v20

    if-nez v5, :cond_1

    .line 613
    const-string/jumbo v5, "BluetoothMapIMProvider"

    const-string/jumbo v19, "No folder ID in CALL"

    move-object/from16 v0, v19

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 614
    const/4 v5, 0x0

    .line 632
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 614
    return-object v5

    .line 616
    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-virtual {v0, v12, v13, v1, v2}, Lcom/android/bluetooth/mapapi/BluetoothMapIMProvider;->syncFolder(JJ)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v18

    .line 632
    .end local v12    # "accountId":J
    .end local v16    # "folderId":J
    :cond_2
    :goto_0
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 634
    if-nez v18, :cond_5

    .line 635
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    return-object v5

    .line 617
    :cond_3
    :try_start_3
    const-string/jumbo v5, "SetOwnerStatus"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 618
    const-string/jumbo v5, "PresenceState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 620
    .local v6, "presenceState":I
    const-string/jumbo v5, "PresenceStatus"

    .line 619
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 621
    .local v7, "presenceStatus":Ljava/lang/String;
    const-string/jumbo v5, "LastActive"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 622
    .local v8, "lastActive":J
    const-string/jumbo v5, "ChatState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 623
    .local v10, "chatState":I
    const-string/jumbo v5, "ConversationId"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .local v11, "convoId":Ljava/lang/String;
    move-object/from16 v5, p0

    .line 624
    invoke-virtual/range {v5 .. v11}, Lcom/android/bluetooth/mapapi/BluetoothMapIMProvider;->setOwnerStatus(ILjava/lang/String;JILjava/lang/String;)I

    move-result v18

    goto :goto_0

    .line 626
    .end local v6    # "presenceState":I
    .end local v7    # "presenceStatus":Ljava/lang/String;
    .end local v8    # "lastActive":J
    .end local v10    # "chatState":I
    .end local v11    # "convoId":Ljava/lang/String;
    :cond_4
    const-string/jumbo v5, "SetBtState"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 628
    const-string/jumbo v5, "BluetoothState"

    .line 627
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 629
    .local v4, "bluetoothState":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/bluetooth/mapapi/BluetoothMapIMProvider;->setBluetoothStatus(Z)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v18

    goto :goto_0

    .line 631
    .end local v4    # "bluetoothState":Z
    :catchall_0
    move-exception v5

    .line 632
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 631
    throw v5

    .line 637
    :cond_5
    const/4 v5, 0x0

    return-object v5
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
    .line 292
    .local p2, "projectionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    array-length v2, p1

    new-array v1, v2, [Ljava/lang/String;

    .line 293
    .local v1, "newProjection":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 294
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

    .line 293
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 296
    :cond_0
    return-object v1
.end method

.method protected createContentValues(Ljava/util/Set;Ljava/util/Map;)Landroid/content/ContentValues;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/ContentValues;"
        }
    .end annotation

    .prologue
    .line 567
    .local p1, "valueSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .local p2, "keyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v4, Landroid/content/ContentValues;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 568
    .local v4, "values":Landroid/content/ContentValues;
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "ent$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 569
    .local v0, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 570
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 571
    .local v3, "value":Ljava/lang/Object;
    if-nez v3, :cond_0

    .line 572
    invoke-virtual {v4, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_0

    .line 573
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Ljava/lang/Boolean;

    if-eqz v5, :cond_1

    .line 574
    check-cast v3, Ljava/lang/Boolean;

    .end local v3    # "value":Ljava/lang/Object;
    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 575
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Ljava/lang/Byte;

    if-eqz v5, :cond_2

    .line 576
    check-cast v3, Ljava/lang/Byte;

    .end local v3    # "value":Ljava/lang/Object;
    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    goto :goto_0

    .line 577
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, [B

    if-eqz v5, :cond_3

    .line 578
    check-cast v3, [B

    .end local v3    # "value":Ljava/lang/Object;
    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_0

    .line 579
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Ljava/lang/Double;

    if-eqz v5, :cond_4

    .line 580
    check-cast v3, Ljava/lang/Double;

    .end local v3    # "value":Ljava/lang/Object;
    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    goto :goto_0

    .line 581
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Ljava/lang/Float;

    if-eqz v5, :cond_5

    .line 582
    check-cast v3, Ljava/lang/Float;

    .end local v3    # "value":Ljava/lang/Object;
    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    goto :goto_0

    .line 583
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_5
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Ljava/lang/Integer;

    if-eqz v5, :cond_6

    .line 584
    check-cast v3, Ljava/lang/Integer;

    .end local v3    # "value":Ljava/lang/Object;
    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 585
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_6
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Ljava/lang/Long;

    if-eqz v5, :cond_7

    .line 586
    check-cast v3, Ljava/lang/Long;

    .end local v3    # "value":Ljava/lang/Object;
    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_0

    .line 587
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_7
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Ljava/lang/Short;

    if-eqz v5, :cond_8

    .line 588
    check-cast v3, Ljava/lang/Short;

    .end local v3    # "value":Ljava/lang/Object;
    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Short;)V

    goto/16 :goto_0

    .line 589
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_8
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Ljava/lang/String;

    if-eqz v5, :cond_9

    .line 590
    check-cast v3, Ljava/lang/String;

    .end local v3    # "value":Ljava/lang/Object;
    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 592
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_9
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "Unknown data type in content value"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 595
    .end local v0    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Object;
    :cond_a
    return-object v4
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 197
    const-string/jumbo v5, "BluetoothMapIMProvider"

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

    .line 200
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 201
    .local v4, "table":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 202
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "Table missing in URI"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 204
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 205
    .local v1, "messageId":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 206
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "Message ID missing in update values!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 208
    :cond_1
    invoke-static {p1}, Lcom/android/bluetooth/mapapi/BluetoothMapIMProvider;->getAccountId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, "accountId":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 210
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "Account ID missing in update values!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 212
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 214
    .local v2, "callingId":J
    :try_start_0
    const-string/jumbo v5, "Message"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 215
    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/mapapi/BluetoothMapIMProvider;->deleteMessage(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    .line 221
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 215
    return v5

    .line 217
    :cond_3
    :try_start_1
    const-string/jumbo v5, "BluetoothMapIMProvider"

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

    .line 198
    const/4 v5, 0x0

    .line 221
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 218
    return v5

    .line 220
    :catchall_0
    move-exception v5

    .line 221
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 220
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
    .line 186
    const-string/jumbo v0, "InstantMessage"

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v8, 0x0

    .line 243
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    .line 244
    .local v4, "table":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 245
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "Table missing in URI"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 247
    :cond_0
    invoke-static {p1}, Lcom/android/bluetooth/mapapi/BluetoothMapIMProvider;->getAccountId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, "accountId":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 249
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "Account ID missing in URI"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 254
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 255
    .local v2, "callingId":J
    const-string/jumbo v5, "BluetoothMapIMProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "insert(): uri="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " - getLastPathSegment() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 256
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    .line 255
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :try_start_0
    const-string/jumbo v5, "Message"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 259
    invoke-virtual {p0, v0, p2}, Lcom/android/bluetooth/mapapi/BluetoothMapIMProvider;->insertMessage(Ljava/lang/String;Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v1

    .line 260
    .local v1, "id":Ljava/lang/String;
    const-string/jumbo v5, "BluetoothMapIMProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "insert() ID: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 267
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 261
    return-object v5

    .line 263
    .end local v1    # "id":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string/jumbo v5, "BluetoothMapIMProvider"

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

    .line 267
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 264
    return-object v8

    .line 266
    :catchall_0
    move-exception v5

    .line 267
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 266
    throw v5
.end method

.method protected abstract insertMessage(Ljava/lang/String;Landroid/content/ContentValues;)Ljava/lang/String;
.end method

.method protected onAccountChanged(Ljava/lang/String;)V
    .locals 5
    .param p1, "accountId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 104
    const/4 v0, 0x0

    .line 106
    .local v0, "newUri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/bluetooth/mapapi/BluetoothMapIMProvider;->mAuthority:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 107
    return-void

    .line 109
    :cond_0
    if-nez p1, :cond_1

    .line 110
    iget-object v1, p0, Lcom/android/bluetooth/mapapi/BluetoothMapIMProvider;->mAuthority:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->buildAccountUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 115
    .local v0, "newUri":Landroid/net/Uri;
    :goto_0
    const-string/jumbo v1, "BluetoothMapIMProvider"

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

    .line 116
    iget-object v1, p0, Lcom/android/bluetooth/mapapi/BluetoothMapIMProvider;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1, v0, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 103
    return-void

    .line 112
    .local v0, "newUri":Landroid/net/Uri;
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/mapapi/BluetoothMapIMProvider;->mAuthority:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->buildAccountUriwithId(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .local v0, "newUri":Landroid/net/Uri;
    goto :goto_0
.end method

.method protected onContactChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "accountId"    # Ljava/lang/String;
    .param p2, "contactId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 159
    const/4 v0, 0x0

    .line 161
    .local v0, "newUri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/bluetooth/mapapi/BluetoothMapIMProvider;->mAuthority:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 162
    return-void

    .line 164
    :cond_0
    if-nez p1, :cond_1

    .line 165
    iget-object v1, p0, Lcom/android/bluetooth/mapapi/BluetoothMapIMProvider;->mAuthority:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->buildConvoContactsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 175
    .local v0, "newUri":Landroid/net/Uri;
    :goto_0
    const-string/jumbo v1, "BluetoothMapIMProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onContactChanged() accountId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 176
    const-string/jumbo v3, " contactId = "

    .line 175
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 176
    const-string/jumbo v3, " URI: "

    .line 175
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v1, p0, Lcom/android/bluetooth/mapapi/BluetoothMapIMProvider;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1, v0, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 158
    return-void

    .line 167
    .local v0, "newUri":Landroid/net/Uri;
    :cond_1
    if-nez p2, :cond_2

    .line 169
    iget-object v1, p0, Lcom/android/bluetooth/mapapi/BluetoothMapIMProvider;->mAuthority:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->buildConvoContactsUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .local v0, "newUri":Landroid/net/Uri;
    goto :goto_0

    .line 171
    .local v0, "newUri":Landroid/net/Uri;
    :cond_2
    iget-object v1, p0, Lcom/android/bluetooth/mapapi/BluetoothMapIMProvider;->mAuthority:Ljava/lang/String;

    invoke-static {v1, p1, p2}, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->buildConvoContactsUriWithId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

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

    .line 128
    const/4 v0, 0x0

    .line 130
    .local v0, "newUri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/bluetooth/mapapi/BluetoothMapIMProvider;->mAuthority:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 131
    return-void

    .line 133
    :cond_0
    if-nez p1, :cond_1

    .line 134
    iget-object v1, p0, Lcom/android/bluetooth/mapapi/BluetoothMapIMProvider;->mAuthority:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->buildMessageUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 144
    .local v0, "newUri":Landroid/net/Uri;
    :goto_0
    const-string/jumbo v1, "BluetoothMapIMProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onMessageChanged() accountId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 145
    const-string/jumbo v3, " messageId = "

    .line 144
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 145
    const-string/jumbo v3, " URI: "

    .line 144
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v1, p0, Lcom/android/bluetooth/mapapi/BluetoothMapIMProvider;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1, v0, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 127
    return-void

    .line 136
    .local v0, "newUri":Landroid/net/Uri;
    :cond_1
    if-nez p2, :cond_2

    .line 138
    iget-object v1, p0, Lcom/android/bluetooth/mapapi/BluetoothMapIMProvider;->mAuthority:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->buildMessageUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .local v0, "newUri":Landroid/net/Uri;
    goto :goto_0

    .line 140
    .local v0, "newUri":Landroid/net/Uri;
    :cond_2
    iget-object v1, p0, Lcom/android/bluetooth/mapapi/BluetoothMapIMProvider;->mAuthority:Ljava/lang/String;

    invoke-static {v1, p1, p2}, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->buildMessageUriWithId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .local v0, "newUri":Landroid/net/Uri;
    goto :goto_0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 25
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 306
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v20

    .line 308
    .local v20, "callingId":J
    const/4 v7, 0x0

    .line 309
    .local v7, "accountId":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v6, "BluetoothMapIMProvider"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "query(): uri ="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/mapapi/BluetoothMapIMProvider;->mAuthority:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " uri="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v6, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/mapapi/BluetoothMapIMProvider;->mMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 351
    :pswitch_0
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Unsupported Uri "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v6, v13}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 353
    .end local v7    # "accountId":Ljava/lang/String;
    :catchall_0
    move-exception v6

    .line 354
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 353
    throw v6

    .line 313
    .restart local v7    # "accountId":Ljava/lang/String;
    :pswitch_1
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/bluetooth/mapapi/BluetoothMapIMProvider;->queryAccount([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    .line 354
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 313
    return-object v6

    .line 316
    :pswitch_2
    :try_start_2
    invoke-static/range {p1 .. p1}, Lcom/android/bluetooth/mapapi/BluetoothMapIMProvider;->getAccountId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v7

    .local v7, "accountId":Ljava/lang/String;
    move-object/from16 v6, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    .line 317
    invoke-virtual/range {v6 .. v11}, Lcom/android/bluetooth/mapapi/BluetoothMapIMProvider;->queryMessage(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v6

    .line 354
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 317
    return-object v6

    .line 319
    .local v7, "accountId":Ljava/lang/String;
    :pswitch_3
    :try_start_3
    invoke-static/range {p1 .. p1}, Lcom/android/bluetooth/mapapi/BluetoothMapIMProvider;->getAccountId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v7

    .line 322
    .local v7, "accountId":Ljava/lang/String;
    const-string/jumbo v6, "org_sub_str"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 323
    .local v12, "searchString":Ljava/lang/String;
    const/4 v11, 0x0

    .line 324
    .local v11, "periodBegin":Ljava/lang/Long;
    const-string/jumbo v6, "t_begin"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 325
    .local v24, "value":Ljava/lang/String;
    if-eqz v24, :cond_0

    .line 326
    invoke-static/range {v24 .. v24}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 328
    .end local v11    # "periodBegin":Ljava/lang/Long;
    :cond_0
    const/4 v10, 0x0

    .line 329
    .local v10, "periodEnd":Ljava/lang/Long;
    const-string/jumbo v6, "t_end"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 330
    if-eqz v24, :cond_1

    .line 331
    invoke-static/range {v24 .. v24}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 333
    .end local v10    # "periodEnd":Ljava/lang/Long;
    :cond_1
    const/4 v9, 0x0

    .line 334
    .local v9, "read":Ljava/lang/Boolean;
    const-string/jumbo v6, "read"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 335
    if-eqz v24, :cond_2

    .line 336
    const-string/jumbo v6, "true"

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 338
    .end local v9    # "read":Ljava/lang/Boolean;
    :cond_2
    const/4 v8, 0x0

    .line 339
    .local v8, "threadId":Ljava/lang/Long;
    const-string/jumbo v6, "thread_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 340
    if-eqz v24, :cond_3

    .line 341
    invoke-static/range {v24 .. v24}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .end local v8    # "threadId":Ljava/lang/Long;
    :cond_3
    move-object/from16 v6, p0

    move-object/from16 v13, p2

    move-object/from16 v14, p5

    .line 343
    invoke-virtual/range {v6 .. v14}, Lcom/android/bluetooth/mapapi/BluetoothMapIMProvider;->queryConversation(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v6

    .line 354
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 343
    return-object v6

    .line 346
    .end local v12    # "searchString":Ljava/lang/String;
    .end local v24    # "value":Ljava/lang/String;
    .local v7, "accountId":Ljava/lang/String;
    :pswitch_4
    :try_start_4
    invoke-static/range {p1 .. p1}, Lcom/android/bluetooth/mapapi/BluetoothMapIMProvider;->getAccountId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v7

    .line 347
    .local v7, "accountId":Ljava/lang/String;
    const-wide/16 v22, 0x0

    .line 348
    .local v22, "contactId":J
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    move-object/from16 v13, p0

    move-object v14, v7

    move-object/from16 v16, p2

    move-object/from16 v17, p3

    move-object/from16 v18, p4

    move-object/from16 v19, p5

    invoke-virtual/range {v13 .. v19}, Lcom/android/bluetooth/mapapi/BluetoothMapIMProvider;->queryConvoContact(Ljava/lang/String;Ljava/lang/Long;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v6

    .line 354
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 348
    return-object v6

    .line 311
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected abstract queryAccount([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method protected abstract queryConversation(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method protected abstract queryConvoContact(Ljava/lang/String;Ljava/lang/Long;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method protected abstract queryMessage(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method protected abstract setBluetoothStatus(Z)I
.end method

.method protected abstract setOwnerStatus(ILjava/lang/String;JILjava/lang/String;)I
.end method

.method public shutdown()V
    .locals 0

    .prologue
    .line 675
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
    .line 484
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    .line 485
    .local v7, "table":Ljava/lang/String;
    if-nez v7, :cond_0

    .line 486
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "Table missing in URI"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 488
    :cond_0
    if-eqz p3, :cond_1

    .line 489
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "selection shall not be used, ContentValues shall contain the data"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 493
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 494
    .local v2, "callingId":J
    const-string/jumbo v8, "BluetoothMapIMProvider"

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

    .line 495
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v10

    .line 494
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    :try_start_0
    const-string/jumbo v8, "Account"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 498
    const-string/jumbo v8, "_id"

    invoke-virtual {p2, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 499
    .local v0, "accountId":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 500
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "Account ID missing in update values!"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 531
    .end local v0    # "accountId":Ljava/lang/String;
    :catchall_0
    move-exception v8

    .line 532
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 531
    throw v8

    .line 503
    .restart local v0    # "accountId":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string/jumbo v8, "flag_expose"

    .line 502
    invoke-virtual {p2, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 504
    .local v1, "exposeFlag":Ljava/lang/Integer;
    if-nez v1, :cond_3

    .line 505
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "Expose flag missing in update values!"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 507
    :cond_3
    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/mapapi/BluetoothMapIMProvider;->updateAccount(Ljava/lang/String;Ljava/lang/Integer;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    .line 532
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 507
    return v8

    .line 508
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

    .line 509
    const/4 v8, 0x0

    .line 532
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 509
    return v8

    .line 510
    :cond_5
    :try_start_3
    const-string/jumbo v8, "Message"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 511
    invoke-static {p1}, Lcom/android/bluetooth/mapapi/BluetoothMapIMProvider;->getAccountId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 512
    .restart local v0    # "accountId":Ljava/lang/String;
    if-nez v0, :cond_6

    .line 513
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "Account ID missing in update values!"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 515
    :cond_6
    const-string/jumbo v8, "_id"

    invoke-virtual {p2, v8}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    .line 516
    .local v6, "messageId":Ljava/lang/Long;
    if-nez v6, :cond_7

    .line 517
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "Message ID missing in update values!"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 519
    :cond_7
    const-string/jumbo v8, "folder_id"

    invoke-virtual {p2, v8}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    .line 521
    .local v5, "folderId":Ljava/lang/Long;
    const-string/jumbo v8, "flag_read"

    .line 520
    invoke-virtual {p2, v8}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    .line 522
    .local v4, "flagRead":Ljava/lang/Boolean;
    invoke-virtual {p0, v0, v6, v5, v4}, Lcom/android/bluetooth/mapapi/BluetoothMapIMProvider;->updateMessage(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v8

    .line 532
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 522
    return v8

    .line 523
    .end local v0    # "accountId":Ljava/lang/String;
    .end local v4    # "flagRead":Ljava/lang/Boolean;
    .end local v5    # "folderId":Ljava/lang/Long;
    .end local v6    # "messageId":Ljava/lang/Long;
    :cond_8
    :try_start_4
    const-string/jumbo v8, "Conversation"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v8

    if-eqz v8, :cond_9

    .line 524
    const/4 v8, 0x0

    .line 532
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 524
    return v8

    .line 525
    :cond_9
    :try_start_5
    const-string/jumbo v8, "ConvoContact"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v8

    if-eqz v8, :cond_a

    .line 526
    const/4 v8, 0x0

    .line 532
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 526
    return v8

    .line 528
    :cond_a
    :try_start_6
    const-string/jumbo v8, "BluetoothMapIMProvider"

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
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 529
    const/4 v8, 0x0

    .line 532
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 529
    return v8
.end method

.method protected abstract updateAccount(Ljava/lang/String;Ljava/lang/Integer;)I
.end method

.method protected abstract updateMessage(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)I
.end method
