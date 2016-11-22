.class public abstract Lcom/google/common/collect/ImmutableTable;
.super Lcom/google/common/collect/AbstractTable;
.source "ImmutableTable.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/ImmutableTable$Builder;
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
        "<TR;TC;TV;>;"
    }
.end annotation


# static fields
.field private static final EMPTY:Lcom/google/common/collect/ImmutableTable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableTable",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 50
    new-instance v0, Lcom/google/common/collect/SparseImmutableTable;

    .line 51
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 52
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v2

    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v3

    .line 50
    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/collect/SparseImmutableTable;-><init>(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableSet;Lcom/google/common/collect/ImmutableSet;)V

    .line 49
    sput-object v0, Lcom/google/common/collect/ImmutableTable;->EMPTY:Lcom/google/common/collect/ImmutableTable;

    .line 48
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 250
    .local p0, "this":Lcom/google/common/collect/ImmutableTable;, "Lcom/google/common/collect/ImmutableTable<TR;TC;TV;>;"
    invoke-direct {p0}, Lcom/google/common/collect/AbstractTable;-><init>()V

    return-void
.end method

.method public static builder()Lcom/google/common/collect/ImmutableTable$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/ImmutableTable$Builder",
            "<TR;TC;TV;>;"
        }
    .end annotation

    .prologue
    .line 119
    new-instance v0, Lcom/google/common/collect/ImmutableTable$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableTable$Builder;-><init>()V

    return-object v0
.end method

