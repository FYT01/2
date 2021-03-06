.class final Lcom/google/common/hash/SipHashFunction;
.super Lcom/google/common/hash/AbstractStreamingHashFunction;
.source "SipHashFunction.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/hash/SipHashFunction$SipHasher;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final c:I

.field private final d:I

.field private final k0:J

.field private final k1:J


# direct methods
.method constructor <init>(IIJJ)V
    .locals 7
    .param p1, "c"    # I
    .param p2, "d"    # I
    .param p3, "k0"    # J
    .param p5, "k1"    # J

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 52
    invoke-direct {p0}, Lcom/google/common/hash/AbstractStreamingHashFunction;-><init>()V

    .line 53
    if-lez p1, :cond_0

    move v0, v1

    .line 54
    :goto_0
    const-string/jumbo v3, "The number of SipRound iterations (c=%s) during Compression must be positive."

    .line 53
    new-array v4, v1, [Ljava/lang/Object;

    .line 54
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    .line 53
    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 55
    if-lez p2, :cond_1

    move v0, v1

    .line 56
    :goto_1
    const-string/jumbo v3, "The number of SipRound iterations (d=%s) during Finalization must be positive."

    .line 55
    new-array v1, v1, [Ljava/lang/Object;

    .line 56
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    .line 55
    invoke-static {v0, v3, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 57
    iput p1, p0, Lcom/google/common/hash/SipHashFunction;->c:I

    .line 58
    iput p2, p0, Lcom/google/common/hash/SipHashFunction;->d:I

    .line 59
    iput-wide p3, p0, Lcom/google/common/hash/SipHashFunction;->k0:J

    .line 60
    iput-wide p5, p0, Lcom/google/common/hash/SipHashFunction;->k1:J

    .line 52
    return-void

    :cond_0
    move v0, v2

    .line 53
    goto :goto_0

    :cond_1
    move v0, v2

    .line 55
    goto :goto_1
.end method


# virtual methods
.method public bits()I
    .locals 1

    .prologue
    .line 64
    const/16 v0, 0x40

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 79
    instance-of v2, p1, Lcom/google/common/hash/SipHashFunction;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 80
    check-cast v0, Lcom/google/common/hash/SipHashFunction;

    .line 81
    .local v0, "other":Lcom/google/common/hash/SipHashFunction;
    iget v2, p0, Lcom/google/common/hash/SipHashFunction;->c:I

    iget v3, v0, Lcom/google/common/hash/SipHashFunction;->c:I

    if-ne v2, v3, :cond_0

    .line 82
    iget v2, p0, Lcom/google/common/hash/SipHashFunction;->d:I

    iget v3, v0, Lcom/google/common/hash/SipHashFunction;->d:I

    if-ne v2, v3, :cond_0

    .line 83
    iget-wide v2, p0, Lcom/google/common/hash/SipHashFunction;->k0:J

    iget-wide v4, v0, Lcom/google/common/hash/SipHashFunction;->k0:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 84
    iget-wide v2, p0, Lcom/google/common/hash/SipHashFunction;->k1:J

    iget-wide v4, v0, Lcom/google/common/hash/SipHashFunction;->k1:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 81
    :cond_0
    return v1

    .line 86
    .end local v0    # "other":Lcom/google/common/hash/SipHashFunction;
    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/google/common/hash/SipHashFunction;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/google/common/hash/SipHashFunction;->c:I

    xor-int/2addr v0, v1

    iget v1, p0, Lcom/google/common/hash/SipHashFunction;->d:I

    xor-int/2addr v0, v1

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/google/common/hash/SipHashFunction;->k0:J

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/common/hash/SipHashFunction;->k1:J

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public newHasher()Lcom/google/common/hash/Hasher;
    .locals 8

    .prologue
    .line 68
    new-instance v1, Lcom/google/common/hash/SipHashFunction$SipHasher;

    iget v2, p0, Lcom/google/common/hash/SipHashFunction;->c:I

    iget v3, p0, Lcom/google/common/hash/SipHashFunction;->d:I

    iget-wide v4, p0, Lcom/google/common/hash/SipHashFunction;->k0:J

    iget-wide v6, p0, Lcom/google/common/hash/SipHashFunction;->k1:J

    invoke-direct/range {v1 .. v7}, Lcom/google/common/hash/SipHashFunction$SipHasher;-><init>(IIJJ)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Hashing.sipHash"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/common/hash/SipHashFunction;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/common/hash/SipHashFunction;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/common/hash/SipHashFunction;->k0:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/common/hash/SipHashFunction;->k1:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
