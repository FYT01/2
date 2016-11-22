.class public final Lcom/google/common/cache/CacheStats;
.super Ljava/lang/Object;
.source "CacheStats.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation


# instance fields
.field private final evictionCount:J

.field private final hitCount:J

.field private final loadExceptionCount:J

.field private final loadSuccessCount:J

.field private final missCount:J

.field private final totalLoadTime:J


# direct methods
.method public constructor <init>(JJJJJJ)V
    .locals 3
    .param p1, "hitCount"    # J
    .param p3, "missCount"    # J
    .param p5, "loadSuccessCount"    # J
    .param p7, "loadExceptionCount"    # J
    .param p9, "totalLoadTime"    # J
    .param p11, "evictionCount"    # J

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 80
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 81
    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-ltz v0, :cond_2

    const/4 v0, 0x1

    :goto_2
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 82
    const-wide/16 v0, 0x0

    cmp-long v0, p7, v0

    if-ltz v0, :cond_3

    const/4 v0, 0x1

    :goto_3
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 83
    const-wide/16 v0, 0x0

    cmp-long v0, p9, v0

    if-ltz v0, :cond_4

    const/4 v0, 0x1

    :goto_4
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 84
    const-wide/16 v0, 0x0

    cmp-long v0, p11, v0

    if-ltz v0, :cond_5

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 86
    iput-wide p1, p0, Lcom/google/common/cache/CacheStats;->hitCount:J

    .line 87
    iput-wide p3, p0, Lcom/google/common/cache/CacheStats;->missCount:J

    .line 88
    iput-wide p5, p0, Lcom/google/common/cache/CacheStats;->loadSuccessCount:J

    .line 89
    iput-wide p7, p0, Lcom/google/common/cache/CacheStats;->loadExceptionCount:J

    .line 90
    iput-wide p9, p0, Lcom/google/common/cache/CacheStats;->totalLoadTime:J

    .line 91
    iput-wide p11, p0, Lcom/google/common/cache/CacheStats;->evictionCount:J

    .line 78
    return-void

    .line 79
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 80
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 81
    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 82
    :cond_3
    const/4 v0, 0x0

    goto :goto_3

    .line 83
    :cond_4
    const/4 v0, 0x0

    goto :goto_4

    .line 84
    :cond_5
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public averageLoadPenalty()D
    .locals 6

    .prologue
    .line 200
    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->loadSuccessCount:J

    iget-wide v4, p0, Lcom/google/common/cache/CacheStats;->loadExceptionCount:J

    add-long v0, v2, v4

    .line 201
    .local v0, "totalLoadCount":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 202
    const-wide/16 v2, 0x0

    .line 201
    :goto_0
    return-wide v2

    .line 203
    :cond_0
    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->totalLoadTime:J

    long-to-double v2, v2

    long-to-double v4, v0

    div-double/2addr v2, v4

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 253
    instance-of v2, p1, Lcom/google/common/cache/CacheStats;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 254
    check-cast v0, Lcom/google/common/cache/CacheStats;

    .line 255
    .local v0, "other":Lcom/google/common/cache/CacheStats;
    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->hitCount:J

    iget-wide v4, v0, Lcom/google/common/cache/CacheStats;->hitCount:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 256
    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->missCount:J

    iget-wide v4, v0, Lcom/google/common/cache/CacheStats;->missCount:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 257
    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->loadSuccessCount:J

    iget-wide v4, v0, Lcom/google/common/cache/CacheStats;->loadSuccessCount:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 258
    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->loadExceptionCount:J

    iget-wide v4, v0, Lcom/google/common/cache/CacheStats;->loadExceptionCount:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 259
    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->totalLoadTime:J

    iget-wide v4, v0, Lcom/google/common/cache/CacheStats;->totalLoadTime:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 260
    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->evictionCount:J

    iget-wide v4, v0, Lcom/google/common/cache/CacheStats;->evictionCount:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 255
    :cond_0
    return v1

    .line 262
    .end local v0    # "other":Lcom/google/common/cache/CacheStats;
    :cond_1
    return v1
.end method

.method public evictionCount()J
    .locals 2

    .prologue
    .line 211
    iget-wide v0, p0, Lcom/google/common/cache/CacheStats;->evictionCount:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 247
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->hitCount:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->missCount:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->loadSuccessCount:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->loadExceptionCount:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 248
    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->totalLoadTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->evictionCount:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 247
    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public hitCount()J
    .locals 2

    .prologue
    .line 106
    iget-wide v0, p0, Lcom/google/common/cache/CacheStats;->hitCount:J

    return-wide v0
.end method

.method public hitRate()D
    .locals 6

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/google/common/cache/CacheStats;->requestCount()J

    move-result-wide v0

    .line 116
    .local v0, "requestCount":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    :goto_0
    return-wide v2

    :cond_0
    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->hitCount:J

    long-to-double v2, v2

    long-to-double v4, v0

    div-double/2addr v2, v4

    goto :goto_0
.end method

.method public loadCount()J
    .locals 4

    .prologue
    .line 149
    iget-wide v0, p0, Lcom/google/common/cache/CacheStats;->loadSuccessCount:J

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->loadExceptionCount:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public loadExceptionCount()J
    .locals 2

    .prologue
    .line 171
    iget-wide v0, p0, Lcom/google/common/cache/CacheStats;->loadExceptionCount:J

    return-wide v0
.end method

