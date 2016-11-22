.class public Lcom/android/emailcommon/internet/Rfc822Output;
.super Ljava/lang/Object;
.source "Rfc822Output.java"


# static fields
.field private static final BODY_PATTERN:Ljava/util/regex/Pattern;

.field private static final BODY_PATTERN_GROUP:I = 0x1

.field private static final DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field private static final INDEX_BODY_HTML:I = 0x1

.field private static final INDEX_BODY_TEXT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Email"

.field static sBoundaryDigit:B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 60
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "EEE, dd MMM yyyy HH:mm:ss Z"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 59
    sput-object v0, Lcom/android/emailcommon/internet/Rfc822Output;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 64
    const-string/jumbo v0, "(?:<\\s*body[^>]*>)(.*)(?:<\\s*/\\s*body\\s*>)"

    .line 65
    const/16 v1, 0x22

    .line 63
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/internet/Rfc822Output;->BODY_PATTERN:Ljava/util/regex/Pattern;

    .line 54
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static buildBodyText(Lcom/android/emailcommon/provider/EmailContent$Body;Z)[Ljava/lang/String;
    .locals 5
    .param p0, "body"    # Lcom/android/emailcommon/provider/EmailContent$Body;
    .param p1, "useSmartReply"    # Z

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 93
    if-nez p0, :cond_0

    .line 94
    new-array v2, v2, [Ljava/lang/String;

    return-object v2

    .line 96
    :cond_0
    new-array v0, v2, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    aput-object v2, v0, v3

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    aput-object v2, v0, v4

    .line 97
    .local v0, "messageBody":[Ljava/lang/String;
    iget v1, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mQuotedTextStartPos:I

    .line 98
    .local v1, "pos":I
    if-eqz p1, :cond_1

    if-lez v1, :cond_1

    .line 99
    aget-object v2, v0, v3

    if-eqz v2, :cond_2

    .line 100
    aget-object v2, v0, v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 101
    aget-object v2, v0, v3

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    .line 109
    :cond_1
    :goto_0
    return-object v0

    .line 103
    :cond_2
    aget-object v2, v0, v4

    if-eqz v2, :cond_1

    .line 104
    aget-object v2, v0, v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 105
    aget-object v2, v0, v4

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    goto :goto_0
.end method

.method static getHtmlBody(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "html"    # Ljava/lang/String;

    .prologue
    .line 81
    sget-object v1, Lcom/android/emailcommon/internet/Rfc822Output;->BODY_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 82
    .local v0, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 85
    :cond_0
    return-object p0
.end method

.method static getNextBoundary()Ljava/lang/String;
    .locals 4

    .prologue
    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 392
    .local v0, "boundary":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "--_com.android.email_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 393
    const-class v2, Lcom/android/emailcommon/internet/Rfc822Output;

    monitor-enter v2

    .line 394
    :try_start_0
    sget-byte v1, Lcom/android/emailcommon/internet/Rfc822Output;->sBoundaryDigit:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 395
    sget-byte v1, Lcom/android/emailcommon/internet/Rfc822Output;->sBoundaryDigit:B

    add-int/lit8 v1, v1, 0x1

    rem-int/lit8 v1, v1, 0xa

    int-to-byte v1, v1

    sput-byte v1, Lcom/android/emailcommon/internet/Rfc822Output;->sBoundaryDigit:B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 397
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 393
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static writeAddressHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "writer"    # Ljava/io/Writer;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 329
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 330
    invoke-virtual {p0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 331
    const-string/jumbo v0, ": "

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 332
    invoke-static {p2}, Lcom/android/emailcommon/mail/Address;->reformatToHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/android/emailcommon/internet/MimeUtility;->fold(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 333
    const-string/jumbo v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 328
    :cond_0
    return-void
.end method

.method private static writeBoundary(Ljava/io/Writer;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "writer"    # Ljava/io/Writer;
    .param p1, "boundary"    # Ljava/lang/String;
    .param p2, "end"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 346
    const-string/jumbo v0, "--"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 347
    invoke-virtual {p0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 348
    if-eqz p2, :cond_0

    .line 349
    const-string/jumbo v0, "--"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 351
    :cond_0
    const-string/jumbo v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 345
    return-void
.end method

.method private static writeEncodedHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "writer"    # Ljava/io/Writer;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 312
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 313
    invoke-virtual {p0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 314
    const-string/jumbo v0, ": "

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 315
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-static {p2, v0}, Lcom/android/emailcommon/internet/MimeUtility;->foldAndEncode2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 316
    const-string/jumbo v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 311
    :cond_0
    return-void
.end method

.method private static writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "writer"    # Ljava/io/Writer;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 295
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 296
    invoke-virtual {p0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 297
    const-string/jumbo v0, ": "

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 298
    invoke-virtual {p0, p2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 299
    const-string/jumbo v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 294
    :cond_0
    return-void
.end method

.method private static writeOneAttachment(Landroid/content/Context;Ljava/io/Writer;Ljava/io/OutputStream;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "out"    # Ljava/io/OutputStream;
    .param p3, "attachment"    # Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 216
    const-string/jumbo v11, "Content-Type"

    .line 217
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    iget-object v13, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ";\n name=\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p3

    iget-object v13, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 216
    move-object/from16 v0, p1

    invoke-static {v0, v11, v12}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const-string/jumbo v11, "Content-Transfer-Encoding"

    const-string/jumbo v12, "base64"

    move-object/from16 v0, p1

    invoke-static {v0, v11, v12}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    move-object/from16 v0, p3

    iget v11, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit8 v11, v11, 0x1

    if-nez v11, :cond_0

    .line 222
    const-string/jumbo v11, "Content-Disposition"

    .line 223
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "attachment;\n filename=\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 224
    move-object/from16 v0, p3

    iget-object v13, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    .line 223
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 224
    const-string/jumbo v13, "\";"

    .line 223
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 225
    const-string/jumbo v13, "\n size="

    .line 223
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 225
    move-object/from16 v0, p3

    iget-wide v14, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    .line 223
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 222
    move-object/from16 v0, p1

    invoke-static {v0, v11, v12}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    :cond_0
    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-eqz v11, :cond_1

    .line 228
    const-string/jumbo v11, "Content-ID"

    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v0, v11, v12}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    :cond_1
    const-string/jumbo v11, "\r\n"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 233
    const/4 v8, 0x0

    .line 236
    .local v8, "inStream":Ljava/io/InputStream;
    :try_start_0
    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentBytes:[B

    if-eqz v11, :cond_3

    .line 237
    new-instance v9, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentBytes:[B

    invoke-direct {v9, v11}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .local v9, "inStream":Ljava/io/InputStream;
    move-object v8, v9

    .line 261
    .end local v8    # "inStream":Ljava/io/InputStream;
    .end local v9    # "inStream":Ljava/io/InputStream;
    :cond_2
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/Writer;->flush()V

    .line 262
    new-instance v2, Landroid/util/Base64OutputStream;

    .line 263
    const/16 v11, 0x14

    .line 262
    move-object/from16 v0, p2

    invoke-direct {v2, v0, v11}, Landroid/util/Base64OutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 265
    .local v2, "base64Out":Landroid/util/Base64OutputStream;
    invoke-static {v8, v2}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 266
    invoke-virtual {v2}, Landroid/util/Base64OutputStream;->close()V

    .line 271
    const/16 v11, 0xd

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/OutputStream;->write(I)V

    .line 272
    const/16 v11, 0xa

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/OutputStream;->write(I)V

    .line 273
    invoke-virtual/range {p2 .. p2}, Ljava/io/OutputStream;->flush()V

    .line 215
    .end local v2    # "base64Out":Landroid/util/Base64OutputStream;
    :goto_1
    return-void

    .line 240
    .restart local v8    # "inStream":Ljava/io/InputStream;
    :cond_3
    invoke-virtual/range {p3 .. p3}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->getCachedFileUri()Ljava/lang/String;

    move-result-object v3

    .line 241
    .local v3, "cachedFile":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 242
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v4

    .line 244
    .local v4, "cachedFileUri":Landroid/net/Uri;
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-virtual {v11, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v8

    .line 254
    .end local v4    # "cachedFileUri":Landroid/net/Uri;
    .end local v8    # "inStream":Ljava/io/InputStream;
    :cond_4
    :goto_2
    if-nez v8, :cond_2

    .line 256
    :try_start_2
    invoke-virtual/range {p3 .. p3}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->getContentUri()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 257
    .local v6, "fileUri":Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-virtual {v11, v6}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v8

    .local v8, "inStream":Ljava/io/InputStream;
    goto :goto_0

    .line 245
    .end local v6    # "fileUri":Landroid/net/Uri;
    .restart local v4    # "cachedFileUri":Landroid/net/Uri;
    .local v8, "inStream":Ljava/io/InputStream;
    :catch_0
    move-exception v5

    .line 247
    .local v5, "e":Ljava/io/FileNotFoundException;
    const/4 v8, 0x0

    .line 249
    const-string/jumbo v11, "Email"

    const-string/jumbo v12, "Rfc822Output#writeOneAttachment(), failed to loadcached file, falling back to: %s"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    .line 250
    invoke-virtual/range {p3 .. p3}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->getContentUri()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v13, v15

    .line 249
    invoke-static {v11, v12, v13}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 275
    .end local v3    # "cachedFile":Ljava/lang/String;
    .end local v4    # "cachedFileUri":Landroid/net/Uri;
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    .end local v8    # "inStream":Ljava/io/InputStream;
    :catch_1
    move-exception v7

    .line 277
    .local v7, "fnfe":Ljava/io/FileNotFoundException;
    const-string/jumbo v11, "Email"

    const-string/jumbo v12, "Rfc822Output#writeOneAttachment(), FileNotFoundExceptionwhen sending attachment"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v11, v7, v12, v13}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 280
    .end local v7    # "fnfe":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v10

    .line 281
    .local v10, "ioe":Ljava/io/IOException;
    const-string/jumbo v11, "Email"

    const-string/jumbo v12, "Rfc822Output#writeOneAttachment(), IOExceptionwhen sending attachment"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v11, v10, v12, v13}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 283
    new-instance v11, Lcom/android/emailcommon/mail/MessagingException;

    const-string/jumbo v12, "Invalid attachment."

    invoke-direct {v11, v12, v10}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11
.end method

.method private static writeTextWithHeaders(Ljava/io/Writer;Ljava/io/OutputStream;[Ljava/lang/String;)V
    .locals 7
    .param p0, "writer"    # Ljava/io/Writer;
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "bodyText"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 367
    const/4 v0, 0x0

    .line 368
    .local v0, "html":Z
    const/4 v4, 0x0

    aget-object v2, p2, v4

    .line 369
    .local v2, "text":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 370
    const/4 v4, 0x1

    aget-object v2, p2, v4

    .line 371
    const/4 v0, 0x1

    .line 373
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 374
    const-string/jumbo v4, "\r\n"

    invoke-virtual {p0, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 366
    :goto_0
    return-void

    .line 377
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "text/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v0, :cond_2

    const-string/jumbo v4, "html"

    :goto_1
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 378
    .local v1, "mimeType":Ljava/lang/String;
    const-string/jumbo v4, "Content-Type"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "; charset=utf-8"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v4, v5}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    const-string/jumbo v4, "Content-Transfer-Encoding"

    const-string/jumbo v5, "base64"

    invoke-static {p0, v4, v5}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    const-string/jumbo v4, "\r\n"

    invoke-virtual {p0, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 381
    const-string/jumbo v4, "UTF-8"

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 382
    .local v3, "textBytes":[B
    invoke-virtual {p0}, Ljava/io/Writer;->flush()V

    .line 383
    const/4 v4, 0x4

    invoke-static {v3, v4}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    .line 377
    .end local v1    # "mimeType":Ljava/lang/String;
    .end local v3    # "textBytes":[B
    :cond_2
    const-string/jumbo v4, "plain"

    goto :goto_1
.end method

.method public static writeTo(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;Ljava/io/OutputStream;ZZLjava/util/List;)V
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Lcom/android/emailcommon/provider/EmailContent$Message;
    .param p2, "out"    # Ljava/io/OutputStream;
    .param p3, "useSmartReply"    # Z
    .param p4, "sendBcc"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/emailcommon/provider/EmailContent$Message;",
            "Ljava/io/OutputStream;",
            "ZZ",
            "Ljava/util/List",
            "<",
            "Lcom/android/emailcommon/provider/EmailContent$Attachment;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 126
    .local p5, "attachments":Ljava/util/List;, "Ljava/util/List<Lcom/android/emailcommon/provider/EmailContent$Attachment;>;"
    if-nez p1, :cond_0

    .line 128
    return-void

    .line 131
    :cond_0
    new-instance v11, Ljava/io/BufferedOutputStream;

    const/16 v13, 0x400

    move-object/from16 v0, p2

    invoke-direct {v11, v0, v13}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 132
    .local v11, "stream":Ljava/io/OutputStream;
    new-instance v12, Ljava/io/OutputStreamWriter;

    invoke-direct {v12, v11}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 137
    .local v12, "writer":Ljava/io/Writer;
    sget-object v13, Lcom/android/emailcommon/internet/Rfc822Output;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v14, Ljava/util/Date;

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTimeStamp:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-direct {v14, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v13, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 138
    .local v6, "date":Ljava/lang/String;
    const-string/jumbo v13, "Date"

    invoke-static {v12, v13, v6}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string/jumbo v13, "Subject"

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    invoke-static {v12, v13, v14}, Lcom/android/emailcommon/internet/Rfc822Output;->writeEncodedHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string/jumbo v13, "Message-ID"

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageId:Ljava/lang/String;

    invoke-static {v12, v13, v14}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string/jumbo v13, "From"

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-static {v12, v13, v14}, Lcom/android/emailcommon/internet/Rfc822Output;->writeAddressHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string/jumbo v13, "To"

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-static {v12, v13, v14}, Lcom/android/emailcommon/internet/Rfc822Output;->writeAddressHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string/jumbo v13, "Cc"

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    invoke-static {v12, v13, v14}, Lcom/android/emailcommon/internet/Rfc822Output;->writeAddressHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    if-eqz p4, :cond_1

    .line 150
    const-string/jumbo v13, "Bcc"

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    invoke-static {v12, v13, v14}, Lcom/android/emailcommon/internet/Rfc822Output;->writeAddressHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :cond_1
    const-string/jumbo v13, "Reply-To"

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mReplyTo:Ljava/lang/String;

    invoke-static {v12, v13, v14}, Lcom/android/emailcommon/internet/Rfc822Output;->writeAddressHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string/jumbo v13, "MIME-Version"

    const-string/jumbo v14, "1.0"

    invoke-static {v12, v13, v14}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreBodyWithMessageId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Body;

    move-result-object v4

    .line 157
    .local v4, "body":Lcom/android/emailcommon/provider/EmailContent$Body;
    move/from16 v0, p3

    invoke-static {v4, v0}, Lcom/android/emailcommon/internet/Rfc822Output;->buildBodyText(Lcom/android/emailcommon/provider/EmailContent$Body;Z)[Ljava/lang/String;

    move-result-object v5

    .line 160
    .local v5, "bodyText":[Ljava/lang/String;
    if-nez p5, :cond_2

    .line 162
    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentsWithMessageId(Landroid/content/Context;J)[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v13

    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p5

    .line 165
    :cond_2
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_3

    const/4 v8, 0x1

    .line 168
    .local v8, "multipart":Z
    :goto_0
    if-nez v8, :cond_4

    .line 169
    invoke-static {v12, v11, v5}, Lcom/android/emailcommon/internet/Rfc822Output;->writeTextWithHeaders(Ljava/io/Writer;Ljava/io/OutputStream;[Ljava/lang/String;)V

    .line 207
    :goto_1
    invoke-virtual {v12}, Ljava/io/Writer;->flush()V

    .line 208
    invoke-virtual/range {p2 .. p2}, Ljava/io/OutputStream;->flush()V

    .line 125
    return-void

    .line 165
    .end local v8    # "multipart":Z
    :cond_3
    const/4 v8, 0x0

    .restart local v8    # "multipart":Z
    goto :goto_0

    .line 172
    :cond_4
    invoke-static {}, Lcom/android/emailcommon/internet/Rfc822Output;->getNextBoundary()Ljava/lang/String;

    move-result-object v9

    .line 173
    .local v9, "multipartBoundary":Ljava/lang/String;
    const-string/jumbo v10, "mixed"

    .line 176
    .local v10, "multipartType":Ljava/lang/String;
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_5

    .line 179
    const/4 v13, 0x0

    move-object/from16 v0, p5

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    iget v7, v13, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    .line 180
    .local v7, "flags":I
    and-int/lit8 v13, v7, 0x1

    if-eqz v13, :cond_5

    .line 181
    const-string/jumbo v10, "alternative"

    .line 185
    .end local v7    # "flags":I
    :cond_5
    const-string/jumbo v13, "Content-Type"

    .line 186
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "multipart/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "; boundary=\""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "\""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 185
    invoke-static {v12, v13, v14}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string/jumbo v13, "\r\n"

    invoke-virtual {v12, v13}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 191
    const/4 v13, 0x0

    aget-object v13, v5, v13

    if-nez v13, :cond_6

    const/4 v13, 0x1

    aget-object v13, v5, v13

    if-eqz v13, :cond_7

    .line 192
    :cond_6
    const/4 v13, 0x0

    invoke-static {v12, v9, v13}, Lcom/android/emailcommon/internet/Rfc822Output;->writeBoundary(Ljava/io/Writer;Ljava/lang/String;Z)V

    .line 193
    invoke-static {v12, v11, v5}, Lcom/android/emailcommon/internet/Rfc822Output;->writeTextWithHeaders(Ljava/io/Writer;Ljava/io/OutputStream;[Ljava/lang/String;)V

    .line 197
    :cond_7
    invoke-interface/range {p5 .. p5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "att$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .line 198
    .local v2, "att":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    const/4 v13, 0x0

    invoke-static {v12, v9, v13}, Lcom/android/emailcommon/internet/Rfc822Output;->writeBoundary(Ljava/io/Writer;Ljava/lang/String;Z)V

    .line 199
    move-object/from16 v0, p0

    invoke-static {v0, v12, v11, v2}, Lcom/android/emailcommon/internet/Rfc822Output;->writeOneAttachment(Landroid/content/Context;Ljava/io/Writer;Ljava/io/OutputStream;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V

    .line 200
    const-string/jumbo v13, "\r\n"

    invoke-virtual {v12, v13}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_2

    .line 204
    .end local v2    # "att":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :cond_8
    const/4 v13, 0x1

    invoke-static {v12, v9, v13}, Lcom/android/emailcommon/internet/Rfc822Output;->writeBoundary(Ljava/io/Writer;Ljava/lang/String;Z)V

    goto/16 :goto_1
.end method
