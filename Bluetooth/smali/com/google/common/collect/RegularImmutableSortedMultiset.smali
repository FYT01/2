.class final Lcom/google/common/collect/RegularImmutableSortedMultiset;
.super Lcom/google/common/collect/ImmutableSortedMultiset;
.source "RegularImmutableSortedMultiset.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableSortedMultiset",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final transient counts:[I

.field private final transient cumulativeCounts:[J

.field private final transient elementSet:Lcom/google/common/collect/RegularImmutableSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/RegularImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final transient length:I

.field private final transient offset:I


# direct methods
.method constructor <init>(Lcom/google/common/collect/RegularImmutableSortedSet;[I[JII)V
    .locals 0
    .param p2, "counts"    # [I
    .param p3, "cumulativeCounts"    # [J
    .param p4, "offset"    # I
    .param p5, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/RegularImmutableSortedSet",
            "<TE;>;[I[JII)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lcom/google/common/collect/RegularImmutableSortedMultiset;, "Lcom/google/common/collect/RegularImmutableSortedMultiset<TE;>;"
    .local p1, "elementSet":Lcom/google/common/collect/RegularImmutableSortedSet;, "Lcom/google/common/collect/RegularImmutableSortedSet<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSortedMultiset;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->elementSet:Lcom/google/common/collect/RegularImmutableSortedSet;

    .line 45
    iput-object p2, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->counts:[I

    .line 46
    iput-object p3, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->cumulativeCounts:[J

    .line 47
    iput p4, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->offset:I

    .line 48
    iput p5, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->length:I

    .line 43
    return-void
.end method


# virtual methods
.method public count(Ljava/lang/Object;)I
    .locals 3
    .param p1, "element"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 70
    .local p0, "this":Lcom/google/common/collect/RegularImmutableSortedMultiset;, "Lcom/google/common/collect/RegularImmutableSortedMultiset<TE;>;"
    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->elementSet:Lcom/google/common/collect/RegularImmutableSortedSet;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/RegularImmutableSortedSet;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 71
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->counts:[I

    iget v2, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->offset:I

    add-int/2addr v2, v0

    aget v1, v1, v2

    goto :goto_0
.end method

.method public elementSet()Lcom/google/common/collect/ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 82
    .local p0, "this":Lcom/google/common/collect/RegularImmutableSortedMultiset;, "Lcom/google/common/collect/RegularImmutableSortedMultiset<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->elementSet:Lcom/google/common/collect/RegularImmutableSortedSet;

    return-object v0
.end method

.method public firstEntry()Lcom/google/common/collect/Multiset$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lcom/google/common/collect/RegularImmutableSortedMultiset;, "Lcom/google/common/collect/RegularImmutableSortedMultiset<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/RegularImmutableSortedMultiset;->getEntry(I)Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method

.method getEntry(I)Lcom/google/common/collect/Multiset$Entry;
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Lcom/google/common/collect/RegularImmutableSortedMultiset;, "Lcom/google/common/collect/RegularImmutableSortedMultiset<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->elementSet:Lcom/google/common/collect/RegularImmutableSortedSet;

    invoke-virtual {v0}, Lcom/google/common/collect/RegularImmutableSortedSet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 55
    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->counts:[I

    iget v2, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->offset:I

    add-int/2addr v2, p1

    aget v1, v1, v2

    .line 53
    invoke-static {v0, v1}, Lcom/google/common/collect/Multisets;->immutableEntry(Ljava/lang/Object;I)Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method

.method getSubMultiset(II)Lcom/google/common/collect/ImmutableSortedMultiset;
    .locals 6
    .param p1, "from"    # I
    .param p2, "to"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/common/collect/ImmutableSortedMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 97
    .local p0, "this":Lcom/google/common/collect/RegularImmutableSortedMultiset;, "Lcom/google/common/collect/RegularImmutableSortedMultiset<TE;>;"
    iget v0, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->length:I

    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 98
    if-ne p1, p2, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/RegularImmutableSortedMultiset;->emptyMultiset(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    return-object v0

    .line 100
    :cond_0
    if-nez p1, :cond_1

    iget v0, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->length:I

    if-ne p2, v0, :cond_1

    .line 101
    return-object p0

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->elementSet:Lcom/google/common/collect/RegularImmutableSortedSet;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/RegularImmutableSortedSet;->getSubSet(II)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/RegularImmutableSortedSet;

    .line 105
    .local v1, "subElementSet":Lcom/google/common/collect/RegularImmutableSortedSet;, "Lcom/google/common/collect/RegularImmutableSortedSet<TE;>;"
    new-instance v0, Lcom/google/common/collect/RegularImmutableSortedMultiset;

    .line 106
    iget-object v2, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->counts:[I

    iget-object v3, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->cumulativeCounts:[J

    iget v4, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->offset:I

    add-int/2addr v4, p1

    sub-int v5, p2, p1

    .line 105
    invoke-direct/range {v0 .. v5}, Lcom/google/common/collect/RegularImmutableSortedMultiset;-><init>(Lcom/google/common/collect/RegularImmutableSortedSet;[I[JII)V

    return-object v0
.end method

.method public headMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/ImmutableSortedMultiset;
    .locals 4
    .param p2, "boundType"    # Lcom/google/common/collect/BoundType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/google/common/collect/BoundType;",
            ")",
            "Lcom/google/common/collect/ImmutableSortedMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/RegularImmutableSortedMultiset;, "Lcom/google/common/collect/RegularImmutableSortedMultiset<TE;>;"
    .local p1, "upperBound":Ljava/lang/Object;, "TE;"
    const/4 v1, 0x0

    .line 87
    iget-object v2, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->elementSet:Lcom/google/common/collect/RegularImmutableSortedSet;

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v3, Lcom/google/common/collect/BoundType;->CLOSED:Lcom/google/common/collect/BoundType;

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, p1, v0}, Lcom/google/common/collect/RegularImmutableSortedSet;->headIndex(Ljava/lang/Object;Z)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/RegularImmutableSortedMultiset;->getSubMultiset(II)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method isPartialView()Z
    .locals 4

    .prologue
    .local p0, "this":Lcom/google/common/collect/RegularImmutableSortedMultiset;, "Lcom/google/common/collect/RegularImmutableSortedMultiset<TE;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 112
    iget v2, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->offset:I

    if-gtz v2, :cond_0

    iget v2, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->length:I

    iget-object v3, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->counts:[I

    array-length v3, v3

    if-ge v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public lastEntry()Lcom/google/common/collect/Multiset$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lcom/google/common/collect/RegularImmutableSortedMultiset;, "Lcom/google/common/collect/RegularImmutableSortedMultiset<TE;>;"
    iget v0, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->length:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/common/collect/RegularImmutableSortedMultiset;->getEntry(I)Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 6

    .prologue
    .line 76
    .local p0, "this":Lcom/google/common/collect/RegularImmutableSortedMultiset;, "Lcom/google/common/collect/RegularImmutableSortedMultiset<TE;>;"
    iget-object v2, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->cumulativeCounts:[J

    iget v3, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->offset:I

    iget v4, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->length:I

    add-int/2addr v3, v4

    aget-wide v2, v2, v3

    iget-object v4, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->cumulativeCounts:[J

    iget v5, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->offset:I

    aget-wide v4, v4, v5

    sub-long v0, v2, v4

    .line 77
    .local v0, "size":J
    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v2

    return v2
.end method

.method public tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/ImmutableSortedMultiset;
    .locals 3
    .param p2, "boundType"    # Lcom/google/common/collect/BoundType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/google/common/collect/BoundType;",
            ")",
            "Lcom/google/common/collect/ImmutableSortedMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, "this":Lcom/google/common/collect/RegularImmutableSortedMultiset;, "Lcom/google/common/collect/RegularImmutableSortedMultiset<TE;>;"
    .local p1, "lowerBound":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->elementSet:Lcom/google/common/collect/RegularImmutableSortedSet;

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/google/common/collect/BoundType;->CLOSED:Lcom/google/common/collect/BoundType;

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, p1, v0}, Lcom/google/common/collect/RegularImmutableSortedSet;->tailIndex(Ljava/lang/Object;Z)I

    move-result v0

    .line 93
    iget v1, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->length:I

    .line 92
    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/RegularImmutableSortedMultiset;->getSubMultiset(II)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
