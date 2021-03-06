.class final Lcom/google/common/hash/BloomFilterStrategies$BitArray;
.super Ljava/lang/Object;
.source "BloomFilterStrategies.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/BloomFilterStrategies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BitArray"
.end annotation


# instance fields
.field bitCount:J

.field final data:[J


# direct methods
.method constructor <init>(J)V
    .locals 3
    .param p1, "bits"    # J

    .prologue
    .line 145
    const-wide/16 v0, 0x40

    sget-object v2, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-static {p1, p2, v0, v1, v2}, Lcom/google/common/math/LongMath;->divide(JJLjava/math/RoundingMode;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->checkedCast(J)I

    move-result v0

    new-array v0, v0, [J

    invoke-direct {p0, v0}, Lcom/google/common/hash/BloomFilterStrategies$BitArray;-><init>([J)V

    .line 144
    return-void
.end method

.method constructor <init>([J)V
    .locals 8
    .param p1, "data"    # [J

    .prologue
    const/4 v5, 0x0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    array-length v4, p1

    if-lez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    const-string/jumbo v6, "data length is zero!"

    invoke-static {v4, v6}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 151
    iput-object p1, p0, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->data:[J

    .line 152
    const-wide/16 v0, 0x0

    .line 153
    .local v0, "bitCount":J
    array-length v4, p1

    :goto_1
    if-ge v5, v4, :cond_1

    aget-wide v2, p1, v5

    .line 154
    .local v2, "value":J
    invoke-static {v2, v3}, Ljava/lang/Long;->bitCount(J)I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v0, v6

    .line 153
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .end local v0    # "bitCount":J
    .end local v2    # "value":J
    :cond_0
    move v4, v5

    .line 150
    goto :goto_0

    .line 156
    .restart local v0    # "bitCount":J
    :cond_1
    iput-wide v0, p0, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->bitCount:J

    .line 149
    return-void
.end method


# virtual methods
.method bitCount()J
    .locals 2

    .prologue
    .line 180
    iget-wide v0, p0, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->bitCount:J

    return-wide v0
.end method

.method bitSize()J
    .locals 4

    .prologue
    .line 175
    iget-object v0, p0, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->data:[J

    array-length v0, v0

    int-to-long v0, v0

    const-wide/16 v2, 0x40

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method copy()Lcom/google/common/hash/BloomFilterStrategies$BitArray;
    .locals 2

    .prologue
    .line 184
    new-instance v1, Lcom/google/common/hash/BloomFilterStrategies$BitArray;

    iget-object v0, p0, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->data:[J

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    invoke-direct {v1, v0}, Lcom/google/common/hash/BloomFilterStrategies$BitArray;-><init>([J)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 199
    instance-of v1, p1, Lcom/google/common/hash/BloomFilterStrategies$BitArray;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 200
    check-cast v0, Lcom/google/common/hash/BloomFilterStrategies$BitArray;

    .line 201
    .local v0, "bitArray":Lcom/google/common/hash/BloomFilterStrategies$BitArray;
    iget-object v1, p0, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->data:[J

    iget-object v2, v0, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->data:[J

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v1

    return v1

    .line 203
    .end local v0    # "bitArray":Lcom/google/common/hash/BloomFilterStrategies$BitArray;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method get(J)Z
    .locals 7
    .param p1, "index"    # J

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->data:[J

    const/4 v1, 0x6

    ushr-long v2, p1, v1

    long-to-int v1, v2

    aget-wide v0, v0, v1

    long-to-int v2, p1

    const-wide/16 v4, 0x1

    shl-long v2, v4, v2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->data:[J

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([J)I

    move-result v0

    return v0
.end method

.method putAll(Lcom/google/common/hash/BloomFilterStrategies$BitArray;)V
    .locals 7
    .param p1, "array"    # Lcom/google/common/hash/BloomFilterStrategies$BitArray;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 189
    iget-object v1, p0, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->data:[J

    array-length v1, v1

    iget-object v4, p1, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->data:[J

    array-length v4, v4

    if-ne v1, v4, :cond_0

    move v1, v2

    .line 190
    :goto_0
    const-string/jumbo v4, "BitArrays must be of equal length (%s != %s)"

    .line 189
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 190
    iget-object v6, p0, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->data:[J

    array-length v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    iget-object v3, p1, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->data:[J

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v2

    .line 189
    invoke-static {v1, v4, v5}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 191
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->bitCount:J

    .line 192
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->data:[J

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 193
    iget-object v1, p0, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->data:[J

    aget-wide v2, v1, v0

    iget-object v4, p1, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->data:[J

    aget-wide v4, v4, v0

    or-long/2addr v2, v4

    aput-wide v2, v1, v0

    .line 194
    iget-wide v2, p0, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->bitCount:J

    iget-object v1, p0, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->data:[J

    aget-wide v4, v1, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->bitCount(J)I

    move-result v1

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->bitCount:J

    .line 192
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    :cond_0
    move v1, v3

    .line 189
    goto :goto_0

    .line 188
    .restart local v0    # "i":I
    :cond_1
    return-void
.end method

.method set(J)Z
    .locals 9
    .param p1, "index"    # J

    .prologue
    const-wide/16 v6, 0x1

    .line 161
    invoke-virtual {p0, p1, p2}, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->get(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->data:[J

    const/4 v1, 0x6

    ushr-long v2, p1, v1

    long-to-int v1, v2

    aget-wide v2, v0, v1

    long-to-int v4, p1

    shl-long v4, v6, v4

    or-long/2addr v2, v4

    aput-wide v2, v0, v1

    .line 163
    iget-wide v0, p0, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->bitCount:J

    add-long/2addr v0, v6

    iput-wide v0, p0, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->bitCount:J

    .line 164
    const/4 v0, 0x1

    return v0

    .line 166
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
