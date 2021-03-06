.class Lcom/google/common/collect/StandardTable;
.super Lcom/google/common/collect/AbstractTable;
.source "StandardTable.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/StandardTable$TableSet;,
        Lcom/google/common/collect/StandardTable$CellIterator;,
        Lcom/google/common/collect/StandardTable$Row;,
        Lcom/google/common/collect/StandardTable$Column;,
        Lcom/google/common/collect/StandardTable$ColumnKeySet;,
        Lcom/google/common/collect/StandardTable$ColumnKeyIterator;,
        Lcom/google/common/collect/StandardTable$RowMap;,
        Lcom/google/common/collect/StandardTable$ColumnMap;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/AbstractTable",
        "<TR;TC;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final backingMap:Ljava/util/Map;
    .annotation runtime Lcom/google/common/collect/GwtTransient;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TR;",
            "Ljava/util/Map",
            "<TC;TV;>;>;"
        }
    .end annotation
.end field

.field private transient columnKeySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TC;>;"
        }
    .end annotation
.end field

.field private transient columnMap:Lcom/google/common/collect/StandardTable$ColumnMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/StandardTable",
            "<TR;TC;TV;>.ColumnMap;"
        }
    .end annotation
.end field

.field final factory:Lcom/google/common/base/Supplier;
    .annotation runtime Lcom/google/common/collect/GwtTransient;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier",
            "<+",
            "Ljava/util/Map",
            "<TC;TV;>;>;"
        }
    .end annotation
.end field

