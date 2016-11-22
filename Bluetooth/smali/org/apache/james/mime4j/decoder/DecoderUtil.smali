.class public Lorg/apache/james/mime4j/decoder/DecoderUtil;
.super Ljava/lang/Object;
.source "DecoderUtil.java"


# static fields
.field private static log:Lorg/apache/james/mime4j/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lorg/apache/james/mime4j/decoder/DecoderUtil;

    invoke-static {v0}, Lorg/apache/james/mime4j/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/james/mime4j/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/james/mime4j/Log;

    .line 39
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeB(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "encodedWord"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 113
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lorg/apache/james/mime4j/decoder/DecoderUtil;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public static decodeBase64(Ljava/lang/String;)[B
    .locals 6
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 78
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 81
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    const-string/jumbo v5, "US-ASCII"

    invoke-virtual {p0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 83
    .local v2, "bytes":[B
    new-instance v4, Lorg/apache/james/mime4j/decoder/Base64InputStream;

    .line 84
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 83
    invoke-direct {v4, v5}, Lorg/apache/james/mime4j/decoder/Base64InputStream;-><init>(Ljava/io/InputStream;)V

    .line 86
    .local v4, "is":Lorg/apache/james/mime4j/decoder/Base64InputStream;
    const/4 v0, 0x0

    .line 87
    .local v0, "b":I
    :goto_0
    invoke-virtual {v4}, Lorg/apache/james/mime4j/decoder/Base64InputStream;->read()I

    move-result v0

    const/4 v5, -0x1

    if-eq v0, v5, :cond_0

    .line 88
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 90
    .end local v0    # "b":I
    .end local v2    # "bytes":[B
    .end local v4    # "is":Lorg/apache/james/mime4j/decoder/Base64InputStream;
    :catch_0
    move-exception v3

    .line 94
    .local v3, "e":Ljava/io/IOException;
    sget-object v5, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/james/mime4j/Log;

    invoke-virtual {v5, v3}, Lorg/apache/james/mime4j/Log;->error(Ljava/lang/Object;)V

    .line 97
    .end local v3    # "e":Ljava/io/IOException;
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    return-object v5
.end method

.method public static decodeBaseQuotedPrintable(Ljava/lang/String;)[B
    .locals 6
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 49
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 52
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    const-string/jumbo v5, "US-ASCII"

    invoke-virtual {p0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 54
    .local v2, "bytes":[B
    new-instance v4, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;

    .line 55
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 54
    invoke-direct {v4, v5}, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;-><init>(Ljava/io/InputStream;)V

    .line 57
    .local v4, "is":Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;
    const/4 v0, 0x0

    .line 58
    .local v0, "b":I
    :goto_0
    invoke-virtual {v4}, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->read()I

    move-result v0

    const/4 v5, -0x1

    if-eq v0, v5, :cond_0

    .line 59
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 61
    .end local v0    # "b":I
    .end local v2    # "bytes":[B
    .end local v4    # "is":Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;
    :catch_0
    move-exception v3

    .line 65
    .local v3, "e":Ljava/io/IOException;
    sget-object v5, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/james/mime4j/Log;

    invoke-virtual {v5, v3}, Lorg/apache/james/mime4j/Log;->error(Ljava/lang/Object;)V

    .line 68
    .end local v3    # "e":Ljava/io/IOException;
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    return-object v5
.end method

.method public static decodeEncodedWord(Ljava/lang/String;II)Ljava/lang/String;
    .locals 12
    .param p0, "body"    # Ljava/lang/String;
    .param p1, "begin"    # I
    .param p2, "end"    # I

    .prologue
    const/16 v10, 0x3f

    const/4 v9, -0x1

    const/4 v11, 0x0

    .line 219
    add-int/lit8 v8, p1, 0x2

    invoke-virtual {p0, v10, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    .line 220
    .local v6, "qm1":I
    if-eq v6, v9, :cond_0

    add-int/lit8 v8, p2, -0x2

    if-ne v6, v8, :cond_1

    .line 221
    :cond_0
    return-object v11

    .line 223
    :cond_1
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {p0, v10, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    .line 224
    .local v7, "qm2":I
    if-eq v7, v9, :cond_2

    add-int/lit8 v8, p2, -0x2

    if-ne v7, v8, :cond_3

    .line 225
    :cond_2
    return-object v11

    .line 227
    :cond_3
    add-int/lit8 v8, p1, 0x2

    invoke-virtual {p0, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 228
    .local v5, "mimeCharset":Ljava/lang/String;
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {p0, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 229
    .local v4, "encoding":Ljava/lang/String;
    add-int/lit8 v8, v7, 0x1

    add-int/lit8 v9, p2, -0x2

    invoke-virtual {p0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 231
    .local v3, "encodedText":Ljava/lang/String;
    invoke-static {v5}, Lorg/apache/james/mime4j/util/CharsetUtil;->toJavaCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, "charset":Ljava/lang/String;
    if-nez v0, :cond_5

    .line 233
    sget-object v8, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/james/mime4j/Log;

    invoke-virtual {v8}, Lorg/apache/james/mime4j/Log;->isWarnEnabled()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 234
    sget-object v8, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/james/mime4j/Log;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "MIME charset \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\' in encoded word \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 235
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 234
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 235
    const-string/jumbo v10, "\' doesn\'t have a "

    .line 234
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 236
    const-string/jumbo v10, "corresponding Java charset"

    .line 234
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/apache/james/mime4j/Log;->warn(Ljava/lang/Object;)V

    .line 238
    :cond_4
    return-object v11

    .line 239
    :cond_5
    invoke-static {v0}, Lorg/apache/james/mime4j/util/CharsetUtil;->isDecodingSupported(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 240
    sget-object v8, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/james/mime4j/Log;

    invoke-virtual {v8}, Lorg/apache/james/mime4j/Log;->isWarnEnabled()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 241
    sget-object v8, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/james/mime4j/Log;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Current JDK doesn\'t support decoding of charset \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 242
    const-string/jumbo v10, "\' (MIME charset \'"

    .line 241
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 243
    const-string/jumbo v10, "\' in encoded word \'"

    .line 241
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 243
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 241
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 244
    const-string/jumbo v10, "\')"

    .line 241
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/apache/james/mime4j/Log;->warn(Ljava/lang/Object;)V

    .line 246
    :cond_6
    return-object v11

    .line 249
    :cond_7
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_9

    .line 250
    sget-object v8, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/james/mime4j/Log;

    invoke-virtual {v8}, Lorg/apache/james/mime4j/Log;->isWarnEnabled()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 251
    sget-object v8, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/james/mime4j/Log;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Missing encoded text in encoded word: \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 252
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 251
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 252
    const-string/jumbo v10, "\'"

    .line 251
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/apache/james/mime4j/Log;->warn(Ljava/lang/Object;)V

    .line 254
    :cond_8
    return-object v11

    .line 258
    :cond_9
    :try_start_0
    const-string/jumbo v8, "Q"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 259
    invoke-static {v3, v0}, Lorg/apache/james/mime4j/decoder/DecoderUtil;->decodeQ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 260
    :cond_a
    const-string/jumbo v8, "B"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 261
    invoke-static {v3, v0}, Lorg/apache/james/mime4j/decoder/DecoderUtil;->decodeB(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 263
    :cond_b
    sget-object v8, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/james/mime4j/Log;

    invoke-virtual {v8}, Lorg/apache/james/mime4j/Log;->isWarnEnabled()Z

    move-result v8

    if-eqz v8, :cond_c

    .line 264
    sget-object v8, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/james/mime4j/Log;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Warning: Unknown encoding in encoded word \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 265
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 264
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 265
    const-string/jumbo v10, "\'"

    .line 264
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/apache/james/mime4j/Log;->warn(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    :cond_c
    return-object v11

    .line 276
    :catch_0
    move-exception v2

    .line 277
    .local v2, "e":Ljava/lang/RuntimeException;
    sget-object v8, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/james/mime4j/Log;

    invoke-virtual {v8}, Lorg/apache/james/mime4j/Log;->isWarnEnabled()Z

    move-result v8

    if-eqz v8, :cond_d

    .line 278
    sget-object v8, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/james/mime4j/Log;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Could not decode encoded word \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 279
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 278
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 279
    const-string/jumbo v10, "\'"

    .line 278
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v2}, Lorg/apache/james/mime4j/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 281
    :cond_d
    return-object v11

    .line 269
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    .line 271
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v8, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/james/mime4j/Log;

    invoke-virtual {v8}, Lorg/apache/james/mime4j/Log;->isWarnEnabled()Z

    move-result v8

    if-eqz v8, :cond_e

    .line 272
    sget-object v8, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/james/mime4j/Log;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unsupported encoding in encoded word \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 273
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 272
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 273
    const-string/jumbo v10, "\'"

    .line 272
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v1}, Lorg/apache/james/mime4j/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 275
    :cond_e
    return-object v11
.end method

.method public static decodeEncodedWords(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p0, "body"    # Ljava/lang/String;

    .prologue
    const/16 v12, 0x3f

    const/4 v11, -0x1

    .line 160
    const-string/jumbo v9, "=?"

    invoke-virtual {p0, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-ne v9, v11, :cond_0

    .line 161
    return-object p0

    .line 164
    :cond_0
    const/4 v3, 0x0

    .line 165
    .local v3, "previousEnd":I
    const/4 v4, 0x0

    .line 167
    .local v4, "previousWasEncoded":Z
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    .local v7, "sb":Ljava/lang/StringBuilder;
    :goto_0
    const-string/jumbo v9, "=?"

    invoke-virtual {p0, v9, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 175
    .local v0, "begin":I
    if-ne v0, v11, :cond_2

    .line 209
    :cond_1
    if-nez v3, :cond_6

    .line 210
    return-object p0

    .line 178
    :cond_2
    add-int/lit8 v9, v0, 0x2

    invoke-virtual {p0, v12, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 179
    .local v5, "qm1":I
    if-eq v5, v11, :cond_1

    .line 182
    add-int/lit8 v9, v5, 0x1

    invoke-virtual {p0, v12, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    .line 183
    .local v6, "qm2":I
    if-eq v6, v11, :cond_1

    .line 186
    const-string/jumbo v9, "?="

    add-int/lit8 v10, v6, 0x1

    invoke-virtual {p0, v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 187
    .local v2, "end":I
    if-eq v2, v11, :cond_1

    .line 190
    add-int/lit8 v2, v2, 0x2

    .line 192
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 194
    .local v8, "sep":Ljava/lang/String;
    invoke-static {p0, v0, v2}, Lorg/apache/james/mime4j/decoder/DecoderUtil;->decodeEncodedWord(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    .line 195
    .local v1, "decoded":Ljava/lang/String;
    if-nez v1, :cond_3

    .line 196
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    :goto_1
    move v3, v2

    .line 206
    if-eqz v1, :cond_5

    const/4 v4, 0x1

    goto :goto_0

    .line 199
    :cond_3
    if-eqz v4, :cond_4

    invoke-static {v8}, Lorg/apache/james/mime4j/util/CharsetUtil;->isWhitespace(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 202
    :goto_2
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 200
    :cond_4
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 206
    :cond_5
    const/4 v4, 0x0

    goto :goto_0

    .line 212
    .end local v1    # "decoded":Ljava/lang/String;
    .end local v2    # "end":I
    .end local v5    # "qm1":I
    .end local v6    # "qm2":I
    .end local v8    # "sep":Ljava/lang/String;
    :cond_6
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9
.end method

.method public static decodeQ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "encodedWord"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 132
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 133
    .local v2, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 134
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 135
    .local v0, "c":C
    const/16 v3, 0x5f

    if-ne v0, v3, :cond_0

    .line 136
    const-string/jumbo v3, "=20"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 138
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 142
    .end local v0    # "c":C
    :cond_1
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/james/mime4j/decoder/DecoderUtil;->decodeBaseQuotedPrintable(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v3, v4, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v3
.end method
