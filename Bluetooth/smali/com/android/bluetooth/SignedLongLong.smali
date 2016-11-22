.class public Lcom/android/bluetooth/SignedLongLong;
.super Ljava/lang/Object;
.source "SignedLongLong.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/bluetooth/SignedLongLong;",
        ">;"
    }
.end annotation


# instance fields
.field private mLeastSigBits:J

.field private mMostSigBits:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 1
    .param p1, "leastSigBits"    # J
    .param p3, "mostSigBits"    # J

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-wide p3, p0, Lcom/android/bluetooth/SignedLongLong;->mMostSigBits:J

    .line 36
    iput-wide p1, p0, Lcom/android/bluetooth/SignedLongLong;->mLeastSigBits:J

    .line 34
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/android/bluetooth/SignedLongLong;
    .locals 10
    .param p0, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 47
    const-wide/16 v0, 0x0

    .local v0, "lsb":J
    const-wide/16 v4, 0x0

    .line 49
    .local v4, "msb":J
    const/4 v3, 0x0

    .local v3, "msbStr":Ljava/lang/String;
    const/4 v2, 0x0

    .line 50
    .local v2, "lsbStr":Ljava/lang/String;
    if-nez p0, :cond_0

    new-instance v7, Ljava/lang/NullPointerException;

    invoke-direct {v7}, Ljava/lang/NullPointerException;-><init>()V

    throw v7

    .line 51
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 52
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 53
    .local v6, "valueLength":I
    if-eqz v6, :cond_1

    const/16 v7, 0x20

    if-le v6, v7, :cond_2

    .line 54
    :cond_1
    new-instance v7, Ljava/lang/NumberFormatException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "invalid string length: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 56
    :cond_2
    const/16 v7, 0x10

    if-gt v6, v7, :cond_3

    .line 57
    move-object v2, p0

    .line 63
    .end local v3    # "msbStr":Ljava/lang/String;
    .local v2, "lsbStr":Ljava/lang/String;
    :goto_0
    invoke-static {v2}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getLongFromString(Ljava/lang/String;)J

    move-result-wide v0

    .line 64
    new-instance v7, Lcom/android/bluetooth/SignedLongLong;

    invoke-direct {v7, v0, v1, v4, v5}, Lcom/android/bluetooth/SignedLongLong;-><init>(JJ)V

    return-object v7

    .line 59
    .local v2, "lsbStr":Ljava/lang/String;
    .restart local v3    # "msbStr":Ljava/lang/String;
    :cond_3
    add-int/lit8 v7, v6, -0x10

    invoke-virtual {p0, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 60
    .local v2, "lsbStr":Ljava/lang/String;
    add-int/lit8 v7, v6, -0x10

    invoke-virtual {p0, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 61
    .local v3, "msbStr":Ljava/lang/String;
    invoke-static {v3}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getLongFromString(Ljava/lang/String;)J

    move-result-wide v4

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Lcom/android/bluetooth/SignedLongLong;)I
    .locals 6
    .param p1, "another"    # Lcom/android/bluetooth/SignedLongLong;

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 69
    iget-wide v0, p0, Lcom/android/bluetooth/SignedLongLong;->mMostSigBits:J

    iget-wide v2, p1, Lcom/android/bluetooth/SignedLongLong;->mMostSigBits:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 70
    iget-wide v0, p0, Lcom/android/bluetooth/SignedLongLong;->mLeastSigBits:J

    iget-wide v2, p1, Lcom/android/bluetooth/SignedLongLong;->mLeastSigBits:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 71
    const/4 v0, 0x0

    return v0

    .line 73
    :cond_0
    iget-wide v0, p0, Lcom/android/bluetooth/SignedLongLong;->mLeastSigBits:J

    iget-wide v2, p1, Lcom/android/bluetooth/SignedLongLong;->mLeastSigBits:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 74
    return v4

    .line 76
    :cond_1
    return v5

    .line 78
    :cond_2
    iget-wide v0, p0, Lcom/android/bluetooth/SignedLongLong;->mMostSigBits:J

    iget-wide v2, p1, Lcom/android/bluetooth/SignedLongLong;->mMostSigBits:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    .line 79
    return v4

    .line 81
    :cond_3
    return v5
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "another"    # Ljava/lang/Object;

    .prologue
    .line 68
    check-cast p1, Lcom/android/bluetooth/SignedLongLong;

    .end local p1    # "another":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/SignedLongLong;->compareTo(Lcom/android/bluetooth/SignedLongLong;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 99
    if-ne p0, p1, :cond_0

    .line 100
    return v7

    .line 102
    :cond_0
    if-nez p1, :cond_1

    .line 103
    return v6

    .line 105
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/SignedLongLong;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 106
    return v6

    :cond_2
    move-object v0, p1

    .line 108
    check-cast v0, Lcom/android/bluetooth/SignedLongLong;

    .line 109
    .local v0, "other":Lcom/android/bluetooth/SignedLongLong;
    iget-wide v2, p0, Lcom/android/bluetooth/SignedLongLong;->mLeastSigBits:J

    iget-wide v4, v0, Lcom/android/bluetooth/SignedLongLong;->mLeastSigBits:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3

    .line 110
    return v6

    .line 112
    :cond_3
    iget-wide v2, p0, Lcom/android/bluetooth/SignedLongLong;->mMostSigBits:J

    iget-wide v4, v0, Lcom/android/bluetooth/SignedLongLong;->mMostSigBits:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_4

    .line 113
    return v6

    .line 115
    :cond_4
    return v7
.end method

.method public getLeastSignificantBits()J
    .locals 2

    .prologue
    .line 123
    iget-wide v0, p0, Lcom/android/bluetooth/SignedLongLong;->mLeastSigBits:J

    return-wide v0
.end method

.method public getMostSignificantBits()J
    .locals 2

    .prologue
    .line 119
    iget-wide v0, p0, Lcom/android/bluetooth/SignedLongLong;->mMostSigBits:J

    return-wide v0
.end method

.method public toHexString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 94
    iget-wide v0, p0, Lcom/android/bluetooth/SignedLongLong;->mLeastSigBits:J

    iget-wide v2, p0, Lcom/android/bluetooth/SignedLongLong;->mMostSigBits:J

    invoke-static {v0, v1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getLongLongAsString(JJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/android/bluetooth/SignedLongLong;->toHexString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
