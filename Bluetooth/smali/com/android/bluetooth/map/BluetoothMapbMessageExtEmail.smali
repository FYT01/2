.class public Lcom/android/bluetooth/map/BluetoothMapbMessageExtEmail;
.super Lcom/android/bluetooth/map/BluetoothMapbMessageMime;
.source "BluetoothMapbMessageExtEmail.java"


# static fields
.field private static final CRLF:Ljava/lang/String; = "\r\n"

.field private static final D:Z = true

.field protected static TAG:Ljava/lang/String;

.field private static final V:Z


# instance fields
.field private mEmailBody:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    const-string/jumbo v0, "BluetoothMapbMessageExtEmail"

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapbMessageExtEmail;->TAG:Ljava/lang/String;

    .line 42
    const-string/jumbo v0, "BluetoothMap"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/map/BluetoothMapbMessageExtEmail;->V:Z

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageExtEmail;->mEmailBody:Ljava/lang/String;

    .line 38
    return-void
.end method

.method private static parseBoundaryEmail(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "body"    # Ljava/lang/String;

    .prologue
    .line 73
    const-string/jumbo v3, "boundary=\""

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 74
    .local v2, "pos":I
    if-lez v2, :cond_0

    .line 75
    const-string/jumbo v3, "boundary=\""

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int v0, v2, v3

    .line 76
    .local v0, "beginVersionPos":I
    const-string/jumbo v3, "\""

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 77
    .local v1, "endVersionPos":I
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 79
    .end local v0    # "beginVersionPos":I
    .end local v1    # "endVersionPos":I
    :cond_0
    const/4 v3, 0x0

    return-object v3
.end method

.method private static parseContentTypeEmail(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "bmsg"    # Ljava/lang/String;
    .param p1, "boundary"    # Ljava/lang/String;

    .prologue
    .line 57
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "--"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 58
    .local v3, "pos1":I
    const-string/jumbo v4, "Content-Type:"

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 59
    .local v2, "pos":I
    if-lez v2, :cond_0

    .line 61
    const-string/jumbo v4, "Content-Type:"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int v0, v2, v4

    .line 62
    .local v0, "beginVersionPos":I
    const-string/jumbo v4, "\r\n"

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 63
    .local v1, "endVersionPos":I
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 67
    .end local v0    # "beginVersionPos":I
    .end local v1    # "endVersionPos":I
    :cond_0
    const/4 v4, 0x0

    return-object v4
.end method

.method private static parseSubjectEmail(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "body"    # Ljava/lang/String;

    .prologue
    .line 84
    sget-object v3, Lcom/android/bluetooth/map/BluetoothMapbMessageExtEmail;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "parseSubjectEmail"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const-string/jumbo v3, "Subject:"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 86
    .local v2, "pos":I
    if-lez v2, :cond_0

    .line 87
    const-string/jumbo v3, "Subject:"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int v0, v2, v3

    .line 88
    .local v0, "beginVersionPos":I
    const-string/jumbo v3, "\n"

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 89
    .local v1, "endVersionPos":I
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 91
    .end local v0    # "beginVersionPos":I
    .end local v1    # "endVersionPos":I
    :cond_0
    const-string/jumbo v3, ""

    return-object v3
.end method


# virtual methods
.method public encodeEmail()[B
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 203
    sget-boolean v10, Lcom/android/bluetooth/map/BluetoothMapbMessageExtEmail;->V:Z

    if-eqz v10, :cond_0

    sget-object v10, Lcom/android/bluetooth/map/BluetoothMapbMessageExtEmail;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "Inside encodeEmail "

    invoke-static {v10, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 205
    .local v0, "bodyFragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    .local v8, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 208
    .local v2, "count":I
    new-instance v6, Ljava/util/Random;

    invoke-direct {v6}, Ljava/util/Random;-><init>()V

    .line 209
    .local v6, "randomGenerator":Ljava/util/Random;
    const/16 v10, 0x3e8

    invoke-virtual {v6, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    .line 210
    .local v7, "randomInt":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "MessageBoundary."

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 211
    .local v1, "boundary":Ljava/lang/String;
    invoke-virtual {p0, v8}, Lcom/android/bluetooth/map/BluetoothMapbMessageExtEmail;->encodeHeaders(Ljava/lang/StringBuilder;)V

    .line 212
    const-string/jumbo v10, "Mime-Version: 1.0"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v12, "\r\n"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    const-string/jumbo v10, "Content-Type: multipart/mixed; boundary=\""

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v12, "\""

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 215
    const-string/jumbo v12, "\r\n"

    .line 213
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    const-string/jumbo v10, "Content-Transfer-Encoding: 8bit"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v12, "\r\n"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 217
    const-string/jumbo v12, "\r\n"

    .line 216
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    const-string/jumbo v10, "MIME Message"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v12, "\r\n"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    const-string/jumbo v10, "--"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v12, "\r\n"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    sget-object v10, Lcom/android/bluetooth/map/BluetoothMapbMessageExtEmail;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "after encode header sb is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v10, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageExtEmail;->parts:Ljava/util/ArrayList;

    if-eqz v10, :cond_3

    .line 222
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapbMessageExtEmail;->getIncludeAttachments()Z

    move-result v10

    if-nez v10, :cond_1

    .line 223
    iget-object v10, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageExtEmail;->parts:Ljava/util/ArrayList;

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "part$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;

    .line 226
    .local v4, "part":Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;
    invoke-virtual {v4, v8}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->encodePlainText(Ljava/lang/StringBuilder;)V

    .line 227
    const-string/jumbo v10, "--"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v12, "--"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v12, "\r\n"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 230
    .end local v4    # "part":Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;
    .end local v5    # "part$iterator":Ljava/util/Iterator;
    :cond_1
    iget-object v10, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageExtEmail;->parts:Ljava/util/ArrayList;

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5    # "part$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;

    .line 231
    .restart local v4    # "part":Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;
    add-int/lit8 v2, v2, 0x1

    .line 232
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapbMessageExtEmail;->getBoundary()Ljava/lang/String;

    move-result-object v12

    iget-object v10, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageExtEmail;->parts:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ne v2, v10, :cond_2

    const/4 v10, 0x1

    :goto_2
    invoke-virtual {v4, v8, v12, v10}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->encode(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_2
    move v10, v11

    goto :goto_2

    .line 236
    .end local v4    # "part":Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;
    .end local v5    # "part$iterator":Ljava/util/Iterator;
    :cond_3
    sget-object v10, Lcom/android/bluetooth/map/BluetoothMapbMessageExtEmail;->TAG:Ljava/lang/String;

    const-string/jumbo v12, " parts is null."

    invoke-static {v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_4
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 240
    .local v3, "emailBody":Ljava/lang/String;
    sget-boolean v10, Lcom/android/bluetooth/map/BluetoothMapbMessageExtEmail;->V:Z

    if-eqz v10, :cond_5

    sget-object v10, Lcom/android/bluetooth/map/BluetoothMapbMessageExtEmail;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "emailBody is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_5
    if-eqz v3, :cond_6

    .line 244
    const-string/jumbo v10, "END:MSG"

    const-string/jumbo v11, "/END\\:MSG"

    invoke-virtual {v3, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 245
    .local v9, "tmpBody":Ljava/lang/String;
    const-string/jumbo v10, "UTF-8"

    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    .end local v9    # "tmpBody":Ljava/lang/String;
    :goto_3
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/map/BluetoothMapbMessageExtEmail;->encodeGeneric(Ljava/util/ArrayList;)[B

    move-result-object v10

    return-object v10

    .line 247
    :cond_6
    sget-object v10, Lcom/android/bluetooth/map/BluetoothMapbMessageExtEmail;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "Email has no body - this should not be possible"

    invoke-static {v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    new-array v10, v11, [B

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method public getEmailBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageExtEmail;->mEmailBody:Ljava/lang/String;

    return-object v0
.end method

.method public parseBodyEmail(Ljava/lang/String;)V
    .locals 20
    .param p1, "body"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 96
    sget-object v18, Lcom/android/bluetooth/map/BluetoothMapbMessageExtEmail;->TAG:Ljava/lang/String;

    const-string/jumbo v19, "parseBodyEmail"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const/4 v4, -0x1

    .line 98
    .local v4, "beginVersionPos":I
    const/16 v17, 0x0

    .line 99
    .local v17, "rfc822Flag":I
    const/4 v12, 0x0

    .line 100
    .local v12, "mimeFlag":I
    const/4 v5, -0x1

    .line 102
    .local v5, "beginVersionPos1":I
    const/4 v15, 0x0

    .line 104
    .local v15, "pos1":I
    invoke-static/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapbMessageExtEmail;->parseSubjectEmail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapbMessageExtEmail;->setSubject(Ljava/lang/String;)V

    .line 106
    invoke-static/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapbMessageExtEmail;->parseBoundaryEmail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 107
    .local v6, "boundary":Ljava/lang/String;
    if-eqz v6, :cond_0

    const-string/jumbo v18, ""

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 111
    :cond_0
    const-string/jumbo v18, "Date:"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    .line 112
    const/4 v12, 0x0

    .line 114
    :goto_0
    const-string/jumbo v18, "Content-Type"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v7

    .line 115
    .local v7, "contentIndex":I
    if-lez v7, :cond_1

    .line 116
    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/android/bluetooth/map/BluetoothMapbMessageExtEmail;->parseContentTypeEmail(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 117
    .local v8, "contentType":Ljava/lang/String;
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v19, "message/rfc822"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 118
    const/16 v17, 0x1

    .line 121
    .end local v8    # "contentType":Ljava/lang/String;
    :cond_1
    const-string/jumbo v18, "\r\n"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v18

    const-string/jumbo v19, "\r\n"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    add-int v14, v18, v19

    .line 122
    .local v14, "pos":I
    :goto_1
    if-lez v14, :cond_2

    .line 123
    const-string/jumbo v18, "\r\n"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 124
    const-string/jumbo v18, "\r\n"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    add-int v4, v14, v18

    .line 150
    :cond_2
    :goto_2
    if-lez v4, :cond_3

    .line 152
    if-nez v17, :cond_b

    .line 153
    if-nez v12, :cond_a

    .line 155
    const-string/jumbo v18, "END:MSG"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    .line 156
    .local v11, "endVersionPos":I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v11, v0, :cond_9

    .line 157
    const-string/jumbo v18, "\r\n"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    sub-int v18, v11, v18

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapbMessageExtEmail;->setEmailBody(Ljava/lang/String;)V

    .line 198
    .end local v11    # "endVersionPos":I
    :cond_3
    :goto_3
    sget-object v18, Lcom/android/bluetooth/map/BluetoothMapbMessageExtEmail;->TAG:Ljava/lang/String;

    const-string/jumbo v19, "fetch body Email NULL:"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    return-void

    .line 108
    .end local v7    # "contentIndex":I
    .end local v14    # "pos":I
    :cond_4
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "--"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    .line 109
    const/4 v12, 0x1

    .line 107
    goto/16 :goto_0

    .line 127
    .restart local v7    # "contentIndex":I
    .restart local v14    # "pos":I
    :cond_5
    const-string/jumbo v18, "\r\n"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v13

    .line 128
    .local v13, "next":I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v13, v0, :cond_8

    .line 131
    const-string/jumbo v18, "BEGIN:MSG"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 132
    .local v3, "beginMsg":I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v3, v0, :cond_6

    .line 133
    new-instance v18, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v19, "Ill-formatted bMessage, no BEGIN:MSG"

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 136
    :cond_6
    const-string/jumbo v18, "\r\n([/]*)/END\\:MSG"

    const-string/jumbo v19, "\r\n$1END:MSG"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 138
    const-string/jumbo v18, "END:MSG"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    .line 139
    .local v10, "endMsg":I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v10, v0, :cond_7

    .line 140
    new-instance v18, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v19, "Ill-formatted bMessage, no END:MSG"

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 142
    :cond_7
    const-string/jumbo v18, "BEGIN:MSG"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    add-int v18, v18, v3

    .line 143
    const-string/jumbo v19, "\r\n"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    sub-int v19, v10, v19

    .line 142
    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapbMessageExtEmail;->setEmailBody(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 146
    .end local v3    # "beginMsg":I
    .end local v10    # "endMsg":I
    :cond_8
    const-string/jumbo v18, "\r\n"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    add-int v14, v13, v18

    goto/16 :goto_1

    .line 159
    .end local v13    # "next":I
    .restart local v11    # "endVersionPos":I
    :cond_9
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapbMessageExtEmail;->setEmailBody(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 162
    .end local v11    # "endVersionPos":I
    :cond_a
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "--"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "--"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v18

    .line 163
    const-string/jumbo v19, "\r\n"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    .line 162
    sub-int v11, v18, v19

    .line 165
    .restart local v11    # "endVersionPos":I
    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapbMessageExtEmail;->setEmailBody(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 166
    :catch_0
    move-exception v9

    .line 167
    .local v9, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v18, Ljava/lang/IllegalArgumentException;

    .line 168
    const-string/jumbo v19, "Ill-formatted bMessage, no end boundary"

    .line 167
    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 171
    .end local v9    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v11    # "endVersionPos":I
    :cond_b
    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 172
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "--"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "--"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v11

    .line 174
    .restart local v11    # "endVersionPos":I
    :try_start_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object p1

    .line 178
    const-string/jumbo v18, "\r\n"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    const-string/jumbo v19, "\r\n"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    add-int v16, v18, v19

    .line 179
    .local v16, "pos2":I
    :goto_4
    if-lez v16, :cond_c

    .line 180
    const-string/jumbo v18, "\r\n"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 181
    const-string/jumbo v18, "\r\n"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    add-int v5, v16, v18

    .line 193
    :cond_c
    if-lez v5, :cond_3

    .line 194
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapbMessageExtEmail;->setEmailBody(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 175
    .end local v16    # "pos2":I
    :catch_1
    move-exception v9

    .line 176
    .restart local v9    # "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v18, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v19, "Ill-formatted bMessage, no end boundary"

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 184
    .end local v9    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v16    # "pos2":I
    :cond_d
    const-string/jumbo v18, "\r\n"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v13

    .line 185
    .restart local v13    # "next":I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v13, v0, :cond_e

    .line 186
    new-instance v18, Ljava/lang/IllegalArgumentException;

    .line 187
    const-string/jumbo v19, "Ill-formatted bMessage, no empty line"

    .line 186
    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 189
    :cond_e
    const-string/jumbo v18, "\r\n"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    add-int v16, v13, v18

    goto :goto_4
.end method

.method public setEmailBody(Ljava/lang/String;)V
    .locals 1
    .param p1, "emailBody"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageExtEmail;->mEmailBody:Ljava/lang/String;

    .line 48
    const-string/jumbo v0, "UTF-8"

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageExtEmail;->mCharset:Ljava/lang/String;

    .line 49
    const-string/jumbo v0, "8bit"

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageExtEmail;->mEncoding:Ljava/lang/String;

    .line 46
    return-void
.end method
