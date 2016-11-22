.class public Lcom/android/emailcommon/mail/Address;
.super Ljava/lang/Object;
.source "Address.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/mail/Address$1;
    }
.end annotation


# static fields
.field public static final ADDRESS_DELIMETER:Ljava/lang/String; = ","

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/emailcommon/mail/Address;",
            ">;"
        }
    .end annotation
.end field

.field private static final DOMAIN_PART:Ljava/lang/String; = "([[\\w][\\d]\\-\\(\\)\\[\\]]+\\.)+[[\\w][\\d]\\-\\(\\)\\[\\]]+"

.field private static final DOMAIN_PART_PART:Ljava/lang/String; = "[[\\w][\\d]\\-\\(\\)\\[\\]]+"

.field private static final EMAIL_ADDRESS:Ljava/util/regex/Pattern;

.field private static final EMPTY_ADDRESS_ARRAY:[Lcom/android/emailcommon/mail/Address;

.field private static final LIST_DELIMITER_EMAIL:C = '\u0001'

.field private static final LIST_DELIMITER_PERSONAL:C = '\u0002'

.field private static final LOCAL_PART:Ljava/lang/String; = "[^@]+"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final REMOVE_OPTIONAL_BRACKET:Ljava/util/regex/Pattern;

.field private static final REMOVE_OPTIONAL_DQUOTE:Ljava/util/regex/Pattern;

.field private static final UNQUOTE:Ljava/util/regex/Pattern;


# instance fields
.field private mAddress:Ljava/lang/String;

.field private mPersonal:Ljava/lang/String;

.field private mSimplifiedName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const-string/jumbo v0, "^<?([^>]+)>?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/mail/Address;->REMOVE_OPTIONAL_BRACKET:Ljava/util/regex/Pattern;

    .line 68
    const-string/jumbo v0, "^\"?([^\"]*)\"?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/mail/Address;->REMOVE_OPTIONAL_DQUOTE:Ljava/util/regex/Pattern;

    .line 70
    const-string/jumbo v0, "\\\\([\\\\\"])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/mail/Address;->UNQUOTE:Ljava/util/regex/Pattern;

    .line 84
    const-string/jumbo v0, "\\A[^@]+@([[\\w][\\d]\\-\\(\\)\\[\\]]+\\.)+[[\\w][\\d]\\-\\(\\)\\[\\]]+\\z"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 83
    sput-object v0, Lcom/android/emailcommon/mail/Address;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    .line 86
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/emailcommon/mail/Address;

    sput-object v0, Lcom/android/emailcommon/mail/Address;->EMPTY_ADDRESS_ARRAY:[Lcom/android/emailcommon/mail/Address;

    .line 92
    invoke-static {}, Lcom/android/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/mail/Address;->LOG_TAG:Ljava/lang/String;

    .line 518
    new-instance v0, Lcom/android/emailcommon/mail/Address$1;

    invoke-direct {v0}, Lcom/android/emailcommon/mail/Address$1;-><init>()V

    sput-object v0, Lcom/android/emailcommon/mail/Address;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 530
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 531
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/emailcommon/mail/Address;->setPersonal(Ljava/lang/String;)V

    .line 532
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/emailcommon/mail/Address;->setAddress(Ljava/lang/String;)V

    .line 530
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    invoke-virtual {p0, p1}, Lcom/android/emailcommon/mail/Address;->setAddress(Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "personal"    # Ljava/lang/String;

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    invoke-virtual {p0, p2}, Lcom/android/emailcommon/mail/Address;->setPersonal(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0, p1}, Lcom/android/emailcommon/mail/Address;->setAddress(Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public static decodeAddressPersonal(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "personal"    # Ljava/lang/String;

    .prologue
    .line 185
    if-eqz p0, :cond_0

    .line 186
    sget-object v0, Lcom/android/emailcommon/mail/Address;->REMOVE_OPTIONAL_DQUOTE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string/jumbo v1, "$1"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 187
    sget-object v0, Lcom/android/emailcommon/mail/Address;->UNQUOTE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string/jumbo v1, "$1"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 188
    invoke-static {p0}, Lorg/apache/james/mime4j/decoder/DecoderUtil;->decodeEncodedWords(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 189
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 190
    const/4 p0, 0x0

    .line 193
    .end local p0    # "personal":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method private static ensureQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 310
    if-nez p0, :cond_0

    .line 311
    return-object v0

    .line 313
    :cond_0
    const-string/jumbo v0, "^\".*\"$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 316
    :cond_1
    return-object p0
.end method

.method public static firstAddress(Ljava/lang/String;)Lcom/android/emailcommon/mail/Address;
    .locals 3
    .param p0, "addressList"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 453
    invoke-static {p0}, Lcom/android/emailcommon/mail/Address;->fromHeader(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v0

    .line 454
    .local v0, "array":[Lcom/android/emailcommon/mail/Address;
    array-length v1, v0

    if-lez v1, :cond_0

    aget-object v1, v0, v2

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static fromHeader(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;
    .locals 12
    .param p0, "addressList"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x2

    const/4 v8, -0x1

    .line 475
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 476
    :cond_0
    sget-object v6, Lcom/android/emailcommon/mail/Address;->EMPTY_ADDRESS_ARRAY:[Lcom/android/emailcommon/mail/Address;

    return-object v6

    .line 479
    :cond_1
    invoke-virtual {p0, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ne v6, v8, :cond_2

    .line 480
    invoke-virtual {p0, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ne v6, v8, :cond_2

    .line 481
    invoke-static {p0}, Lcom/android/emailcommon/mail/Address;->parse(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v6

    return-object v6

    .line 484
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 485
    .local v2, "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Address;>;"
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 486
    .local v3, "length":I
    const/4 v5, 0x0

    .line 494
    .local v5, "pairStartIndex":I
    invoke-virtual {p0, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 496
    .local v1, "addressEndIndex":I
    :goto_0
    if-ge v5, v3, :cond_6

    .line 497
    invoke-virtual {p0, v10, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 498
    .local v4, "pairEndIndex":I
    if-ne v4, v8, :cond_3

    .line 499
    move v4, v3

    .line 502
    :cond_3
    if-eq v1, v8, :cond_4

    if-gt v4, v1, :cond_5

    .line 505
    :cond_4
    new-instance v0, Lcom/android/emailcommon/mail/Address;

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6, v11}, Lcom/android/emailcommon/mail/Address;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    .local v0, "address":Lcom/android/emailcommon/mail/Address;
    :goto_1
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 513
    add-int/lit8 v5, v4, 0x1

    goto :goto_0

    .line 507
    .end local v0    # "address":Lcom/android/emailcommon/mail/Address;
    :cond_5
    new-instance v0, Lcom/android/emailcommon/mail/Address;

    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 508
    add-int/lit8 v7, v1, 0x1

    invoke-virtual {p0, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 507
    invoke-direct {v0, v6, v7}, Lcom/android/emailcommon/mail/Address;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    .restart local v0    # "address":Lcom/android/emailcommon/mail/Address;
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {p0, v9, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    goto :goto_1

    .line 515
    .end local v0    # "address":Lcom/android/emailcommon/mail/Address;
    .end local v4    # "pairEndIndex":I
    :cond_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Lcom/android/emailcommon/mail/Address;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/android/emailcommon/mail/Address;

    return-object v6
.end method

.method public static fromHeaderToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "addressList"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 435
    invoke-static {p0}, Lcom/android/emailcommon/mail/Address;->fromHeader(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/mail/Address;->toString([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getEmailAddress(Ljava/lang/String;)Lcom/android/emailcommon/mail/Address;
    .locals 7
    .param p0, "rawAddress"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const-class v5, Lcom/android/emailcommon/mail/Address;

    monitor-enter v5

    .line 133
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    monitor-exit v5

    .line 134
    return-object v6

    .line 137
    :cond_0
    :try_start_1
    invoke-static {p0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v3

    .line 138
    .local v3, "tokens":[Landroid/text/util/Rfc822Token;
    array-length v4, v3

    if-lez v4, :cond_2

    .line 139
    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-virtual {v4}, Landroid/text/util/Rfc822Token;->getName()Ljava/lang/String;

    move-result-object v2

    .line 140
    .local v2, "tokenizedName":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Spanned;->toString()Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, "name":Ljava/lang/String;
    :goto_0
    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-virtual {v4}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Spanned;->toString()Ljava/lang/String;

    move-result-object v0

    .line 148
    .end local v2    # "tokenizedName":Ljava/lang/String;
    .local v0, "address":Ljava/lang/String;
    :goto_1
    new-instance v4, Lcom/android/emailcommon/mail/Address;

    invoke-direct {v4, v0, v1}, Lcom/android/emailcommon/mail/Address;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v5

    return-object v4

    .line 141
    .end local v0    # "address":Ljava/lang/String;
    .end local v1    # "name":Ljava/lang/String;
    .restart local v2    # "tokenizedName":Ljava/lang/String;
    :cond_1
    :try_start_2
    const-string/jumbo v1, ""

    .restart local v1    # "name":Ljava/lang/String;
    goto :goto_0

    .line 144
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "tokenizedName":Ljava/lang/String;
    :cond_2
    const-string/jumbo v1, ""

    .line 145
    .restart local v1    # "name":Ljava/lang/String;
    if-nez p0, :cond_3

    .line 146
    const-string/jumbo v0, ""

    .restart local v0    # "address":Ljava/lang/String;
    goto :goto_1

    .end local v0    # "address":Ljava/lang/String;
    :cond_3
    invoke-static {p0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Spanned;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .restart local v0    # "address":Ljava/lang/String;
    goto :goto_1

    .end local v0    # "address":Ljava/lang/String;
    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "tokens":[Landroid/text/util/Rfc822Token;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public static isAllValid(Ljava/lang/String;)Z
    .locals 7
    .param p0, "addressList"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 204
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 205
    invoke-static {p0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v4

    .line 206
    .local v4, "tokens":[Landroid/text/util/Rfc822Token;
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, v4

    .local v2, "length":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 207
    aget-object v3, v4, v1

    .line 208
    .local v3, "token":Landroid/text/util/Rfc822Token;
    invoke-virtual {v3}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, "address":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v0}, Lcom/android/emailcommon/mail/Address;->isValidAddress(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 206
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 210
    :cond_1
    return v6

    .line 214
    .end local v0    # "address":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "token":Landroid/text/util/Rfc822Token;
    .end local v4    # "tokens":[Landroid/text/util/Rfc822Token;
    :cond_2
    const/4 v5, 0x1

    return v5
.end method

.method static isValidAddress(Ljava/lang/String;)Z
    .locals 1
    .param p0, "address"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 252
    sget-object v0, Lcom/android/emailcommon/mail/Address;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    return v0
.end method

.method public static parse(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;
    .locals 8
    .param p0, "addressList"    # Ljava/lang/String;

    .prologue
    .line 225
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1

    .line 226
    :cond_0
    sget-object v7, Lcom/android/emailcommon/mail/Address;->EMPTY_ADDRESS_ARRAY:[Lcom/android/emailcommon/mail/Address;

    return-object v7

    .line 228
    :cond_1
    invoke-static {p0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v6

    .line 229
    .local v6, "tokens":[Landroid/text/util/Rfc822Token;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 230
    .local v1, "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Address;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v3, v6

    .local v3, "length":I
    :goto_0
    if-ge v2, v3, :cond_4

    .line 231
    aget-object v5, v6, v2

    .line 232
    .local v5, "token":Landroid/text/util/Rfc822Token;
    invoke-virtual {v5}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, "address":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 234
    invoke-static {v0}, Lcom/android/emailcommon/mail/Address;->isValidAddress(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 235
    invoke-virtual {v5}, Landroid/text/util/Rfc822Token;->getName()Ljava/lang/String;

    move-result-object v4

    .line 236
    .local v4, "name":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 237
    const/4 v4, 0x0

    .line 239
    .end local v4    # "name":Ljava/lang/String;
    :cond_2
    new-instance v7, Lcom/android/emailcommon/mail/Address;

    invoke-direct {v7, v0, v4}, Lcom/android/emailcommon/mail/Address;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 243
    .end local v0    # "address":Ljava/lang/String;
    .end local v5    # "token":Landroid/text/util/Rfc822Token;
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Lcom/android/emailcommon/mail/Address;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/android/emailcommon/mail/Address;

    return-object v7
.end method

.method public static parseToHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "addressList"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 443
    invoke-static {p0}, Lcom/android/emailcommon/mail/Address;->parse(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/mail/Address;->toHeader([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static reformatToHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "addressList"    # Ljava/lang/String;

    .prologue
    .line 466
    invoke-static {p0}, Lcom/android/emailcommon/mail/Address;->fromHeader(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/mail/Address;->toHeader([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toFriendly([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;
    .locals 5
    .param p0, "addresses"    # [Lcom/android/emailcommon/mail/Address;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 416
    if-eqz p0, :cond_0

    array-length v2, p0

    if-nez v2, :cond_1

    .line 417
    :cond_0
    return-object v3

    .line 419
    :cond_1
    array-length v2, p0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 420
    aget-object v2, p0, v4

    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Address;->toFriendly()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 422
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    aget-object v2, p0, v4

    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Address;->toFriendly()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 423
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 424
    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    aget-object v2, p0, v0

    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Address;->toFriendly()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 427
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static toHeader([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;
    .locals 5
    .param p0, "addresses"    # [Lcom/android/emailcommon/mail/Address;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 376
    if-eqz p0, :cond_0

    array-length v2, p0

    if-nez v2, :cond_1

    .line 377
    :cond_0
    return-object v3

    .line 379
    :cond_1
    array-length v2, p0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 380
    aget-object v2, p0, v4

    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Address;->toHeader()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 382
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    aget-object v2, p0, v4

    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Address;->toHeader()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 383
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 385
    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    aget-object v2, p0, v0

    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Address;->toHeader()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 388
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static toString([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;
    .locals 1
    .param p0, "addresses"    # [Lcom/android/emailcommon/mail/Address;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 328
    const-string/jumbo v0, ","

    invoke-static {p0, v0}, Lcom/android/emailcommon/mail/Address;->toString([Lcom/android/emailcommon/mail/Address;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString([Lcom/android/emailcommon/mail/Address;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "addresses"    # [Lcom/android/emailcommon/mail/Address;
    .param p1, "separator"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 339
    if-eqz p0, :cond_0

    array-length v2, p0

    if-nez v2, :cond_1

    .line 340
    :cond_0
    return-object v3

    .line 342
    :cond_1
    array-length v2, p0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 343
    aget-object v2, p0, v4

    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Address;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 345
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    aget-object v2, p0, v4

    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Address;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 346
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 347
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    aget-object v2, p0, v0

    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Address;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 351
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 537
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 257
    instance-of v0, p1, Lcom/android/emailcommon/mail/Address;

    if-eqz v0, :cond_0

    .line 266
    invoke-virtual {p0}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lcom/android/emailcommon/mail/Address;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 268
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/emailcommon/mail/Address;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getPersonal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/emailcommon/mail/Address;->mPersonal:Ljava/lang/String;

    return-object v0
.end method

.method public getSimplifiedName()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 110
    iget-object v2, p0, Lcom/android/emailcommon/mail/Address;->mSimplifiedName:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 111
    iget-object v2, p0, Lcom/android/emailcommon/mail/Address;->mPersonal:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/emailcommon/mail/Address;->mAddress:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 114
    :cond_0
    iget-object v2, p0, Lcom/android/emailcommon/mail/Address;->mPersonal:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 118
    iget-object v2, p0, Lcom/android/emailcommon/mail/Address;->mPersonal:Ljava/lang/String;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 119
    .local v1, "end":I
    :goto_0
    if-lez v1, :cond_4

    iget-object v2, p0, Lcom/android/emailcommon/mail/Address;->mPersonal:Ljava/lang/String;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2c

    if-ne v2, v3, :cond_4

    .line 120
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 112
    .end local v1    # "end":I
    :cond_1
    iget-object v2, p0, Lcom/android/emailcommon/mail/Address;->mAddress:Ljava/lang/String;

    const/16 v3, 0x40

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 113
    .local v0, "atSign":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    iget-object v2, p0, Lcom/android/emailcommon/mail/Address;->mAddress:Ljava/lang/String;

    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :goto_1
    iput-object v2, p0, Lcom/android/emailcommon/mail/Address;->mSimplifiedName:Ljava/lang/String;

    .line 129
    .end local v0    # "atSign":I
    :cond_2
    :goto_2
    iget-object v2, p0, Lcom/android/emailcommon/mail/Address;->mSimplifiedName:Ljava/lang/String;

    return-object v2

    .line 113
    .restart local v0    # "atSign":I
    :cond_3
    const-string/jumbo v2, ""

    goto :goto_1

    .line 122
    .end local v0    # "atSign":I
    .restart local v1    # "end":I
    :cond_4
    const/4 v2, 0x1

    if-ge v1, v2, :cond_5

    iget-object v2, p0, Lcom/android/emailcommon/mail/Address;->mPersonal:Ljava/lang/String;

    :goto_3
    iput-object v2, p0, Lcom/android/emailcommon/mail/Address;->mSimplifiedName:Ljava/lang/String;

    goto :goto_2

    :cond_5
    iget-object v2, p0, Lcom/android/emailcommon/mail/Address;->mPersonal:Ljava/lang/String;

    invoke-virtual {v2, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 125
    .end local v1    # "end":I
    :cond_6
    sget-object v2, Lcom/android/emailcommon/mail/Address;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "Unable to get a simplified name"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 126
    const-string/jumbo v2, ""

    iput-object v2, p0, Lcom/android/emailcommon/mail/Address;->mSimplifiedName:Ljava/lang/String;

    goto :goto_2
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 2
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 156
    sget-object v0, Lcom/android/emailcommon/mail/Address;->REMOVE_OPTIONAL_BRACKET:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string/jumbo v1, "$1"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/mail/Address;->mAddress:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public setPersonal(Ljava/lang/String;)V
    .locals 1
    .param p1, "personal"    # Ljava/lang/String;

    .prologue
    .line 175
    invoke-static {p1}, Lcom/android/emailcommon/mail/Address;->decodeAddressPersonal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/mail/Address;->mPersonal:Ljava/lang/String;

    .line 174
    return-void
.end method

.method public toFriendly()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 399
    iget-object v0, p0, Lcom/android/emailcommon/mail/Address;->mPersonal:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/emailcommon/mail/Address;->mPersonal:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/android/emailcommon/mail/Address;->mPersonal:Ljava/lang/String;

    return-object v0

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/android/emailcommon/mail/Address;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public toHeader()Ljava/lang/String;
    .locals 2

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/emailcommon/mail/Address;->mPersonal:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/emailcommon/mail/Address;->mPersonal:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeAddressDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/emailcommon/mail/Address;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/android/emailcommon/mail/Address;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/emailcommon/mail/Address;->mPersonal:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/emailcommon/mail/Address;->mPersonal:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/emailcommon/mail/Address;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/android/emailcommon/mail/Address;->mAddress:Ljava/lang/String;

    return-object v0

    .line 285
    :cond_1
    iget-object v0, p0, Lcom/android/emailcommon/mail/Address;->mPersonal:Ljava/lang/String;

    const-string/jumbo v1, ".*[\\(\\)<>@,;:\\\\\".\\[\\]].*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/emailcommon/mail/Address;->mPersonal:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/emailcommon/mail/Address;->ensureQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/emailcommon/mail/Address;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 288
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/emailcommon/mail/Address;->mPersonal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/emailcommon/mail/Address;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 542
    iget-object v0, p0, Lcom/android/emailcommon/mail/Address;->mPersonal:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 543
    iget-object v0, p0, Lcom/android/emailcommon/mail/Address;->mAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 541
    return-void
.end method
