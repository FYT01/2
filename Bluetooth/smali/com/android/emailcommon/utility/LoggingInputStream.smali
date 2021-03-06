.class public Lcom/android/emailcommon/utility/LoggingInputStream;
.super Ljava/io/FilterInputStream;
.source "LoggingInputStream.java"


# instance fields
.field private mDumpEmptyLines:Z

.field private mSb:Ljava/lang/StringBuilder;

.field private final mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 38
    const-string/jumbo v0, "RAW"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/emailcommon/utility/LoggingInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;Z)V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "dumpEmptyLines"    # Z

    .prologue
    .line 42
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/utility/LoggingInputStream;->mTag:Ljava/lang/String;

    .line 44
    iput-boolean p3, p0, Lcom/android/emailcommon/utility/LoggingInputStream;->mDumpEmptyLines:Z

    .line 45
    invoke-direct {p0}, Lcom/android/emailcommon/utility/LoggingInputStream;->initBuffer()V

    .line 46
    sget-object v0, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/emailcommon/utility/LoggingInputStream;->mTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "dump start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 41
    return-void
.end method

.method private flushLog()V
    .locals 3

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/android/emailcommon/utility/LoggingInputStream;->mDumpEmptyLines:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/emailcommon/utility/LoggingInputStream;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iget-object v1, p0, Lcom/android/emailcommon/utility/LoggingInputStream;->mTag:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 98
    :cond_0
    sget-object v0, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/emailcommon/utility/LoggingInputStream;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 99
    invoke-direct {p0}, Lcom/android/emailcommon/utility/LoggingInputStream;->initBuffer()V

    .line 96
    :cond_1
    return-void
.end method

.method private initBuffer()V
    .locals 2

    .prologue
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/emailcommon/utility/LoggingInputStream;->mTag:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/emailcommon/utility/LoggingInputStream;->mSb:Ljava/lang/StringBuilder;

    .line 49
    return-void
.end method

.method private logRaw(I)V
    .locals 2
    .param p1, "oneByte"    # I

    .prologue
    .line 83
    const/16 v0, 0xd

    if-ne p1, v0, :cond_0

    .line 82
    :goto_0
    return-void

    .line 85
    :cond_0
    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    .line 86
    invoke-direct {p0}, Lcom/android/emailcommon/utility/LoggingInputStream;->flushLog()V

    goto :goto_0

    .line 87
    :cond_1
    const/16 v0, 0x20

    if-gt v0, p1, :cond_2

    const/16 v0, 0x7e

    if-gt p1, v0, :cond_2

    .line 88
    iget-object v0, p0, Lcom/android/emailcommon/utility/LoggingInputStream;->mSb:Ljava/lang/StringBuilder;

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 92
    :cond_2
    iget-object v0, p0, Lcom/android/emailcommon/utility/LoggingInputStream;->mSb:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\\x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/emailcommon/utility/Utility;->byteToHex(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    .line 106
    invoke-direct {p0}, Lcom/android/emailcommon/utility/LoggingInputStream;->flushLog()V

    .line 104
    return-void
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    .line 59
    .local v0, "oneByte":I
    invoke-direct {p0, v0}, Lcom/android/emailcommon/utility/LoggingInputStream;->logRaw(I)V

    .line 60
    return v0
.end method

.method public read([BII)I
    .locals 3
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v0

    .line 69
    .local v0, "bytesRead":I
    move v1, v0

    .line 70
    .local v1, "copyBytes":I
    :goto_0
    if-lez v1, :cond_0

    .line 71
    aget-byte v2, p1, p2

    and-int/lit16 v2, v2, 0xff

    invoke-direct {p0, v2}, Lcom/android/emailcommon/utility/LoggingInputStream;->logRaw(I)V

    .line 72
    add-int/lit8 v1, v1, -0x1

    .line 73
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 76
    :cond_0
    return v0
.end method
