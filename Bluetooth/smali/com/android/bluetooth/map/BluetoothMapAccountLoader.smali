.class public Lcom/android/bluetooth/map/BluetoothMapAccountLoader;
.super Ljava/lang/Object;
.source "BluetoothMapAccountLoader.java"


# static fields
.field private static final D:Z = true

.field private static final PROVIDER_ANR_TIMEOUT:J = 0x4e20L

.field private static final TAG:Ljava/lang/String; = "BluetoothMapAccountLoader"

.field private static final V:Z


# instance fields
.field private mAccountsEnabledCount:I

.field private mContext:Landroid/content/Context;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mProviderClient:Landroid/content/ContentProviderClient;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 48
    const-string/jumbo v0, "BluetoothMap"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/map/BluetoothMapAccountLoader;->V:Z

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapAccountLoader;->mContext:Landroid/content/Context;

    .line 50
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapAccountLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAccountLoader;->mAccountsEnabledCount:I

    .line 53
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapAccountLoader;->mProviderClient:Landroid/content/ContentProviderClient;

    .line 58
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapAccountLoader;->mContext:Landroid/content/Context;

    .line 56
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

    .line 134
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v3, v0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 135
    .local v3, "provider":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 136
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAccountLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, "name":Ljava/lang/String;
    const-string/jumbo v0, "BluetoothMapAccountLoader"

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

    .line 138
    const-string/jumbo v5, " - meta-data(provider = "

    .line 137
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 138
    const-string/jumbo v5, ")\n"

    .line 137
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const-string/jumbo v0, "0"

    .line 142
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 144
    if-nez p2, :cond_0

    :goto_0
    move-object v5, p3

    .line 139
    invoke-static/range {v0 .. v5}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    move-result-object v6

    .line 146
    .local v6, "app":Lcom/android/bluetooth/map/BluetoothMapAccountItem;
    return-object v6

    .line 144
    .end local v6    # "app":Lcom/android/bluetooth/map/BluetoothMapAccountItem;
    :cond_0
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapAccountLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v4}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_0

    .line 149
    .end local v1    # "name":Ljava/lang/String;
    :cond_1
    return-object v4
.end method

.method public getAccountsEnabledCount()I
    .locals 3

    .prologue
    .line 244
    const-string/jumbo v0, "BluetoothMapAccountLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Enabled Accounts count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/bluetooth/map/BluetoothMapAccountLoader;->mAccountsEnabledCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAccountLoader;->mAccountsEnabledCount:I

    return v0
.end method