.method public loadExceptionRate()D
    .locals 6

    .prologue
    .line 180
    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->loadSuccessCount:J

    iget-wide v4, p0, Lcom/google/common/cache/CacheStats;->loadExceptionCount:J

    add-long v0, v2, v4

    .line 181
    .local v0, "totalLoadCount":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 182
    const-wide/16 v2, 0x0

    .line 181
    :goto_0
    return-wide v2

    .line 183
    :cond_0
    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->loadExceptionCount:J

    long-to-double v2, v2

    long-to-double v4, v0

    div-double/2addr v2, v4

    goto :goto_0
.end method

.method public loadSuccessCount()J
    .locals 2

    .prologue
    .line 160
    iget-wide v0, p0, Lcom/google/common/cache/CacheStats;->loadSuccessCount:J

    return-wide v0
.end method

.method public minus(Lcom/google/common/cache/CacheStats;)Lcom/google/common/cache/CacheStats;
    .locals 20
    .param p1, "other"    # Lcom/google/common/cache/CacheStats;

    .prologue
    .line 220
    new-instance v3, Lcom/google/common/cache/CacheStats;

    .line 221
    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/common/cache/CacheStats;->hitCount:J

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/google/common/cache/CacheStats;->hitCount:J

    sub-long/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 222
    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/common/cache/CacheStats;->missCount:J

    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/google/common/cache/CacheStats;->missCount:J

    sub-long/2addr v8, v10

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 223
    const-wide/16 v8, 0x0

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/common/cache/CacheStats;->loadSuccessCount:J

    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/google/common/cache/CacheStats;->loadSuccessCount:J

    sub-long/2addr v10, v12

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    .line 224
    const-wide/16 v10, 0x0

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/common/cache/CacheStats;->loadExceptionCount:J

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/google/common/cache/CacheStats;->loadExceptionCount:J

    sub-long/2addr v12, v14

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    .line 225
    const-wide/16 v12, 0x0

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/common/cache/CacheStats;->totalLoadTime:J

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/google/common/cache/CacheStats;->totalLoadTime:J

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    .line 226
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/common/cache/CacheStats;->evictionCount:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/google/common/cache/CacheStats;->evictionCount:J

    move-wide/from16 v18, v0

    sub-long v16, v16, v18

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    .line 220
    invoke-direct/range {v3 .. v15}, Lcom/google/common/cache/CacheStats;-><init>(JJJJJJ)V

    return-object v3
.end method

.method public missCount()J
    .locals 2

    .prologue
    .line 126
    iget-wide v0, p0, Lcom/google/common/cache/CacheStats;->missCount:J

    return-wide v0
.end method

.method public missRate()D
    .locals 6

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/google/common/cache/CacheStats;->requestCount()J

    move-result-wide v0

    .line 140
    .local v0, "requestCount":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    return-wide v2

    :cond_0
    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->missCount:J

    long-to-double v2, v2

    long-to-double v4, v0

    div-double/2addr v2, v4

    goto :goto_0
.end method

.method public plus(Lcom/google/common/cache/CacheStats;)Lcom/google/common/cache/CacheStats;
    .locals 18
    .param p1, "other"    # Lcom/google/common/cache/CacheStats;

    .prologue
    .line 236
    new-instance v3, Lcom/google/common/cache/CacheStats;

    .line 237
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/common/cache/CacheStats;->hitCount:J

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/google/common/cache/CacheStats;->hitCount:J

    add-long/2addr v4, v6

    .line 238
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/common/cache/CacheStats;->missCount:J

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/google/common/cache/CacheStats;->missCount:J

    add-long/2addr v6, v8

    .line 239
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/common/cache/CacheStats;->loadSuccessCount:J

    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/google/common/cache/CacheStats;->loadSuccessCount:J

    add-long/2addr v8, v10

    .line 240
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/common/cache/CacheStats;->loadExceptionCount:J

    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/google/common/cache/CacheStats;->loadExceptionCount:J

    add-long/2addr v10, v12

    .line 241
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/common/cache/CacheStats;->totalLoadTime:J

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/google/common/cache/CacheStats;->totalLoadTime:J

    add-long/2addr v12, v14

    .line 242
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/common/cache/CacheStats;->evictionCount:J

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/google/common/cache/CacheStats;->evictionCount:J

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    .line 236
    invoke-direct/range {v3 .. v15}, Lcom/google/common/cache/CacheStats;-><init>(JJJJJJ)V

    return-object v3
.end method

.method public requestCount()J
    .locals 4

    .prologue
    .line 99
    iget-wide v0, p0, Lcom/google/common/cache/CacheStats;->hitCount:J

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->missCount:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 267
    invoke-static {p0}, Lcom/google/common/base/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    .line 268
    const-string/jumbo v1, "hitCount"

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->hitCount:J

    .line 267
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    .line 269
    const-string/jumbo v1, "missCount"

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->missCount:J

    .line 267
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    .line 270
    const-string/jumbo v1, "loadSuccessCount"

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->loadSuccessCount:J

    .line 267
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    .line 271
    const-string/jumbo v1, "loadExceptionCount"

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->loadExceptionCount:J

    .line 267
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    .line 272
    const-string/jumbo v1, "totalLoadTime"

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->totalLoadTime:J

    .line 267
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    .line 273
    const-string/jumbo v1, "evictionCount"

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->evictionCount:J

    .line 267
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public totalLoadTime()J
    .locals 2

    .prologue
    .line 192
    iget-wide v0, p0, Lcom/google/common/cache/CacheStats;->totalLoadTime:J

    return-wide v0
.end method
