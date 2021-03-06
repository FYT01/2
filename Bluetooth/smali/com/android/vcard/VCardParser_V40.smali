.class public Lcom/android/vcard/VCardParser_V40;
.super Lcom/android/vcard/VCardParser;
.source "VCardParser_V40.java"


# static fields
.field static final sAcceptableEncoding:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final sKnownPropertyNameSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mVCardParserImpl:Lcom/android/vcard/VCardParserImpl_V40;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 39
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x26

    new-array v1, v1, [Ljava/lang/String;

    .line 40
    const-string/jumbo v2, "BEGIN"

    aput-object v2, v1, v4

    const-string/jumbo v2, "END"

    aput-object v2, v1, v5

    const-string/jumbo v2, "VERSION"

    aput-object v2, v1, v6

    .line 41
    const-string/jumbo v2, "SOURCE"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-string/jumbo v2, "KIND"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string/jumbo v2, "FN"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const-string/jumbo v2, "N"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const-string/jumbo v2, "NICKNAME"

    const/4 v3, 0x7

    aput-object v2, v1, v3

    .line 42
    const-string/jumbo v2, "PHOTO"

    const/16 v3, 0x8

    aput-object v2, v1, v3

    const-string/jumbo v2, "BDAY"

    const/16 v3, 0x9

    aput-object v2, v1, v3

    const-string/jumbo v2, "ANNIVERSARY"

    const/16 v3, 0xa

    aput-object v2, v1, v3

    const-string/jumbo v2, "GENDER"

    const/16 v3, 0xb

    aput-object v2, v1, v3

    const-string/jumbo v2, "ADR"

    const/16 v3, 0xc

    aput-object v2, v1, v3

    const-string/jumbo v2, "TEL"

    const/16 v3, 0xd

    aput-object v2, v1, v3

    .line 43
    const-string/jumbo v2, "EMAIL"

    const/16 v3, 0xe

    aput-object v2, v1, v3

    const-string/jumbo v2, "IMPP"

    const/16 v3, 0xf

    aput-object v2, v1, v3

    const-string/jumbo v2, "LANG"

    const/16 v3, 0x10

    aput-object v2, v1, v3

    const-string/jumbo v2, "TZ"

    const/16 v3, 0x11

    aput-object v2, v1, v3

    const-string/jumbo v2, "GEO"

    const/16 v3, 0x12

    aput-object v2, v1, v3

    const-string/jumbo v2, "TITLE"

    const/16 v3, 0x13

    aput-object v2, v1, v3

    const-string/jumbo v2, "ROLE"

    const/16 v3, 0x14

    aput-object v2, v1, v3

    .line 44
    const-string/jumbo v2, "LOGO"

    const/16 v3, 0x15

    aput-object v2, v1, v3

    const-string/jumbo v2, "ORG"

    const/16 v3, 0x16

    aput-object v2, v1, v3

    const-string/jumbo v2, "MEMBER"

    const/16 v3, 0x17

    aput-object v2, v1, v3

    const-string/jumbo v2, "RELATED"

    const/16 v3, 0x18

    aput-object v2, v1, v3

    const-string/jumbo v2, "CATEGORIES"

    const/16 v3, 0x19

    aput-object v2, v1, v3

    .line 45
    const-string/jumbo v2, "NOTE"

    const/16 v3, 0x1a

    aput-object v2, v1, v3

    const-string/jumbo v2, "PRODID"

    const/16 v3, 0x1b

    aput-object v2, v1, v3

    const-string/jumbo v2, "REV"

    const/16 v3, 0x1c

    aput-object v2, v1, v3

    const-string/jumbo v2, "SOUND"

    const/16 v3, 0x1d

    aput-object v2, v1, v3

    const-string/jumbo v2, "UID"

    const/16 v3, 0x1e

    aput-object v2, v1, v3

    const-string/jumbo v2, "CLIENTPIDMAP"

    const/16 v3, 0x1f

    aput-object v2, v1, v3

    .line 46
    const-string/jumbo v2, "URL"

    const/16 v3, 0x20

    aput-object v2, v1, v3

    const-string/jumbo v2, "KEY"

    const/16 v3, 0x21

    aput-object v2, v1, v3

    const-string/jumbo v2, "FBURL"

    const/16 v3, 0x22

    aput-object v2, v1, v3

    const-string/jumbo v2, "CALENDRURI"

    const/16 v3, 0x23

    aput-object v2, v1, v3

    const-string/jumbo v2, "CALURI"

    const/16 v3, 0x24

    aput-object v2, v1, v3

    const-string/jumbo v2, "XML"

    const/16 v3, 0x25

    aput-object v2, v1, v3

    .line 39
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 38
    sput-object v0, Lcom/android/vcard/VCardParser_V40;->sKnownPropertyNameSet:Ljava/util/Set;

    .line 54
    new-instance v0, Ljava/util/HashSet;

    new-array v1, v6, [Ljava/lang/String;

    .line 55
    const-string/jumbo v2, "8BIT"

    aput-object v2, v1, v4

    .line 56
    const-string/jumbo v2, "B"

    aput-object v2, v1, v5

    .line 54
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 53
    sput-object v0, Lcom/android/vcard/VCardParser_V40;->sAcceptableEncoding:Ljava/util/Set;

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/vcard/VCardParser;-><init>()V

    .line 61
    new-instance v0, Lcom/android/vcard/VCardParserImpl_V40;

    invoke-direct {v0}, Lcom/android/vcard/VCardParserImpl_V40;-><init>()V

    iput-object v0, p0, Lcom/android/vcard/VCardParser_V40;->mVCardParserImpl:Lcom/android/vcard/VCardParserImpl_V40;

    .line 60
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "vcardType"    # I

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/vcard/VCardParser;-><init>()V

    .line 65
    new-instance v0, Lcom/android/vcard/VCardParserImpl_V40;

    invoke-direct {v0, p1}, Lcom/android/vcard/VCardParserImpl_V40;-><init>(I)V

    iput-object v0, p0, Lcom/android/vcard/VCardParser_V40;->mVCardParserImpl:Lcom/android/vcard/VCardParserImpl_V40;

    .line 64
    return-void
.end method


# virtual methods
.method public addInterpreter(Lcom/android/vcard/VCardInterpreter;)V
    .locals 1
    .param p1, "interpreter"    # Lcom/android/vcard/VCardInterpreter;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/vcard/VCardParser_V40;->mVCardParserImpl:Lcom/android/vcard/VCardParserImpl_V40;

    invoke-virtual {v0, p1}, Lcom/android/vcard/VCardParserImpl_V40;->addInterpreter(Lcom/android/vcard/VCardInterpreter;)V

    .line 69
    return-void
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/vcard/VCardParser_V40;->mVCardParserImpl:Lcom/android/vcard/VCardParserImpl_V40;

    invoke-virtual {v0}, Lcom/android/vcard/VCardParserImpl_V40;->cancel()V

    .line 84
    return-void
.end method

.method public parse(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/vcard/VCardParser_V40;->mVCardParserImpl:Lcom/android/vcard/VCardParserImpl_V40;

    invoke-virtual {v0, p1}, Lcom/android/vcard/VCardParserImpl_V40;->parse(Ljava/io/InputStream;)V

    .line 74
    return-void
.end method

.method public parseOne(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/vcard/VCardParser_V40;->mVCardParserImpl:Lcom/android/vcard/VCardParserImpl_V40;

    invoke-virtual {v0, p1}, Lcom/android/vcard/VCardParserImpl_V40;->parseOne(Ljava/io/InputStream;)V

    .line 79
    return-void
.end method
