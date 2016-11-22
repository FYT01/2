.class Lcom/android/bluetooth/map/BluetoothMapAppObserver$2;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothMapAppObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/map/BluetoothMapAppObserver;->createReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/map/BluetoothMapAppObserver;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/map/BluetoothMapAppObserver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/bluetooth/map/BluetoothMapAppObserver;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver$2;->this$0:Lcom/android/bluetooth/map/BluetoothMapAppObserver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 215
    const-string/jumbo v13, "BluetoothMapAppObserver"

    const-string/jumbo v14, "onReceive\n"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 218
    .local v1, "action":Ljava/lang/String;
    const-string/jumbo v13, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 219
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 220
    .local v3, "data":Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v6

    .line 221
    .local v6, "packageName":Ljava/lang/String;
    const-string/jumbo v13, "BluetoothMapAppObserver"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "The installed package is: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    sget-object v4, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->NONE:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    .line 224
    .local v4, "msgType":Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    const/4 v10, 0x0

    .line 225
    .local v10, "resolveInfo":Landroid/content/pm/ResolveInfo;
    const/4 v13, 0x2

    new-array v12, v13, [Landroid/content/Intent;

    .line 227
    .local v12, "searchIntents":[Landroid/content/Intent;
    new-instance v13, Landroid/content/Intent;

    const-string/jumbo v14, "android.bluetooth.action.BLUETOOTH_MAP_PROVIDER"

    invoke-direct {v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v14, 0x0

    aput-object v13, v12, v14

    .line 228
    new-instance v13, Landroid/content/Intent;

    const-string/jumbo v14, "android.bluetooth.action.BLUETOOTH_MAP_IM_PROVIDER"

    invoke-direct {v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v14, 0x1

    aput-object v13, v12, v14

    .line 231
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/map/BluetoothMapAppObserver$2;->this$0:Lcom/android/bluetooth/map/BluetoothMapAppObserver;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/map/BluetoothMapAppObserver$2;->this$0:Lcom/android/bluetooth/map/BluetoothMapAppObserver;

    invoke-static {v14}, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->-get1(Lcom/android/bluetooth/map/BluetoothMapAppObserver;)Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->-set0(Lcom/android/bluetooth/map/BluetoothMapAppObserver;Landroid/content/pm/PackageManager;)Landroid/content/pm/PackageManager;

    .line 233
    const/4 v13, 0x0

    array-length v14, v12

    .end local v10    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :goto_0
    if-ge v13, v14, :cond_3

    aget-object v11, v12, v13

    .line 235
    .local v11, "searchIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/map/BluetoothMapAppObserver$2;->this$0:Lcom/android/bluetooth/map/BluetoothMapAppObserver;

    invoke-static {v15}, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->-get3(Lcom/android/bluetooth/map/BluetoothMapAppObserver;)Landroid/content/pm/PackageManager;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v15, v11, v0}, Landroid/content/pm/PackageManager;->queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v9

    .line 236
    .local v9, "resInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v9, :cond_1

    .line 237
    const-string/jumbo v15, "BluetoothMapAppObserver"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Found "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 238
    const-string/jumbo v17, " application(s) with intent "

    .line 237
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 239
    invoke-virtual {v11}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v17

    .line 237
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "rInfo$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 241
    .local v7, "rInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v7, :cond_0

    .line 243
    iget-object v15, v7, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v15, v15, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 244
    move-object v10, v7

    .line 245
    .local v10, "resolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v11}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v15

    .line 246
    const-string/jumbo v16, "android.bluetooth.action.BLUETOOTH_MAP_PROVIDER"

    .line 245
    move-object/from16 v0, v16

    if-ne v15, v0, :cond_2

    .line 247
    sget-object v4, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    .line 233
    .end local v7    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v8    # "rInfo$iterator":Ljava/util/Iterator;
    .end local v10    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 248
    .restart local v7    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v8    # "rInfo$iterator":Ljava/util/Iterator;
    .restart local v10    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_2
    invoke-virtual {v11}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v15

    .line 249
    const-string/jumbo v16, "android.bluetooth.action.BLUETOOTH_MAP_IM_PROVIDER"

    .line 248
    move-object/from16 v0, v16

    if-ne v15, v0, :cond_1

    .line 250
    sget-object v4, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->IM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    goto :goto_1

    .line 259
    .end local v7    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v8    # "rInfo$iterator":Ljava/util/Iterator;
    .end local v9    # "resInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v10    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v11    # "searchIntent":Landroid/content/Intent;
    :cond_3
    if-eqz v10, :cond_4

    .line 260
    const-string/jumbo v13, "BluetoothMapAppObserver"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Found "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v10, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v15, v15, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 261
    const-string/jumbo v15, " application of type "

    .line 260
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/map/BluetoothMapAppObserver$2;->this$0:Lcom/android/bluetooth/map/BluetoothMapAppObserver;

    iget-object v13, v13, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mLoader:Lcom/android/bluetooth/map/BluetoothMapAccountEmailLoader;

    .line 263
    const/4 v14, 0x0

    .line 262
    invoke-virtual {v13, v10, v14, v4}, Lcom/android/bluetooth/map/BluetoothMapAccountEmailLoader;->createAppItem(Landroid/content/pm/ResolveInfo;ZLcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    move-result-object v2

    .line 264
    .local v2, "app":Lcom/android/bluetooth/map/BluetoothMapAccountItem;
    if-eqz v2, :cond_4

    .line 265
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/map/BluetoothMapAppObserver$2;->this$0:Lcom/android/bluetooth/map/BluetoothMapAppObserver;

    invoke-virtual {v13, v2}, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->registerObserver(Lcom/android/bluetooth/map/BluetoothMapAccountItem;)V

    .line 268
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/map/BluetoothMapAppObserver$2;->this$0:Lcom/android/bluetooth/map/BluetoothMapAppObserver;

    iget-object v13, v13, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mLoader:Lcom/android/bluetooth/map/BluetoothMapAccountEmailLoader;

    invoke-virtual {v13, v2}, Lcom/android/bluetooth/map/BluetoothMapAccountEmailLoader;->parseAccounts(Lcom/android/bluetooth/map/BluetoothMapAccountItem;)Ljava/util/ArrayList;

    move-result-object v5

    .line 269
    .local v5, "newAccountList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/bluetooth/map/BluetoothMapAccountItem;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/map/BluetoothMapAppObserver$2;->this$0:Lcom/android/bluetooth/map/BluetoothMapAppObserver;

    invoke-static {v13}, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->-get2(Lcom/android/bluetooth/map/BluetoothMapAppObserver;)Ljava/util/LinkedHashMap;

    move-result-object v13

    invoke-virtual {v13, v2, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    .end local v2    # "app":Lcom/android/bluetooth/map/BluetoothMapAccountItem;
    .end local v3    # "data":Landroid/net/Uri;
    .end local v4    # "msgType":Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    .end local v5    # "newAccountList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/bluetooth/map/BluetoothMapAccountItem;>;"
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v12    # "searchIntents":[Landroid/content/Intent;
    :cond_4
    :goto_2
    return-void

    .line 274
    :cond_5
    const-string/jumbo v13, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 275
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 276
    .restart local v3    # "data":Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v6

    .line 277
    .restart local v6    # "packageName":Ljava/lang/String;
    const-string/jumbo v13, "BluetoothMapAppObserver"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "The removed package is: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/map/BluetoothMapAppObserver$2;->this$0:Lcom/android/bluetooth/map/BluetoothMapAppObserver;

    invoke-static {v13, v6}, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->-wrap0(Lcom/android/bluetooth/map/BluetoothMapAppObserver;Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    move-result-object v2

    .line 280
    .restart local v2    # "app":Lcom/android/bluetooth/map/BluetoothMapAccountItem;
    if-eqz v2, :cond_4

    .line 281
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/map/BluetoothMapAppObserver$2;->this$0:Lcom/android/bluetooth/map/BluetoothMapAppObserver;

    invoke-virtual {v13, v2}, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->unregisterObserver(Lcom/android/bluetooth/map/BluetoothMapAccountItem;)V

    .line 282
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/map/BluetoothMapAppObserver$2;->this$0:Lcom/android/bluetooth/map/BluetoothMapAppObserver;

    invoke-static {v13}, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->-get2(Lcom/android/bluetooth/map/BluetoothMapAppObserver;)Ljava/util/LinkedHashMap;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method