.method public parseAccounts(Lcom/android/bluetooth/map/BluetoothMapAccountItem;)Ljava/util/ArrayList;
    .locals 21
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
    .line 158
    const/4 v12, 0x0

    .line 159
    .local v12, "c":Landroid/database/Cursor;
    const-string/jumbo v2, "BluetoothMapAccountLoader"

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

    .line 160
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 162
    .local v14, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/bluetooth/map/BluetoothMapAccountItem;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapAccountLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapAccountLoader;->mResolver:Landroid/content/ContentResolver;

    .line 164
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapAccountLoader;->mResolver:Landroid/content/ContentResolver;

    .line 165
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mBase_uri_no_account:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 164
    invoke-virtual {v2, v4}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapAccountLoader;->mProviderClient:Landroid/content/ContentProviderClient;

    .line 166
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapAccountLoader;->mProviderClient:Landroid/content/ContentProviderClient;

    if-nez v2, :cond_1

    .line 167
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

    .line 181
    :catch_0
    move-exception v16

    .line 182
    .local v16, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v2, "BluetoothMapAccountLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Could not establish ContentProviderClient for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 183
    const-string/jumbo v5, " - returning empty account list"

    .line 182
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapAccountLoader;->mProviderClient:Landroid/content/ContentProviderClient;

    if-eqz v2, :cond_0

    .line 187
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapAccountLoader;->mProviderClient:Landroid/content/ContentProviderClient;

    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    .line 184
    :cond_0
    return-object v14

    .line 169
    .end local v16    # "e":Landroid/os/RemoteException;
    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapAccountLoader;->mProviderClient:Landroid/content/ContentProviderClient;

    const-wide/16 v4, 0x4e20

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentProviderClient;->setDetectNotResponding(J)V

    .line 171
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mBase_uri_no_account:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 172
    const-string/jumbo v4, "Account"

    .line 171
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 174
    .local v3, "uri":Landroid/net/Uri;
    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v2

    sget-object v4, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->IM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne v2, v4, :cond_5

    .line 175
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapAccountLoader;->mProviderClient:Landroid/content/ContentProviderClient;

    sget-object v4, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->BT_IM_ACCOUNT_PROJECTION:[Ljava/lang/String;

    .line 176
    const-string/jumbo v7, "_id DESC"

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 175
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v12

    .line 186
    .local v12, "c":Landroid/database/Cursor;
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapAccountLoader;->mProviderClient:Landroid/content/ContentProviderClient;

    if-eqz v2, :cond_2

    .line 187
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapAccountLoader;->mProviderClient:Landroid/content/ContentProviderClient;

    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    .line 191
    :cond_2
    if-eqz v12, :cond_9

    .line 192
    const/4 v2, -0x1

    invoke-interface {v12, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 193
    const-string/jumbo v2, "_id"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 195
    .local v18, "idIndex":I
    const-string/jumbo v2, "account_display_name"

    .line 194
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 196
    .local v15, "dispNameIndex":I
    const-string/jumbo v2, "flag_expose"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 197
    .local v17, "exposeIndex":I
    const-string/jumbo v2, "account_uci"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 199
    .local v19, "uciIndex":I
    const-string/jumbo v2, "account_uci_PREFIX"

    .line 198
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 200
    .local v20, "uciPreIndex":I
    :goto_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 201
    const-string/jumbo v2, "BluetoothMapAccountLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Adding account "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v12, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 202
    const-string/jumbo v5, " with ID "

    .line 201
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 202
    move/from16 v0, v18

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 201
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const/4 v10, 0x0

    .line 204
    .local v10, "uci":Ljava/lang/String;
    const/4 v11, 0x0

    .line 205
    .local v11, "uciPrefix":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v2

    sget-object v4, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->IM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne v2, v4, :cond_3

    .line 206
    move/from16 v0, v19

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 207
    .local v10, "uci":Ljava/lang/String;
    move/from16 v0, v20

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 208
    .local v11, "uciPrefix":Ljava/lang/String;
    const-string/jumbo v2, "BluetoothMapAccountLoader"

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

    .line 212
    .end local v10    # "uci":Ljava/lang/String;
    .end local v11    # "uciPrefix":Ljava/lang/String;
    :cond_3
    move/from16 v0, v18

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 213
    invoke-interface {v12, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 214
    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 215
    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getProviderAuthority()Ljava/lang/String;

    move-result-object v7

    .line 217
    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v9

    .line 216
    const/4 v8, 0x0

    .line 211
    invoke-static/range {v4 .. v11}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;Ljava/lang/String;Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    move-result-object v13

    .line 221
    .local v13, "child":Lcom/android/bluetooth/map/BluetoothMapAccountItem;
    move/from16 v0, v17

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x1

    :goto_2
    iput-boolean v2, v13, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mIsChecked:Z

    .line 222
    const/4 v2, 0x1

    iput-boolean v2, v13, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mIsChecked:Z

    .line 225
    iget-boolean v2, v13, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mIsChecked:Z

    if-eqz v2, :cond_4

    .line 227
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/bluetooth/map/BluetoothMapAccountLoader;->mAccountsEnabledCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/bluetooth/map/BluetoothMapAccountLoader;->mAccountsEnabledCount:I

    .line 229
    :cond_4
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 178
    .end local v13    # "child":Lcom/android/bluetooth/map/BluetoothMapAccountItem;
    .end local v15    # "dispNameIndex":I
    .end local v17    # "exposeIndex":I
    .end local v18    # "idIndex":I
    .end local v19    # "uciIndex":I
    .end local v20    # "uciPreIndex":I
    .local v12, "c":Landroid/database/Cursor;
    :cond_5
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapAccountLoader;->mProviderClient:Landroid/content/ContentProviderClient;

    sget-object v4, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->BT_ACCOUNT_PROJECTION:[Ljava/lang/String;

    .line 179
    const-string/jumbo v7, "_id DESC"

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 178
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v12

    .local v12, "c":Landroid/database/Cursor;
    goto/16 :goto_0

    .line 185
    .end local v3    # "uri":Landroid/net/Uri;
    .local v12, "c":Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    .line 186
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapAccountLoader;->mProviderClient:Landroid/content/ContentProviderClient;

    if-eqz v4, :cond_6

    .line 187
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapAccountLoader;->mProviderClient:Landroid/content/ContentProviderClient;

    invoke-virtual {v4}, Landroid/content/ContentProviderClient;->release()Z

    .line 185
    :cond_6
    throw v2

    .line 221
    .restart local v3    # "uri":Landroid/net/Uri;
    .local v12, "c":Landroid/database/Cursor;
    .restart local v13    # "child":Lcom/android/bluetooth/map/BluetoothMapAccountItem;
    .restart local v15    # "dispNameIndex":I
    .restart local v17    # "exposeIndex":I
    .restart local v18    # "idIndex":I
    .restart local v19    # "uciIndex":I
    .restart local v20    # "uciPreIndex":I
    :cond_7
    const/4 v2, 0x0

    goto :goto_2

    .line 231
    .end local v13    # "child":Lcom/android/bluetooth/map/BluetoothMapAccountItem;
    :cond_8
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 235
    .end local v15    # "dispNameIndex":I
    .end local v17    # "exposeIndex":I
    .end local v18    # "idIndex":I
    .end local v19    # "uciIndex":I
    .end local v20    # "uciPreIndex":I
    :goto_3
    return-object v14

    .line 233
    :cond_9
    const-string/jumbo v2, "BluetoothMapAccountLoader"

    const-string/jumbo v4, "query failed"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public parsePackages(Z)Ljava/util/LinkedHashMap;
    .locals 18
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
    .line 72
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 74
    .local v6, "groups":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Lcom/android/bluetooth/map/BluetoothMapAccountItem;Ljava/util/ArrayList<Lcom/android/bluetooth/map/BluetoothMapAccountItem;>;>;"
    const/4 v13, 0x2

    new-array v12, v13, [Landroid/content/Intent;

    .line 76
    .local v12, "searchIntents":[Landroid/content/Intent;
    new-instance v13, Landroid/content/Intent;

    const-string/jumbo v14, "android.bluetooth.action.BLUETOOTH_MAP_PROVIDER"

    invoke-direct {v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v14, 0x0

    aput-object v13, v12, v14

    .line 77
    new-instance v13, Landroid/content/Intent;

    const-string/jumbo v14, "android.bluetooth.action.BLUETOOTH_MAP_IM_PROVIDER"

    invoke-direct {v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v14, 0x1

    aput-object v13, v12, v14

    .line 79
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/bluetooth/map/BluetoothMapAccountLoader;->mAccountsEnabledCount:I

    .line 83
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/map/BluetoothMapAccountLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/bluetooth/map/BluetoothMapAccountLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 85
    const/4 v13, 0x0

    array-length v14, v12

    :goto_0
    if-ge v13, v14, :cond_7

    aget-object v11, v12, v13

    .line 87
    .local v11, "searchIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/map/BluetoothMapAccountLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v15, v11, v0}, Landroid/content/pm/PackageManager;->queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v10

    .line 88
    .local v10, "resInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v10, :cond_5

    .line 89
    const-string/jumbo v15, "BluetoothMapAccountLoader"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Found "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, " application(s) with intent "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 90
    invoke-virtual {v11}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v17

    .line 89
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-virtual {v11}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v15

    .line 92
    const-string/jumbo v16, "android.bluetooth.action.BLUETOOTH_MAP_PROVIDER"

    .line 91
    move-object/from16 v0, v16

    if-ne v15, v0, :cond_3

    .line 93
    sget-object v7, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    .line 94
    .local v7, "msgType":Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    :goto_1
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "rInfo$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 95
    .local v8, "rInfo":Landroid/content/pm/ResolveInfo;
    const-string/jumbo v15, "BluetoothMapAccountLoader"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "ResolveInfo "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v8}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v15, v8, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v15, v15, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v15, v15, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 99
    const/high16 v16, 0x200000

    .line 98
    and-int v15, v15, v16

    if-nez v15, :cond_4

    .line 100
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v8, v1, v7}, Lcom/android/bluetooth/map/BluetoothMapAccountLoader;->createAppItem(Landroid/content/pm/ResolveInfo;ZLcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    move-result-object v5

    .line 101
    .local v5, "app":Lcom/android/bluetooth/map/BluetoothMapAccountItem;
    if-eqz v5, :cond_0

    .line 102
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/bluetooth/map/BluetoothMapAccountLoader;->parseAccounts(Lcom/android/bluetooth/map/BluetoothMapAccountItem;)Ljava/util/ArrayList;

    move-result-object v4

    .line 104
    .local v4, "accounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/bluetooth/map/BluetoothMapAccountItem;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lez v15, :cond_0

    .line 107
    const/4 v15, 0x1

    iput-boolean v15, v5, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mIsChecked:Z

    .line 108
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "acc$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    .line 110
    .local v2, "acc":Lcom/android/bluetooth/map/BluetoothMapAccountItem;
    iget-boolean v15, v2, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mIsChecked:Z

    if-nez v15, :cond_1

    .line 112
    const/4 v15, 0x0

    iput-boolean v15, v5, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mIsChecked:Z

    .line 116
    .end local v2    # "acc":Lcom/android/bluetooth/map/BluetoothMapAccountItem;
    :cond_2
    invoke-virtual {v6, v5, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 93
    .end local v3    # "acc$iterator":Ljava/util/Iterator;
    .end local v4    # "accounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/bluetooth/map/BluetoothMapAccountItem;>;"
    .end local v5    # "app":Lcom/android/bluetooth/map/BluetoothMapAccountItem;
    .end local v7    # "msgType":Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    .end local v8    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v9    # "rInfo$iterator":Ljava/util/Iterator;
    :cond_3
    sget-object v7, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->IM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    .restart local v7    # "msgType":Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    goto :goto_1

    .line 120
    .restart local v8    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v9    # "rInfo$iterator":Ljava/util/Iterator;
    :cond_4
    const-string/jumbo v15, "BluetoothMapAccountLoader"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Ignoring force-stopped authority "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 121
    iget-object v0, v8, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 120
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 121
    const-string/jumbo v17, "\n"

    .line 120
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 126
    .end local v7    # "msgType":Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    .end local v8    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v9    # "rInfo$iterator":Ljava/util/Iterator;
    :cond_5
    const-string/jumbo v15, "BluetoothMapAccountLoader"

    const-string/jumbo v16, "Found no applications"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_6
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 129
    .end local v10    # "resInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v11    # "searchIntent":Landroid/content/Intent;
    :cond_7
    return-object v6
.end method
