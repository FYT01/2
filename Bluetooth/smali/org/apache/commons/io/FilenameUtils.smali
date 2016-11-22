.class public Lorg/apache/commons/io/FilenameUtils;
.super Ljava/lang/Object;
.source "FilenameUtils.java"


# static fields
.field public static final EXTENSION_SEPARATOR:C = '.'

.field public static final EXTENSION_SEPARATOR_STR:Ljava/lang/String;

.field private static final OTHER_SEPARATOR:C

.field private static final SYSTEM_SEPARATOR:C

.field private static final UNIX_SEPARATOR:C = '/'

.field private static final WINDOWS_SEPARATOR:C = '\\'


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 105
    new-instance v0, Ljava/lang/Character;

    const/16 v1, 0x2e

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/io/FilenameUtils;->EXTENSION_SEPARATOR_STR:Ljava/lang/String;

    .line 120
    sget-char v0, Ljava/io/File;->separatorChar:C

    sput-char v0, Lorg/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C

    .line 127
    invoke-static {}, Lorg/apache/commons/io/FilenameUtils;->isSystemWindows()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    const/16 v0, 0x2f

    sput-char v0, Lorg/apache/commons/io/FilenameUtils;->OTHER_SEPARATOR:C

    .line 93
    :goto_0
    return-void

    .line 130
    :cond_0
    const/16 v0, 0x5c

    sput-char v0, Lorg/apache/commons/io/FilenameUtils;->OTHER_SEPARATOR:C

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    return-void
.end method

