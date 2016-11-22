.class public Lcom/android/bluetooth/map/BluetoothMapbMessageMime;
.super Lcom/android/bluetooth/map/BluetoothMapbMessage;
.source "BluetoothMapbMessageMime.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;
    }
.end annotation


# static fields
.field private static final D:Z = true

.field protected static TAG:Ljava/lang/String;

.field private static final V:Z


# instance fields
.field private bcc:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/Rfc822Token;",
            ">;"
        }
    .end annotation
.end field

.field private boundary:Ljava/lang/String;

.field private cc:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/Rfc822Token;",
            ">;"
        }
    .end annotation
.end field

.field private contentType:Ljava/lang/String;

.field private date:J

.field private encoding:Ljava/lang/String;

.field private from:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/Rfc822Token;",
            ">;"
        }
    .end annotation
.end field

.field private hasHeaders:Z

.field private includeAttachments:Z

.field private messageId:Ljava/lang/String;

.field parts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;",
            ">;"
        }
    .end annotation
.end field

.field private replyTo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/Rfc822Token;",
            ">;"
        }
    .end annotation
.end field

.field private sender:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/Rfc822Token;",
            ">;"
        }
    .end annotation
.end field

.field private subject:Ljava/lang/String;

.field private textOnly:Z

.field private to:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/Rfc822Token;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    const-string/jumbo v0, "BluetoothMap"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->V:Z

    .line 36
    const-string/jumbo v0, "BluetoothMapbMessageMime"

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->TAG:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 32
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapbMessage;-><init>()V

    .line 144
    sget v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->INVALID_VALUE:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->date:J

    .line 145
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->subject:Ljava/lang/String;

    .line 146
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->from:Ljava/util/ArrayList;

    .line 147
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->sender:Ljava/util/ArrayList;

    .line 148
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->to:Ljava/util/ArrayList;

    .line 149
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->cc:Ljava/util/ArrayList;

    .line 150
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->bcc:Ljava/util/ArrayList;

    .line 151
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->replyTo:Ljava/util/ArrayList;

    .line 152
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->messageId:Ljava/lang/String;

    .line 153
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->parts:Ljava/util/ArrayList;

    .line 154
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->contentType:Ljava/lang/String;

    .line 155
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->boundary:Ljava/lang/String;

    .line 156
    iput-boolean v3, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->textOnly:Z

    .line 158
    iput-boolean v3, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->hasHeaders:Z

    .line 159
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->encoding:Ljava/lang/String;

    .line 32
    return-void
.end method

