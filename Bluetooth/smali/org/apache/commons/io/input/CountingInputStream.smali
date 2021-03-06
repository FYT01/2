.class public Lorg/apache/commons/io/input/CountingInputStream;
.super Lorg/apache/commons/io/input/ProxyInputStream;
.source "CountingInputStream.java"


# instance fields
.field private count:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lorg/apache/commons/io/input/ProxyInputStream;-><init>(Ljava/io/InputStream;)V

    .line 42
    return-void
.end method


# virtual methods
.method public declared-synchronized getByteCount()J
    .locals 2

    .prologue
    monitor-enter p0

    .line 156
    :try_start_0
    iget-wide v0, p0, Lorg/apache/commons/io/input/CountingInputStream;->count:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCount()I
    .locals 5

    .prologue
    monitor-enter p0

    .line 120
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/io/input/CountingInputStream;->getByteCount()J

    move-result-wide v0

    .line 121
    .local v0, "result":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 122
    new-instance v2, Ljava/lang/ArithmeticException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "The byte count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is too large to be converted to an int"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "result":J
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 124
    .restart local v0    # "result":J
    :cond_0
    long-to-int v2, v0

    monitor-exit p0

    return v2
.end method

.method public read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 88
    invoke-super {p0}, Lorg/apache/commons/io/input/ProxyInputStream;->read()I

    move-result v0

    .line 89
    .local v0, "found":I
    iget-wide v2, p0, Lorg/apache/commons/io/input/CountingInputStream;->count:J

    if-ltz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/commons/io/input/CountingInputStream;->count:J

    .line 90
    return v0
.end method

.method public read([B)I
    .locals 6
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-super {p0, p1}, Lorg/apache/commons/io/input/ProxyInputStream;->read([B)I

    move-result v0

    .line 58
    .local v0, "found":I
    iget-wide v2, p0, Lorg/apache/commons/io/input/CountingInputStream;->count:J

    if-ltz v0, :cond_0

    move v1, v0

    :cond_0
    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/commons/io/input/CountingInputStream;->count:J

    .line 59
    return v0
.end method

.method public read([BII)I
    .locals 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-super {p0, p1, p2, p3}, Lorg/apache/commons/io/input/ProxyInputStream;->read([BII)I

    move-result v0

    .line 75
    .local v0, "found":I
    iget-wide v2, p0, Lorg/apache/commons/io/input/CountingInputStream;->count:J

    if-ltz v0, :cond_0

    move v1, v0

    :cond_0
    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/commons/io/input/CountingInputStream;->count:J

    .line 76
    return v0
.end method

.method public declared-synchronized resetByteCount()J
    .locals 4

    .prologue
    monitor-enter p0

    .line 170
    :try_start_0
    iget-wide v0, p0, Lorg/apache/commons/io/input/CountingInputStream;->count:J

    .line 171
    .local v0, "tmp":J
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/apache/commons/io/input/CountingInputStream;->count:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 172
    return-wide v0

    .end local v0    # "tmp":J
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized resetCount()I
    .locals 5

    .prologue
    monitor-enter p0

    .line 138
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/io/input/CountingInputStream;->resetByteCount()J

    move-result-wide v0

    .line 139
    .local v0, "result":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 140
    new-instance v2, Ljava/lang/ArithmeticException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "The byte count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is too large to be converted to an int"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "result":J
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 142
    .restart local v0    # "result":J
    :cond_0
    long-to-int v2, v0

    monitor-exit p0

    return v2
.end method

.method public skip(J)J
    .locals 5
    .param p1, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    invoke-super {p0, p1, p2}, Lorg/apache/commons/io/input/ProxyInputStream;->skip(J)J

    move-result-wide v0

    .line 104
    .local v0, "skip":J
    iget-wide v2, p0, Lorg/apache/commons/io/input/CountingInputStream;->count:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lorg/apache/commons/io/input/CountingInputStream;->count:J

    .line 105
    return-wide v0
.end method
