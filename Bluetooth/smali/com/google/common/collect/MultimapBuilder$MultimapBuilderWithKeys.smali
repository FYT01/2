.class public abstract Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;
.super Ljava/lang/Object;
.source "MultimapBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MultimapBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "MultimapBuilderWithKeys"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K0:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEFAULT_EXPECTED_VALUES_PER_KEY:I = 0x2


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 282
    .local p0, "this":Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;, "Lcom/google/common/collect/MultimapBuilder<TK0;TV0;>.MultimapBuilderWithKeys<TK0;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public arrayListValues()Lcom/google/common/collect/MultimapBuilder$ListMultimapBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/MultimapBuilder$ListMultimapBuilder",
            "<TK0;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 290
    .local p0, "this":Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;, "Lcom/google/common/collect/MultimapBuilder<TK0;TV0;>.MultimapBuilderWithKeys<TK0;>;"
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;->arrayListValues(I)Lcom/google/common/collect/MultimapBuilder$ListMultimapBuilder;

    move-result-object v0

    return-object v0
.end method

.method public arrayListValues(I)Lcom/google/common/collect/MultimapBuilder$ListMultimapBuilder;
    .locals 1
    .param p1, "expectedValuesPerKey"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/MultimapBuilder$ListMultimapBuilder",
            "<TK0;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 300
    .local p0, "this":Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;, "Lcom/google/common/collect/MultimapBuilder<TK0;TV0;>.MultimapBuilderWithKeys<TK0;>;"
    const-string/jumbo v0, "expectedValuesPerKey"

    invoke-static {p1, v0}, Lcom/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    .line 301
    new-instance v0, Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$1;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$1;-><init>(Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;I)V

    return-object v0
.end method

.method abstract createMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:TK0;V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation
.end method

.method public enumSetValues(Ljava/lang/Class;)Lcom/google/common/collect/MultimapBuilder$SetMultimapBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V0:",
            "Ljava/lang/Enum",
            "<TV0;>;>(",
            "Ljava/lang/Class",
            "<TV0;>;)",
            "Lcom/google/common/collect/MultimapBuilder$SetMultimapBuilder",
            "<TK0;TV0;>;"
        }
    .end annotation

    .prologue
    .line 406
    .local p0, "this":Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;, "Lcom/google/common/collect/MultimapBuilder<TK0;TV0;>.MultimapBuilderWithKeys<TK0;>;"
    .local p1, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<TV0;>;"
    const-string/jumbo v0, "valueClass"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    new-instance v0, Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$6;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$6;-><init>(Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;Ljava/lang/Class;)V

    return-object v0
.end method

.method public hashSetValues()Lcom/google/common/collect/MultimapBuilder$SetMultimapBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/MultimapBuilder$SetMultimapBuilder",
            "<TK0;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 329
    .local p0, "this":Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;, "Lcom/google/common/collect/MultimapBuilder<TK0;TV0;>.MultimapBuilderWithKeys<TK0;>;"
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;->hashSetValues(I)Lcom/google/common/collect/MultimapBuilder$SetMultimapBuilder;

    move-result-object v0

    return-object v0
.end method

.method public hashSetValues(I)Lcom/google/common/collect/MultimapBuilder$SetMultimapBuilder;
    .locals 1
    .param p1, "expectedValuesPerKey"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/MultimapBuilder$SetMultimapBuilder",
            "<TK0;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 339
    .local p0, "this":Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;, "Lcom/google/common/collect/MultimapBuilder<TK0;TV0;>.MultimapBuilderWithKeys<TK0;>;"
    const-string/jumbo v0, "expectedValuesPerKey"

    invoke-static {p1, v0}, Lcom/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    .line 340
    new-instance v0, Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$3;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$3;-><init>(Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;I)V

    return-object v0
.end method

.method public linkedHashSetValues()Lcom/google/common/collect/MultimapBuilder$SetMultimapBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/MultimapBuilder$SetMultimapBuilder",
            "<TK0;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 354
    .local p0, "this":Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;, "Lcom/google/common/collect/MultimapBuilder<TK0;TV0;>.MultimapBuilderWithKeys<TK0;>;"
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;->linkedHashSetValues(I)Lcom/google/common/collect/MultimapBuilder$SetMultimapBuilder;

    move-result-object v0

    return-object v0
.end method

.method public linkedHashSetValues(I)Lcom/google/common/collect/MultimapBuilder$SetMultimapBuilder;
    .locals 1
    .param p1, "expectedValuesPerKey"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/MultimapBuilder$SetMultimapBuilder",
            "<TK0;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 364
    .local p0, "this":Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;, "Lcom/google/common/collect/MultimapBuilder<TK0;TV0;>.MultimapBuilderWithKeys<TK0;>;"
    const-string/jumbo v0, "expectedValuesPerKey"

    invoke-static {p1, v0}, Lcom/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    .line 365
    new-instance v0, Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$4;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$4;-><init>(Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;I)V

    return-object v0
.end method

.method public linkedListValues()Lcom/google/common/collect/MultimapBuilder$ListMultimapBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/MultimapBuilder$ListMultimapBuilder",
            "<TK0;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 315
    .local p0, "this":Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;, "Lcom/google/common/collect/MultimapBuilder<TK0;TV0;>.MultimapBuilderWithKeys<TK0;>;"
    new-instance v0, Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$2;

    invoke-direct {v0, p0}, Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$2;-><init>(Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;)V

    return-object v0
.end method

.method public treeSetValues()Lcom/google/common/collect/MultimapBuilder$SortedSetMultimapBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/MultimapBuilder$SortedSetMultimapBuilder",
            "<TK0;",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 380
    .local p0, "this":Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;, "Lcom/google/common/collect/MultimapBuilder<TK0;TV0;>.MultimapBuilderWithKeys<TK0;>;"
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;->treeSetValues(Ljava/util/Comparator;)Lcom/google/common/collect/MultimapBuilder$SortedSetMultimapBuilder;

    move-result-object v0

    return-object v0
.end method

.method public treeSetValues(Ljava/util/Comparator;)Lcom/google/common/collect/MultimapBuilder$SortedSetMultimapBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V0:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<TV0;>;)",
            "Lcom/google/common/collect/MultimapBuilder$SortedSetMultimapBuilder",
            "<TK0;TV0;>;"
        }
    .end annotation

    .prologue
    .line 390
    .local p0, "this":Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;, "Lcom/google/common/collect/MultimapBuilder<TK0;TV0;>.MultimapBuilderWithKeys<TK0;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TV0;>;"
    const-string/jumbo v0, "comparator"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    new-instance v0, Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$5;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$5;-><init>(Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;Ljava/util/Comparator;)V

    return-object v0
.end method