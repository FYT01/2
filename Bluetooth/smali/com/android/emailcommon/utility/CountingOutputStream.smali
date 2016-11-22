.class public Lcom/android/emailcommon/utility/CountingOutputStream;
.super Ljava/io/OutputStream;
.source "CountingOutputStream.java"


# instance fields
.field private mCount:J

.field private final mOutputStream:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "outputStream"    # Ljava/io/OutputStream;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/emailcommon/utility/CountingOutputStream;->mOutputStream:Ljava/io/OutputStream;

    .line 30
    return-void
.end method


# virtual methods
.method public getCount()J
    .locals 2

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/android/emailcommon/utility/CountingOutputStream;->mCount:J

    return-wide v0
.end method

.method public write(I)V
    .locals 4
    .param p1, "oneByte"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/emailcommon/utility/CountingOutputStream;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 47
    iget-wide v0, p0, Lcom/android/emailcommon/utility/CountingOutputStream;->mCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/emailcommon/utility/CountingOutputStream;->mCount:J

    .line 45
    return-void
.end method

.method public write([BII)V
    .locals 4
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/emailcommon/utility/CountingOutputStream;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 41
    iget-wide v0, p0, Lcom/android/emailcommon/utility/CountingOutputStream;->mCount:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/emailcommon/utility/CountingOutputStream;->mCount:J

    .line 39
    return-void
.end method
