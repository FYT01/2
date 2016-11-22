.class public Lcom/android/bluetooth/map/BluetoothMapAccountEmailLoader;
.super Lcom/android/bluetooth/map/BluetoothMapAccountLoader;
.source "BluetoothMapAccountEmailLoader.java"


# static fields
.field private static final D:Z = true

.field private static final PROVIDER_ANR_TIMEOUT:J = 0x4e20L

.field private static final TAG:Ljava/lang/String; = "BluetoothMapAccountEmailLoader"

.field private static final V:Z


# instance fields
.field private mAccountsEnabledCount:I

.field private mEmailContext:Landroid/content/Context;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mProviderClient:Landroid/content/ContentProviderClient;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 53
    const-string/jumbo v0, "BluetoothMap"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/map/BluetoothMapAccountEmailLoader;->V:Z

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapAccountLoader;-><init>(Landroid/content/Context;)V

    .line 54
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapAccountEmailLoader;->mEmailContext:Landroid/content/Context;

    .line 55
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapAccountEmailLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAccountEmailLoader;->mAccountsEnabledCount:I

    .line 58
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapAccountEmailLoader;->mProviderClient:Landroid/content/ContentProviderClient;

    .line 62
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapAccountEmailLoader;->mEmailContext:Landroid/content/Context;

    .line 63
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAccountEmailLoader;->mEmailContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 64
    const-string/jumbo v0, "BluetoothMapAccountEmailLoader"

    const-string/jumbo v1, "mEmailContext Assigned "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_0
    return-void
.end method


# virtual methods
.method public createAppItem(Landroid/content/pm/ResolveInfo;ZLcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)Lcom/android/bluetooth/map/BluetoothMapAccountItem;
    .locals 7
    .param p1, "rInfo"    # Landroid/content/pm/ResolveInfo;
    .param p2, "includeIcon"    # Z
    .param p3, "type"    # Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    .prologue
    const/4 v4, 0x0

    .line 130
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v3, v0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 131
    .local v3, "provider":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 132
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAccountEmailLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, "name":Ljava/lang/String;
    const-string/jumbo v0, "BluetoothMapAccountEmailLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " - "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 134
    const-string/jumbo v5, " - meta-data(provider = "

    .line 133
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 134
    const-string/jumbo v5, ")\n"

    .line 133
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const-string/jumbo v0, "0"

    .line 138
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 140
    if-nez p2, :cond_0

    :goto_0
    move-object v5, p3

    .line 135
    invoke-static/range {v0 .. v5}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    move-result-object v6

    .line 142
    .local v6, "app":Lcom/android/bluetooth/map/BluetoothMapAccountItem;
    return-object v6

    .line 140
    .end local v6    # "app":Lcom/android/bluetooth/map/BluetoothMapAccountItem;
    :cond_0
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapAccountEmailLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v4}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_0

    .line 145
    .end local v1    # "name":Ljava/lang/String;
    :cond_1
    return-object v4
.end method

.method public getAccountsEnabledCount()I
    .locals 3

    .prologue
    .line 251
    const-string/jumbo v0, "BluetoothMapAccountEmailLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Enabled Accounts count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/bluetooth/map/BluetoothMapAccountEmailLoader;->mAccountsEnabledCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    invoke-super {p0}, Lcom/android/bluetooth/map/BluetoothMapAccountLoader;->getAccountsEnabledCount()I

    move-result v0

    iget v1, p0, Lcom/android/bluetooth/map/BluetoothMapAccountEmailLoader;->mAccountsEnabledCount:I

    add-int/2addr v0, v1

    return v0
.end method

