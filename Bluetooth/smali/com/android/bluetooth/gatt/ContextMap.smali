.class Lcom/android/bluetooth/gatt/ContextMap;
.super Ljava/lang/Object;
.source "ContextMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/gatt/ContextMap$Connection;,
        Lcom/android/bluetooth/gatt/ContextMap$App;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BtGatt.ContextMap"


# instance fields
.field mApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/bluetooth/gatt/ContextMap",
            "<TT;>.App;>;"
        }
    .end annotation
.end field

.field mConnections:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/bluetooth/gatt/ContextMap",
            "<TT;>.Connection;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 38
    .local p0, "this":Lcom/android/bluetooth/gatt/ContextMap;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/gatt/ContextMap;->mApps:Ljava/util/List;

    .line 127
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/gatt/ContextMap;->mConnections:Ljava/util/Set;

    .line 38
    return-void
.end method


# virtual methods
.method add(Ljava/util/UUID;Ljava/lang/Object;)V
    .locals 3
    .param p1, "uuid"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 133
    .local p0, "this":Lcom/android/bluetooth/gatt/ContextMap;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>;"
    .local p2, "callback":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lcom/android/bluetooth/gatt/ContextMap;->mApps:Ljava/util/List;

    monitor-enter v1

    .line 134
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ContextMap;->mApps:Ljava/util/List;

    new-instance v2, Lcom/android/bluetooth/gatt/ContextMap$App;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/bluetooth/gatt/ContextMap$App;-><init>(Lcom/android/bluetooth/gatt/ContextMap;Ljava/util/UUID;Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 132
    return-void

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method addConnection(IILjava/lang/String;)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "connId"    # I
    .param p3, "address"    # Ljava/lang/String;

    .prologue
    .line 185
    .local p0, "this":Lcom/android/bluetooth/gatt/ContextMap;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>;"
    iget-object v2, p0, Lcom/android/bluetooth/gatt/ContextMap;->mConnections:Ljava/util/Set;

    monitor-enter v2

    .line 186
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/gatt/ContextMap;->getById(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v0

    .line 187
    .local v0, "entry":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>.App;"
    if-eqz v0, :cond_0

    .line 188
    iget-object v1, p0, Lcom/android/bluetooth/gatt/ContextMap;->mConnections:Ljava/util/Set;

    new-instance v3, Lcom/android/bluetooth/gatt/ContextMap$Connection;

    invoke-direct {v3, p0, p2, p3, p1}, Lcom/android/bluetooth/gatt/ContextMap$Connection;-><init>(Lcom/android/bluetooth/gatt/ContextMap;ILjava/lang/String;I)V

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 184
    return-void

    .line 185
    .end local v0    # "entry":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>.App;"
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method addressByConnId(I)Ljava/lang/String;
    .locals 3
    .param p1, "connId"    # I

    .prologue
    .line 281
    .local p0, "this":Lcom/android/bluetooth/gatt/ContextMap;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>;"
    iget-object v2, p0, Lcom/android/bluetooth/gatt/ContextMap;->mConnections:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 282
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/bluetooth/gatt/ContextMap<TT;>.Connection;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 283
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/ContextMap$Connection;

    .line 284
    .local v0, "connection":Lcom/android/bluetooth/gatt/ContextMap$Connection;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>.Connection;"
    iget v2, v0, Lcom/android/bluetooth/gatt/ContextMap$Connection;->connId:I

    if-ne v2, p1, :cond_0

    iget-object v2, v0, Lcom/android/bluetooth/gatt/ContextMap$Connection;->address:Ljava/lang/String;

    return-object v2

    .line 286
    .end local v0    # "connection":Lcom/android/bluetooth/gatt/ContextMap$Connection;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>.Connection;"
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method clear()V
    .locals 4

    .prologue
    .line 304
    .local p0, "this":Lcom/android/bluetooth/gatt/ContextMap;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>;"
    iget-object v3, p0, Lcom/android/bluetooth/gatt/ContextMap;->mApps:Ljava/util/List;

    monitor-enter v3

    .line 305
    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/gatt/ContextMap;->mApps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 306
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/bluetooth/gatt/ContextMap<TT;>.App;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 307
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/ContextMap$App;

    .line 308
    .local v0, "entry":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>.App;"
    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/ContextMap$App;->unlinkToDeath()V

    .line 309
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 304
    .end local v0    # "entry":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>.App;"
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/bluetooth/gatt/ContextMap<TT;>.App;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .restart local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/bluetooth/gatt/ContextMap<TT;>.App;>;"
    :cond_0
    monitor-exit v3

    .line 313
    iget-object v3, p0, Lcom/android/bluetooth/gatt/ContextMap;->mConnections:Ljava/util/Set;

    monitor-enter v3

    .line 314
    :try_start_1
    iget-object v2, p0, Lcom/android/bluetooth/gatt/ContextMap;->mConnections:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v3

    .line 303
    return-void

    .line 313
    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method connIdByAddress(ILjava/lang/String;)Ljava/lang/Integer;
    .locals 5
    .param p1, "id"    # I
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lcom/android/bluetooth/gatt/ContextMap;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>;"
    const/4 v4, 0x0

    .line 265
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/gatt/ContextMap;->getById(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v1

    .line 266
    .local v1, "entry":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>.App;"
    if-nez v1, :cond_0

    return-object v4

    .line 268
    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/gatt/ContextMap;->mConnections:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 269
    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/bluetooth/gatt/ContextMap<TT;>.Connection;>;"
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 270
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/ContextMap$Connection;

    .line 271
    .local v0, "connection":Lcom/android/bluetooth/gatt/ContextMap$Connection;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>.Connection;"
    iget-object v3, v0, Lcom/android/bluetooth/gatt/ContextMap$Connection;->address:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, v0, Lcom/android/bluetooth/gatt/ContextMap$Connection;->appId:I

    if-ne v3, p1, :cond_1

    .line 272
    iget v3, v0, Lcom/android/bluetooth/gatt/ContextMap$Connection;->connId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    return-object v3

    .line 274
    .end local v0    # "connection":Lcom/android/bluetooth/gatt/ContextMap$Connection;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>.Connection;"
    :cond_2
    return-object v4
.end method

.method dump(Ljava/lang/StringBuilder;)V
    .locals 7
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 333
    .local p0, "this":Lcom/android/bluetooth/gatt/ContextMap;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>;"
    const-string/jumbo v5, "  Entries: "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/bluetooth/gatt/ContextMap;->mApps:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    iget-object v5, p0, Lcom/android/bluetooth/gatt/ContextMap;->mApps:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 336
    .local v3, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/bluetooth/gatt/ContextMap<TT;>.App;>;"
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 337
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/gatt/ContextMap$App;

    .line 338
    .local v2, "entry":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>.App;"
    iget v5, v2, Lcom/android/bluetooth/gatt/ContextMap$App;->id:I

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/gatt/ContextMap;->getConnectionByApp(I)Ljava/util/List;

    move-result-object v1

    .line 340
    .local v1, "connections":Ljava/util/List;, "Ljava/util/List<Lcom/android/bluetooth/gatt/ContextMap<TT;>.Connection;>;"
    const-string/jumbo v5, "\n  Application Id: "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/android/bluetooth/gatt/ContextMap$App;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    const-string/jumbo v5, "  UUID: "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/android/bluetooth/gatt/ContextMap$App;->uuid:Ljava/util/UUID;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    const-string/jumbo v5, "  Connections: "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 345
    .local v4, "ii":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/bluetooth/gatt/ContextMap<TT;>.Connection;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 346
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/ContextMap$Connection;

    .line 347
    .local v0, "connection":Lcom/android/bluetooth/gatt/ContextMap$Connection;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>.Connection;"
    const-string/jumbo v5, "    "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/android/bluetooth/gatt/ContextMap$Connection;->connId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/bluetooth/gatt/ContextMap$Connection;->address:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 332
    .end local v0    # "connection":Lcom/android/bluetooth/gatt/ContextMap$Connection;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>.Connection;"
    .end local v1    # "connections":Ljava/util/List;, "Ljava/util/List<Lcom/android/bluetooth/gatt/ContextMap<TT;>.Connection;>;"
    .end local v2    # "entry":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>.App;"
    .end local v4    # "ii":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/bluetooth/gatt/ContextMap<TT;>.Connection;>;"
    :cond_1
    return-void
.end method

.method getByConnId(I)Lcom/android/bluetooth/gatt/ContextMap$App;
    .locals 3
    .param p1, "connId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/bluetooth/gatt/ContextMap",
            "<TT;>.App;"
        }
    .end annotation

    .prologue
    .line 251
    .local p0, "this":Lcom/android/bluetooth/gatt/ContextMap;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>;"
    iget-object v2, p0, Lcom/android/bluetooth/gatt/ContextMap;->mConnections:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 252
    .local v1, "ii":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/bluetooth/gatt/ContextMap<TT;>.Connection;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 253
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/ContextMap$Connection;

    .line 254
    .local v0, "connection":Lcom/android/bluetooth/gatt/ContextMap$Connection;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>.Connection;"
    iget v2, v0, Lcom/android/bluetooth/gatt/ContextMap$Connection;->connId:I

    if-ne v2, p1, :cond_0

    .line 255
    iget v2, v0, Lcom/android/bluetooth/gatt/ContextMap$Connection;->appId:I

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/gatt/ContextMap;->getById(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v2

    return-object v2

    .line 258
    .end local v0    # "connection":Lcom/android/bluetooth/gatt/ContextMap$Connection;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>.Connection;"
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method getById(I)Lcom/android/bluetooth/gatt/ContextMap$App;
    .locals 5
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/bluetooth/gatt/ContextMap",
            "<TT;>.App;"
        }
    .end annotation

    .prologue
    .line 212
    .local p0, "this":Lcom/android/bluetooth/gatt/ContextMap;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>;"
    iget-object v2, p0, Lcom/android/bluetooth/gatt/ContextMap;->mApps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 213
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/bluetooth/gatt/ContextMap<TT;>.App;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 214
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/ContextMap$App;

    .line 215
    .local v0, "entry":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>.App;"
    iget v2, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->id:I

    if-ne v2, p1, :cond_0

    return-object v0

    .line 217
    .end local v0    # "entry":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>.App;"
    :cond_1
    const-string/jumbo v2, "BtGatt.ContextMap"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Context not found for ID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const/4 v2, 0x0

    return-object v2
.end method

.method getByUuid(Ljava/util/UUID;)Lcom/android/bluetooth/gatt/ContextMap$App;
    .locals 5
    .param p1, "uuid"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            ")",
            "Lcom/android/bluetooth/gatt/ContextMap",
            "<TT;>.App;"
        }
    .end annotation

    .prologue
    .line 225
    .local p0, "this":Lcom/android/bluetooth/gatt/ContextMap;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>;"
    iget-object v2, p0, Lcom/android/bluetooth/gatt/ContextMap;->mApps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 226
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/bluetooth/gatt/ContextMap<TT;>.App;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 227
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/ContextMap$App;

    .line 228
    .local v0, "entry":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>.App;"
    iget-object v2, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->uuid:Ljava/util/UUID;

    invoke-virtual {v2, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    .line 230
    .end local v0    # "entry":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>.App;"
    :cond_1
    const-string/jumbo v2, "BtGatt.ContextMap"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Context not found for UUID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const/4 v2, 0x0

    return-object v2
.end method

.method getConnectedDevices()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 238
    .local p0, "this":Lcom/android/bluetooth/gatt/ContextMap;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 239
    .local v0, "addresses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/bluetooth/gatt/ContextMap;->mConnections:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 240
    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/bluetooth/gatt/ContextMap<TT;>.Connection;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 241
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/gatt/ContextMap$Connection;

    .line 242
    .local v1, "connection":Lcom/android/bluetooth/gatt/ContextMap$Connection;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>.Connection;"
    iget-object v3, v1, Lcom/android/bluetooth/gatt/ContextMap$Connection;->address:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 244
    .end local v1    # "connection":Lcom/android/bluetooth/gatt/ContextMap$Connection;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>.Connection;"
    :cond_0
    return-object v0
.end method

.method getConnectedMap()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 322
    .local p0, "this":Lcom/android/bluetooth/gatt/ContextMap;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 323
    .local v2, "connectedmap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/bluetooth/gatt/ContextMap;->mConnections:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "conn$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/ContextMap$Connection;

    .line 324
    .local v0, "conn":Lcom/android/bluetooth/gatt/ContextMap$Connection;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>.Connection;"
    iget v3, v0, Lcom/android/bluetooth/gatt/ContextMap$Connection;->appId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, v0, Lcom/android/bluetooth/gatt/ContextMap$Connection;->address:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 326
    .end local v0    # "conn":Lcom/android/bluetooth/gatt/ContextMap$Connection;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>.Connection;"
    :cond_0
    return-object v2
.end method

.method getConnectionByApp(I)Ljava/util/List;
    .locals 4
    .param p1, "appId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/bluetooth/gatt/ContextMap",
            "<TT;>.Connection;>;"
        }
    .end annotation

    .prologue
    .line 290
    .local p0, "this":Lcom/android/bluetooth/gatt/ContextMap;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 291
    .local v1, "currentConnections":Ljava/util/List;, "Ljava/util/List<Lcom/android/bluetooth/gatt/ContextMap<TT;>.Connection;>;"
    iget-object v3, p0, Lcom/android/bluetooth/gatt/ContextMap;->mConnections:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 292
    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/bluetooth/gatt/ContextMap<TT;>.Connection;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 293
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/ContextMap$Connection;

    .line 294
    .local v0, "connection":Lcom/android/bluetooth/gatt/ContextMap$Connection;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>.Connection;"
    iget v3, v0, Lcom/android/bluetooth/gatt/ContextMap$Connection;->appId:I

    if-ne v3, p1, :cond_0

    .line 295
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 297
    .end local v0    # "connection":Lcom/android/bluetooth/gatt/ContextMap$Connection;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>.Connection;"
    :cond_1
    return-object v1
.end method

.method remove(I)V
    .locals 6
    .param p1, "id"    # I

    .prologue
    .line 159
    .local p0, "this":Lcom/android/bluetooth/gatt/ContextMap;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>;"
    iget-object v5, p0, Lcom/android/bluetooth/gatt/ContextMap;->mApps:Ljava/util/List;

    monitor-enter v5

    .line 160
    :try_start_0
    iget-object v4, p0, Lcom/android/bluetooth/gatt/ContextMap;->mApps:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 161
    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/bluetooth/gatt/ContextMap<TT;>.App;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 162
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/gatt/ContextMap$App;

    .line 163
    .local v1, "entry":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>.App;"
    iget v4, v1, Lcom/android/bluetooth/gatt/ContextMap$App;->id:I

    if-ne v4, p1, :cond_0

    .line 164
    invoke-virtual {v1}, Lcom/android/bluetooth/gatt/ContextMap$App;->unlinkToDeath()V

    .line 165
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .end local v1    # "entry":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>.App;"
    :cond_1
    monitor-exit v5

    .line 170
    iget-object v5, p0, Lcom/android/bluetooth/gatt/ContextMap;->mConnections:Ljava/util/Set;

    monitor-enter v5

    .line 171
    :try_start_1
    iget-object v4, p0, Lcom/android/bluetooth/gatt/ContextMap;->mConnections:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 172
    .local v3, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/bluetooth/gatt/ContextMap<TT;>.Connection;>;"
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 173
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/ContextMap$Connection;

    .line 174
    .local v0, "connection":Lcom/android/bluetooth/gatt/ContextMap$Connection;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>.Connection;"
    iget v4, v0, Lcom/android/bluetooth/gatt/ContextMap$Connection;->appId:I

    if-ne v4, p1, :cond_2

    .line 175
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 170
    .end local v0    # "connection":Lcom/android/bluetooth/gatt/ContextMap$Connection;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>.Connection;"
    .end local v3    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/bluetooth/gatt/ContextMap<TT;>.Connection;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 159
    .end local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/bluetooth/gatt/ContextMap<TT;>.App;>;"
    :catchall_1
    move-exception v4

    monitor-exit v5

    throw v4

    .restart local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/bluetooth/gatt/ContextMap<TT;>.App;>;"
    .restart local v3    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/bluetooth/gatt/ContextMap<TT;>.Connection;>;"
    :cond_3
    monitor-exit v5

    .line 158
    return-void
.end method

.method remove(Ljava/util/UUID;)V
    .locals 4
    .param p1, "uuid"    # Ljava/util/UUID;

    .prologue
    .line 142
    .local p0, "this":Lcom/android/bluetooth/gatt/ContextMap;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>;"
    iget-object v3, p0, Lcom/android/bluetooth/gatt/ContextMap;->mApps:Ljava/util/List;

    monitor-enter v3

    .line 143
    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/gatt/ContextMap;->mApps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 144
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/bluetooth/gatt/ContextMap<TT;>.App;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 145
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/ContextMap$App;

    .line 146
    .local v0, "entry":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>.App;"
    iget-object v2, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->uuid:Ljava/util/UUID;

    invoke-virtual {v2, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 147
    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/ContextMap$App;->unlinkToDeath()V

    .line 148
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "entry":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>.App;"
    :cond_1
    monitor-exit v3

    .line 141
    return-void

    .line 142
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/bluetooth/gatt/ContextMap<TT;>.App;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method removeConnection(II)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "connId"    # I

    .prologue
    .line 197
    .local p0, "this":Lcom/android/bluetooth/gatt/ContextMap;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>;"
    iget-object v3, p0, Lcom/android/bluetooth/gatt/ContextMap;->mConnections:Ljava/util/Set;

    monitor-enter v3

    .line 198
    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/gatt/ContextMap;->mConnections:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 199
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/bluetooth/gatt/ContextMap<TT;>.Connection;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 200
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/ContextMap$Connection;

    .line 201
    .local v0, "connection":Lcom/android/bluetooth/gatt/ContextMap$Connection;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>.Connection;"
    iget v2, v0, Lcom/android/bluetooth/gatt/ContextMap$Connection;->connId:I

    if-ne v2, p2, :cond_0

    .line 202
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 197
    .end local v0    # "connection":Lcom/android/bluetooth/gatt/ContextMap$Connection;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>.Connection;"
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/bluetooth/gatt/ContextMap<TT;>.Connection;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .restart local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/bluetooth/gatt/ContextMap<TT;>.Connection;>;"
    :cond_1
    monitor-exit v3

    .line 196
    return-void
.end method
