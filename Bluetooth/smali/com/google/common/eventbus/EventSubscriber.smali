.class Lcom/google/common/eventbus/EventSubscriber;
.super Ljava/lang/Object;
.source "EventSubscriber.java"


# instance fields
.field private final method:Ljava/lang/reflect/Method;

.field private final target:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/reflect/Method;)V
    .locals 1
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-string/jumbo v0, "EventSubscriber target cannot be null."

    .line 54
    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string/jumbo v0, "EventSubscriber method cannot be null."

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iput-object p1, p0, Lcom/google/common/eventbus/EventSubscriber;->target:Ljava/lang/Object;

    .line 59
    iput-object p2, p0, Lcom/google/common/eventbus/EventSubscriber;->method:Ljava/lang/reflect/Method;

    .line 60
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 53
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 98
    instance-of v2, p1, Lcom/google/common/eventbus/EventSubscriber;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 99
    check-cast v0, Lcom/google/common/eventbus/EventSubscriber;

    .line 103
    .local v0, "that":Lcom/google/common/eventbus/EventSubscriber;
    iget-object v2, p0, Lcom/google/common/eventbus/EventSubscriber;->target:Ljava/lang/Object;

    iget-object v3, v0, Lcom/google/common/eventbus/EventSubscriber;->target:Ljava/lang/Object;

    if-ne v2, v3, :cond_0

    iget-object v1, p0, Lcom/google/common/eventbus/EventSubscriber;->method:Ljava/lang/reflect/Method;

    iget-object v2, v0, Lcom/google/common/eventbus/EventSubscriber;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_0
    return v1

    .line 105
    .end local v0    # "that":Lcom/google/common/eventbus/EventSubscriber;
    :cond_1
    return v1
.end method

.method public getMethod()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/common/eventbus/EventSubscriber;->method:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public getSubscriber()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/common/eventbus/EventSubscriber;->target:Ljava/lang/Object;

    return-object v0
.end method

.method public handleEvent(Ljava/lang/Object;)V
    .locals 7
    .param p1, "event"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    :try_start_0
    iget-object v3, p0, Lcom/google/common/eventbus/EventSubscriber;->method:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/google/common/eventbus/EventSubscriber;->target:Ljava/lang/Object;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    return-void

    .line 79
    :catch_0
    move-exception v2

    .line 80
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/Error;

    if-eqz v3, :cond_0

    .line 81
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    check-cast v3, Ljava/lang/Error;

    throw v3

    .line 83
    :cond_0
    throw v2

    .line 77
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/Error;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Method became inaccessible: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 75
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 76
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/lang/Error;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Method rejected target/argument: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 92
    const/16 v0, 0x1f

    .line 93
    .local v0, "PRIME":I
    iget-object v1, p0, Lcom/google/common/eventbus/EventSubscriber;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->hashCode()I

    move-result v1

    add-int/lit8 v1, v1, 0x1f

    mul-int/lit8 v1, v1, 0x1f

    .line 94
    iget-object v2, p0, Lcom/google/common/eventbus/EventSubscriber;->target:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    .line 93
    add-int/2addr v1, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[wrapper "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/eventbus/EventSubscriber;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
