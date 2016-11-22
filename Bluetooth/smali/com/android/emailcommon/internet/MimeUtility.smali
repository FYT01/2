.class public Lcom/android/emailcommon/internet/MimeUtility;
.super Ljava/lang/Object;
.source "MimeUtility.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Email"

.field public static final MIME_TYPE_RFC822:Ljava/lang/String; = "message/rfc822"

.field private static final PATTERN_CR_OR_LF:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-string/jumbo v0, "\r|\n"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/internet/MimeUtility;->PATTERN_CR_OR_LF:Ljava/util/regex/Pattern;

    .line 46
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static collectParts(Lcom/android/emailcommon/mail/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 11
    .param p0, "part"    # Lcom/android/emailcommon/mail/Part;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/emailcommon/mail/Part;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/mail/Part;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/mail/Part;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 375
    .local p1, "viewables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    .local p2, "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    invoke-interface {p0}, Lcom/android/emailcommon/mail/Part;->getDisposition()Ljava/lang/String;

    move-result-object v1

    .line 376
    .local v1, "disposition":Ljava/lang/String;
    const/4 v9, 0x0

    invoke-static {v1, v9}, Lcom/android/emailcommon/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 379
    .local v2, "dispositionType":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string/jumbo v9, "inline"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    .line 381
    :goto_0
    invoke-interface {p0}, Lcom/android/emailcommon/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 383
    .local v7, "mimeType":Ljava/lang/String;
    invoke-interface {p0}, Lcom/android/emailcommon/mail/Part;->getBody()Lcom/android/emailcommon/mail/Body;

    move-result-object v9

    instance-of v9, v9, Lcom/android/emailcommon/mail/Multipart;

    if-eqz v9, :cond_4

    .line 387
    invoke-interface {p0}, Lcom/android/emailcommon/mail/Part;->getBody()Lcom/android/emailcommon/mail/Body;

    move-result-object v8

    check-cast v8, Lcom/android/emailcommon/internet/MimeMultipart;

    .line 388
    .local v8, "mp":Lcom/android/emailcommon/internet/MimeMultipart;
    const/4 v3, 0x0

    .line 389
    .local v3, "foundHtml":Z
    invoke-virtual {v8}, Lcom/android/emailcommon/internet/MimeMultipart;->getSubTypeForTest()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "alternative"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 390
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual {v8}, Lcom/android/emailcommon/internet/MimeMultipart;->getCount()I

    move-result v9

    if-ge v4, v9, :cond_0

    .line 391
    invoke-virtual {v8, v4}, Lcom/android/emailcommon/internet/MimeMultipart;->getBodyPart(I)Lcom/android/emailcommon/mail/BodyPart;

    move-result-object v9

    const-string/jumbo v10, "text/html"

    invoke-virtual {v9, v10}, Lcom/android/emailcommon/mail/BodyPart;->isMimeType(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 392
    const/4 v3, 0x1

    .line 397
    .end local v4    # "i":I
    :cond_0
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2
    invoke-virtual {v8}, Lcom/android/emailcommon/internet/MimeMultipart;->getCount()I

    move-result v9

    if-ge v4, v9, :cond_5

    .line 399
    invoke-virtual {v8, v4}, Lcom/android/emailcommon/internet/MimeMultipart;->getBodyPart(I)Lcom/android/emailcommon/mail/BodyPart;

    move-result-object v0

    .line 401
    .local v0, "bp":Lcom/android/emailcommon/mail/BodyPart;
    if-eqz v3, :cond_3

    const-string/jumbo v9, "text/plain"

    invoke-virtual {v0, v9}, Lcom/android/emailcommon/mail/BodyPart;->isMimeType(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 397
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 379
    .end local v0    # "bp":Lcom/android/emailcommon/mail/BodyPart;
    .end local v3    # "foundHtml":Z
    .end local v4    # "i":I
    .end local v7    # "mimeType":Ljava/lang/String;
    .end local v8    # "mp":Lcom/android/emailcommon/internet/MimeMultipart;
    :cond_1
    const/4 v5, 0x1

    .local v5, "inline":Z
    goto :goto_0

    .line 390
    .end local v5    # "inline":Z
    .restart local v3    # "foundHtml":Z
    .restart local v4    # "i":I
    .restart local v7    # "mimeType":Ljava/lang/String;
    .restart local v8    # "mp":Lcom/android/emailcommon/internet/MimeMultipart;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 404
    .restart local v0    # "bp":Lcom/android/emailcommon/mail/BodyPart;
    :cond_3
    invoke-static {v0, p1, p2}, Lcom/android/emailcommon/internet/MimeUtility;->collectParts(Lcom/android/emailcommon/mail/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_3

    .line 406
    .end local v0    # "bp":Lcom/android/emailcommon/mail/BodyPart;
    .end local v3    # "foundHtml":Z
    .end local v4    # "i":I
    .end local v8    # "mp":Lcom/android/emailcommon/internet/MimeMultipart;
    :cond_4
    invoke-interface {p0}, Lcom/android/emailcommon/mail/Part;->getBody()Lcom/android/emailcommon/mail/Body;

    move-result-object v9

    instance-of v9, v9, Lcom/android/emailcommon/mail/Message;

    if-eqz v9, :cond_6

    .line 409
    invoke-interface {p0}, Lcom/android/emailcommon/mail/Part;->getBody()Lcom/android/emailcommon/mail/Body;

    move-result-object v6

    check-cast v6, Lcom/android/emailcommon/mail/Message;

    .line 410
    .local v6, "message":Lcom/android/emailcommon/mail/Message;
    invoke-static {v6, p1, p2}, Lcom/android/emailcommon/internet/MimeUtility;->collectParts(Lcom/android/emailcommon/mail/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 374
    .end local v6    # "message":Lcom/android/emailcommon/mail/Message;
    :cond_5
    :goto_4
    return-void

    .line 411
    :cond_6
    if-eqz v5, :cond_8

    const-string/jumbo v9, "text"

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_7

    const-string/jumbo v9, "image"

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 413
    :cond_7
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 416
    :cond_8
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 69
    if-nez p0, :cond_0

    .line 70
    return-object v0

    .line 72
    :cond_0
    invoke-static {p0}, Lorg/apache/james/mime4j/decoder/DecoderUtil;->decodeEncodedWords(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static decodeBody(Ljava/io/InputStream;Ljava/lang/String;)Lcom/android/emailcommon/mail/Body;
    .locals 4
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "contentTransferEncoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 347
    invoke-static {p0, p1}, Lcom/android/emailcommon/internet/MimeUtility;->getInputStreamForContentTransferEncoding(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    .line 348
    new-instance v2, Lcom/android/emailcommon/internet/BinaryTempFileBody;

    invoke-direct {v2}, Lcom/android/emailcommon/internet/BinaryTempFileBody;-><init>()V

    .line 349
    .local v2, "tempBody":Lcom/android/emailcommon/internet/BinaryTempFileBody;
    invoke-virtual {v2}, Lcom/android/emailcommon/internet/BinaryTempFileBody;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 351
    .local v1, "out":Ljava/io/OutputStream;
    :try_start_0
    invoke-static {p0, v1}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_0
    .catch Landroid/util/Base64DataException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 359
    :goto_0
    return-object v2

    .line 352
    :catch_0
    move-exception v0

    .line 357
    .local v0, "bde":Landroid/util/Base64DataException;
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    goto :goto_0

    .line 356
    .end local v0    # "bde":Landroid/util/Base64DataException;
    :catchall_0
    move-exception v3

    .line 357
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 356
    throw v3
.end method

.method public static fold(Ljava/lang/String;I)Ljava/lang/String;
    .locals 9
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "usedCharacters"    # I

    .prologue
    const/16 v8, 0x4c

    const/4 v7, 0x0

    .line 130
    const/16 v2, 0x4c

    .line 132
    .local v2, "maxCharacters":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 133
    .local v1, "length":I
    add-int v6, p1, v1

    if-gt v6, v8, :cond_0

    .line 134
    return-object p0

    .line 136
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .local v4, "sb":Ljava/lang/StringBuilder;
    neg-int v0, p1

    .line 139
    .local v0, "lastLineBreak":I
    invoke-static {p0, v7}, Lcom/android/emailcommon/internet/MimeUtility;->indexOfWsp(Ljava/lang/String;I)I

    move-result v5

    .line 141
    .local v5, "wspIdx":I
    :goto_0
    if-ne v5, v1, :cond_1

    .line 142
    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 146
    :cond_1
    add-int/lit8 v6, v5, 0x1

    invoke-static {p0, v6}, Lcom/android/emailcommon/internet/MimeUtility;->indexOfWsp(Ljava/lang/String;I)I

    move-result v3

    .line 148
    .local v3, "nextWspIdx":I
    sub-int v6, v3, v0

    if-le v6, v8, :cond_2

    .line 149
    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {p0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    const-string/jumbo v6, "\r\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    move v0, v5

    .line 154
    :cond_2
    move v5, v3

    goto :goto_0
.end method

.method public static foldAndEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 83
    return-object p0
.end method

.method public static foldAndEncode2(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "usedCharacters"    # I

    .prologue
    .line 104
    sget-object v1, Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;->TEXT_TOKEN:Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;

    invoke-static {p0, v1, p1}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeIfNecessary(Ljava/lang/String;Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;I)Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "encoded":Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/android/emailcommon/internet/MimeUtility;->fold(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "header"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 193
    if-nez p0, :cond_0

    .line 194
    return-object v8

    .line 196
    :cond_0
    invoke-static {p0}, Lcom/android/emailcommon/internet/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 197
    .local v4, "parts":[Ljava/lang/String;
    if-nez p1, :cond_1

    .line 198
    aget-object v5, v4, v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 200
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, "lowerCaseName":Ljava/lang/String;
    array-length v6, v4

    :goto_0
    if-ge v5, v6, :cond_5

    aget-object v3, v4, v5

    .line 202
    .local v3, "part":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 203
    const-string/jumbo v5, "="

    invoke-virtual {v3, v5, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 204
    .local v2, "parameterParts":[Ljava/lang/String;
    array-length v5, v2

    if-ge v5, v10, :cond_2

    .line 205
    return-object v8

    .line 207
    :cond_2
    aget-object v5, v2, v9

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 208
    .local v1, "parameter":Ljava/lang/String;
    const-string/jumbo v5, "\""

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string/jumbo v5, "\""

    invoke-virtual {v1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 209
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v1, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 211
    :cond_3
    return-object v1

    .line 201
    .end local v1    # "parameter":Ljava/lang/String;
    .end local v2    # "parameterParts":[Ljava/lang/String;
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 215
    .end local v3    # "part":Ljava/lang/String;
    :cond_5
    return-object v8
.end method

.method public static getInputStreamForContentTransferEncoding(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "contentTransferEncoding"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 326
    if-eqz p1, :cond_0

    .line 328
    invoke-static {p1, v1}, Lcom/android/emailcommon/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 329
    const-string/jumbo v1, "quoted-printable"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 330
    new-instance v0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;

    invoke-direct {v0, p0}, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;-><init>(Ljava/io/InputStream;)V

    .end local p0    # "in":Ljava/io/InputStream;
    .local v0, "in":Ljava/io/InputStream;
    move-object p0, v0

    .line 336
    .end local v0    # "in":Ljava/io/InputStream;
    .restart local p0    # "in":Ljava/io/InputStream;
    :cond_0
    :goto_0
    return-object p0

    .line 332
    :cond_1
    const-string/jumbo v1, "base64"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 333
    new-instance v0, Landroid/util/Base64InputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/util/Base64InputStream;-><init>(Ljava/io/InputStream;I)V

    .end local p0    # "in":Ljava/io/InputStream;
    .restart local v0    # "in":Ljava/io/InputStream;
    move-object p0, v0

    .end local v0    # "in":Ljava/io/InputStream;
    .restart local p0    # "in":Ljava/io/InputStream;
    goto :goto_0
.end method

.method public static getTextFromPart(Lcom/android/emailcommon/mail/Part;Z)Ljava/lang/String;
    .locals 11
    .param p0, "part"    # Lcom/android/emailcommon/mail/Part;
    .param p1, "closeInput"    # Z

    .prologue
    const/4 v10, 0x0

    .line 227
    if-eqz p0, :cond_3

    :try_start_0
    invoke-interface {p0}, Lcom/android/emailcommon/mail/Part;->getBody()Lcom/android/emailcommon/mail/Body;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 228
    invoke-interface {p0}, Lcom/android/emailcommon/mail/Part;->getBody()Lcom/android/emailcommon/mail/Body;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/emailcommon/mail/Body;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 229
    .local v2, "in":Ljava/io/InputStream;
    invoke-interface {p0}, Lcom/android/emailcommon/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v3

    .line 230
    .local v3, "mimeType":Ljava/lang/String;
    if-eqz v3, :cond_3

    const-string/jumbo v7, "text/*"

    invoke-static {v3, v7}, Lcom/android/emailcommon/internet/MimeUtility;->mimeTypeMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 235
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 236
    .local v5, "out":Ljava/io/ByteArrayOutputStream;
    invoke-static {v2, v5}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 237
    if-eqz p1, :cond_0

    .line 238
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 240
    :cond_0
    const/4 v2, 0x0

    .line 245
    .local v2, "in":Ljava/io/InputStream;
    invoke-interface {p0}, Lcom/android/emailcommon/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "charset"

    invoke-static {v7, v8}, Lcom/android/emailcommon/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 246
    .local v0, "charset":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 250
    invoke-static {v0}, Lorg/apache/james/mime4j/util/CharsetUtil;->toJavaCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 255
    :cond_1
    if-nez v0, :cond_2

    .line 256
    const-string/jumbo v0, "ASCII"

    .line 261
    :cond_2
    invoke-virtual {v5, v0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 262
    .local v6, "result":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    return-object v6

    .line 275
    .end local v0    # "charset":Ljava/lang/String;
    .end local v2    # "in":Ljava/io/InputStream;
    .end local v3    # "mimeType":Ljava/lang/String;
    .end local v5    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "result":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 280
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "Email"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unable to getTextFromPart "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_0
    return-object v10

    .line 268
    :catch_1
    move-exception v4

    .line 273
    .local v4, "oom":Ljava/lang/OutOfMemoryError;
    const-string/jumbo v7, "Email"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unable to getTextFromPart "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static indexOfWsp(Ljava/lang/String;I)I
    .locals 4
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "fromIndex"    # I

    .prologue
    .line 165
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 166
    .local v2, "len":I
    move v1, p1

    .local v1, "index":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 167
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 168
    .local v0, "c":C
    const/16 v3, 0x20

    if-eq v0, v3, :cond_0

    const/16 v3, 0x9

    if-ne v0, v3, :cond_1

    .line 169
    :cond_0
    return v1

    .line 166
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 171
    .end local v0    # "c":C
    :cond_2
    return v2
.end method

.method public static mimeTypeMatches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "matchAgainst"    # Ljava/lang/String;

    .prologue
    .line 294
    const-string/jumbo v1, "\\*"

    const-string/jumbo v2, "\\.\\*"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 295
    const/4 v2, 0x2

    .line 294
    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 296
    .local v0, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    return v1
.end method

.method public static mimeTypeMatches(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "matchAgainst"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 309
    array-length v3, p1

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, p1, v1

    .line 310
    .local v0, "matchType":Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/android/emailcommon/internet/MimeUtility;->mimeTypeMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 311
    const/4 v1, 0x1

    return v1

    .line 309
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 314
    .end local v0    # "matchType":Ljava/lang/String;
    :cond_1
    return v2
.end method

.method public static unfold(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 57
    if-nez p0, :cond_0

    .line 58
    return-object v1

    .line 60
    :cond_0
    sget-object v1, Lcom/android/emailcommon/internet/MimeUtility;->PATTERN_CR_OR_LF:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 61
    .local v0, "patternMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 62
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->reset()Ljava/util/regex/Matcher;

    .line 63
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 65
    :cond_1
    return-object p0
.end method

.method public static unfoldAndDecode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-static {p0}, Lcom/android/emailcommon/internet/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/internet/MimeUtility;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
