.class public Lcom/android/emailcommon/mail/Base64Body;
.super Ljava/lang/Object;
.source "Base64Body.java"

# interfaces
.implements Lcom/android/emailcommon/mail/Body;


# instance fields
.field private mAlreadyWritten:Z

.field private final mSource:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "source"    # Ljava/io/InputStream;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/emailcommon/mail/Base64Body;->mSource:Ljava/io/InputStream;

    .line 33
    return-void
.end method


# virtual methods
.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/emailcommon/mail/Base64Body;->mSource:Ljava/io/InputStream;

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 52
    iget-boolean v1, p0, Lcom/android/emailcommon/mail/Base64Body;->mAlreadyWritten:Z

    if-eqz v1, :cond_0

    .line 53
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Base64Body can only be written once"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 55
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/emailcommon/mail/Base64Body;->mAlreadyWritten:Z

    .line 57
    :try_start_0
    new-instance v0, Landroid/util/Base64OutputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/util/Base64OutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 58
    .local v0, "b64out":Landroid/util/Base64OutputStream;
    iget-object v1, p0, Lcom/android/emailcommon/mail/Base64Body;->mSource:Ljava/io/InputStream;

    invoke-static {v1, v0}, Lorg/apache/commons/io/IOUtils;->copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    iget-object v1, p0, Lcom/android/emailcommon/mail/Base64Body;->mSource:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 51
    return-void

    .line 59
    .end local v0    # "b64out":Landroid/util/Base64OutputStream;
    :catchall_0
    move-exception v1

    .line 60
    iget-object v2, p0, Lcom/android/emailcommon/mail/Base64Body;->mSource:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 59
    throw v1
.end method
