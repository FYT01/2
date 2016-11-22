.class public final Lcom/google/common/net/InetAddresses;
.super Ljava/lang/Object;
.source "InetAddresses.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/net/InetAddresses$TeredoInfo;
    }
.end annotation


# static fields
.field private static final ANY4:Ljava/net/Inet4Address;

.field private static final IPV4_PART_COUNT:I = 0x4

.field private static final IPV6_PART_COUNT:I = 0x8

.field private static final LOOPBACK4:Ljava/net/Inet4Address;


# direct methods
.method static synthetic -get0()Ljava/net/Inet4Address;
    .locals 1

    sget-object v0, Lcom/google/common/net/InetAddresses;->ANY4:Ljava/net/Inet4Address;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 117
    const-string/jumbo v0, "127.0.0.1"

    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->forString(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;

    sput-object v0, Lcom/google/common/net/InetAddresses;->LOOPBACK4:Ljava/net/Inet4Address;

    .line 118
    const-string/jumbo v0, "0.0.0.0"

    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->forString(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;

    sput-object v0, Lcom/google/common/net/InetAddresses;->ANY4:Ljava/net/Inet4Address;

    .line 114
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bytesToInetAddress([B)Ljava/net/InetAddress;
    .locals 2
    .param p0, "addr"    # [B

    .prologue
    .line 331
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 332
    :catch_0
    move-exception v0

    .line 333
    .local v0, "e":Ljava/net/UnknownHostException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static coerceToInteger(Ljava/net/InetAddress;)I
    .locals 1
    .param p0, "ip"    # Ljava/net/InetAddress;

    .prologue
    .line 938
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->getCoercedIPv4Address(Ljava/net/InetAddress;)Ljava/net/Inet4Address;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/io/ByteStreams;->newDataInput([B)Lcom/google/common/io/ByteArrayDataInput;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/io/ByteArrayDataInput;->readInt()I

    move-result v0

    return v0
.end method

.method private static compressLongestRunOfZeroes([I)V
    .locals 7
    .param p0, "hextets"    # [I

    .prologue
    .line 381
    const/4 v1, -0x1

    .line 382
    .local v1, "bestRunStart":I
    const/4 v0, -0x1

    .line 383
    .local v0, "bestRunLength":I
    const/4 v4, -0x1

    .line 384
    .local v4, "runStart":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, p0

    add-int/lit8 v5, v5, 0x1

    if-ge v2, v5, :cond_3

    .line 385
    array-length v5, p0

    if-ge v2, v5, :cond_1

    aget v5, p0, v2

    if-nez v5, :cond_1

    .line 386
    if-gez v4, :cond_0

    .line 387
    move v4, v2

    .line 384
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 389
    :cond_1
    if-ltz v4, :cond_0

    .line 390
    sub-int v3, v2, v4

    .line 391
    .local v3, "runLength":I
    if-le v3, v0, :cond_2

    .line 392
    move v1, v4

    .line 393
    move v0, v3

    .line 395
    :cond_2
    const/4 v4, -0x1

    goto :goto_1

    .line 398
    .end local v3    # "runLength":I
    :cond_3
    const/4 v5, 0x2

    if-lt v0, v5, :cond_4

    .line 399
    add-int v5, v1, v0

    const/4 v6, -0x1

    invoke-static {p0, v1, v5, v6}, Ljava/util/Arrays;->fill([IIII)V

    .line 380
    :cond_4
    return-void
.end method

.method private static convertDottedQuadToHex(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "ipString"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 286
    const/16 v6, 0x3a

    invoke-virtual {p0, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 287
    .local v2, "lastColon":I
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p0, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 288
    .local v1, "initialPart":Ljava/lang/String;
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 289
    .local v0, "dottedQuad":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->textToNumericFormatV4(Ljava/lang/String;)[B

    move-result-object v4

    .line 290
    .local v4, "quad":[B
    if-nez v4, :cond_0

    .line 291
    return-object v8

    .line 293
    :cond_0
    aget-byte v6, v4, v7

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    const/4 v7, 0x1

    aget-byte v7, v4, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 294
    .local v3, "penultimate":Ljava/lang/String;
    const/4 v6, 0x2

    aget-byte v6, v4, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    const/4 v7, 0x3

    aget-byte v7, v4, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 295
    .local v5, "ultimate":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private static copyOfRange([BII)[B
    .locals 3
    .param p0, "array"    # [B
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 1013
    sub-int v0, p2, p1

    .line 1014
    .local v0, "length":I
    new-array v1, v0, [B

    .line 1015
    .local v1, "newArray":[B
    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1016
    return-object v1
.end method

.method public static forString(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 5
    .param p0, "ipString"    # Ljava/lang/String;

    .prologue
    .line 149
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->ipStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 152
    .local v0, "addr":[B
    if-nez v0, :cond_0

    .line 153
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 154
    const-string/jumbo v2, "\'%s\' is not an IP string literal."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 153
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 157
    :cond_0
    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->bytesToInetAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    return-object v1
.end method

.method public static forUriString(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 7
    .param p0, "hostAddr"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 485
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    const-string/jumbo v3, "["

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "]"

    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 491
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 492
    .local v2, "ipString":Ljava/lang/String;
    const/16 v1, 0x10

    .line 499
    .local v1, "expectBytes":I
    :goto_0
    invoke-static {v2}, Lcom/google/common/net/InetAddresses;->ipStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 500
    .local v0, "addr":[B
    if-eqz v0, :cond_0

    array-length v3, v0

    if-eq v3, v1, :cond_2

    .line 501
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 502
    const-string/jumbo v4, "Not a valid URI IP literal: \'%s\'"

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 501
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 494
    .end local v0    # "addr":[B
    .end local v1    # "expectBytes":I
    .end local v2    # "ipString":Ljava/lang/String;
    :cond_1
    move-object v2, p0

    .line 495
    .restart local v2    # "ipString":Ljava/lang/String;
    const/4 v1, 0x4

    .restart local v1    # "expectBytes":I
    goto :goto_0

    .line 505
    .restart local v0    # "addr":[B
    :cond_2
    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->bytesToInetAddress([B)Ljava/net/InetAddress;

    move-result-object v3

    return-object v3
.end method

.method public static fromInteger(I)Ljava/net/Inet4Address;
    .locals 1
    .param p0, "address"    # I

    .prologue
    .line 949
    invoke-static {p0}, Lcom/google/common/primitives/Ints;->toByteArray(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    move-result-object v0

    return-object v0
.end method

.method public static fromLittleEndianByteArray([B)Ljava/net/InetAddress;
    .locals 3
    .param p0, "addr"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 964
    array-length v2, p0

    new-array v1, v2, [B

    .line 965
    .local v1, "reversed":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 966
    array-length v2, p0

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-byte v2, p0, v2

    aput-byte v2, v1, v0

    .line 965
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 968
    :cond_0
    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v2

    return-object v2
.end method

.method public static get6to4IPv4Address(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;
    .locals 5
    .param p0, "ip"    # Ljava/net/Inet6Address;

    .prologue
    .line 603
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->is6to4Address(Ljava/net/Inet6Address;)Z

    move-result v0

    .line 604
    const-string/jumbo v1, "Address \'%s\' is not a 6to4 address."

    .line 603
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 604
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 603
    invoke-static {v0, v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 606
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x6

    invoke-static {v0, v1, v2}, Lcom/google/common/net/InetAddresses;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    move-result-object v0

    return-object v0
.end method

.method public static getCoercedIPv4Address(Ljava/net/InetAddress;)Ljava/net/Inet4Address;
    .locals 11
    .param p0, "ip"    # Ljava/net/InetAddress;

    .prologue
    const/16 v10, 0xf

    const/4 v9, 0x0

    .line 872
    instance-of v7, p0, Ljava/net/Inet4Address;

    if-eqz v7, :cond_0

    .line 873
    check-cast p0, Ljava/net/Inet4Address;

    .end local p0    # "ip":Ljava/net/InetAddress;
    return-object p0

    .line 877
    .restart local p0    # "ip":Ljava/net/InetAddress;
    :cond_0
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    .line 878
    .local v2, "bytes":[B
    const/4 v6, 0x1

    .line 879
    .local v6, "leadingBytesOfZero":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v10, :cond_1

    .line 880
    aget-byte v7, v2, v4

    if-eqz v7, :cond_2

    .line 881
    const/4 v6, 0x0

    .line 885
    :cond_1
    if-eqz v6, :cond_3

    aget-byte v7, v2, v10

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    .line 886
    sget-object v7, Lcom/google/common/net/InetAddresses;->LOOPBACK4:Ljava/net/Inet4Address;

    return-object v7

    .line 879
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 887
    :cond_3
    if-eqz v6, :cond_4

    aget-byte v7, v2, v10

    if-nez v7, :cond_4

    .line 888
    sget-object v7, Lcom/google/common/net/InetAddresses;->ANY4:Ljava/net/Inet4Address;

    return-object v7

    :cond_4
    move-object v5, p0

    .line 891
    check-cast v5, Ljava/net/Inet6Address;

    .line 892
    .local v5, "ip6":Ljava/net/Inet6Address;
    const-wide/16 v0, 0x0

    .line 893
    .local v0, "addressAsLong":J
    invoke-static {v5}, Lcom/google/common/net/InetAddresses;->hasEmbeddedIPv4ClientAddress(Ljava/net/Inet6Address;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 894
    invoke-static {v5}, Lcom/google/common/net/InetAddresses;->getEmbeddedIPv4ClientAddress(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/Inet4Address;->hashCode()I

    move-result v7

    int-to-long v0, v7

    .line 902
    :goto_1
    invoke-static {}, Lcom/google/common/hash/Hashing;->murmur3_32()Lcom/google/common/hash/HashFunction;

    move-result-object v7

    invoke-interface {v7, v0, v1}, Lcom/google/common/hash/HashFunction;->hashLong(J)Lcom/google/common/hash/HashCode;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/common/hash/HashCode;->asInt()I

    move-result v3

    .line 905
    .local v3, "coercedHash":I
    const/high16 v7, -0x20000000

    or-int/2addr v3, v7

    .line 909
    const/4 v7, -0x1

    if-ne v3, v7, :cond_5

    .line 910
    const/4 v3, -0x2

    .line 913
    :cond_5
    invoke-static {v3}, Lcom/google/common/primitives/Ints;->toByteArray(I)[B

    move-result-object v7

    invoke-static {v7}, Lcom/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    move-result-object v7

    return-object v7

    .line 898
    .end local v3    # "coercedHash":I
    :cond_6
    invoke-virtual {v5}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v7

    const/16 v8, 0x8

    invoke-static {v7, v9, v8}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    goto :goto_1
.end method

.method public static getCompatIPv4Address(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;
    .locals 5
    .param p0, "ip"    # Ljava/net/Inet6Address;

    .prologue
    .line 570
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isCompatIPv4Address(Ljava/net/Inet6Address;)Z

    move-result v0

    .line 571
    const-string/jumbo v1, "Address \'%s\' is not IPv4-compatible."

    .line 570
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 571
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 570
    invoke-static {v0, v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 573
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v0

    const/16 v1, 0xc

    const/16 v2, 0x10

    invoke-static {v0, v1, v2}, Lcom/google/common/net/InetAddresses;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    move-result-object v0

    return-object v0
.end method

.method public static getEmbeddedIPv4ClientAddress(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;
    .locals 5
    .param p0, "ip"    # Ljava/net/Inet6Address;

    .prologue
    .line 795
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isCompatIPv4Address(Ljava/net/Inet6Address;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 796
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->getCompatIPv4Address(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;

    move-result-object v0

    return-object v0

    .line 799
    :cond_0
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->is6to4Address(Ljava/net/Inet6Address;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 800
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->get6to4IPv4Address(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;

    move-result-object v0

    return-object v0

    .line 803
    :cond_1
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isTeredoAddress(Ljava/net/Inet6Address;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 804
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->getTeredoInfo(Ljava/net/Inet6Address;)Lcom/google/common/net/InetAddresses$TeredoInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/net/InetAddresses$TeredoInfo;->getClient()Ljava/net/Inet4Address;

    move-result-object v0

    return-object v0

    .line 807
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 808
    const-string/jumbo v1, "\'%s\' has no embedded IPv4 address."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 807
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getInet4Address([B)Ljava/net/Inet4Address;
    .locals 5
    .param p0, "bytes"    # [B

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 130
    array-length v0, p0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    move v0, v1

    .line 131
    :goto_0
    const-string/jumbo v3, "Byte array has invalid length for an IPv4 address: %s != 4."

    .line 130
    new-array v1, v1, [Ljava/lang/Object;

    .line 132
    array-length v4, p0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    .line 130
    invoke-static {v0, v3, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 135
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->bytesToInetAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;

    return-object v0

    :cond_0
    move v0, v2

    .line 130
    goto :goto_0
.end method

.method public static getIsatapIPv4Address(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;
    .locals 5
    .param p0, "ip"    # Ljava/net/Inet6Address;

    .prologue
    .line 759
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isIsatapAddress(Ljava/net/Inet6Address;)Z

    move-result v0

    .line 760
    const-string/jumbo v1, "Address \'%s\' is not an ISATAP address."

    .line 759
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 760
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 759
    invoke-static {v0, v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 762
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v0

    const/16 v1, 0xc

    const/16 v2, 0x10

    invoke-static {v0, v1, v2}, Lcom/google/common/net/InetAddresses;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    move-result-object v0

    return-object v0
.end method

.method public static getTeredoInfo(Ljava/net/Inet6Address;)Lcom/google/common/net/InetAddresses$TeredoInfo;
    .locals 14
    .param p0, "ip"    # Ljava/net/Inet6Address;

    .prologue
    const v13, 0xffff

    const/16 v12, 0x8

    .line 694
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isTeredoAddress(Ljava/net/Inet6Address;)Z

    move-result v7

    .line 695
    const-string/jumbo v8, "Address \'%s\' is not a Teredo address."

    .line 694
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    .line 695
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    .line 694
    invoke-static {v7, v8, v9}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 697
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v0

    .line 698
    .local v0, "bytes":[B
    const/4 v7, 0x4

    invoke-static {v0, v7, v12}, Lcom/google/common/net/InetAddresses;->copyOfRange([BII)[B

    move-result-object v7

    invoke-static {v7}, Lcom/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    move-result-object v6

    .line 700
    .local v6, "server":Ljava/net/Inet4Address;
    invoke-static {v0, v12}, Lcom/google/common/io/ByteStreams;->newDataInput([BI)Lcom/google/common/io/ByteArrayDataInput;

    move-result-object v7

    invoke-interface {v7}, Lcom/google/common/io/ByteArrayDataInput;->readShort()S

    move-result v7

    and-int v3, v7, v13

    .line 703
    .local v3, "flags":I
    const/16 v7, 0xa

    invoke-static {v0, v7}, Lcom/google/common/io/ByteStreams;->newDataInput([BI)Lcom/google/common/io/ByteArrayDataInput;

    move-result-object v7

    invoke-interface {v7}, Lcom/google/common/io/ByteArrayDataInput;->readShort()S

    move-result v7

    not-int v7, v7

    and-int v5, v7, v13

    .line 705
    .local v5, "port":I
    const/16 v7, 0xc

    const/16 v8, 0x10

    invoke-static {v0, v7, v8}, Lcom/google/common/net/InetAddresses;->copyOfRange([BII)[B

    move-result-object v2

    .line 706
    .local v2, "clientBytes":[B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v7, v2

    if-ge v4, v7, :cond_0

    .line 708
    aget-byte v7, v2, v4

    not-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, v2, v4

    .line 706
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 710
    :cond_0
    invoke-static {v2}, Lcom/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    move-result-object v1

    .line 712
    .local v1, "client":Ljava/net/Inet4Address;
    new-instance v7, Lcom/google/common/net/InetAddresses$TeredoInfo;

    invoke-direct {v7, v6, v1, v5, v3}, Lcom/google/common/net/InetAddresses$TeredoInfo;-><init>(Ljava/net/Inet4Address;Ljava/net/Inet4Address;II)V

    return-object v7
.end method

.method public static hasEmbeddedIPv4ClientAddress(Ljava/net/Inet6Address;)Z
    .locals 1
    .param p0, "ip"    # Ljava/net/Inet6Address;

    .prologue
    .line 778
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isCompatIPv4Address(Ljava/net/Inet6Address;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->is6to4Address(Ljava/net/Inet6Address;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isTeredoAddress(Ljava/net/Inet6Address;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static hextetsToIPv6String([I)Ljava/lang/String;
    .locals 5
    .param p0, "hextets"    # [I

    .prologue
    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v4, 0x27

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 419
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 420
    .local v2, "lastWasNumber":Z
    const/4 v1, 0x0

    .end local v2    # "lastWasNumber":Z
    .local v1, "i":I
    :goto_0
    array-length v4, p0

    if-ge v1, v4, :cond_5

    .line 421
    aget v4, p0, v1

    if-ltz v4, :cond_2

    const/4 v3, 0x1

    .line 422
    .local v3, "thisIsNumber":Z
    :goto_1
    if-eqz v3, :cond_3

    .line 423
    if-eqz v2, :cond_0

    .line 424
    const/16 v4, 0x3a

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 426
    :cond_0
    aget v4, p0, v1

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    :cond_1
    :goto_2
    move v2, v3

    .line 420
    .local v2, "lastWasNumber":Z
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 421
    .end local v2    # "lastWasNumber":Z
    .end local v3    # "thisIsNumber":Z
    :cond_2
    const/4 v3, 0x0

    .restart local v3    # "thisIsNumber":Z
    goto :goto_1

    .line 428
    :cond_3
    if-eqz v1, :cond_4

    if-eqz v2, :cond_1

    .line 429
    :cond_4
    const-string/jumbo v4, "::"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 434
    .end local v3    # "thisIsNumber":Z
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static increment(Ljava/net/InetAddress;)Ljava/net/InetAddress;
    .locals 6
    .param p0, "address"    # Ljava/net/InetAddress;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 981
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 982
    .local v0, "addr":[B
    array-length v2, v0

    add-int/lit8 v1, v2, -0x1

    .line 983
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    aget-byte v2, v0, v1

    const/4 v5, -0x1

    if-ne v2, v5, :cond_0

    .line 984
    aput-byte v4, v0, v1

    .line 985
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 988
    :cond_0
    if-ltz v1, :cond_1

    move v2, v3

    :goto_1
    const-string/jumbo v5, "Incrementing %s would wrap."

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v4

    invoke-static {v2, v5, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 990
    aget-byte v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 991
    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->bytesToInetAddress([B)Ljava/net/InetAddress;

    move-result-object v2

    return-object v2

    :cond_1
    move v2, v4

    .line 988
    goto :goto_1
.end method

.method private static ipStringToBytes(Ljava/lang/String;)[B
    .locals 7
    .param p0, "ipString"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 173
    const/4 v1, 0x0

    .line 174
    .local v1, "hasColon":Z
    const/4 v2, 0x0

    .line 175
    .local v2, "hasDot":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 176
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 177
    .local v0, "c":C
    const/16 v4, 0x2e

    if-ne v0, v4, :cond_1

    .line 178
    const/4 v2, 0x1

    .line 175
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 179
    :cond_1
    const/16 v4, 0x3a

    if-ne v0, v4, :cond_3

    .line 180
    if-eqz v2, :cond_2

    .line 181
    return-object v6

    .line 183
    :cond_2
    const/4 v1, 0x1

    goto :goto_1

    .line 184
    :cond_3
    const/16 v4, 0x10

    invoke-static {v0, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 185
    return-object v6

    .line 190
    .end local v0    # "c":C
    :cond_4
    if-eqz v1, :cond_6

    .line 191
    if-eqz v2, :cond_5

    .line 192
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->convertDottedQuadToHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 193
    if-nez p0, :cond_5

    .line 194
    return-object v6

    .line 197
    :cond_5
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->textToNumericFormatV6(Ljava/lang/String;)[B

    move-result-object v4

    return-object v4

    .line 198
    :cond_6
    if-eqz v2, :cond_7

    .line 199
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->textToNumericFormatV4(Ljava/lang/String;)[B

    move-result-object v4

    return-object v4

    .line 201
    :cond_7
    return-object v6
.end method

.method public static is6to4Address(Ljava/net/Inet6Address;)Z
    .locals 5
    .param p0, "ip"    # Ljava/net/Inet6Address;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 591
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v0

    .line 592
    .local v0, "bytes":[B
    aget-byte v3, v0, v2

    const/16 v4, 0x20

    if-ne v3, v4, :cond_0

    aget-byte v3, v0, v1

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public static isCompatIPv4Address(Ljava/net/Inet6Address;)Z
    .locals 5
    .param p0, "ip"    # Ljava/net/Inet6Address;

    .prologue
    const/16 v4, 0xf

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 549
    invoke-virtual {p0}, Ljava/net/Inet6Address;->isIPv4CompatibleAddress()Z

    move-result v1

    if-nez v1, :cond_0

    .line 550
    return v2

    .line 553
    :cond_0
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v0

    .line 554
    .local v0, "bytes":[B
    const/16 v1, 0xc

    aget-byte v1, v0, v1

    if-nez v1, :cond_2

    const/16 v1, 0xd

    aget-byte v1, v0, v1

    if-nez v1, :cond_2

    const/16 v1, 0xe

    aget-byte v1, v0, v1

    if-nez v1, :cond_2

    .line 555
    aget-byte v1, v0, v4

    if-eqz v1, :cond_1

    aget-byte v1, v0, v4

    if-ne v1, v3, :cond_2

    .line 556
    :cond_1
    return v2

    .line 559
    :cond_2
    return v3
.end method

.method public static isInetAddress(Ljava/lang/String;)Z
    .locals 1
    .param p0, "ipString"    # Ljava/lang/String;

    .prologue
    .line 168
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->ipStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isIsatapAddress(Ljava/net/Inet6Address;)Z
    .locals 4
    .param p0, "ip"    # Ljava/net/Inet6Address;

    .prologue
    const/4 v1, 0x0

    .line 734
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isTeredoAddress(Ljava/net/Inet6Address;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 735
    return v1

    .line 738
    :cond_0
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v0

    .line 740
    .local v0, "bytes":[B
    const/16 v2, 0x8

    aget-byte v2, v0, v2

    or-int/lit8 v2, v2, 0x3

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    .line 744
    return v1

    .line 747
    :cond_1
    const/16 v2, 0x9

    aget-byte v2, v0, v2

    if-nez v2, :cond_2

    const/16 v2, 0xa

    aget-byte v2, v0, v2

    const/16 v3, 0x5e

    if-ne v2, v3, :cond_2

    .line 748
    const/16 v2, 0xb

    aget-byte v2, v0, v2

    const/4 v3, -0x2

    if-ne v2, v3, :cond_2

    const/4 v1, 0x1

    .line 747
    :cond_2
    return v1
.end method

.method public static isMappedIPv4Address(Ljava/lang/String;)Z
    .locals 5
    .param p0, "ipString"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 834
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->ipStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 835
    .local v0, "bytes":[B
    if-eqz v0, :cond_4

    array-length v2, v0

    const/16 v3, 0x10

    if-ne v2, v3, :cond_4

    .line 836
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_1

    .line 837
    aget-byte v2, v0, v1

    if-eqz v2, :cond_0

    .line 838
    return v4

    .line 836
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 841
    :cond_1
    const/16 v1, 0xa

    :goto_1
    const/16 v2, 0xc

    if-ge v1, v2, :cond_3

    .line 842
    aget-byte v2, v0, v1

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 843
    return v4

    .line 841
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 846
    :cond_3
    const/4 v2, 0x1

    return v2

    .line 848
    .end local v1    # "i":I
    :cond_4
    return v4
.end method

.method public static isMaximum(Ljava/net/InetAddress;)Z
    .locals 4
    .param p0, "address"    # Ljava/net/InetAddress;

    .prologue
    .line 1003
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 1004
    .local v0, "addr":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 1005
    aget-byte v2, v0, v1

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 1006
    const/4 v2, 0x0

    return v2

    .line 1004
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1009
    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method public static isTeredoAddress(Ljava/net/Inet6Address;)Z
    .locals 5
    .param p0, "ip"    # Ljava/net/Inet6Address;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 681
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v0

    .line 682
    .local v0, "bytes":[B
    aget-byte v3, v0, v2

    const/16 v4, 0x20

    if-ne v3, v4, :cond_1

    aget-byte v3, v0, v1

    if-ne v3, v1, :cond_1

    .line 683
    const/4 v3, 0x2

    aget-byte v3, v0, v3

    if-nez v3, :cond_1

    const/4 v3, 0x3

    aget-byte v3, v0, v3

    if-nez v3, :cond_0

    .line 682
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 683
    goto :goto_0

    :cond_1
    move v1, v2

    .line 682
    goto :goto_0
.end method

.method public static isUriInetAddress(Ljava/lang/String;)Z
    .locals 2
    .param p0, "ipString"    # Ljava/lang/String;

    .prologue
    .line 517
    :try_start_0
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->forUriString(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 518
    const/4 v1, 0x1

    return v1

    .line 519
    :catch_0
    move-exception v0

    .line 520
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    return v1
.end method

.method private static parseHextet(Ljava/lang/String;)S
    .locals 2
    .param p0, "ipPart"    # Ljava/lang/String;

    .prologue
    .line 311
    const/16 v1, 0x10

    invoke-static {p0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 312
    .local v0, "hextet":I
    const v1, 0xffff

    if-le v0, v1, :cond_0

    .line 313
    new-instance v1, Ljava/lang/NumberFormatException;

    invoke-direct {v1}, Ljava/lang/NumberFormatException;-><init>()V

    throw v1

    .line 315
    :cond_0
    int-to-short v1, v0

    return v1
.end method

.method private static parseOctet(Ljava/lang/String;)B
    .locals 3
    .param p0, "ipPart"    # Ljava/lang/String;

    .prologue
    .line 300
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 303
    .local v0, "octet":I
    const/16 v1, 0xff

    if-gt v0, v1, :cond_0

    const-string/jumbo v1, "0"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 304
    :cond_0
    new-instance v1, Ljava/lang/NumberFormatException;

    invoke-direct {v1}, Ljava/lang/NumberFormatException;-><init>()V

    throw v1

    .line 306
    :cond_1
    int-to-byte v1, v0

    return v1
.end method

.method private static textToNumericFormatV4(Ljava/lang/String;)[B
    .locals 8
    .param p0, "ipString"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x4

    .line 205
    const-string/jumbo v4, "\\."

    const/4 v5, 0x5

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "address":[Ljava/lang/String;
    array-length v4, v0

    if-eq v4, v6, :cond_0

    .line 207
    return-object v7

    .line 210
    :cond_0
    new-array v1, v6, [B

    .line 212
    .local v1, "bytes":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    :try_start_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 213
    aget-object v4, v0, v3

    invoke-static {v4}, Lcom/google/common/net/InetAddresses;->parseOctet(Ljava/lang/String;)B

    move-result v4

    aput-byte v4, v1, v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 215
    :catch_0
    move-exception v2

    .line 216
    .local v2, "ex":Ljava/lang/NumberFormatException;
    return-object v7

    .line 219
    .end local v2    # "ex":Ljava/lang/NumberFormatException;
    :cond_1
    return-object v1
.end method

.method private static textToNumericFormatV6(Ljava/lang/String;)[B
    .locals 13
    .param p0, "ipString"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v12, 0x0

    const/4 v9, 0x0

    .line 224
    const-string/jumbo v10, ":"

    const/16 v11, 0xa

    invoke-virtual {p0, v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 225
    .local v2, "parts":[Ljava/lang/String;
    array-length v10, v2

    const/4 v11, 0x3

    if-lt v10, v11, :cond_0

    array-length v10, v2

    const/16 v11, 0x9

    if-le v10, v11, :cond_1

    .line 226
    :cond_0
    return-object v12

    .line 231
    :cond_1
    const/4 v7, -0x1

    .line 232
    .local v7, "skipIndex":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v10, v2

    add-int/lit8 v10, v10, -0x1

    if-ge v1, v10, :cond_4

    .line 233
    aget-object v10, v2, v1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_3

    .line 234
    if-ltz v7, :cond_2

    .line 235
    return-object v12

    .line 237
    :cond_2
    move v7, v1

    .line 232
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 243
    :cond_4
    if-ltz v7, :cond_6

    .line 245
    move v3, v7

    .line 246
    .local v3, "partsHi":I
    array-length v10, v2

    sub-int/2addr v10, v7

    add-int/lit8 v4, v10, -0x1

    .line 247
    .local v4, "partsLo":I
    aget-object v10, v2, v9

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_5

    add-int/lit8 v3, v3, -0x1

    if-eqz v3, :cond_5

    .line 248
    return-object v12

    .line 250
    :cond_5
    array-length v10, v2

    add-int/lit8 v10, v10, -0x1

    aget-object v10, v2, v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_7

    add-int/lit8 v4, v4, -0x1

    if-eqz v4, :cond_7

    .line 251
    return-object v12

    .line 256
    .end local v3    # "partsHi":I
    .end local v4    # "partsLo":I
    :cond_6
    array-length v3, v2

    .line 257
    .restart local v3    # "partsHi":I
    const/4 v4, 0x0

    .line 262
    .restart local v4    # "partsLo":I
    :cond_7
    add-int v10, v3, v4

    rsub-int/lit8 v5, v10, 0x8

    .line 263
    .local v5, "partsSkipped":I
    if-ltz v7, :cond_9

    if-lt v5, v8, :cond_8

    :goto_1
    if-nez v8, :cond_a

    .line 264
    return-object v12

    :cond_8
    move v8, v9

    .line 263
    goto :goto_1

    :cond_9
    if-nez v5, :cond_8

    goto :goto_1

    .line 268
    :cond_a
    const/16 v8, 0x10

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 270
    .local v6, "rawBytes":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v3, :cond_b

    .line 271
    :try_start_0
    aget-object v8, v2, v1

    invoke-static {v8}, Lcom/google/common/net/InetAddresses;->parseHextet(Ljava/lang/String;)S

    move-result v8

    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 270
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 273
    :cond_b
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v5, :cond_c

    .line 274
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 273
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 276
    :cond_c
    move v1, v4

    :goto_4
    if-lez v1, :cond_d

    .line 277
    array-length v8, v2

    sub-int/2addr v8, v1

    aget-object v8, v2, v8

    invoke-static {v8}, Lcom/google/common/net/InetAddresses;->parseHextet(Ljava/lang/String;)S

    move-result v8

    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    .line 279
    :catch_0
    move-exception v0

    .line 280
    .local v0, "ex":Ljava/lang/NumberFormatException;
    return-object v12

    .line 282
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    :cond_d
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    return-object v8
.end method

.method public static toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;
    .locals 6
    .param p0, "ip"    # Ljava/net/InetAddress;

    .prologue
    const/4 v5, 0x0

    .line 355
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    instance-of v3, p0, Ljava/net/Inet4Address;

    if-eqz v3, :cond_0

    .line 358
    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 360
    :cond_0
    instance-of v3, p0, Ljava/net/Inet6Address;

    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 361
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 362
    .local v0, "bytes":[B
    const/16 v3, 0x8

    new-array v1, v3, [I

    .line 363
    .local v1, "hextets":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 365
    mul-int/lit8 v3, v2, 0x2

    aget-byte v3, v0, v3

    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x1

    aget-byte v4, v0, v4

    .line 364
    invoke-static {v5, v5, v3, v4}, Lcom/google/common/primitives/Ints;->fromBytes(BBBB)I

    move-result v3

    aput v3, v1, v2

    .line 363
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 367
    :cond_1
    invoke-static {v1}, Lcom/google/common/net/InetAddresses;->compressLongestRunOfZeroes([I)V

    .line 368
    invoke-static {v1}, Lcom/google/common/net/InetAddresses;->hextetsToIPv6String([I)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static toUriString(Ljava/net/InetAddress;)Ljava/lang/String;
    .locals 2
    .param p0, "ip"    # Ljava/net/InetAddress;

    .prologue
    .line 463
    instance-of v0, p0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_0

    .line 464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 466
    :cond_0
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
