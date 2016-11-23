.class abstract Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap;
.super Lcom/google/common/collect/ImmutableMap;
.source "DenseImmutableTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/DenseImmutableTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ImmutableArrayMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableMap",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private final size:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 90
    .local p0, "this":Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap;, "Lcom/google/common/collect/DenseImmutableTable<TR;TC;TV;>.ImmutableArrayMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableMap;-><init>()V

    .line 91
    iput p1, p0, Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap;->size:I

    .line 90
    return-void
.end method

.method private isFull()Z
    .locals 2

    .prologue
    .line 98
    .local p0, "this":Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap;, "Lcom/google/common/collect/DenseImmutableTable<TR;TC;TV;>.ImmutableArrayMap<TK;TV;>;"
    iget v0, p0, Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap;->size:I

    invoke-virtual {p0}, Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap;->keyToIndex()Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMap;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method createEntrySet()Lcom/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 125
    .local p0, "this":Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap;, "Lcom/google/common/collect/DenseImmutableTable<TR;TC;TV;>.ImmutableArrayMap<TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1;-><init>(Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap;)V

    return-object v0
.end method

.method createKeySet()Lcom/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 109
    .local p0, "this":Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap;, "Lcom/google/common/collect/DenseImmutableTable<TR;TC;TV;>.ImmutableArrayMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap;->isFull()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap;->keyToIndex()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->keySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/google/common/collect/ImmutableMap;->createKeySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap;, "Lcom/google/common/collect/DenseImmutableTable<TR;TC;TV;>.ImmutableArrayMap<TK;TV;>;"
    const/4 v1, 0x0

    .line 119
    invoke-virtual {p0}, Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap;->keyToIndex()Lcom/google/common/collect/ImmutableMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 120
    .local v0, "keyIndex":Ljava/lang/Integer;
    if-nez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap;->getValue(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method getKey(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    .prologue
    .line 102
    .local p0, "this":Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap;, "Lcom/google/common/collect/DenseImmutableTable<TR;TC;TV;>.ImmutableArrayMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap;->keyToIndex()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->keySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method abstract getValue(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method abstract keyToIndex()Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap",
            "<TK;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public size()I
    .locals 1

    .prologue
    .line 114
    .local p0, "this":Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap;, "Lcom/google/common/collect/DenseImmutableTable<TR;TC;TV;>.ImmutableArrayMap<TK;TV;>;"
    iget v0, p0, Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap;->size:I

    return v0
.end method