.method static cellOf(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/Table$Cell;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TR;TC;TV;)",
            "Lcom/google/common/collect/Table$Cell",
            "<TR;TC;TV;>;"
        }
    .end annotation

    .prologue
    .line 127
    .local p0, "rowKey":Ljava/lang/Object;, "TR;"
    .local p1, "columnKey":Ljava/lang/Object;, "TC;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 128
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 127
    invoke-static {v0, v1, v2}, Lcom/google/common/collect/Tables;->immutableCell(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/Table$Cell;

    move-result-object v0

    return-object v0
.end method

.method public static copyOf(Lcom/google/common/collect/Table;)Lcom/google/common/collect/ImmutableTable;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Table",
            "<+TR;+TC;+TV;>;)",
            "Lcom/google/common/collect/ImmutableTable",
            "<TR;TC;TV;>;"
        }
    .end annotation

    .prologue
    .line 82
    .local p0, "table":Lcom/google/common/collect/Table;, "Lcom/google/common/collect/Table<+TR;+TC;+TV;>;"
    instance-of v6, p0, Lcom/google/common/collect/ImmutableTable;

    if-eqz v6, :cond_0

    move-object v4, p0

    .line 85
    check-cast v4, Lcom/google/common/collect/ImmutableTable;

    .line 86
    .local v4, "parameterizedTable":Lcom/google/common/collect/ImmutableTable;, "Lcom/google/common/collect/ImmutableTable<TR;TC;TV;>;"
    return-object v4

    .line 88
    .end local v4    # "parameterizedTable":Lcom/google/common/collect/ImmutableTable;, "Lcom/google/common/collect/ImmutableTable<TR;TC;TV;>;"
    :cond_0
    invoke-interface {p0}, Lcom/google/common/collect/Table;->size()I

    move-result v5

    .line 89
    .local v5, "size":I
    packed-switch v5, :pswitch_data_0

    .line 99
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->builder()Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v2

    .line 101
    .local v2, "cellSetBuilder":Lcom/google/common/collect/ImmutableSet$Builder;, "Lcom/google/common/collect/ImmutableSet$Builder<Lcom/google/common/collect/Table$Cell<TR;TC;TV;>;>;"
    invoke-interface {p0}, Lcom/google/common/collect/Table;->cellSet()Ljava/util/Set;

    move-result-object v6

    .line 100
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "cell$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Table$Cell;

    .line 106
    .local v0, "cell":Lcom/google/common/collect/Table$Cell;, "Lcom/google/common/collect/Table$Cell<+TR;+TC;+TV;>;"
    invoke-interface {v0}, Lcom/google/common/collect/Table$Cell;->getRowKey()Ljava/lang/Object;

    move-result-object v6

    .line 107
    invoke-interface {v0}, Lcom/google/common/collect/Table$Cell;->getColumnKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v0}, Lcom/google/common/collect/Table$Cell;->getValue()Ljava/lang/Object;

    move-result-object v8

    .line 106
    invoke-static {v6, v7, v8}, Lcom/google/common/collect/ImmutableTable;->cellOf(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/Table$Cell;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    goto :goto_0

    .line 91
    .end local v0    # "cell":Lcom/google/common/collect/Table$Cell;, "Lcom/google/common/collect/Table$Cell<+TR;+TC;+TV;>;"
    .end local v1    # "cell$iterator":Ljava/util/Iterator;
    .end local v2    # "cellSetBuilder":Lcom/google/common/collect/ImmutableSet$Builder;, "Lcom/google/common/collect/ImmutableSet$Builder<Lcom/google/common/collect/Table$Cell<TR;TC;TV;>;>;"
    :pswitch_0
    invoke-static {}, Lcom/google/common/collect/ImmutableTable;->of()Lcom/google/common/collect/ImmutableTable;

    move-result-object v6

    return-object v6

    .line 94
    :pswitch_1
    invoke-interface {p0}, Lcom/google/common/collect/Table;->cellSet()Ljava/util/Set;

    move-result-object v6

    invoke-static {v6}, Lcom/google/common/collect/Iterables;->getOnlyElement(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/collect/Table$Cell;

    .line 95
    .local v3, "onlyCell":Lcom/google/common/collect/Table$Cell;, "Lcom/google/common/collect/Table$Cell<+TR;+TC;+TV;>;"
    invoke-interface {v3}, Lcom/google/common/collect/Table$Cell;->getRowKey()Ljava/lang/Object;

    move-result-object v6

    .line 96
    invoke-interface {v3}, Lcom/google/common/collect/Table$Cell;->getColumnKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v3}, Lcom/google/common/collect/Table$Cell;->getValue()Ljava/lang/Object;

    move-result-object v8

    .line 95
    invoke-static {v6, v7, v8}, Lcom/google/common/collect/ImmutableTable;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableTable;

    move-result-object v6

    return-object v6

    .line 109
    .end local v3    # "onlyCell":Lcom/google/common/collect/Table$Cell;, "Lcom/google/common/collect/Table$Cell<+TR;+TC;+TV;>;"
    .restart local v1    # "cell$iterator":Ljava/util/Iterator;
    .restart local v2    # "cellSetBuilder":Lcom/google/common/collect/ImmutableSet$Builder;, "Lcom/google/common/collect/ImmutableSet$Builder<Lcom/google/common/collect/Table$Cell<TR;TC;TV;>;>;"
    :cond_1
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableSet$Builder;->build()Lcom/google/common/collect/ImmutableSet;

    move-result-object v6

    invoke-static {v6}, Lcom/google/common/collect/RegularImmutableTable;->forCells(Ljava/lang/Iterable;)Lcom/google/common/collect/RegularImmutableTable;

    move-result-object v6

    return-object v6

    .line 89
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static of()Lcom/google/common/collect/ImmutableTable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/ImmutableTable",
            "<TR;TC;TV;>;"
        }
    .end annotation

    .prologue
    .line 57
    sget-object v0, Lcom/google/common/collect/ImmutableTable;->EMPTY:Lcom/google/common/collect/ImmutableTable;

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableTable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TR;TC;TV;)",
            "Lcom/google/common/collect/ImmutableTable",
            "<TR;TC;TV;>;"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, "rowKey":Ljava/lang/Object;, "TR;"
    .local p1, "columnKey":Ljava/lang/Object;, "TC;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Lcom/google/common/collect/SingletonImmutableTable;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/collect/SingletonImmutableTable;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method final cellIterator()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator",
            "<",
            "Lcom/google/common/collect/Table$Cell",
            "<TR;TC;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 261
    .local p0, "this":Lcom/google/common/collect/ImmutableTable;, "Lcom/google/common/collect/ImmutableTable<TR;TC;TV;>;"
    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method bridge synthetic cellIterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 260
    .local p0, "this":Lcom/google/common/collect/ImmutableTable;, "Lcom/google/common/collect/ImmutableTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableTable;->cellIterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public cellSet()Lcom/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Lcom/google/common/collect/Table$Cell",
            "<TR;TC;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 253
    .local p0, "this":Lcom/google/common/collect/ImmutableTable;, "Lcom/google/common/collect/ImmutableTable<TR;TC;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractTable;->cellSet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ImmutableSet;

    return-object v0
