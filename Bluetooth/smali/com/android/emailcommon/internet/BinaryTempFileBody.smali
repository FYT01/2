.class public Lcom/android/emailcommon/internet/BinaryTempFileBody;
.super Ljava/lang/Object;
.source "BinaryTempFileBody.java"

# interfaces
.implements Lcom/android/emailcommon/mail/Body;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/internet/BinaryTempFileBody$BinaryTempFileBodyInputStream;
    }
.end annotation


# instance fields
.field private mFile:Ljava/io/File;


# direct methods
.method static synthetic -get0(Lcom/android/emailcommon/internet/BinaryTempFileBody;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/android/emailcommon/internet/BinaryTempFileBody;->mFile:Ljava/io/File;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInputStream()Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 63
    :try_start_0
    new-instance v1, Lcom/android/emailcommon/internet/BinaryTempFileBody$BinaryTempFileBodyInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/android/emailcommon/internet/BinaryTempFileBody;->mFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, p0, v2}, Lcom/android/emailcommon/internet/BinaryTempFileBody$BinaryTempFileBodyInputStream;-><init>(Lcom/android/emailcommon/internet/BinaryTempFileBody;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    const-string/jumbo v2, "Unable to open body"

    invoke-direct {v1, v2, v0}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    const-string/jumbo v0, "body"

    invoke-static {}, Lcom/android/emailcommon/TempDirectory;->getTempDirectory()Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/internet/BinaryTempFileBody;->mFile:Ljava/io/File;

    .line 56
    iget-object v0, p0, Lcom/android/emailcommon/internet/BinaryTempFileBody;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    .line 57
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/android/emailcommon/internet/BinaryTempFileBody;->mFile:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public setFile(Ljava/lang/String;)V
    .locals 1
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 51
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/emailcommon/internet/BinaryTempFileBody;->mFile:Ljava/io/File;

    .line 50
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/android/emailcommon/internet/BinaryTempFileBody;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 73
    .local v1, "in":Ljava/io/InputStream;
    new-instance v0, Landroid/util/Base64OutputStream;

    .line 74
    const/16 v2, 0x14

    .line 73
    invoke-direct {v0, p1, v2}, Landroid/util/Base64OutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 75
    .local v0, "base64Out":Landroid/util/Base64OutputStream;
    invoke-static {v1, v0}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 76
    invoke-virtual {v0}, Landroid/util/Base64OutputStream;->close()V

    .line 77
    iget-object v2, p0, Lcom/android/emailcommon/internet/BinaryTempFileBody;->mFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 71
    return-void
.end method
