.class Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;
.super Ljava/lang/Object;
.source "MinMaxPriorityQueue.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MinMaxPriorityQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueueIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private canRemove:Z

.field private cursor:I

.field private expectedModCount:I

.field private forgetMeNot:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<TE;>;"
        }
    .end annotation
.end field

.field private lastFromForgetMeNot:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private skipMe:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/collect/MinMaxPriorityQueue;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/MinMaxPriorityQueue;)V
    .locals 1

    .prologue
    .line 748
    .local p0, "this":Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;, "Lcom/google/common/collect/MinMaxPriorityQueue<TE;>.QueueIterator;"
    .local p1, "this$0":Lcom/google/common/collect/MinMaxPriorityQueue;, "Lcom/google/common/collect/MinMaxPriorityQueue<TE;>;"
    iput-object p1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 749
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->cursor:I

    .line 750
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->-get0(Lcom/google/common/collect/MinMaxPriorityQueue;)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->expectedModCount:I

    .line 748
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/MinMaxPriorityQueue;Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/common/collect/MinMaxPriorityQueue;

    .prologue
    .local p0, "this":Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;, "Lcom/google/common/collect/MinMaxPriorityQueue<TE;>.QueueIterator;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;-><init>(Lcom/google/common/collect/MinMaxPriorityQueue;)V

    return-void
.end method