.end method

.method public bridge synthetic cellSet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 252
    .local p0, "this":Lcom/google/common/collect/ImmutableTable;, "Lcom/google/common/collect/ImmutableTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableTable;->cellSet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public final clear()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 342
    .local p0, "this":Lcom/google/common/collect/ImmutableTable;, "Lcom/google/common/collect/ImmutableTable<TR;TC;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public column(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Lcom/google/common/collect/ImmutableMap",
            "<TR;TV;>;"
        }
    .end annotation

    .prologue
    .line 283
    .local p0, "this":Lcom/google/common/collect/ImmutableTable;, "Lcom/google/common/collect/ImmutableTable<TR;TC;TV;>;"
    .local p1, "columnKey":Ljava/lang/Object;, "TC;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableTable;->columnMap()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ImmutableMap;

    .line 286
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    .line 284
    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ImmutableMap;

    return-object v0
.end method

.method public bridge synthetic column(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .param p1, "columnKey"    # Ljava/lang/Object;

    .prologue
    .line 282
    .local p0, "this":Lcom/google/common/collect/ImmutableTable;, "Lcom/google/common/collect/ImmutableTable<TR;TC;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableTable;->column(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public columnKeySet()Lcom/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 290
    .local p0, "this":Lcom/google/common/collect/ImmutableTable;, "Lcom/google/common/collect/ImmutableTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableTable;->columnMap()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->keySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic columnKeySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 289
    .local p0, "this":Lcom/google/common/collect/ImmutableTable;, "Lcom/google/common/collect/ImmutableTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableTable;->columnKeySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public abstract columnMap()Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap",
            "<TC;",
            "Ljava/util/Map",
            "<TR;TV;>;>;"
        }
    .end annotation
.end method

.method public bridge synthetic columnMap()Ljava/util/Map;
    .locals 1

    .prologue
    .line 299
    .local p0, "this":Lcom/google/common/collect/ImmutableTable;, "Lcom/google/common/collect/ImmutableTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableTable;->columnMap()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

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
    .line 327
    .local p0, "this":Lcom/google/common/collect/ImmutableTable;, "Lcom/google/common/collect/ImmutableTable<TR;TC;TV;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableTable;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic containsColumn(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "columnKey"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/google/common/collect/ImmutableTable;, "Lcom/google/common/collect/ImmutableTable<TR;TC;TV;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractTable;->containsColumn(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic containsRow(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "rowKey"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/google/common/collect/ImmutableTable;, "Lcom/google/common/collect/ImmutableTable<TR;TC;TV;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractTable;->containsRow(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 332
    .local p0, "this":Lcom/google/common/collect/ImmutableTable;, "Lcom/google/common/collect/ImmutableTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableTable;->values()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method abstract createCellSet()Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Lcom/google/common/collect/Table$Cell",
            "<TR;TC;TV;>;>;"
        }
    .end annotation
.end method

.method bridge synthetic createCellSet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 257
    .local p0, "this":Lcom/google/common/collect/ImmutableTable;, "Lcom/google/common/collect/ImmutableTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableTable;->createCellSet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method abstract createValues()Lcom/google/common/collect/ImmutableCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableCollection",
            "<TV;>;"
        }
    .end annotation
.end method