.method private decodeBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 4
    .param p1, "body"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "charset"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 661
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "BASE64"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 662
    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    return-object v1

    .line 663
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "QUOTED-PRINTABLE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 664
    invoke-static {p1, p3}, Lcom/android/bluetooth/map/BluetoothMapUtils;->quotedPrintableToUtf8(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    return-object v1

    .line 669
    :cond_1
    :try_start_0
    const-string/jumbo v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 670
    :catch_0
    move-exception v0

    .line 674
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    return-object v3
.end method

.method private parseMime(Ljava/lang/String;)V
    .locals 11
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 687
    const/4 v5, 0x0

    .line 688
    .local v5, "remaining":Ljava/lang/String;
    const/4 v1, 0x0

    .line 689
    .local v1, "messageBody":Ljava/lang/String;
    const-string/jumbo v6, "\\r\\n[ \\\t]+"

    const-string/jumbo v7, ""

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 690
    const-string/jumbo v6, "\r\n\r\n"

    invoke-virtual {p1, v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 691
    .local v2, "messageParts":[Ljava/lang/String;
    array-length v6, v2

    if-eq v6, v8, :cond_2

    .line 693
    move-object v1, p1

    .line 707
    .end local v5    # "remaining":Ljava/lang/String;
    .local v1, "messageBody":Ljava/lang/String;
    :goto_0
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->boundary:Ljava/lang/String;

    if-nez v6, :cond_4

    .line 710
    invoke-direct {p0, v1}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->parseMimeBody(Ljava/lang/String;)V

    .line 711
    invoke-virtual {p0, v10}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->setTextOnly(Z)V

    .line 712
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->contentType:Ljava/lang/String;

    if-nez v6, :cond_0

    .line 713
    const-string/jumbo v6, "text/plain"

    iput-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->contentType:Ljava/lang/String;

    .line 714
    :cond_0
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->parts:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;

    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->contentType:Ljava/lang/String;

    iput-object v7, v6, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentType:Ljava/lang/String;

    .line 677
    :cond_1
    return-void

    .line 697
    .local v1, "messageBody":Ljava/lang/String;
    .restart local v5    # "remaining":Ljava/lang/String;
    :cond_2
    aget-object v6, v2, v9

    invoke-direct {p0, v6}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->parseMimeHeaders(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 699
    .local v5, "remaining":Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 700
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v2, v10

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 701
    .local v1, "messageBody":Ljava/lang/String;
    sget-object v6, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "parseMime remaining="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 703
    .local v1, "messageBody":Ljava/lang/String;
    :cond_3
    aget-object v1, v2, v10

    .local v1, "messageBody":Ljava/lang/String;
    goto :goto_0

    .line 718
    .end local v5    # "remaining":Ljava/lang/String;
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "--"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->boundary:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 719
    .local v3, "mimeParts":[Ljava/lang/String;
    sget-object v6, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mimePart count="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    array-length v6, v3

    add-int/lit8 v6, v6, -0x1

    if-ge v0, v6, :cond_1

    .line 722
    aget-object v4, v3, v0

    .line 723
    .local v4, "part":Ljava/lang/String;
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_5

    .line 724
    invoke-direct {p0, v4}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->parseMimePart(Ljava/lang/String;)V

    .line 721
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private parseMimeBody(Ljava/lang/String;)V
    .locals 3
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    .line 655
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->addMimePart()Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;

    move-result-object v0

    .line 656
    .local v0, "newPart":Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mCharset:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mCharsetName:Ljava/lang/String;

    .line 657
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->encoding:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mCharset:Ljava/lang/String;

    invoke-direct {p0, p1, v1, v2}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->decodeBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mData:[B

    .line 654
    return-void
.end method

.method private parseMimeHeaders(Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .param p1, "hdrPart"    # Ljava/lang/String;

    .prologue
    .line 495
    const-string/jumbo v13, "\r\n"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 496
    .local v7, "headers":[Ljava/lang/String;
    sget-object v13, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Header count="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    array-length v15, v7

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->hasHeaders:Z

    .line 500
    const/4 v8, 0x0

    .local v8, "i":I
    array-length v1, v7

    .local v1, "c":I
    :goto_0
    if-ge v8, v1, :cond_10

    .line 501
    aget-object v3, v7, v8

    .line 502
    .local v3, "header":Ljava/lang/String;
    sget-object v13, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Header["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "]: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, ""

    if-ne v13, v14, :cond_1

    .line 500
    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 510
    :cond_1
    const-string/jumbo v13, ":"

    const/4 v14, 0x2

    invoke-virtual {v3, v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 511
    .local v4, "headerParts":[Ljava/lang/String;
    array-length v13, v4

    const/4 v14, 0x2

    if-eq v13, v14, :cond_3

    .line 513
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 514
    .local v11, "remaining":Ljava/lang/StringBuilder;
    :goto_2
    if-ge v8, v1, :cond_2

    .line 515
    aget-object v13, v7, v8

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 517
    :cond_2
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    return-object v13

    .line 520
    .end local v11    # "remaining":Ljava/lang/StringBuilder;
    :cond_3
    const/4 v13, 0x0

    aget-object v13, v4, v13

    invoke-virtual {v13}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    .line 521
    .local v5, "headerType":Ljava/lang/String;
    const/4 v13, 0x1

    aget-object v13, v4, v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 527
    .local v6, "headerValue":Ljava/lang/String;
    const-string/jumbo v13, "FROM"

    invoke-virtual {v5, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 528
    invoke-static {v6}, Lcom/android/bluetooth/map/BluetoothMapUtils;->stripEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 529
    invoke-static {v6}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v12

    .line 530
    .local v12, "tokens":[Landroid/text/util/Rfc822Token;
    new-instance v13, Ljava/util/ArrayList;

    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->from:Ljava/util/ArrayList;

    goto :goto_1

    .line 531
    .end local v12    # "tokens":[Landroid/text/util/Rfc822Token;
    :cond_4
    const-string/jumbo v13, "TO"

    invoke-virtual {v5, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 532
    invoke-static {v6}, Lcom/android/bluetooth/map/BluetoothMapUtils;->stripEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 533
    invoke-static {v6}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v12

    .line 534
    .restart local v12    # "tokens":[Landroid/text/util/Rfc822Token;
    new-instance v13, Ljava/util/ArrayList;

    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->to:Ljava/util/ArrayList;

    goto :goto_1

    .line 535
    .end local v12    # "tokens":[Landroid/text/util/Rfc822Token;
    :cond_5
    const-string/jumbo v13, "CC"

    invoke-virtual {v5, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 536
    invoke-static {v6}, Lcom/android/bluetooth/map/BluetoothMapUtils;->stripEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 537
    invoke-static {v6}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v12

    .line 538
    .restart local v12    # "tokens":[Landroid/text/util/Rfc822Token;
    new-instance v13, Ljava/util/ArrayList;

    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->cc:Ljava/util/ArrayList;

    goto/16 :goto_1

    .line 539
    .end local v12    # "tokens":[Landroid/text/util/Rfc822Token;
    :cond_6
    const-string/jumbo v13, "BCC"

    invoke-virtual {v5, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 540
    invoke-static {v6}, Lcom/android/bluetooth/map/BluetoothMapUtils;->stripEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 541
    invoke-static {v6}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v12

    .line 542
    .restart local v12    # "tokens":[Landroid/text/util/Rfc822Token;
    new-instance v13, Ljava/util/ArrayList;

    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->bcc:Ljava/util/ArrayList;

    goto/16 :goto_1

    .line 543
    .end local v12    # "tokens":[Landroid/text/util/Rfc822Token;
    :cond_7
    const-string/jumbo v13, "REPLY-TO"

    invoke-virtual {v5, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 544
    invoke-static {v6}, Lcom/android/bluetooth/map/BluetoothMapUtils;->stripEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 545
    invoke-static {v6}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v12

    .line 546
    .restart local v12    # "tokens":[Landroid/text/util/Rfc822Token;
    new-instance v13, Ljava/util/ArrayList;

    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->replyTo:Ljava/util/ArrayList;

    goto/16 :goto_1

    .line 547
    .end local v12    # "tokens":[Landroid/text/util/Rfc822Token;
    :cond_8
    const-string/jumbo v13, "SUBJECT"

    invoke-virtual {v5, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 548
    invoke-static {v6}, Lcom/android/bluetooth/map/BluetoothMapUtils;->stripEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->subject:Ljava/lang/String;

    goto/16 :goto_1

    .line 549
    :cond_9
    const-string/jumbo v13, "MESSAGE-ID"

    invoke-virtual {v5, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 550
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->messageId:Ljava/lang/String;

    goto/16 :goto_1

    .line 551
    :cond_a
    const-string/jumbo v13, "DATE"

    invoke-virtual {v5, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 554
    const-string/jumbo v13, "MIME-VERSION"

    invoke-virtual {v5, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 556
    const-string/jumbo v13, "CONTENT-TYPE"

    invoke-virtual {v5, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 557
    const-string/jumbo v13, ";"

    invoke-virtual {v6, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 558
    .local v2, "contentTypeParts":[Ljava/lang/String;
    const/4 v13, 0x0

    aget-object v13, v2, v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->contentType:Ljava/lang/String;

    .line 560
    const/4 v9, 0x1

    .local v9, "j":I
    array-length v10, v2

    .local v10, "n":I
    :goto_3
    if-ge v9, v10, :cond_0

    .line 562
    aget-object v13, v2, v9

    const-string/jumbo v14, "boundary"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 563
    aget-object v13, v2, v9

    const-string/jumbo v14, "boundary[\\s]*="

    const/4 v15, 0x2

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    aget-object v13, v13, v14

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->boundary:Ljava/lang/String;

    .line 565
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->boundary:Ljava/lang/String;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x22

    if-ne v13, v14, :cond_b

    .line 566
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->boundary:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->boundary:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v13, v14}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x22

    if-ne v13, v14, :cond_b

    .line 567
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->boundary:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->boundary:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    const/4 v15, 0x1

    invoke-virtual {v13, v15, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->boundary:Ljava/lang/String;

    .line 568
    :cond_b
    sget-object v13, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Boundary tag="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->boundary:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    :cond_c
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 569
    :cond_d
    aget-object v13, v2, v9

    const-string/jumbo v14, "charset"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 570
    aget-object v13, v2, v9

    const-string/jumbo v14, "charset[\\s]*="

    const/4 v15, 0x2

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    aget-object v13, v13, v14

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mCharset:Ljava/lang/String;

    goto :goto_4

    .line 573
    .end local v2    # "contentTypeParts":[Ljava/lang/String;
    .end local v9    # "j":I
    .end local v10    # "n":I
    :cond_e
    const-string/jumbo v13, "CONTENT-TRANSFER-ENCODING"

    invoke-virtual {v5, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 574
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->encoding:Ljava/lang/String;

    goto/16 :goto_1

    .line 576
    :cond_f
    sget-object v13, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Skipping unknown header: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " ("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 579
    .end local v3    # "header":Ljava/lang/String;
    .end local v4    # "headerParts":[Ljava/lang/String;
    .end local v5    # "headerType":Ljava/lang/String;
    .end local v6    # "headerValue":Ljava/lang/String;
    :cond_10
    const/4 v13, 0x0

    return-object v13
.end method

.method private parseMimePart(Ljava/lang/String;)V
    .locals 20
    .param p1, "partStr"    # Ljava/lang/String;

    .prologue
    .line 583
    const-string/jumbo v15, "\r\n\r\n"

    const/16 v16, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v13

    .line 584
    .local v13, "parts":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->addMimePart()Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;

    move-result-object v11

    .line 585
    .local v11, "newPart":Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->encoding:Ljava/lang/String;

    .line 588
    .local v12, "partEncoding":Ljava/lang/String;
    const/4 v15, 0x0

    aget-object v15, v13, v15

    const-string/jumbo v16, "\r\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 589
    .local v8, "headers":[Ljava/lang/String;
    sget-object v15, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "parseMimePart: headers count="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    array-length v0, v8

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    array-length v15, v13

    const/16 v16, 0x2

    move/from16 v0, v16

    if-eq v15, v0, :cond_1

    .line 592
    move-object/from16 v2, p1

    .line 651
    .local v2, "body":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v15, v11, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mCharsetName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12, v15}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->decodeBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v15

    iput-object v15, v11, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mData:[B

    .line 582
    return-void

    .line 594
    .end local v2    # "body":Ljava/lang/String;
    :cond_1
    const/4 v15, 0x0

    array-length v0, v8

    move/from16 v16, v0

    :goto_1
    move/from16 v0, v16

    if-ge v15, v0, :cond_b

    aget-object v4, v8, v15

    .line 596
    .local v4, "header":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v17

    if-eqz v17, :cond_2

    .line 597
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->isEmpty()Z

    move-result v17

    .line 596
    if-nez v17, :cond_2

    .line 598
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v18, "--"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    .line 596
    if-eqz v17, :cond_3

    .line 594
    :cond_2
    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 601
    :cond_3
    const-string/jumbo v17, ":"

    const/16 v18, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 602
    .local v5, "headerParts":[Ljava/lang/String;
    array-length v0, v5

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_4

    .line 603
    sget-object v17, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->TAG:Ljava/lang/String;

    const-string/jumbo v18, "part-Header not formatted correctly: "

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 606
    :cond_4
    sget-object v17, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "parseMimePart: header="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    const/16 v17, 0x0

    aget-object v17, v5, v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    .line 608
    .local v6, "headerType":Ljava/lang/String;
    const/16 v17, 0x1

    aget-object v17, v5, v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 609
    .local v7, "headerValue":Ljava/lang/String;
    const-string/jumbo v17, "CONTENT-TYPE"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 610
    const-string/jumbo v17, ";"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 611
    .local v3, "contentTypeParts":[Ljava/lang/String;
    const/16 v17, 0x0

    aget-object v17, v3, v17

    move-object/from16 v0, v17

    iput-object v0, v11, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentType:Ljava/lang/String;

    .line 613
    const/4 v9, 0x1

    .local v9, "j":I
    array-length v10, v3

    .local v10, "n":I
    :goto_3
    if-ge v9, v10, :cond_2

    .line 615
    aget-object v17, v3, v9

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    .line 616
    .local v14, "value":Ljava/lang/String;
    const-string/jumbo v17, "charset"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 617
    const-string/jumbo v17, "charset[\\s]*="

    const/16 v18, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    aget-object v17, v17, v18

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v11, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mCharsetName:Ljava/lang/String;

    .line 613
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 621
    .end local v3    # "contentTypeParts":[Ljava/lang/String;
    .end local v9    # "j":I
    .end local v10    # "n":I
    .end local v14    # "value":Ljava/lang/String;
    :cond_6
    const-string/jumbo v17, "CONTENT-LOCATION"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 623
    iput-object v7, v11, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentLocation:Ljava/lang/String;

    .line 624
    iput-object v7, v11, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mPartName:Ljava/lang/String;

    goto/16 :goto_2

    .line 626
    :cond_7
    const-string/jumbo v17, "CONTENT-TRANSFER-ENCODING"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 627
    move-object v12, v7

    goto/16 :goto_2

    .line 629
    :cond_8
    const-string/jumbo v17, "CONTENT-ID"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 631
    iput-object v7, v11, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentId:Ljava/lang/String;

    goto/16 :goto_2

    .line 633
    :cond_9
    const-string/jumbo v17, "CONTENT-DISPOSITION"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 635
    iput-object v7, v11, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentDisposition:Ljava/lang/String;

    goto/16 :goto_2

    .line 638
    :cond_a
    sget-object v17, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Skipping unknown part-header: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 639
    const-string/jumbo v19, " ("

    .line 638
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 639
    const-string/jumbo v19, ")"

    .line 638
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 642
    .end local v4    # "header":Ljava/lang/String;
    .end local v5    # "headerParts":[Ljava/lang/String;
    .end local v6    # "headerType":Ljava/lang/String;
    .end local v7    # "headerValue":Ljava/lang/String;
    :cond_b
    const/4 v15, 0x1

    aget-object v2, v13, v15

    .line 643
    .restart local v2    # "body":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v15

    const/16 v16, 0x2

    move/from16 v0, v16

    if-le v15, v0, :cond_0

    .line 644
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v15, v15, -0x2

    invoke-virtual {v2, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v16, 0xd

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 645
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v15, v15, -0x2

    invoke-virtual {v2, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v16, 0xa

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 646
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v15, v15, -0x2

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v0, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0
.end method


# virtual methods
.method public addBcc(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 264
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->bcc:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 265
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->bcc:Ljava/util/ArrayList;

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->bcc:Ljava/util/ArrayList;

    new-instance v1, Landroid/text/util/Rfc822Token;

    invoke-direct {v1, p1, p2, v2}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    return-void
.end method

.method public addCc(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 253
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->cc:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 254
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->cc:Ljava/util/ArrayList;

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->cc:Ljava/util/ArrayList;

    new-instance v1, Landroid/text/util/Rfc822Token;

    invoke-direct {v1, p1, p2, v2}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    return-void
.end method

.method public addFrom(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 220
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->from:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->from:Ljava/util/ArrayList;

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->from:Ljava/util/ArrayList;

    new-instance v1, Landroid/text/util/Rfc822Token;

    invoke-direct {v1, p1, p2, v2}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    return-void
.end method

.method public addMimePart()Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;
    .locals 2

    .prologue
    .line 190
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->parts:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 191
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->parts:Ljava/util/ArrayList;

    .line 192
    :cond_0
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;

    invoke-direct {v0}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;-><init>()V

    .line 193
    .local v0, "newPart":Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->parts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    return-object v0
.end method

.method public addReplyTo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 275
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->replyTo:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 276
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->replyTo:Ljava/util/ArrayList;

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->replyTo:Ljava/util/ArrayList;

    new-instance v1, Landroid/text/util/Rfc822Token;

    invoke-direct {v1, p1, p2, v2}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    return-void
.end method

.method public addSender(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 231
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->sender:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 232
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->sender:Ljava/util/ArrayList;

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->sender:Ljava/util/ArrayList;

    new-instance v1, Landroid/text/util/Rfc822Token;

    invoke-direct {v1, p1, p2, v2}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    return-void
.end method

.method public addTo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 242
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->to:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 243
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->to:Ljava/util/ArrayList;

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->to:Ljava/util/ArrayList;

    new-instance v1, Landroid/text/util/Rfc822Token;

    invoke-direct {v1, p1, p2, v2}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    return-void
.end method

.method public encode()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 746
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->encodeMime()[B

    move-result-object v0

    return-object v0
.end method

.method public encodeHeaderAddresses(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 6
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "headerName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/Rfc822Token;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 340
    .local p3, "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/util/Rfc822Token;>;"
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    add-int/lit8 v2, v4, 0x0

    .line 341
    .local v2, "lineLength":I
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "address$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/util/Rfc822Token;

    .line 343
    .local v0, "address":Landroid/text/util/Rfc822Token;
    invoke-virtual {v0}, Landroid/text/util/Rfc822Token;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    add-int/lit8 v3, v4, 0x1

    .line 345
    .local v3, "partLength":I
    add-int v4, v2, v3

    const/16 v5, 0x3e6

    if-lt v4, v5, :cond_0

    .line 347
    const-string/jumbo v4, "\r\n "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    const/4 v2, 0x0

    .line 350
    :cond_0
    invoke-virtual {v0}, Landroid/text/util/Rfc822Token;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    add-int/2addr v2, v3

    goto :goto_0

    .line 353
    .end local v0    # "address":Landroid/text/util/Rfc822Token;
    .end local v3    # "partLength":I
    :cond_1
    const-string/jumbo v4, "\r\n"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    return-void
.end method

.method public encodeHeaders(Ljava/lang/StringBuilder;)V
    .locals 4
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 367
    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->date:J

    sget v2, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->INVALID_VALUE:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 368
    const-string/jumbo v0, "Date: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->getDateString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->subject:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 383
    const-string/jumbo v0, "Subject: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->subject:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->from:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 385
    const-string/jumbo v0, "From: \r\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->from:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 387
    const-string/jumbo v0, "From: "

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->from:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->encodeHeaderAddresses(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 388
    :cond_3
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->sender:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 389
    const-string/jumbo v0, "Sender: "

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->sender:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->encodeHeaderAddresses(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 393
    :cond_4
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->to:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->cc:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->bcc:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    .line 394
    const-string/jumbo v0, "To:  undisclosed-recipients:;\r\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    :cond_5
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->to:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    .line 396
    const-string/jumbo v0, "To: "

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->to:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->encodeHeaderAddresses(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 397
    :cond_6
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->cc:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    .line 398
    const-string/jumbo v0, "Cc: "

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->cc:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->encodeHeaderAddresses(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 399
    :cond_7
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->bcc:Ljava/util/ArrayList;

    if-eqz v0, :cond_8

    .line 400
    const-string/jumbo v0, "Bcc: "

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->bcc:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->encodeHeaderAddresses(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 401
    :cond_8
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->replyTo:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    .line 402
    const-string/jumbo v0, "Reply-To: "

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->replyTo:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->encodeHeaderAddresses(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 403
    :cond_9
    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->includeAttachments:Z

    if-eqz v0, :cond_b

    .line 405
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->messageId:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 406
    const-string/jumbo v0, "Message-Id: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->messageId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    :cond_a
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->contentType:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 408
    const-string/jumbo v0, "Content-Type: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 409
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->contentType:Ljava/lang/String;

    .line 408
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 409
    const-string/jumbo v1, "; boundary="

    .line 408
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 409
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->getBoundary()Ljava/lang/String;

    move-result-object v1

    .line 408
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 409
    const-string/jumbo v1, "\r\n"

    .line 408
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    :cond_b
    const-string/jumbo v0, "\r\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    return-void
.end method

.method public encodeMime()[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 451
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 452
    .local v0, "bodyFragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 453
    .local v5, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 456
    .local v1, "count":I
    const-string/jumbo v7, "8BIT"

    iput-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->encoding:Ljava/lang/String;

    .line 458
    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->encodeHeaders(Ljava/lang/StringBuilder;)V

    .line 459
    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->parts:Ljava/util/ArrayList;

    if-eqz v7, :cond_2

    .line 460
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->getIncludeAttachments()Z

    move-result v7

    if-nez v7, :cond_0

    .line 461
    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->parts:Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "part$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;

    .line 464
    .local v3, "part":Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;
    invoke-virtual {v3, v5}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->encodePlainText(Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 467
    .end local v3    # "part":Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;
    .end local v4    # "part$iterator":Ljava/util/Iterator;
    :cond_0
    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->parts:Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "part$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;

    .line 468
    .restart local v3    # "part":Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;
    add-int/lit8 v1, v1, 0x1

    .line 469
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->getBoundary()Ljava/lang/String;

    move-result-object v9

    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->parts:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne v1, v7, :cond_1

    const/4 v7, 0x1

    :goto_2
    invoke-virtual {v3, v5, v9, v7}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->encode(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_1
    move v7, v8

    goto :goto_2

    .line 474
    .end local v3    # "part":Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;
    .end local v4    # "part$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 476
    .local v2, "mimeBody":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 478
    const-string/jumbo v7, "END:MSG"

    const-string/jumbo v8, "/END\\:MSG"

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 479
    .local v6, "tmpBody":Ljava/lang/String;
    const-string/jumbo v7, "UTF-8"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 484
    .end local v6    # "tmpBody":Ljava/lang/String;
    :goto_3
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->encodeGeneric(Ljava/util/ArrayList;)[B

    move-result-object v7

    return-object v7

    .line 481
    :cond_3
    new-array v7, v8, [B

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method public getBcc()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/Rfc822Token;",
            ">;"
        }
    .end annotation

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->bcc:Ljava/util/ArrayList;

    return-object v0
.end method

.method getBoundary()Ljava/lang/String;
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->boundary:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "--=_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->boundary:Ljava/lang/String;

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->boundary:Ljava/lang/String;

    return-object v0
.end method

.method public getCc()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/Rfc822Token;",
            ">;"
        }
    .end annotation

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->cc:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()J
    .locals 2

    .prologue
    .line 202
    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->date:J

    return-wide v0
.end method

.method public getDateString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 197
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "EEE, dd MMM yyyy HH:mm:ss Z"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 198
    .local v1, "format":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    iget-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->date:J

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 199
    .local v0, "dateObj":Ljava/util/Date;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getFrom()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/Rfc822Token;",
            ">;"
        }
    .end annotation

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->from:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getIncludeAttachments()Z
    .locals 1

    .prologue
    .line 301
    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->includeAttachments:Z

    return v0
.end method

.method public getMessageAsText()Ljava/lang/String;
    .locals 5

    .prologue
    .line 176
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    .local v2, "sb":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->subject:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->subject:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 180
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->parts:Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    .line 181
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->parts:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "part$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;

    .line 182
    .local v0, "part":Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;
    iget-object v3, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentType:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "TEXT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 183
    new-instance v3, Ljava/lang/String;

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mData:[B

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 178
    .end local v0    # "part":Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;
    .end local v1    # "part$iterator":Ljava/util/Iterator;
    :cond_2
    const-string/jumbo v3, "<Sub:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->subject:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 187
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getMessageId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->messageId:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeParts()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;",
            ">;"
        }
    .end annotation

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->parts:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getReplyTo()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/Rfc822Token;",
            ">;"
        }
    .end annotation

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->replyTo:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSender()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/Rfc822Token;",
            ">;"
        }
    .end annotation

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->sender:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSize()I
    .locals 4

    .prologue
    .line 317
    const/4 v0, 0x0

    .line 318
    .local v0, "message_size":I
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->parts:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 319
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->parts:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "part$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;

    .line 320
    .local v1, "part":Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;
    iget-object v3, v1, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mData:[B

    array-length v3, v3

    add-int/2addr v0, v3

    goto :goto_0

    .line 323
    .end local v1    # "part":Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;
    .end local v2    # "part$iterator":Ljava/util/Iterator;
    :cond_0
    return v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->subject:Ljava/lang/String;

    return-object v0
.end method

.method public getTextOnly()Z
    .locals 1

    .prologue
    .line 295
    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->textOnly:Z

    return v0
.end method

.method public getTo()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/Rfc822Token;",
            ">;"
        }
    .end annotation

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->to:Ljava/util/ArrayList;

    return-object v0
.end method

.method public parseMsgInit()V
    .locals 0

    .prologue
    .line 739
    return-void
.end method

.method public parseMsgPart(Ljava/lang/String;)V
    .locals 0
    .param p1, "msgPart"    # Ljava/lang/String;

    .prologue
    .line 734
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->parseMime(Ljava/lang/String;)V

    .line 733
    return-void
.end method

.method public setBcc(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/Rfc822Token;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 261
    .local p1, "bcc":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/util/Rfc822Token;>;"
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->bcc:Ljava/util/ArrayList;

    .line 260
    return-void
.end method

.method public setCc(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/Rfc822Token;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 250
    .local p1, "cc":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/util/Rfc822Token;>;"
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->cc:Ljava/util/ArrayList;

    .line 249
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentType"    # Ljava/lang/String;

    .prologue
    .line 286
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->contentType:Ljava/lang/String;

    .line 285
    return-void
.end method

.method public setDate(J)V
    .locals 1
    .param p1, "date"    # J

    .prologue
    .line 205
    iput-wide p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->date:J

    .line 204
    return-void
.end method

.method public setFrom(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/Rfc822Token;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 217
    .local p1, "from":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/util/Rfc822Token;>;"
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->from:Ljava/util/ArrayList;

    .line 216
    return-void
.end method

.method public setIncludeAttachments(Z)V
    .locals 0
    .param p1, "includeAttachments"    # Z

    .prologue
    .line 298
    iput-boolean p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->includeAttachments:Z

    .line 297
    return-void
.end method

.method public setMessageId(Ljava/lang/String;)V
    .locals 0
    .param p1, "messageId"    # Ljava/lang/String;

    .prologue
    .line 280
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->messageId:Ljava/lang/String;

    .line 279
    return-void
.end method

.method public setReplyTo(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/Rfc822Token;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 272
    .local p1, "replyTo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/util/Rfc822Token;>;"
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->replyTo:Ljava/util/ArrayList;

    .line 271
    return-void
.end method

.method public setSender(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/Rfc822Token;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 228
    .local p1, "sender":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/util/Rfc822Token;>;"
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->sender:Ljava/util/ArrayList;

    .line 227
    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 0
    .param p1, "subject"    # Ljava/lang/String;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->subject:Ljava/lang/String;

    .line 210
    return-void
.end method

.method public setTextOnly(Z)V
    .locals 0
    .param p1, "textOnly"    # Z

    .prologue
    .line 292
    iput-boolean p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->textOnly:Z

    .line 291
    return-void
.end method

.method public setTo(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/Rfc822Token;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 239
    .local p1, "to":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/util/Rfc822Token;>;"
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->to:Ljava/util/ArrayList;

    .line 238
    return-void
.end method

.method public updateCharset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 304
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->parts:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 305
    iput-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mCharset:Ljava/lang/String;

    .line 306
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->parts:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "part$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;

    .line 307
    .local v0, "part":Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;
    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentType:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 308
    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "TEXT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 307
    if-eqz v2, :cond_0

    .line 309
    const-string/jumbo v2, "UTF-8"

    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mCharset:Ljava/lang/String;

    .line 310
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->V:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Charset set to UTF-8"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    .end local v0    # "part":Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;
    .end local v1    # "part$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method
