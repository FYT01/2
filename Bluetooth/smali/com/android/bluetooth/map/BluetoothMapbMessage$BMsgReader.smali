.class Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;
.super Ljava/lang/Object;
.source "BluetoothMapbMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMapbMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BMsgReader"
.end annotation


# instance fields
.field mInStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 338
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->mInStream:Ljava/io/InputStream;

    .line 336
    return-void
.end method

.method private getLineAsBytes()[B
    .locals 7

    .prologue
    const/16 v6, 0xd

    const/16 v5, 0xa

    const/4 v4, -0x1

    .line 379
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 381
    .local v1, "output":Ljava/io/ByteArrayOutputStream;
    :cond_0
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->mInStream:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v2

    .local v2, "readByte":I
    if-eq v2, v4, :cond_1

    .line 382
    if-ne v2, v6, :cond_4

    .line 383
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->mInStream:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v2

    if-eq v2, v4, :cond_2

    if-ne v2, v5, :cond_2

    .line 384
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 402
    :cond_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3

    .line 389
    :cond_2
    const/16 v3, 0xd

    :try_start_1
    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 396
    :cond_3
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 398
    .end local v2    # "readByte":I
    :catch_0
    move-exception v0

    .line 399
    .local v0, "e":Ljava/io/IOException;
    sget-object v3, Lcom/android/bluetooth/map/BluetoothMapbMessage;->TAG:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 400
    const/4 v3, 0x0

    return-object v3

    .line 391
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "readByte":I
    :cond_4
    if-ne v2, v5, :cond_3

    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0
.end method

.method private getLineTerminatorAsBytes()[B
    .locals 7

    .prologue
    const/16 v6, 0xa

    const/4 v5, -0x1

    const/16 v4, 0xd

    .line 344
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 346
    .local v1, "output":Ljava/io/ByteArrayOutputStream;
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->mInStream:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v2

    .local v2, "readByte":I
    if-eq v2, v5, :cond_0

    .line 347
    if-ne v2, v4, :cond_2

    .line 348
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->mInStream:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v2

    if-eq v2, v5, :cond_1

    if-ne v2, v6, :cond_1

    .line 349
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 350
    sget-object v3, Lcom/android/bluetooth/map/BluetoothMapbMessage;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "outputsize 0"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    const/16 v3, 0xd

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 352
    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3

    .line 356
    :cond_1
    const/16 v3, 0xd

    :try_start_1
    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 359
    :cond_2
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 361
    .end local v2    # "readByte":I
    :catch_0
    move-exception v0

    .line 362
    .local v0, "e":Ljava/io/IOException;
    sget-object v3, Lcom/android/bluetooth/map/BluetoothMapbMessage;->TAG:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 363
    const/4 v3, 0x0

    return-object v3
.end method


# virtual methods
.method public expect(Ljava/lang/String;)V
    .locals 4
    .param p1, "subString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 471
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->getLine()Ljava/lang/String;

    move-result-object v0

    .line 472
    .local v0, "line":Ljava/lang/String;
    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 473
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Line or substring is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 474
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 475
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Expected \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\" in: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 476
    const-string/jumbo v3, "\""

    .line 475
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 470
    :cond_2
    return-void
.end method

.method public expect(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "subString"    # Ljava/lang/String;
    .param p2, "subString2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 487
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->getLine()Ljava/lang/String;

    move-result-object v0

    .line 488
    .local v0, "line":Ljava/lang/String;
    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 489
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Line or substring is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 490
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 491
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Expected \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\" in: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 492
    const-string/jumbo v3, "\""

    .line 491
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 494
    :cond_2
    if-eqz v0, :cond_3

    if-nez p2, :cond_4

    .line 495
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Line or substring is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 496
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 497
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Expected \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\" in: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 498
    const-string/jumbo v3, "\""

    .line 497
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 486
    :cond_5
    return-void
.end method

.method public getDataBytes(I)[B
    .locals 7
    .param p1, "length"    # I

    .prologue
    const/4 v6, 0x0

    .line 509
    new-array v1, p1, [B

    .line 512
    .local v1, "data":[B
    const/4 v3, 0x0

    .line 513
    .local v3, "offset":I
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->mInStream:Ljava/io/InputStream;

    sub-int v5, p1, v3

    invoke-virtual {v4, v1, v3, v5}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 514
    .local v0, "bytesRead":I
    sub-int v4, p1, v3

    .line 513
    if-eq v0, v4, :cond_1

    .line 515
    const/4 v4, -0x1

    if-ne v0, v4, :cond_0

    .line 516
    return-object v6

    .line 517
    :cond_0
    add-int/2addr v3, v0

    goto :goto_0

    .line 519
    .end local v0    # "bytesRead":I
    :catch_0
    move-exception v2

    .line 520
    .local v2, "e":Ljava/io/IOException;
    sget-object v4, Lcom/android/bluetooth/map/BluetoothMapbMessage;->TAG:Ljava/lang/String;

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 521
    return-object v6

    .line 523
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "bytesRead":I
    :cond_1
    return-object v1
.end method

.method public getLastStringTerminator(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "terminator"    # Ljava/lang/String;

    .prologue
    .line 531
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 532
    .local v0, "dataStr":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->getLineTerminator()Ljava/lang/String;

    move-result-object v2

    .line 533
    .local v2, "lineCur":Ljava/lang/String;
    :goto_0
    if-eqz v2, :cond_2

    .line 534
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->getStringTerminator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 535
    .local v1, "firstOccur":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 536
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 537
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    const-string/jumbo v3, "\r\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    const-string/jumbo v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 542
    const-string/jumbo v3, "\r\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->getLineTerminator()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 551
    .end local v1    # "firstOccur":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getLine()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 433
    :try_start_0
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->getLineAsBytes()[B

    move-result-object v1

    .line 434
    .local v1, "line":[B
    if-nez v1, :cond_0

    .line 435
    return-object v4

    .line 436
    :cond_0
    array-length v2, v1

    if-nez v2, :cond_1

    .line 437
    return-object v4

    .line 439
    :cond_1
    new-instance v2, Ljava/lang/String;

    const-string/jumbo v3, "UTF-8"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 441
    .end local v1    # "line":[B
    :catch_0
    move-exception v0

    .line 442
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapbMessage;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 443
    return-object v4
.end method

.method public getLineEnforce()Ljava/lang/String;
    .locals 3

    .prologue
    .line 453
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->getLine()Ljava/lang/String;

    move-result-object v0

    .line 454
    .local v0, "line":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 455
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Bmessage too short"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 457
    :cond_0
    return-object v0
.end method

.method public getLineTerminator()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 412
    :try_start_0
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->getLineTerminatorAsBytes()[B

    move-result-object v1

    .line 413
    .local v1, "line":[B
    if-nez v1, :cond_0

    .line 414
    return-object v4

    .line 415
    :cond_0
    array-length v2, v1

    if-nez v2, :cond_1

    .line 416
    return-object v4

    .line 418
    :cond_1
    new-instance v2, Ljava/lang/String;

    const-string/jumbo v3, "UTF-8"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 420
    .end local v1    # "line":[B
    :catch_0
    move-exception v0

    .line 421
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapbMessage;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 422
    return-object v4
.end method

.method public getStringTerminator(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "terminator"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 559
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 560
    .local v0, "dataStr":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->getLineTerminator()Ljava/lang/String;

    move-result-object v1

    .line 561
    .local v1, "lineCur":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 569
    :cond_0
    if-eqz v1, :cond_3

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 570
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 562
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    const-string/jumbo v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 564
    const-string/jumbo v2, "\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    :cond_2
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->getLineTerminator()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 572
    :cond_3
    return-object v3
.end method