.method bridge synthetic createValues()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 270
    .local p0, "this":Lcom/google/common/collect/ImmutableTable;, "Lcom/google/common/collect/ImmutableTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableTable;->createValues()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/google/common/collect/ImmutableTable;, "Lcom/google/common/collect/ImmutableTable<TR;TC;TV;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractTable;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "rowKey"    # Ljava/lang/Object;
    .param p2, "columnKey"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/google/common/collect/ImmutableTable;, "Lcom/google/common/collect/ImmutableTable<TR;TC;TV;>;"
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractTable;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .prologue
    .local p0, "this":Lcom/google/common/collect/ImmutableTable;, "Lcom/google/common/collect/ImmutableTable<TR;TC;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractTable;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic isEmpty()Z
    .locals 1

    .prologue
    .local p0, "this":Lcom/google/common/collect/ImmutableTable;, "Lcom/google/common/collect/ImmutableTable<TR;TC;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractTable;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;TC;TV;)TV;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 352
    .local p0, "this":Lcom/google/common/collect/ImmutableTable;, "Lcom/google/common/collect/ImmutableTable<TR;TC;TV;>;"
    .local p1, "rowKey":Ljava/lang/Object;, "TR;"
    .local p2, "columnKey":Ljava/lang/Object;, "TC;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final putAll(Lcom/google/common/collect/Table;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Table",
            "<+TR;+TC;+TV;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 363
    .local p0, "this":Lcom/google/common/collect/ImmutableTable;, "Lcom/google/common/collect/ImmutableTable<TR;TC;TV;>;"
    .local p1, "table":Lcom/google/common/collect/Table;, "Lcom/google/common/collect/Table<+TR;+TC;+TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "rowKey"    # Ljava/lang/Object;
    .param p2, "columnKey"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 373
    .local p0, "this":Lcom/google/common/collect/ImmutableTable;, "Lcom/google/common/collect/ImmutableTable<TR;TC;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public row(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)",
            "Lcom/google/common/collect/ImmutableMap",
            "<TC;TV;>;"
        }
    .end annotation

    .prologue
    .line 307
    .local p0, "this":Lcom/google/common/collect/ImmutableTable;, "Lcom/google/common/collect/ImmutableTable<TR;TC;TV;>;"
    .local p1, "rowKey":Ljava/lang/Object;, "TR;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableTable;->rowMap()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ImmutableMap;

    .line 310
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    .line 308
    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ImmutableMap;

    return-object v0
.end method

.method public bridge synthetic row(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .param p1, "rowKey"    # Ljava/lang/Object;

    .prologue
    .line 306
    .local p0, "this":Lcom/google/common/collect/ImmutableTable;, "Lcom/google/common/collect/ImmutableTable<TR;TC;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableTable;->row(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public rowKeySet()Lcom/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 314
    .local p0, "this":Lcom/google/common/collect/ImmutableTable;, "Lcom/google/common/collect/ImmutableTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableTable;->rowMap()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->keySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic rowKeySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 313
    .local p0, "this":Lcom/google/common/collect/ImmutableTable;, "Lcom/google/common/collect/ImmutableTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableTable;->rowKeySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public abstract rowMap()Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap",
            "<TR;",
            "Ljava/util/Map",
            "<TC;TV;>;>;"
        }
    .end annotation
.end method

.method public bridge synthetic rowMap()Ljava/util/Map;
    .locals 1

    .prologue
    .line 323
    .local p0, "this":Lcom/google/common/collect/ImmutableTable;, "Lcom/google/common/collect/ImmutableTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableTable;->rowMap()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .prologue
    .local p0, "this":Lcom/google/common/collect/ImmutableTable;, "Lcom/google/common/collect/ImmutableTable<TR;TC;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractTable;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Lcom/google/common/collect/ImmutableCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableCollection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 266
    .local p0, "this":Lcom/google/common/collect/ImmutableTable;, "Lcom/google/common/collect/ImmutableTable<TR;TC;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractTable;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ImmutableCollection;

    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 265
    .local p0, "this":Lcom/google/common/collect/ImmutableTable;, "Lcom/google/common/collect/ImmutableTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableTable;->values()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    return-object v0
.end method

.method final valuesIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 274
    .local p0, "this":Lcom/google/common/collect/ImmutableTable;, "Lcom/google/common/collect/ImmutableTable<TR;TC;TV;>;"
    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