.method public parseAccounts(Lcom/android/bluetooth/map/BluetoothMapAccountItem;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "app"    # Lcom/android/bluetooth/map/BluetoothMapAccountItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/bluetooth/map/BluetoothMapAccountItem;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/bluetooth/map/BluetoothMapAccountItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 240
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapAccountEmailLoader;->parseEmailAccounts(Lcom/android/bluetooth/map/BluetoothMapAccountItem;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public parseEmailAccounts(Lcom/android/bluetooth/map/BluetoothMapAccountItem;)Ljava/util/ArrayList;
    .locals 22
    .param p1, "app"    # Lcom/android/bluetooth/map/BluetoothMapAccountItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/bluetooth/map/BluetoothMapAccountItem;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/bluetooth/map/BluetoothMapAccountItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 154
    const/4 v12, 0x0

    .line 155
    .local v12, "c":Landroid/database/Cursor;
    const-string/jumbo v2, "BluetoothMapAccountEmailLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Finding accounts for app "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 158
    .local v14, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/bluetooth/map/BluetoothMapAccountItem;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapAccountEmailLoader;->mEmailContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapAccountEmailLoader;->mResolver:Landroid/content/ContentResolver;

    .line 160
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapAccountEmailLoader;->mResolver:Landroid/content/ContentResolver;

    .line 161
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mBase_uri_no_account:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 160
    invoke-virtual {v2, v4}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapAccountEmailLoader;->mProviderClient:Landroid/content/ContentProviderClient;

    .line 162
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapAccountEmailLoader;->mProviderClient:Landroid/content/ContentProviderClient;

    if-nez v2, :cond_1

    .line 163
    new-instance v2, Landroid/os/RemoteException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to acquire provider for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    :catch_0
    move-exception v16

    .line 171
    .local v16, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v2, "BluetoothMapAccountEmailLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Could not establish ContentProviderClient for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 172
    const-string/jumbo v5, " - returning empty account list"

    .line 171
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 175
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapAccountEmailLoader;->mProviderClient:Landroid/content/ContentProviderClient;

    if-eqz v2, :cond_0

    .line 176
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapAccountEmailLoader;->mProviderClient:Landroid/content/ContentProviderClient;

    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    .line 173
    :cond_0
    return-object v14

    .line 165
    .end local v16    # "e":Landroid/os/RemoteException;
    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapAccountEmailLoader;->mProviderClient:Landroid/content/ContentProviderClient;

    const-wide/16 v4, 0x4e20

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentProviderClient;->setDetectNotResponding(J)V

    .line 166
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mBase_uri_no_account:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 167
    const-string/jumbo v4, "account"

    .line 166
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 168
    .local v3, "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapAccountEmailLoader;->mProviderClient:Landroid/content/ContentProviderClient;

    sget-object v4, Lcom/android/bluetooth/mapapi/BluetoothMapEmailContract;->BT_EMAIL_ACCOUNT_ID_PROJECTION:[Ljava/lang/String;

    .line 169
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 168
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v12

    .line 175
    .local v12, "c":Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapAccountEmailLoader;->mProviderClient:Landroid/content/ContentProviderClient;

    if-eqz v2, :cond_2

    .line 176
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapAccountEmailLoader;->mProviderClient:Landroid/content/ContentProviderClient;

    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    .line 180
    :cond_2
    if-eqz v12, :cond_8

    .line 181
    const/4 v2, -0x1

    invoke-interface {v12, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 182
    const-string/jumbo v2, "displayName"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 184
    .local v15, "dispNameIndex":I
    const-string/jumbo v2, "emailAddress"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 186
    .local v17, "emailAddressIndex":I
    const-string/jumbo v2, "_id"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 188
    .local v19, "idIndex":I
    const-string/jumbo v2, "isDefault"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 190
    .local v18, "exposeIndex":I
    :goto_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 191
    const-string/jumbo v2, "BluetoothMapAccountEmailLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Adding account "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v12, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 192
    const-string/jumbo v5, " with ID "

    .line 191
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 192
    move/from16 v0, v19

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 191
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const/4 v10, 0x0

    .line 194
    .local v10, "uci":Ljava/lang/String;
    const/4 v11, 0x0

    .line 195
    .local v11, "uciPrefix":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v2

    sget-object v4, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->IM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne v2, v4, :cond_3

    .line 197
    const-string/jumbo v2, "account_uci"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 199
    .local v20, "uciIndex":I
    const-string/jumbo v2, "account_uci_PREFIX"

    .line 198
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 200
    .local v21, "uciPreIndex":I
    move/from16 v0, v20

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 201
    .local v10, "uci":Ljava/lang/String;
    move/from16 v0, v21

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 202
    .local v11, "uciPrefix":Ljava/lang/String;
    const-string/jumbo v2, "BluetoothMapAccountEmailLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "   Account UCI "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    .end local v10    # "uci":Ljava/lang/String;
    .end local v11    # "uciPrefix":Ljava/lang/String;
    .end local v20    # "uciIndex":I
    .end local v21    # "uciPreIndex":I
    :cond_3
    move/from16 v0, v19

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 206
    const-string/jumbo v5, "EMAIL Message Access"

    .line 207
    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 208
    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getProviderAuthority()Ljava/lang/String;

    move-result-object v7

    .line 210
    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v9

    .line 209
    const/4 v8, 0x0

    .line 204
    invoke-static/range {v4 .. v11}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;Ljava/lang/String;Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    move-result-object v13

    .line 214
    .local v13, "child":Lcom/android/bluetooth/map/BluetoothMapAccountItem;
    move/from16 v0, v18

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, v13, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mIsChecked:Z

    .line 215
    invoke-interface {v12, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->setDisplayName(Ljava/lang/String;)V

    .line 216
    move/from16 v0, v17

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->setEmailAddress(Ljava/lang/String;)V

    .line 217
    const/4 v2, 0x1

    iput-boolean v2, v13, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mIsChecked:Z

    .line 220
    iget-boolean v2, v13, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mIsChecked:Z

    if-eqz v2, :cond_4

    .line 222
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/bluetooth/map/BluetoothMapAccountEmailLoader;->mAccountsEnabledCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/bluetooth/map/BluetoothMapAccountEmailLoader;->mAccountsEnabledCount:I

    .line 224
    :cond_4
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 174
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v13    # "child":Lcom/android/bluetooth/map/BluetoothMapAccountItem;
    .end local v15    # "dispNameIndex":I
    .end local v17    # "emailAddressIndex":I
    .end local v18    # "exposeIndex":I
    .end local v19    # "idIndex":I
    .local v12, "c":Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    .line 175
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapAccountEmailLoader;->mProviderClient:Landroid/content/ContentProviderClient;

    if-eqz v4, :cond_5

    .line 176
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapAccountEmailLoader;->mProviderClient:Landroid/content/ContentProviderClient;

    invoke-virtual {v4}, Landroid/content/ContentProviderClient;->release()Z

    .line 174
    :cond_5
    throw v2

    .line 214
    .restart local v3    # "uri":Landroid/net/Uri;
    .local v12, "c":Landroid/database/Cursor;
    .restart local v13    # "child":Lcom/android/bluetooth/map/BluetoothMapAccountItem;
    .restart local v15    # "dispNameIndex":I
    .restart local v17    # "emailAddressIndex":I
    .restart local v18    # "exposeIndex":I
    .restart local v19    # "idIndex":I
    :cond_6
    const/4 v2, 0x0

    goto :goto_1

    .line 226
    .end local v13    # "child":Lcom/android/bluetooth/map/BluetoothMapAccountItem;
    :cond_7
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 230
    .end local v15    # "dispNameIndex":I
    .end local v17    # "emailAddressIndex":I
    .end local v18    # "exposeIndex":I
    .end local v19    # "idIndex":I
    :goto_2
    return-object v14

    .line 228
    :cond_8
    const-string/jumbo v2, "BluetoothMapAccountEmailLoader"

    const-string/jumbo v4, "query failed"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public parsePackages(Z)Ljava/util/LinkedHashMap;
    .locals 12
    .param p1, "includeIcon"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/LinkedHashMap",
            "<",
            "Lcom/android/bluetooth/map/BluetoothMapAccountItem;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/bluetooth/map/BluetoothMapAccountItem;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v1, 0x0

    .line 80
    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    .line 83
    .local v10, "groups":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Lcom/android/bluetooth/map/BluetoothMapAccountItem;Ljava/util/ArrayList<Lcom/android/bluetooth/map/BluetoothMapAccountItem;>;>;"
    iput v11, p0, Lcom/android/bluetooth/map/BluetoothMapAccountEmailLoader;->mAccountsEnabledCount:I

    .line 84
    invoke-super {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapAccountLoader;->parsePackages(Z)Ljava/util/LinkedHashMap;

    move-result-object v10

    .line 85
    const-string/jumbo v0, "BluetoothMapAccountEmailLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Groups SIZE: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Ljava/util/LinkedHashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-virtual {v10}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 90
    const-string/jumbo v0, "BluetoothMapAccountEmailLoader"

    const-string/jumbo v2, "Found 0 applications - Support legacy default or primary email Account"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAccountEmailLoader;->mEmailContext:Landroid/content/Context;

    if-eqz v0, :cond_4

    .line 93
    const-string/jumbo v0, "0"

    .line 95
    const-string/jumbo v2, "com.android.email"

    .line 96
    const-string/jumbo v3, "com.android.email.provider"

    .line 98
    sget-object v5, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object v4, v1

    .line 92
    invoke-static/range {v0 .. v5}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    move-result-object v9

    .line 99
    .local v9, "app":Lcom/android/bluetooth/map/BluetoothMapAccountItem;
    if-eqz v9, :cond_2

    .line 100
    invoke-virtual {p0, v9}, Lcom/android/bluetooth/map/BluetoothMapAccountEmailLoader;->parseEmailAccounts(Lcom/android/bluetooth/map/BluetoothMapAccountItem;)Ljava/util/ArrayList;

    move-result-object v8

    .line 101
    .local v8, "accounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/bluetooth/map/BluetoothMapAccountItem;>;"
    const-string/jumbo v0, "BluetoothMapAccountEmailLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "parseAccnts: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, v9, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mIsChecked:Z

    .line 107
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "acc$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    .line 109
    .local v6, "acc":Lcom/android/bluetooth/map/BluetoothMapAccountItem;
    iget-boolean v0, v6, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mIsChecked:Z

    if-nez v0, :cond_0

    .line 111
    iput-boolean v11, v9, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mIsChecked:Z

    .line 115
    .end local v6    # "acc":Lcom/android/bluetooth/map/BluetoothMapAccountItem;
    :cond_1
    invoke-virtual {v10, v9, v8}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .end local v7    # "acc$iterator":Ljava/util/Iterator;
    .end local v8    # "accounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/bluetooth/map/BluetoothMapAccountItem;>;"
    .end local v9    # "app":Lcom/android/bluetooth/map/BluetoothMapAccountItem;
    :cond_2
    :goto_0
    return-object v10

    .line 118
    .restart local v8    # "accounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/bluetooth/map/BluetoothMapAccountItem;>;"
    .restart local v9    # "app":Lcom/android/bluetooth/map/BluetoothMapAccountItem;
    :cond_3
    invoke-virtual {v10, v9, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 122
    .end local v8    # "accounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/bluetooth/map/BluetoothMapAccountItem;>;"
    .end local v9    # "app":Lcom/android/bluetooth/map/BluetoothMapAccountItem;
    :cond_4
    const-string/jumbo v0, "BluetoothMapAccountEmailLoader"

    const-string/jumbo v1, "mEmailContext NOT Assigned - NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