.method private containsExact(Ljava/lang/Iterable;Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<TE;>;TE;)Z"
        }
    .end annotation

    .prologue
    .line 805
    .local p0, "this":Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;, "Lcom/google/common/collect/MinMaxPriorityQueue<TE;>.QueueIterator;"
    .local p1, "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    .local p2, "target":Ljava/lang/Object;, "TE;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "element$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 806
    .local v0, "element":Ljava/lang/Object;, "TE;"
    if-ne v0, p2, :cond_0

    .line 807
    const/4 v2, 0x1

    return v2

    .line 810
    .end local v0    # "element":Ljava/lang/Object;, "TE;"
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private nextNotInSkipMe(I)I
    .locals 2
    .param p1, "c"    # I

    .prologue
    .line 835
    .local p0, "this":Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;, "Lcom/google/common/collect/MinMaxPriorityQueue<TE;>.QueueIterator;"
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->skipMe:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 836
    :goto_0
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-virtual {v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->skipMe:Ljava/util/List;

    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/MinMaxPriorityQueue;->elementData(I)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->containsExact(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 837
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 840
    :cond_0
    return p1
.end method


# virtual methods
.method checkModCount()V
    .locals 2

    .prologue
    .line 825
    .local p0, "this":Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;, "Lcom/google/common/collect/MinMaxPriorityQueue<TE;>.QueueIterator;"
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->-get0(Lcom/google/common/collect/MinMaxPriorityQueue;)I

    move-result v0

    iget v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->expectedModCount:I

    if-eq v0, v1, :cond_0

    .line 826
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 824
    :cond_0
    return-void
.end method

.method public hasNext()Z
    .locals 4

    .prologue
    .local p0, "this":Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;, "Lcom/google/common/collect/MinMaxPriorityQueue<TE;>.QueueIterator;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 757
    invoke-virtual {p0}, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->checkModCount()V

    .line 758
    iget v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->cursor:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v2}, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->nextNotInSkipMe(I)I

    move-result v2

    iget-object v3, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-virtual {v3}, Lcom/google/common/collect/MinMaxPriorityQueue;->size()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 759
    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->forgetMeNot:Ljava/util/Queue;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->forgetMeNot:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    .line 758
    :cond_1
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;, "Lcom/google/common/collect/MinMaxPriorityQueue<TE;>.QueueIterator;"
    const/4 v2, 0x1

    .line 763
    invoke-virtual {p0}, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->checkModCount()V

    .line 764
    iget v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->cursor:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->nextNotInSkipMe(I)I

    move-result v0

    .line 765
    .local v0, "tempCursor":I
    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-virtual {v1}, Lcom/google/common/collect/MinMaxPriorityQueue;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 766
    iput v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->cursor:I

    .line 767
    iput-boolean v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->canRemove:Z

    .line 768
    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    iget v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->cursor:I

    invoke-virtual {v1, v2}, Lcom/google/common/collect/MinMaxPriorityQueue;->elementData(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 769
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->forgetMeNot:Ljava/util/Queue;

    if-eqz v1, :cond_1

    .line 770
    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-virtual {v1}, Lcom/google/common/collect/MinMaxPriorityQueue;->size()I

    move-result v1

    iput v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->cursor:I

    .line 771
    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->forgetMeNot:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->lastFromForgetMeNot:Ljava/lang/Object;

    .line 772
    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->lastFromForgetMeNot:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 773
    iput-boolean v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->canRemove:Z

    .line 774
    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->lastFromForgetMeNot:Ljava/lang/Object;

    return-object v1

    .line 777
    :cond_1
    new-instance v1, Ljava/util/NoSuchElementException;

    .line 778
    const-string/jumbo v2, "iterator moved past last element in queue."

    .line 777
    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public remove()V
    .locals 4

    .prologue
    .local p0, "this":Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;, "Lcom/google/common/collect/MinMaxPriorityQueue<TE;>.QueueIterator;"
    const/4 v3, 0x0

    .line 782
    iget-boolean v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->canRemove:Z

    invoke-static {v1}, Lcom/google/common/collect/CollectPreconditions;->checkRemove(Z)V

    .line 783
    invoke-virtual {p0}, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->checkModCount()V

    .line 784
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->canRemove:Z

    .line 785
    iget v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->expectedModCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->expectedModCount:I

    .line 786
    iget v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->cursor:I

    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-virtual {v2}, Lcom/google/common/collect/MinMaxPriorityQueue;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 787
    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    iget v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->cursor:I

    invoke-virtual {v1, v2}, Lcom/google/common/collect/MinMaxPriorityQueue;->removeAt(I)Lcom/google/common/collect/MinMaxPriorityQueue$MoveDesc;

    move-result-object v0

    .line 788
    .local v0, "moved":Lcom/google/common/collect/MinMaxPriorityQueue$MoveDesc;, "Lcom/google/common/collect/MinMaxPriorityQueue$MoveDesc<TE;>;"
    if-eqz v0, :cond_1

    .line 789
    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->forgetMeNot:Ljava/util/Queue;

    if-nez v1, :cond_0

    .line 790
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->forgetMeNot:Ljava/util/Queue;

    .line 791
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->skipMe:Ljava/util/List;

    .line 793
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->forgetMeNot:Ljava/util/Queue;

    iget-object v2, v0, Lcom/google/common/collect/MinMaxPriorityQueue$MoveDesc;->toTrickle:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 794
    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->skipMe:Ljava/util/List;

    iget-object v2, v0, Lcom/google/common/collect/MinMaxPriorityQueue$MoveDesc;->replaced:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 796
    :cond_1
    iget v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->cursor:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->cursor:I

    .line 781
    .end local v0    # "moved":Lcom/google/common/collect/MinMaxPriorityQueue$MoveDesc;, "Lcom/google/common/collect/MinMaxPriorityQueue$MoveDesc<TE;>;"
    :goto_0
    return-void

    .line 798
    :cond_2
    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->lastFromForgetMeNot:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->removeExact(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 799
    iput-object v3, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->lastFromForgetMeNot:Ljava/lang/Object;

    goto :goto_0
.end method

.method removeExact(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    .line 815
    .local p0, "this":Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;, "Lcom/google/common/collect/MinMaxPriorityQueue<TE;>.QueueIterator;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v1}, Lcom/google/common/collect/MinMaxPriorityQueue;->-get2(Lcom/google/common/collect/MinMaxPriorityQueue;)I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 816
    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v1}, Lcom/google/common/collect/MinMaxPriorityQueue;->-get1(Lcom/google/common/collect/MinMaxPriorityQueue;)[Ljava/lang/Object;

    move-result-object v1

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 817
    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->removeAt(I)Lcom/google/common/collect/MinMaxPriorityQueue$MoveDesc;

    .line 818
    const/4 v1, 0x1

    return v1

    .line 815
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 821
    :cond_1
    const/4 v1, 0x0

    return v1
.end method
