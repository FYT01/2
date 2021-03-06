.class final Lcom/google/common/reflect/Types;
.super Ljava/lang/Object;
.source "Types.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/reflect/Types$ClassOwnership;,
        Lcom/google/common/reflect/Types$GenericArrayTypeImpl;,
        Lcom/google/common/reflect/Types$ParameterizedTypeImpl;,
        Lcom/google/common/reflect/Types$TypeVariableImpl;,
        Lcom/google/common/reflect/Types$WildcardTypeImpl;,
        Lcom/google/common/reflect/Types$JavaVersion;,
        Lcom/google/common/reflect/Types$NativeTypeVariableEquals;,
        Lcom/google/common/reflect/Types$1;
    }
.end annotation


# static fields
.field private static final COMMA_JOINER:Lcom/google/common/base/Joiner;

.field private static final TYPE_TO_STRING:Lcom/google/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Function",
            "<",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Lcom/google/common/base/Joiner;
    .locals 1

    sget-object v0, Lcom/google/common/reflect/Types;->COMMA_JOINER:Lcom/google/common/base/Joiner;

    return-object v0
.end method

.method static synthetic -get1()Lcom/google/common/base/Function;
    .locals 1

    sget-object v0, Lcom/google/common/reflect/Types;->TYPE_TO_STRING:Lcom/google/common/base/Function;

    return-object v0
.end method

