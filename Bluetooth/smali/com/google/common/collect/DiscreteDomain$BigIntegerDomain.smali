.class final Lcom/google/common/collect/DiscreteDomain$BigIntegerDomain;
.super Lcom/google/common/collect/DiscreteDomain;
.source "DiscreteDomain.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/DiscreteDomain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BigIntegerDomain"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/DiscreteDomain",
        "<",
        "Ljava/math/BigInteger;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/google/common/collect/DiscreteDomain$BigIntegerDomain;

.field private static final MAX_LONG:Ljava/math/BigInteger;

.field private static final MIN_LONG:Ljava/math/BigInteger;

.field private static final serialVersionUID:J


# direct methods
.method static synthetic -get0()Lcom/google/common/collect/DiscreteDomain$BigIntegerDomain;
    .locals 1

    sget-object v0, Lcom/google/common/collect/DiscreteDomain$BigIntegerDomain;->INSTANCE:Lcom/google/common/collect/DiscreteDomain$BigIntegerDomain;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 160
    new-instance v0, Lcom/google/common/collect/DiscreteDomain$BigIntegerDomain;

    invoke-direct {v0}, Lcom/google/common/collect/DiscreteDomain$BigIntegerDomain;-><init>()V

    sput-object v0, Lcom/google/common/collect/DiscreteDomain$BigIntegerDomain;->INSTANCE:Lcom/google/common/collect/DiscreteDomain$BigIntegerDomain;

    .line 163
    const-wide/high16 v0, -0x8000000000000000L

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    .line 162
    sput-object v0, Lcom/google/common/collect/DiscreteDomain$BigIntegerDomain;->MIN_LONG:Ljava/math/BigInteger;

    .line 165
    const-wide v0, 0x7fffffffffffffffL

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    .line 164
    sput-object v0, Lcom/google/common/collect/DiscreteDomain$BigIntegerDomain;->MAX_LONG:Ljava/math/BigInteger;

    .line 158
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 158
    .local p0, "this":Lcom/google/common/collect/DiscreteDomain$BigIntegerDomain;, "Lcom/google/common/collect/DiscreteDomain<TC;>.BigIntegerDomain;"
    invoke-direct {p0}, Lcom/google/common/collect/DiscreteDomain;-><init>()V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 180
    .local p0, "this":Lcom/google/common/collect/DiscreteDomain$BigIntegerDomain;, "Lcom/google/common/collect/DiscreteDomain<TC;>.BigIntegerDomain;"
    sget-object v0, Lcom/google/common/collect/DiscreteDomain$BigIntegerDomain;->INSTANCE:Lcom/google/common/collect/DiscreteDomain$BigIntegerDomain;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic distance(Ljava/lang/Comparable;Ljava/lang/Comparable;)J
    .locals 2
    .param p1, "start"    # Ljava/lang/Comparable;
    .param p2, "end"    # Ljava/lang/Comparable;

    .prologue
    .line 175
    .local p0, "this":Lcom/google/common/collect/DiscreteDomain$BigIntegerDomain;, "Lcom/google/common/collect/DiscreteDomain<TC;>.BigIntegerDomain;"
    check-cast p1, Ljava/math/BigInteger;

    .end local p1    # "start":Ljava/lang/Comparable;
    check-cast p2, Ljava/math/BigInteger;

    .end local p2    # "end":Ljava/lang/Comparable;
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/DiscreteDomain$BigIntegerDomain;->distance(Ljava/math/BigInteger;Ljava/math/BigInteger;)J

    move-result-wide v0

    return-wide v0
.end method

.method public distance(Ljava/math/BigInteger;Ljava/math/BigInteger;)J
    .locals 2
    .param p1, "start"    # Ljava/math/BigInteger;
    .param p2, "end"    # Ljava/math/BigInteger;

    .prologue
    .line 176
    .local p0, "this":Lcom/google/common/collect/DiscreteDomain$BigIntegerDomain;, "Lcom/google/common/collect/DiscreteDomain<TC;>.BigIntegerDomain;"
    invoke-virtual {p2, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lcom/google/common/collect/DiscreteDomain$BigIntegerDomain;->MIN_LONG:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->max(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lcom/google/common/collect/DiscreteDomain$BigIntegerDomain;->MAX_LONG:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->min(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic next(Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 1
    .param p1, "value"    # Ljava/lang/Comparable;

    .prologue
    .line 167
    .local p0, "this":Lcom/google/common/collect/DiscreteDomain$BigIntegerDomain;, "Lcom/google/common/collect/DiscreteDomain<TC;>.BigIntegerDomain;"
    check-cast p1, Ljava/math/BigInteger;

    .end local p1    # "value":Ljava/lang/Comparable;
    invoke-virtual {p0, p1}, Lcom/google/common/collect/DiscreteDomain$BigIntegerDomain;->next(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public next(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1
    .param p1, "value"    # Ljava/math/BigInteger;

    .prologue
    .line 168
    .local p0, "this":Lcom/google/common/collect/DiscreteDomain$BigIntegerDomain;, "Lcom/google/common/collect/DiscreteDomain<TC;>.BigIntegerDomain;"
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic previous(Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 1
    .param p1, "value"    # Ljava/lang/Comparable;

    .prologue
    .line 171
    .local p0, "this":Lcom/google/common/collect/DiscreteDomain$BigIntegerDomain;, "Lcom/google/common/collect/DiscreteDomain<TC;>.BigIntegerDomain;"
    check-cast p1, Ljava/math/BigInteger;

    .end local p1    # "value":Ljava/lang/Comparable;
    invoke-virtual {p0, p1}, Lcom/google/common/collect/DiscreteDomain$BigIntegerDomain;->previous(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public previous(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1
    .param p1, "value"    # Ljava/math/BigInteger;

    .prologue
    .line 172
    .local p0, "this":Lcom/google/common/collect/DiscreteDomain$BigIntegerDomain;, "Lcom/google/common/collect/DiscreteDomain<TC;>.BigIntegerDomain;"
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    .local p0, "this":Lcom/google/common/collect/DiscreteDomain$BigIntegerDomain;, "Lcom/google/common/collect/DiscreteDomain<TC;>.BigIntegerDomain;"
    const-string/jumbo v0, "DiscreteDomain.bigIntegers()"

    return-object v0
.end method