.method public static concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "basePath"    # Ljava/lang/String;
    .param p1, "fullFilenameToAdd"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 394
    invoke-static {p1}, Lorg/apache/commons/io/FilenameUtils;->getPrefixLength(Ljava/lang/String;)I

    move-result v2

    .line 395
    .local v2, "prefix":I
    if-gez v2, :cond_0

    .line 396
    return-object v3

    .line 398
    :cond_0
    if-lez v2, :cond_1

    .line 399
    invoke-static {p1}, Lorg/apache/commons/io/FilenameUtils;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 401
    :cond_1
    if-nez p0, :cond_2

    .line 402
    return-object v3

    .line 404
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 405
    .local v1, "len":I
    if-nez v1, :cond_3

    .line 406
    invoke-static {p1}, Lorg/apache/commons/io/FilenameUtils;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 408
    :cond_3
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 409
    .local v0, "ch":C
    invoke-static {v0}, Lorg/apache/commons/io/FilenameUtils;->isSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 410
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/commons/io/FilenameUtils;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 412
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/commons/io/FilenameUtils;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static doGetFullPath(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "includeSeparator"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 775
    if-nez p0, :cond_0

    .line 776
    return-object v3

    .line 778
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->getPrefixLength(Ljava/lang/String;)I

    move-result v2

    .line 779
    .local v2, "prefix":I
    if-gez v2, :cond_1

    .line 780
    return-object v3

    .line 782
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v2, v3, :cond_3

    .line 783
    if-eqz p1, :cond_2

    .line 784
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 786
    :cond_2
    return-object p0

    .line 789
    :cond_3
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->indexOfLastSeparator(Ljava/lang/String;)I

    move-result v1

    .line 790
    .local v1, "index":I
    if-gez v1, :cond_4

    .line 791
    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 793
    :cond_4
    if-eqz p1, :cond_5

    const/4 v3, 0x1

    :goto_0
    add-int v0, v1, v3

    .line 794
    .local v0, "end":I
    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .end local v0    # "end":I
    :cond_5
    move v3, v4

    .line 793
    goto :goto_0
.end method

.method private static doGetPath(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "separatorAdd"    # I

    .prologue
    const/4 v2, 0x0

    .line 694
    if-nez p0, :cond_0

    .line 695
    return-object v2

    .line 697
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->getPrefixLength(Ljava/lang/String;)I

    move-result v1

    .line 698
    .local v1, "prefix":I
    if-gez v1, :cond_1

    .line 699
    return-object v2

    .line 701
    :cond_1
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->indexOfLastSeparator(Ljava/lang/String;)I

    move-result v0

    .line 702
    .local v0, "index":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    if-gez v0, :cond_3

    .line 703
    :cond_2
    const-string/jumbo v2, ""

    return-object v2

    .line 705
    :cond_3
    add-int v2, v0, p1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static doNormalize(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 13
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "keepSeparator"    # Z

    .prologue
    const/16 v12, 0x2e

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 261
    if-nez p0, :cond_0

    .line 262
    return-object v11

    .line 264
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 265
    .local v5, "size":I
    if-nez v5, :cond_1

    .line 266
    return-object p0

    .line 268
    :cond_1
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->getPrefixLength(Ljava/lang/String;)I

    move-result v4

    .line 269
    .local v4, "prefix":I
    if-gez v4, :cond_2

    .line 270
    return-object v11

    .line 273
    :cond_2
    add-int/lit8 v7, v5, 0x2

    new-array v0, v7, [C

    .line 274
    .local v0, "array":[C
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p0, v10, v7, v0, v10}, Ljava/lang/String;->getChars(II[CI)V

    .line 277
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v7, v0

    if-ge v1, v7, :cond_4

    .line 278
    aget-char v7, v0, v1

    sget-char v8, Lorg/apache/commons/io/FilenameUtils;->OTHER_SEPARATOR:C

    if-ne v7, v8, :cond_3

    .line 279
    sget-char v7, Lorg/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C

    aput-char v7, v0, v1

    .line 277
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 284
    :cond_4
    const/4 v3, 0x1

    .line 285
    .local v3, "lastIsDirectory":Z
    add-int/lit8 v7, v5, -0x1

    aget-char v7, v0, v7

    sget-char v8, Lorg/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C

    if-eq v7, v8, :cond_5

    .line 286
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "size":I
    .local v6, "size":I
    sget-char v7, Lorg/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C

    aput-char v7, v0, v5

    .line 287
    const/4 v3, 0x0

    move v5, v6

    .line 291
    .end local v6    # "size":I
    .restart local v5    # "size":I
    :cond_5
    add-int/lit8 v1, v4, 0x1

    :goto_1
    if-ge v1, v5, :cond_7

    .line 292
    aget-char v7, v0, v1

    sget-char v8, Lorg/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C

    if-ne v7, v8, :cond_6

    add-int/lit8 v7, v1, -0x1

    aget-char v7, v0, v7

    sget-char v8, Lorg/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C

    if-ne v7, v8, :cond_6

    .line 293
    add-int/lit8 v7, v1, -0x1

    sub-int v8, v5, v1

    invoke-static {v0, v1, v0, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 294
    add-int/lit8 v5, v5, -0x1

    .line 295
    add-int/lit8 v1, v1, -0x1

    .line 291
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 300
    :cond_7
    add-int/lit8 v1, v4, 0x1

    :goto_2
    if-ge v1, v5, :cond_b

    .line 301
    aget-char v7, v0, v1

    sget-char v8, Lorg/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C

    if-ne v7, v8, :cond_a

    add-int/lit8 v7, v1, -0x1

    aget-char v7, v0, v7

    if-ne v7, v12, :cond_a

    .line 302
    add-int/lit8 v7, v4, 0x1

    if-eq v1, v7, :cond_8

    add-int/lit8 v7, v1, -0x2

    aget-char v7, v0, v7

    sget-char v8, Lorg/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C

    if-ne v7, v8, :cond_a

    .line 303
    :cond_8
    add-int/lit8 v7, v5, -0x1

    if-ne v1, v7, :cond_9

    .line 304
    const/4 v3, 0x1

    .line 306
    :cond_9
    add-int/lit8 v7, v1, 0x1

    add-int/lit8 v8, v1, -0x1

    sub-int v9, v5, v1

    invoke-static {v0, v7, v0, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 307
    add-int/lit8 v5, v5, -0x2

    .line 308
    add-int/lit8 v1, v1, -0x1

    .line 300
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 314
    :cond_b
    add-int/lit8 v1, v4, 0x2

    :goto_3
    if-ge v1, v5, :cond_12

    .line 315
    aget-char v7, v0, v1

    sget-char v8, Lorg/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C

    if-ne v7, v8, :cond_f

    add-int/lit8 v7, v1, -0x1

    aget-char v7, v0, v7

    if-ne v7, v12, :cond_f

    add-int/lit8 v7, v1, -0x2

    aget-char v7, v0, v7

    if-ne v7, v12, :cond_f

    .line 316
    add-int/lit8 v7, v4, 0x2

    if-eq v1, v7, :cond_c

    add-int/lit8 v7, v1, -0x3

    aget-char v7, v0, v7

    sget-char v8, Lorg/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C

    if-ne v7, v8, :cond_f

    .line 317
    :cond_c
    add-int/lit8 v7, v4, 0x2

    if-ne v1, v7, :cond_d

    .line 318
    return-object v11

    .line 320
    :cond_d
    add-int/lit8 v7, v5, -0x1

    if-ne v1, v7, :cond_e

    .line 321
    const/4 v3, 0x1

    .line 324
    :cond_e
    add-int/lit8 v2, v1, -0x4

    .local v2, "j":I
    :goto_4
    if-lt v2, v4, :cond_11

    .line 325
    aget-char v7, v0, v2

    sget-char v8, Lorg/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C

    if-ne v7, v8, :cond_10

    .line 327
    add-int/lit8 v7, v1, 0x1

    add-int/lit8 v8, v2, 0x1

    sub-int v9, v5, v1

    invoke-static {v0, v7, v0, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 328
    sub-int v7, v1, v2

    sub-int/2addr v5, v7

    .line 329
    add-int/lit8 v1, v2, 0x1

    .line 314
    .end local v2    # "j":I
    :cond_f
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 324
    .restart local v2    # "j":I
    :cond_10
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    .line 334
    :cond_11
    add-int/lit8 v7, v1, 0x1

    sub-int v8, v5, v1

    invoke-static {v0, v7, v0, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 335
    add-int/lit8 v7, v1, 0x1

    sub-int/2addr v7, v4

    sub-int/2addr v5, v7

    .line 336
    add-int/lit8 v1, v4, 0x1

    goto :goto_5

    .line 340
    .end local v2    # "j":I
    :cond_12
    if-gtz v5, :cond_13

    .line 341
    const-string/jumbo v7, ""

    return-object v7

    .line 343
    :cond_13
    if-gt v5, v4, :cond_14

    .line 344
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v0, v10, v5}, Ljava/lang/String;-><init>([CII)V

    return-object v7

    .line 346
    :cond_14
    if-eqz v3, :cond_15

    if-eqz p1, :cond_15

    .line 347
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v0, v10, v5}, Ljava/lang/String;-><init>([CII)V

    return-object v7

    .line 349
    :cond_15
    new-instance v7, Ljava/lang/String;

    add-int/lit8 v8, v5, -0x1

    invoke-direct {v7, v0, v10, v8}, Ljava/lang/String;-><init>([CII)V

    return-object v7
.end method

.method public static equals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "filename1"    # Ljava/lang/String;
    .param p1, "filename2"    # Ljava/lang/String;

    .prologue
    .line 915
    sget-object v0, Lorg/apache/commons/io/IOCase;->SENSITIVE:Lorg/apache/commons/io/IOCase;

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lorg/apache/commons/io/FilenameUtils;->equals(Ljava/lang/String;Ljava/lang/String;ZLorg/apache/commons/io/IOCase;)Z

    move-result v0

    return v0
.end method

.method public static equals(Ljava/lang/String;Ljava/lang/String;ZLorg/apache/commons/io/IOCase;)Z
    .locals 2
    .param p0, "filename1"    # Ljava/lang/String;
    .param p1, "filename2"    # Ljava/lang/String;
    .param p2, "normalized"    # Z
    .param p3, "caseSensitivity"    # Lorg/apache/commons/io/IOCase;

    .prologue
    .line 981
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 982
    :cond_0
    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 984
    :cond_2
    if-eqz p2, :cond_4

    .line 985
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 986
    invoke-static {p1}, Lorg/apache/commons/io/FilenameUtils;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 987
    if-eqz p0, :cond_3

    if-nez p1, :cond_4

    .line 988
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    .line 989
    const-string/jumbo v1, "Error normalizing one or both of the file names"

    .line 988
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 992
    :cond_4
    if-nez p3, :cond_5

    .line 993
    sget-object p3, Lorg/apache/commons/io/IOCase;->SENSITIVE:Lorg/apache/commons/io/IOCase;

    .line 995
    :cond_5
    invoke-virtual {p3, p0, p1}, Lorg/apache/commons/io/IOCase;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static equalsNormalized(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "filename1"    # Ljava/lang/String;
    .param p1, "filename2"    # Ljava/lang/String;

    .prologue
    .line 946
    sget-object v0, Lorg/apache/commons/io/IOCase;->SENSITIVE:Lorg/apache/commons/io/IOCase;

    const/4 v1, 0x1

    invoke-static {p0, p1, v1, v0}, Lorg/apache/commons/io/FilenameUtils;->equals(Ljava/lang/String;Ljava/lang/String;ZLorg/apache/commons/io/IOCase;)Z

    move-result v0

    return v0
.end method

.method public static equalsNormalizedOnSystem(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "filename1"    # Ljava/lang/String;
    .param p1, "filename2"    # Ljava/lang/String;

    .prologue
    .line 963
    sget-object v0, Lorg/apache/commons/io/IOCase;->SYSTEM:Lorg/apache/commons/io/IOCase;

    const/4 v1, 0x1

    invoke-static {p0, p1, v1, v0}, Lorg/apache/commons/io/FilenameUtils;->equals(Ljava/lang/String;Ljava/lang/String;ZLorg/apache/commons/io/IOCase;)Z

    move-result v0

    return v0
.end method

.method public static equalsOnSystem(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "filename1"    # Ljava/lang/String;
    .param p1, "filename2"    # Ljava/lang/String;

    .prologue
    .line 930
    sget-object v0, Lorg/apache/commons/io/IOCase;->SYSTEM:Lorg/apache/commons/io/IOCase;

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lorg/apache/commons/io/FilenameUtils;->equals(Ljava/lang/String;Ljava/lang/String;ZLorg/apache/commons/io/IOCase;)Z

    move-result v0

    return v0
.end method

.method public static getBaseName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 840
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/io/FilenameUtils;->removeExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 861
    if-nez p0, :cond_0

    .line 862
    return-object v1

    .line 864
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->indexOfExtension(Ljava/lang/String;)I

    move-result v0

    .line 865
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 866
    const-string/jumbo v1, ""

    return-object v1

    .line 868
    :cond_1
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getFullPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 734
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/commons/io/FilenameUtils;->doGetFullPath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFullPathNoEndSeparator(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 764
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/io/FilenameUtils;->doGetFullPath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 815
    if-nez p0, :cond_0

    .line 816
    return-object v1

    .line 818
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->indexOfLastSeparator(Ljava/lang/String;)I

    move-result v0

    .line 819
    .local v0, "index":I
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 656
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/commons/io/FilenameUtils;->doGetPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPathNoEndSeparator(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 683
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/io/FilenameUtils;->doGetPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 620
    if-nez p0, :cond_0

    .line 621
    return-object v1

    .line 623
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->getPrefixLength(Ljava/lang/String;)I

    move-result v0

    .line 624
    .local v0, "len":I
    if-gez v0, :cond_1

    .line 625
    return-object v1

    .line 627
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_2

    .line 628
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 630
    :cond_2
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getPrefixLength(Ljava/lang/String;)I
    .locals 11
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    const/16 v10, 0x2f

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v9, 0x2

    const/4 v8, -0x1

    .line 493
    if-nez p0, :cond_0

    .line 494
    return v8

    .line 496
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 497
    .local v2, "len":I
    if-nez v2, :cond_1

    .line 498
    return v6

    .line 500
    :cond_1
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 501
    .local v0, "ch0":C
    const/16 v7, 0x3a

    if-ne v0, v7, :cond_2

    .line 502
    return v8

    .line 504
    :cond_2
    if-ne v2, v5, :cond_5

    .line 505
    const/16 v7, 0x7e

    if-ne v0, v7, :cond_3

    .line 506
    return v9

    .line 508
    :cond_3
    invoke-static {v0}, Lorg/apache/commons/io/FilenameUtils;->isSeparator(C)Z

    move-result v7

    if-eqz v7, :cond_4

    :goto_0
    return v5

    :cond_4
    move v5, v6

    goto :goto_0

    .line 510
    :cond_5
    const/16 v7, 0x7e

    if-ne v0, v7, :cond_9

    .line 511
    invoke-virtual {p0, v10, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 512
    .local v3, "posUnix":I
    const/16 v6, 0x5c

    invoke-virtual {p0, v6, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 513
    .local v4, "posWin":I
    if-ne v3, v8, :cond_6

    if-ne v4, v8, :cond_6

    .line 514
    add-int/lit8 v5, v2, 0x1

    return v5

    .line 516
    :cond_6
    if-ne v3, v8, :cond_7

    move v3, v4

    .line 517
    :cond_7
    if-ne v4, v8, :cond_8

    move v4, v3

    .line 518
    :cond_8
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    return v5

    .line 520
    .end local v3    # "posUnix":I
    .end local v4    # "posWin":I
    :cond_9
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 521
    .local v1, "ch1":C
    const/16 v7, 0x3a

    if-ne v1, v7, :cond_d

    .line 522
    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    .line 523
    const/16 v5, 0x41

    if-lt v0, v5, :cond_c

    const/16 v5, 0x5a

    if-gt v0, v5, :cond_c

    .line 524
    if-eq v2, v9, :cond_a

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lorg/apache/commons/io/FilenameUtils;->isSeparator(C)Z

    move-result v5

    if-nez v5, :cond_b

    .line 525
    :cond_a
    return v9

    .line 527
    :cond_b
    const/4 v5, 0x3

    return v5

    .line 529
    :cond_c
    return v8

    .line 531
    :cond_d
    invoke-static {v0}, Lorg/apache/commons/io/FilenameUtils;->isSeparator(C)Z

    move-result v7

    if-eqz v7, :cond_12

    invoke-static {v1}, Lorg/apache/commons/io/FilenameUtils;->isSeparator(C)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 532
    invoke-virtual {p0, v10, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 533
    .restart local v3    # "posUnix":I
    const/16 v5, 0x5c

    invoke-virtual {p0, v5, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 534
    .restart local v4    # "posWin":I
    if-ne v3, v8, :cond_f

    if-ne v4, v8, :cond_f

    .line 535
    :cond_e
    return v8

    .line 534
    :cond_f
    if-eq v3, v9, :cond_e

    if-eq v4, v9, :cond_e

    .line 537
    if-ne v3, v8, :cond_10

    move v3, v4

    .line 538
    :cond_10
    if-ne v4, v8, :cond_11

    move v4, v3

    .line 539
    :cond_11
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    return v5

    .line 541
    .end local v3    # "posUnix":I
    .end local v4    # "posWin":I
    :cond_12
    invoke-static {v0}, Lorg/apache/commons/io/FilenameUtils;->isSeparator(C)Z

    move-result v7

    if-eqz v7, :cond_13

    :goto_1
    return v5

    :cond_13
    move v5, v6

    goto :goto_1
.end method

.method public static indexOfExtension(Ljava/lang/String;)I
    .locals 4
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x1

    .line 581
    if-nez p0, :cond_0

    .line 582
    return v2

    .line 584
    :cond_0
    const/16 v3, 0x2e

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 585
    .local v0, "extensionPos":I
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->indexOfLastSeparator(Ljava/lang/String;)I

    move-result v1

    .line 586
    .local v1, "lastSeparator":I
    if-le v1, v0, :cond_1

    move v0, v2

    .end local v0    # "extensionPos":I
    :cond_1
    return v0
.end method

.method public static indexOfLastSeparator(Ljava/lang/String;)I
    .locals 3
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 559
    if-nez p0, :cond_0

    .line 560
    const/4 v2, -0x1

    return v2

    .line 562
    :cond_0
    const/16 v2, 0x2f

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 563
    .local v0, "lastUnixPos":I
    const/16 v2, 0x5c

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 564
    .local v1, "lastWindowsPos":I
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    return v2
.end method

.method public static isExtension(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "extension"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1011
    if-nez p0, :cond_0

    .line 1012
    return v1

    .line 1014
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 1015
    :cond_1
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->indexOfExtension(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    .line 1017
    :cond_3
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1018
    .local v0, "fileExt":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static isExtension(Ljava/lang/String;Ljava/util/Collection;)Z
    .locals 6
    .param p0, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "extensions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1060
    if-nez p0, :cond_0

    .line 1061
    return v3

    .line 1063
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1064
    :cond_1
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->indexOfExtension(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    :goto_0
    return v2

    :cond_2
    move v2, v3

    goto :goto_0

    .line 1066
    :cond_3
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1067
    .local v0, "fileExt":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1068
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1069
    return v2

    .line 1072
    :cond_5
    return v3
.end method

.method public static isExtension(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 6
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "extensions"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1033
    if-nez p0, :cond_0

    .line 1034
    return v3

    .line 1036
    :cond_0
    if-eqz p1, :cond_1

    array-length v4, p1

    if-nez v4, :cond_3

    .line 1037
    :cond_1
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->indexOfExtension(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    :goto_0
    return v2

    :cond_2
    move v2, v3

    goto :goto_0

    .line 1039
    :cond_3
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1040
    .local v0, "fileExt":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v4, p1

    if-ge v1, v4, :cond_5

    .line 1041
    aget-object v4, p1, v1

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1042
    return v2

    .line 1040
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1045
    :cond_5
    return v3
.end method

.method private static isSeparator(C)Z
    .locals 2
    .param p0, "ch"    # C

    .prologue
    const/4 v0, 0x1

    .line 159
    const/16 v1, 0x2f

    if-eq p0, v1, :cond_0

    const/16 v1, 0x5c

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isSystemWindows()Z
    .locals 2

    .prologue
    .line 148
    sget-char v0, Lorg/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 204
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/commons/io/FilenameUtils;->doNormalize(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static normalizeNoEndSeparator(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 250
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/io/FilenameUtils;->doNormalize(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static removeExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 891
    if-nez p0, :cond_0

    .line 892
    return-object v1

    .line 894
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->indexOfExtension(Ljava/lang/String;)I

    move-result v0

    .line 895
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 896
    return-object p0

    .line 898
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static separatorsToSystem(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 450
    if-nez p0, :cond_0

    .line 451
    return-object v0

    .line 453
    :cond_0
    invoke-static {}, Lorg/apache/commons/io/FilenameUtils;->isSystemWindows()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 454
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->separatorsToWindows(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 456
    :cond_1
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->separatorsToUnix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static separatorsToUnix(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x5c

    .line 424
    if-eqz p0, :cond_0

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 425
    :cond_0
    return-object p0

    .line 427
    :cond_1
    const/16 v0, 0x2f

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static separatorsToWindows(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x2f

    .line 437
    if-eqz p0, :cond_0

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 438
    :cond_0
    return-object p0

    .line 440
    :cond_1
    const/16 v0, 0x5c

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static splitOnTokens(Ljava/lang/String;)[Ljava/lang/String;
    .locals 8
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x3f

    const/4 v5, -0x1

    const/4 v6, 0x0

    .line 1230
    const-string/jumbo v4, "?"

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v5, :cond_0

    const-string/jumbo v4, "*"

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v5, :cond_0

    .line 1231
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object p0, v4, v6

    return-object v4

    .line 1234
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 1235
    .local v0, "array":[C
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1236
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1237
    .local v1, "buffer":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_7

    .line 1238
    aget-char v4, v0, v2

    if-eq v4, v7, :cond_1

    aget-char v4, v0, v2

    const/16 v5, 0x2a

    if-ne v4, v5, :cond_6

    .line 1239
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-eqz v4, :cond_2

    .line 1240
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1241
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 1243
    :cond_2
    aget-char v4, v0, v2

    if-ne v4, v7, :cond_4

    .line 1244
    const-string/jumbo v4, "?"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1237
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1245
    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_5

    .line 1246
    if-lez v2, :cond_3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1247
    :cond_5
    const-string/jumbo v4, "*"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1250
    :cond_6
    aget-char v4, v0, v2

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 1253
    :cond_7
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-eqz v4, :cond_8

    .line 1254
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1257
    :cond_8
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    return-object v4
.end method

.method public static wildcardMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "wildcardMatcher"    # Ljava/lang/String;

    .prologue
    .line 1098
    sget-object v0, Lorg/apache/commons/io/IOCase;->SENSITIVE:Lorg/apache/commons/io/IOCase;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/io/FilenameUtils;->wildcardMatch(Ljava/lang/String;Ljava/lang/String;Lorg/apache/commons/io/IOCase;)Z

    move-result v0

    return v0
.end method

.method public static wildcardMatch(Ljava/lang/String;Ljava/lang/String;Lorg/apache/commons/io/IOCase;)Z
    .locals 11
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "wildcardMatcher"    # Ljava/lang/String;
    .param p2, "caseSensitivity"    # Lorg/apache/commons/io/IOCase;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1140
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 1141
    return v10

    .line 1143
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    .line 1144
    :cond_1
    return v9

    .line 1146
    :cond_2
    if-nez p2, :cond_3

    .line 1147
    sget-object p2, Lorg/apache/commons/io/IOCase;->SENSITIVE:Lorg/apache/commons/io/IOCase;

    .line 1149
    :cond_3
    invoke-virtual {p2, p0}, Lorg/apache/commons/io/IOCase;->convertCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1150
    invoke-virtual {p2, p1}, Lorg/apache/commons/io/IOCase;->convertCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1151
    invoke-static {p1}, Lorg/apache/commons/io/FilenameUtils;->splitOnTokens(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1152
    .local v5, "wcs":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 1153
    .local v0, "anyChars":Z
    const/4 v4, 0x0

    .line 1154
    .local v4, "textIdx":I
    const/4 v6, 0x0

    .line 1155
    .local v6, "wcsIdx":I
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    .line 1159
    .local v2, "backtrack":Ljava/util/Stack;, "Ljava/util/Stack<[I>;"
    :cond_4
    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v7

    if-lez v7, :cond_5

    .line 1160
    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 1161
    .local v1, "array":[I
    aget v6, v1, v9

    .line 1162
    aget v4, v1, v10

    .line 1163
    const/4 v0, 0x1

    .line 1167
    .end local v1    # "array":[I
    :cond_5
    :goto_0
    array-length v7, v5

    if-ge v6, v7, :cond_9

    .line 1169
    aget-object v7, v5, v6

    const-string/jumbo v8, "?"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1171
    add-int/lit8 v4, v4, 0x1

    .line 1172
    const/4 v0, 0x0

    .line 1207
    :cond_6
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1174
    :cond_7
    aget-object v7, v5, v6

    const-string/jumbo v8, "*"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1176
    const/4 v0, 0x1

    .line 1177
    array-length v7, v5

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_6

    .line 1178
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    goto :goto_1

    .line 1183
    :cond_8
    if-eqz v0, :cond_c

    .line 1185
    aget-object v7, v5, v6

    invoke-virtual {p0, v7, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 1186
    const/4 v7, -0x1

    if-ne v4, v7, :cond_a

    .line 1211
    :cond_9
    :goto_2
    array-length v7, v5

    if-ne v6, v7, :cond_d

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v4, v7, :cond_d

    .line 1212
    return v10

    .line 1190
    :cond_a
    aget-object v7, v5, v6

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 1191
    .local v3, "repeat":I
    if-ltz v3, :cond_b

    .line 1192
    const/4 v7, 0x2

    new-array v7, v7, [I

    aput v6, v7, v9

    aput v3, v7, v10

    invoke-virtual {v2, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1203
    .end local v3    # "repeat":I
    :cond_b
    aget-object v7, v5, v6

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v4, v7

    .line 1204
    const/4 v0, 0x0

    goto :goto_1

    .line 1196
    :cond_c
    aget-object v7, v5, v6

    invoke-virtual {p0, v7, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_b

    goto :goto_2

    .line 1215
    :cond_d
    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v7

    if-gtz v7, :cond_4

    .line 1217
    return v9
.end method

.method public static wildcardMatchOnSystem(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "wildcardMatcher"    # Ljava/lang/String;

    .prologue
    .line 1123
    sget-object v0, Lorg/apache/commons/io/IOCase;->SYSTEM:Lorg/apache/commons/io/IOCase;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/io/FilenameUtils;->wildcardMatch(Ljava/lang/String;Ljava/lang/String;Lorg/apache/commons/io/IOCase;)Z

    move-result v0

    return v0
.end method