.method static synthetic -wrap0(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 1
    .param p0, "bounds"    # Ljava/lang/Iterable;

    .prologue
    invoke-static {p0}, Lcom/google/common/reflect/Types;->filterUpperBounds(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Ljava/util/Collection;)[Ljava/lang/reflect/Type;
    .locals 1
    .param p0, "types"    # Ljava/util/Collection;

    .prologue
    invoke-static {p0}, Lcom/google/common/reflect/Types;->toArray(Ljava/util/Collection;)[Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2([Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 1
    .param p0, "bounds"    # [Ljava/lang/reflect/Type;

    .prologue
    invoke-static {p0}, Lcom/google/common/reflect/Types;->subtypeOfComponentType([Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3([Ljava/lang/reflect/Type;Ljava/lang/String;)V
    .locals 0
    .param p0, "types"    # [Ljava/lang/reflect/Type;
    .param p1, "usedAs"    # Ljava/lang/String;

    .prologue
    invoke-static {p0, p1}, Lcom/google/common/reflect/Types;->disallowPrimitiveType([Ljava/lang/reflect/Type;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 54
    new-instance v0, Lcom/google/common/reflect/Types$1;

    invoke-direct {v0}, Lcom/google/common/reflect/Types$1;-><init>()V

    .line 53
    sput-object v0, Lcom/google/common/reflect/Types;->TYPE_TO_STRING:Lcom/google/common/base/Function;

    .line 60
    const-string/jumbo v0, ", "

    invoke-static {v0}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v0

    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Lcom/google/common/base/Joiner;->useForNull(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v0

    sput-object v0, Lcom/google/common/reflect/Types;->COMMA_JOINER:Lcom/google/common/base/Joiner;

    .line 50
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 510
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static disallowPrimitiveType([Ljava/lang/reflect/Type;Ljava/lang/String;)V
    .locals 9
    .param p0, "types"    # [Ljava/lang/reflect/Type;
    .param p1, "usedAs"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 430
    array-length v6, p0

    move v5, v3

    :goto_0
    if-ge v5, v6, :cond_2

    aget-object v1, p0, v5

    .line 431
    .local v1, "type":Ljava/lang/reflect/Type;
    instance-of v2, v1, Ljava/lang/Class;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 432
    check-cast v0, Ljava/lang/Class;

    .line 433
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    .line 434
    :goto_1
    const-string/jumbo v7, "Primitive type \'%s\' used as %s"

    .line 433
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    .line 434
    aput-object v0, v8, v3

    aput-object p1, v8, v4

    .line 433
    invoke-static {v2, v7, v8}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 430
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_0

    .restart local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    move v2, v4

    .line 433
    goto :goto_1

    .line 429
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "type":Ljava/lang/reflect/Type;
    :cond_2
    return-void
.end method

.method private static filterUpperBounds(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/reflect/Type;",
            ">;)",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    .prologue
    .line 426
    .local p0, "bounds":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/reflect/Type;>;"
    const-class v0, Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/common/base/Predicates;->equalTo(Ljava/lang/Object;)Lcom/google/common/base/Predicate;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Predicates;->not(Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object v0

    .line 425
    invoke-static {p0, v0}, Lcom/google/common/collect/Iterables;->filter(Ljava/lang/Iterable;Lcom/google/common/base/Predicate;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method static getArrayClass(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 444
    .local p0, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method static getComponentType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 4
    .param p0, "type"    # Ljava/lang/reflect/Type;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 183
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 185
    .local v0, "result":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/reflect/Type;>;"
    new-instance v1, Lcom/google/common/reflect/Types$2;

    invoke-direct {v1, v0}, Lcom/google/common/reflect/Types$2;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/reflect/Type;

    .line 198
    const/4 v3, 0x0

    aput-object p0, v2, v3

    .line 185
    invoke-virtual {v1, v2}, Lcom/google/common/reflect/Types$2;->visit([Ljava/lang/reflect/Type;)V

    .line 199
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Type;

    return-object v1
.end method

.method static newArrayType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 7
    .param p0, "componentType"    # Ljava/lang/reflect/Type;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 64
    instance-of v3, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v3, :cond_3

    move-object v2, p0

    .line 65
    check-cast v2, Ljava/lang/reflect/WildcardType;

    .line 66
    .local v2, "wildcard":Ljava/lang/reflect/WildcardType;
    invoke-interface {v2}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 67
    .local v0, "lowerBounds":[Ljava/lang/reflect/Type;
    array-length v3, v0

    if-gt v3, v4, :cond_0

    move v3, v4

    :goto_0
    const-string/jumbo v6, "Wildcard cannot have more than one lower bounds."

    invoke-static {v3, v6}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 68
    array-length v3, v0

    if-ne v3, v4, :cond_1

    .line 69
    aget-object v3, v0, v5

    invoke-static {v3}, Lcom/google/common/reflect/Types;->newArrayType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/reflect/Types;->supertypeOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/WildcardType;

    move-result-object v3

    return-object v3

    :cond_0
    move v3, v5

    .line 67
    goto :goto_0

    .line 71
    :cond_1
    invoke-interface {v2}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 72
    .local v1, "upperBounds":[Ljava/lang/reflect/Type;
    array-length v3, v1

    if-ne v3, v4, :cond_2

    :goto_1
    const-string/jumbo v3, "Wildcard should have only one upper bound."

    invoke-static {v4, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 73
    aget-object v3, v1, v5

    invoke-static {v3}, Lcom/google/common/reflect/Types;->newArrayType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/reflect/Types;->subtypeOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/WildcardType;

    move-result-object v3

    return-object v3

    :cond_2
    move v4, v5

    .line 72
    goto :goto_1

    .line 76
    .end local v0    # "lowerBounds":[Ljava/lang/reflect/Type;
    .end local v1    # "upperBounds":[Ljava/lang/reflect/Type;
    .end local v2    # "wildcard":Ljava/lang/reflect/WildcardType;
    :cond_3
    sget-object v3, Lcom/google/common/reflect/Types$JavaVersion;->CURRENT:Lcom/google/common/reflect/Types$JavaVersion;

    invoke-virtual {v3, p0}, Lcom/google/common/reflect/Types$JavaVersion;->newArrayType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v3

    return-object v3
.end method

.method static varargs newArtificialTypeVariable(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/TypeVariable;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "bounds"    # [Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D::",
            "Ljava/lang/reflect/GenericDeclaration;",
            ">(TD;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/reflect/TypeVariable",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .local p0, "declaration":Ljava/lang/reflect/GenericDeclaration;, "TD;"
    const/4 v2, 0x0

    .line 149
    new-instance v0, Lcom/google/common/reflect/Types$TypeVariableImpl;

    .line 152
    array-length v1, p2

    if-nez v1, :cond_0

    .line 153
    const/4 v1, 0x1

    new-array p2, v1, [Ljava/lang/reflect/Type;

    .end local p2    # "bounds":[Ljava/lang/reflect/Type;
    const-class v1, Ljava/lang/Object;

    aput-object v1, p2, v2

    .line 149
    :cond_0
    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/reflect/Types$TypeVariableImpl;-><init>(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;[Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method static varargs newParameterizedType(Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;
    .locals 2
    .param p1, "arguments"    # [Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/reflect/ParameterizedType;"
        }
    .end annotation

    .prologue
    .line 99
    .local p0, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lcom/google/common/reflect/Types$ParameterizedTypeImpl;

    .line 100
    sget-object v1, Lcom/google/common/reflect/Types$ClassOwnership;->JVM_BEHAVIOR:Lcom/google/common/reflect/Types$ClassOwnership;

    invoke-virtual {v1, p0}, Lcom/google/common/reflect/Types$ClassOwnership;->getOwnerType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 99
    invoke-direct {v0, v1, p0, p1}, Lcom/google/common/reflect/Types$ParameterizedTypeImpl;-><init>(Ljava/lang/reflect/Type;Ljava/lang/Class;[Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method static varargs newParameterizedTypeWithOwner(Ljava/lang/reflect/Type;Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;
    .locals 4
    .param p0, "ownerType"    # Ljava/lang/reflect/Type;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "arguments"    # [Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/reflect/ParameterizedType;"
        }
    .end annotation

    .prologue
    .local p1, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 85
    if-nez p0, :cond_0

    .line 86
    invoke-static {p1, p2}, Lcom/google/common/reflect/Types;->newParameterizedType(Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v0

    return-object v0

    .line 89
    :cond_0
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    invoke-virtual {p1}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    const-string/jumbo v3, "Owner type for unenclosed %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 91
    new-instance v0, Lcom/google/common/reflect/Types$ParameterizedTypeImpl;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/reflect/Types$ParameterizedTypeImpl;-><init>(Ljava/lang/reflect/Type;Ljava/lang/Class;[Ljava/lang/reflect/Type;)V

    return-object v0

    :cond_1
    move v0, v2

    .line 90
    goto :goto_0
.end method

.method static subtypeOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/WildcardType;
    .locals 4
    .param p0, "upperBound"    # Ljava/lang/reflect/Type;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 159
    new-instance v0, Lcom/google/common/reflect/Types$WildcardTypeImpl;

    new-array v1, v3, [Ljava/lang/reflect/Type;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/reflect/Type;

    aput-object p0, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/google/common/reflect/Types$WildcardTypeImpl;-><init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method private static subtypeOfComponentType([Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 6
    .param p0, "bounds"    # [Ljava/lang/reflect/Type;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 207
    const/4 v3, 0x0

    array-length v4, p0

    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v0, p0, v3

    .line 208
    .local v0, "bound":Ljava/lang/reflect/Type;
    invoke-static {v0}, Lcom/google/common/reflect/Types;->getComponentType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v2

    .line 209
    .local v2, "componentType":Ljava/lang/reflect/Type;
    if-eqz v2, :cond_1

    .line 212
    instance-of v3, v2, Ljava/lang/Class;

    if-eqz v3, :cond_0

    move-object v1, v2

    .line 213
    check-cast v1, Ljava/lang/Class;

    .line 214
    .local v1, "componentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 215
    return-object v1

    .line 218
    .end local v1    # "componentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    invoke-static {v2}, Lcom/google/common/reflect/Types;->subtypeOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/WildcardType;

    move-result-object v3

    return-object v3

    .line 207
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 221
    .end local v0    # "bound":Ljava/lang/reflect/Type;
    .end local v2    # "componentType":Ljava/lang/reflect/Type;
    :cond_2
    return-object v5
.end method

.method static supertypeOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/WildcardType;
    .locals 5
    .param p0, "lowerBound"    # Ljava/lang/reflect/Type;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 164
    new-instance v0, Lcom/google/common/reflect/Types$WildcardTypeImpl;

    new-array v1, v2, [Ljava/lang/reflect/Type;

    aput-object p0, v1, v4

    new-array v2, v2, [Ljava/lang/reflect/Type;

    const-class v3, Ljava/lang/Object;

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Lcom/google/common/reflect/Types$WildcardTypeImpl;-><init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method private static toArray(Ljava/util/Collection;)[Ljava/lang/reflect/Type;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/reflect/Type;",
            ">;)[",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .prologue
    .line 421
    .local p0, "types":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/reflect/Type;>;"
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/reflect/Type;

    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Type;

    return-object v0
.end method

.method static toString(Ljava/lang/reflect/Type;)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # Ljava/lang/reflect/Type;

    .prologue
    .line 177
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 178
    check-cast p0, Ljava/lang/Class;

    .end local p0    # "type":Ljava/lang/reflect/Type;
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 177
    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :goto_0
    return-object v0

    .line 179
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