.field private transient rowMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TR;",
            "Ljava/util/Map",
            "<TC;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Lcom/google/common/collect/StandardTable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "rowKey"    # Ljava/lang/Object;
    .param p2, "columnKey"    # Ljava/lang/Object;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/StandardTable;->containsMapping(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/google/common/collect/StandardTable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "rowKey"    # Ljava/lang/Object;
    .param p2, "columnKey"    # Ljava/lang/Object;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/StandardTable;->removeMapping(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/google/common/collect/StandardTable;Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .param p1, "column"    # Ljava/lang/Object;

    .prologue
    invoke-direct {p0, p1}, Lcom/google/common/collect/StandardTable;->removeColumn(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method constructor <init>(Ljava/util/Map;Lcom/google/common/base/Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TR;",
            "Ljava/util/Map",
            "<TC;TV;>;>;",
            "Lcom/google/common/base/Supplier",
            "<+",
            "Ljava/util/Map",
            "<TC;TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "this":Lcom/google/common/collect/StandardTable;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>;"
    .local p1, "backingMap":Ljava/util/Map;, "Ljava/util/Map<TR;Ljava/util/Map<TC;TV;>;>;"
    .local p2, "factory":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<+Ljava/util/Map<TC;TV;>;>;"
    invoke-direct {p0}, Lcom/google/common/collect/AbstractTable;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    .line 74
    iput-object p2, p0, Lcom/google/common/collect/StandardTable;->factory:Lcom/google/common/base/Supplier;

    .line 72
    return-void
.end method

.method private containsMapping(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "rowKey"    # Ljava/lang/Object;
    .param p2, "columnKey"    # Ljava/lang/Object;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 179
    .local p0, "this":Lcom/google/common/collect/StandardTable;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>;"
    if-eqz p3, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/StandardTable;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getOrCreate(Ljava/lang/Object;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)",
            "Ljava/util/Map",
            "<TC;TV;>;"
        }
    .end annotation

    .prologue
    .line 129
    .local p0, "this":Lcom/google/common/collect/StandardTable;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>;"
    .local p1, "rowKey":Ljava/lang/Object;, "TR;"
    iget-object v1, p0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 130
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<TC;TV;>;"
    if-nez v0, :cond_0

    .line 131
    iget-object v1, p0, Lcom/google/common/collect/StandardTable;->factory:Lcom/google/common/base/Supplier;

    invoke-interface {v1}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<TC;TV;>;"
    check-cast v0, Ljava/util/Map;

    .line 132
    .restart local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<TC;TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    :cond_0
    return-object v0
.end method

.method private removeColumn(Ljava/lang/Object;)Ljava/util/Map;
    .locals 5
    .param p1, "column"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map",
            "<TR;TV;>;"
        }
    .end annotation

    .prologue
    .line 161
    .local p0, "this":Lcom/google/common/collect/StandardTable;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>;"
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 163
    .local v2, "output":Ljava/util/Map;, "Ljava/util/Map<TR;TV;>;"
    iget-object v4, p0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 164
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TR;Ljava/util/Map<TC;TV;>;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 165
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 166
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TR;Ljava/util/Map<TC;TV;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 167
    .local v3, "value":Ljava/lang/Object;, "TV;"
    if-eqz v3, :cond_0

    .line 168
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 170
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 174
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TR;Ljava/util/Map<TC;TV;>;>;"
    .end local v3    # "value":Ljava/lang/Object;, "TV;"
    :cond_1
    return-object v2
.end method

.method private removeMapping(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "rowKey"    # Ljava/lang/Object;
    .param p2, "columnKey"    # Ljava/lang/Object;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 184
    .local p0, "this":Lcom/google/common/collect/StandardTable;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/StandardTable;->containsMapping(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/StandardTable;->remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    const/4 v0, 0x1

    return v0

    .line 188
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method cellIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/common/collect/Table$Cell",
            "<TR;TC;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 222
    .local p0, "this":Lcom/google/common/collect/StandardTable;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>;"
    new-instance v0, Lcom/google/common/collect/StandardTable$CellIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/StandardTable$CellIterator;-><init>(Lcom/google/common/collect/StandardTable;Lcom/google/common/collect/StandardTable$CellIterator;)V

    return-object v0
.end method

.method public cellSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/common/collect/Table$Cell",
            "<TR;TC;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 218
    .local p0, "this":Lcom/google/common/collect/StandardTable;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractTable;->cellSet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 125
    .local p0, "this":Lcom/google/common/collect/StandardTable;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 124
    return-void
.end method

.method public column(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Ljava/util/Map",
            "<TR;TV;>;"
        }
    .end annotation

    .prologue
    .line 393
    .local p0, "this":Lcom/google/common/collect/StandardTable;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>;"
    .local p1, "columnKey":Ljava/lang/Object;, "TC;"
    new-instance v0, Lcom/google/common/collect/StandardTable$Column;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/StandardTable$Column;-><init>(Lcom/google/common/collect/StandardTable;Ljava/lang/Object;)V

    return-object v0
.end method

.method public columnKeySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/StandardTable;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>;"
    const/4 v1, 0x0

    .line 578
    iget-object v0, p0, Lcom/google/common/collect/StandardTable;->columnKeySet:Ljava/util/Set;

    .line 579
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<TC;>;"
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/StandardTable$ColumnKeySet;

    .end local v0    # "result":Ljava/util/Set;, "Ljava/util/Set<TC;>;"
    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/StandardTable$ColumnKeySet;-><init>(Lcom/google/common/collect/StandardTable;Lcom/google/common/collect/StandardTable$ColumnKeySet;)V

    iput-object v0, p0, Lcom/google/common/collect/StandardTable;->columnKeySet:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public columnMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TC;",
            "Ljava/util/Map",
            "<TR;TV;>;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/StandardTable;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>;"
    const/4 v1, 0x0

    .line 759
    iget-object v0, p0, Lcom/google/common/collect/StandardTable;->columnMap:Lcom/google/common/collect/StandardTable$ColumnMap;

    .line 760
    .local v0, "result":Lcom/google/common/collect/StandardTable$ColumnMap;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>.ColumnMap;"
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/StandardTable$ColumnMap;

    .end local v0    # "result":Lcom/google/common/collect/StandardTable$ColumnMap;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>.ColumnMap;"
    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/StandardTable$ColumnMap;-><init>(Lcom/google/common/collect/StandardTable;Lcom/google/common/collect/StandardTable$ColumnMap;)V

    iput-object v0, p0, Lcom/google/common/collect/StandardTable;->columnMap:Lcom/google/common/collect/StandardTable$ColumnMap;

    :cond_0
    return-object v0
.end method

.method public contains(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "rowKey"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "columnKey"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 81
    .local p0, "this":Lcom/google/common/collect/StandardTable;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractTable;->contains(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsColumn(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "columnKey"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .local p0, "this":Lcom/google/common/collect/StandardTable;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>;"
    const/4 v3, 0x0

    .line 85
    if-nez p1, :cond_0

    .line 86
    return v3

    .line 88
    :cond_0
    iget-object v2, p0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "map$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 89
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<TC;TV;>;"
    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->safeContainsKey(Ljava/util/Map;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 90
    const/4 v2, 0x1

    return v2

    .line 93
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<TC;TV;>;"
    :cond_2
    return v3
.end method

.method public containsRow(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "rowKey"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 97
    .local p0, "this":Lcom/google/common/collect/StandardTable;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>;"
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->safeContainsKey(Ljava/util/Map;Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 101
    .local p0, "this":Lcom/google/common/collect/StandardTable;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>;"
    if-eqz p1, :cond_0

    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractTable;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method createColumnKeyIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 653
    .local p0, "this":Lcom/google/common/collect/StandardTable;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>;"
    new-instance v0, Lcom/google/common/collect/StandardTable$ColumnKeyIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/StandardTable$ColumnKeyIterator;-><init>(Lcom/google/common/collect/StandardTable;Lcom/google/common/collect/StandardTable$ColumnKeyIterator;)V

    return-object v0
.end method

.method createRowMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TR;",
            "Ljava/util/Map",
            "<TC;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 698
    .local p0, "this":Lcom/google/common/collect/StandardTable;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>;"
    new-instance v0, Lcom/google/common/collect/StandardTable$RowMap;

    invoke-direct {v0, p0}, Lcom/google/common/collect/StandardTable$RowMap;-><init>(Lcom/google/common/collect/StandardTable;)V

    return-object v0
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "rowKey"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "columnKey"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/StandardTable;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>;"
    const/4 v0, 0x0

    .line 105
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    .line 107
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractTable;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 111
    .local p0, "this":Lcom/google/common/collect/StandardTable;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;TC;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 138
    .local p0, "this":Lcom/google/common/collect/StandardTable;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>;"
    .local p1, "rowKey":Ljava/lang/Object;, "TR;"
    .local p2, "columnKey":Ljava/lang/Object;, "TC;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    invoke-direct {p0, p1}, Lcom/google/common/collect/StandardTable;->getOrCreate(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "rowKey"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "columnKey"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/StandardTable;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>;"
    const/4 v3, 0x0

    .line 146
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 147
    :cond_0
    return-object v3

    .line 149
    :cond_1
    iget-object v2, p0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-static {v2, p1}, Lcom/google/common/collect/Maps;->safeGet(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 150
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<TC;TV;>;"
    if-nez v0, :cond_2

    .line 151
    return-object v3

    .line 153
    :cond_2
    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 154
    .local v1, "value":Ljava/lang/Object;, "TV;"
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 155
    iget-object v2, p0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    :cond_3
    return-object v1
.end method

.method public row(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)",
            "Ljava/util/Map",
            "<TC;TV;>;"
        }
    .end annotation

    .prologue
    .line 255
    .local p0, "this":Lcom/google/common/collect/StandardTable;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>;"
    .local p1, "rowKey":Ljava/lang/Object;, "TR;"
    new-instance v0, Lcom/google/common/collect/StandardTable$Row;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/StandardTable$Row;-><init>(Lcom/google/common/collect/StandardTable;Ljava/lang/Object;)V

    return-object v0
.end method

.method public rowKeySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 562
    .local p0, "this":Lcom/google/common/collect/StandardTable;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/StandardTable;->rowMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public rowMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TR;",
            "Ljava/util/Map",
            "<TC;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 693
    .local p0, "this":Lcom/google/common/collect/StandardTable;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/StandardTable;->rowMap:Ljava/util/Map;

    .line 694
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<TR;Ljava/util/Map<TC;TV;>;>;"
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/StandardTable;->createRowMap()Ljava/util/Map;

    move-result-object v0

    .end local v0    # "result":Ljava/util/Map;, "Ljava/util/Map<TR;Ljava/util/Map<TC;TV;>;>;"
    iput-object v0, p0, Lcom/google/common/collect/StandardTable;->rowMap:Ljava/util/Map;

    :cond_0
    return-object v0
.end method

.method public size()I
    .locals 4

    .prologue
    .line 115
    .local p0, "this":Lcom/google/common/collect/StandardTable;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>;"
    const/4 v2, 0x0

    .line 116
    .local v2, "size":I
    iget-object v3, p0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "map$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 117
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<TC;TV;>;"
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 119
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<TC;TV;>;"
    :cond_0
    return v2
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 687
    .local p0, "this":Lcom/google/common/collect/StandardTable;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractTable;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
