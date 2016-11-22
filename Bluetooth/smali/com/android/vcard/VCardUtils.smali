.class public Lcom/android/vcard/VCardUtils;
.super Ljava/lang/Object;
.source "VCardUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vcard/VCardUtils$DecoderException;,
        Lcom/android/vcard/VCardUtils$QuotedPrintableCodecPort;,
        Lcom/android/vcard/VCardUtils$PhoneNumberUtilsPort;,
        Lcom/android/vcard/VCardUtils$TextUtilsPort;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "vCard"

.field private static final sEscapeIndicatorsV30:[I

.field private static final sEscapeIndicatorsV40:[I

.field private static final sKnownImPropNameMap_ItoS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sKnownPhoneTypeMap_StoI:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sKnownPhoneTypesMap_ItoS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sMobilePhoneLabelSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sPhoneTypesUnknownToContactsSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sUnAcceptableAsciiInV21WordSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x7

    const/4 v7, 0x6

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 129
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypesMap_ItoS:Ljava/util/Map;

    .line 130
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    .line 132
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypesMap_ItoS:Ljava/util/Map;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "CAR"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const-string/jumbo v1, "CAR"

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypesMap_ItoS:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "PAGER"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const-string/jumbo v1, "PAGER"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypesMap_ItoS:Ljava/util/Map;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "ISDN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const-string/jumbo v1, "ISDN"

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const-string/jumbo v1, "HOME"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const-string/jumbo v1, "WORK"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const-string/jumbo v1, "CELL"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const-string/jumbo v1, "OTHER"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const-string/jumbo v1, "CALLBACK"

    .line 145
    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 144
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    .line 147
    const-string/jumbo v1, "COMPANY-MAIN"

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 146
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const-string/jumbo v1, "RADIO"

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const-string/jumbo v1, "TTY-TDD"

    .line 150
    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 149
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const-string/jumbo v1, "ASSISTANT"

    .line 152
    const/16 v2, 0x13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 151
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const-string/jumbo v1, "VOICE"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/vcard/VCardUtils;->sPhoneTypesUnknownToContactsSet:Ljava/util/Set;

    .line 157
    sget-object v0, Lcom/android/vcard/VCardUtils;->sPhoneTypesUnknownToContactsSet:Ljava/util/Set;

    const-string/jumbo v1, "MODEM"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 158
    sget-object v0, Lcom/android/vcard/VCardUtils;->sPhoneTypesUnknownToContactsSet:Ljava/util/Set;

    const-string/jumbo v1, "MSG"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 159
    sget-object v0, Lcom/android/vcard/VCardUtils;->sPhoneTypesUnknownToContactsSet:Ljava/util/Set;

    const-string/jumbo v1, "BBS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 160
    sget-object v0, Lcom/android/vcard/VCardUtils;->sPhoneTypesUnknownToContactsSet:Ljava/util/Set;

    const-string/jumbo v1, "VIDEO"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 162
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    .line 163
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "X-AIM"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "X-MSN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "X-YAHOO"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "X-SKYPE-USERNAME"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 168
    const-string/jumbo v2, "X-GOOGLE-TALK"

    .line 167
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "X-ICQ"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "X-JABBER"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "X-QQ"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "X-NETMEETING"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    .line 179
    const-string/jumbo v2, "MOBILE"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "\u643a\u5e2f\u96fb\u8a71"

    aput-object v2, v1, v4

    const-string/jumbo v2, "\u643a\u5e2f"

    aput-object v2, v1, v5

    const-string/jumbo v2, "\u30b1\u30a4\u30bf\u30a4"

    aput-object v2, v1, v6

    .line 180
    const-string/jumbo v2, "\uff79\uff72\uff80\uff72"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 178
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/vcard/VCardUtils;->sMobilePhoneLabelSet:Ljava/util/Set;

    .line 473
    new-instance v0, Ljava/util/HashSet;

    new-array v1, v8, [Ljava/lang/Character;

    const/16 v2, 0x5b

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/16 v2, 0x5d

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v1, v4

    const/16 v2, 0x3d

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v1, v5

    const/16 v2, 0x3a

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v1, v6

    const/16 v2, 0x2e

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const/16 v2, 0x2c

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 472
    sput-object v0, Lcom/android/vcard/VCardUtils;->sUnAcceptableAsciiInV21WordSet:Ljava/util/Set;

    .line 575
    const/16 v0, 0x3a

    const/16 v1, 0x3b

    const/16 v2, 0x2c

    const/16 v3, 0x20

    .line 574
    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/android/vcard/VCardUtils;->sEscapeIndicatorsV30:[I

    .line 579
    const/16 v0, 0x3b

    const/16 v1, 0x3a

    .line 578
    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/vcard/VCardUtils;->sEscapeIndicatorsV40:[I

    .line 43
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 853
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appearsLikeAndroidVCardQuotedPrintable(Ljava/lang/String;)Z
    .locals 6
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 709
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    rem-int/lit8 v1, v2, 0x3

    .line 710
    .local v1, "remainder":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    if-eq v1, v5, :cond_1

    if-eqz v1, :cond_1

    .line 711
    :cond_0
    return v4

    .line 713
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 714
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3d

    if-eq v2, v3, :cond_2

    .line 715
    return v4

    .line 713
    :cond_2
    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    .line 718
    :cond_3
    return v5
.end method

.method public static varargs areAllEmpty([Ljava/lang/String;)Z
    .locals 6
    .param p0, "values"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 685
    if-nez p0, :cond_0

    .line 686
    return v5

    .line 689
    :cond_0
    array-length v3, p0

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v0, p0, v1

    .line 690
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 691
    return v2

    .line 689
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 694
    .end local v0    # "value":Ljava/lang/String;
    :cond_2
    return v5
.end method

.method public static constructListFromValue(Ljava/lang/String;I)Ljava/util/List;
    .locals 9
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "vcardType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 376
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 377
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 378
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 379
    .local v3, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_6

    .line 380
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 381
    .local v1, "ch":C
    const/16 v7, 0x5c

    if-ne v1, v7, :cond_4

    add-int/lit8 v7, v3, -0x1

    if-ge v2, v7, :cond_4

    .line 382
    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 384
    .local v5, "nextCh":C
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->isVersion40(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 385
    invoke-static {v5}, Lcom/android/vcard/VCardParserImpl_V40;->unescapeCharacter(C)Ljava/lang/String;

    move-result-object v6

    .line 396
    .local v6, "unescapedString":Ljava/lang/String;
    :goto_1
    if-eqz v6, :cond_3

    .line 397
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    add-int/lit8 v2, v2, 0x1

    .line 379
    .end local v5    # "nextCh":C
    .end local v6    # "unescapedString":Ljava/lang/String;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 386
    .restart local v5    # "nextCh":C
    :cond_0
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 387
    invoke-static {v5}, Lcom/android/vcard/VCardParserImpl_V30;->unescapeCharacter(C)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "unescapedString":Ljava/lang/String;
    goto :goto_1

    .line 389
    .end local v6    # "unescapedString":Ljava/lang/String;
    :cond_1
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->isVersion21(I)Z

    move-result v7

    if-nez v7, :cond_2

    .line 391
    const-string/jumbo v7, "vCard"

    const-string/jumbo v8, "Unknown vCard type"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    :cond_2
    invoke-static {v5}, Lcom/android/vcard/VCardParserImpl_V21;->unescapeCharacter(C)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "unescapedString":Ljava/lang/String;
    goto :goto_1

    .line 400
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 402
    .end local v5    # "nextCh":C
    .end local v6    # "unescapedString":Ljava/lang/String;
    :cond_4
    const/16 v7, 0x3b

    if-ne v1, v7, :cond_5

    .line 403
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0    # "builder":Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    goto :goto_2

    .line 406
    :cond_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 409
    .end local v1    # "ch":C
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 410
    return-object v4
.end method

.method public static constructNameFromElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "nameOrder"    # I
    .param p1, "familyName"    # Ljava/lang/String;
    .param p2, "middleName"    # Ljava/lang/String;
    .param p3, "givenName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    move v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    .line 336
    invoke-static/range {v0 .. v5}, Lcom/android/vcard/VCardUtils;->constructNameFromElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static constructNameFromElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "nameOrder"    # I
    .param p1, "familyName"    # Ljava/lang/String;
    .param p2, "middleName"    # Ljava/lang/String;
    .param p3, "givenName"    # Ljava/lang/String;
    .param p4, "prefix"    # Ljava/lang/String;
    .param p5, "suffix"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x20

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 344
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-static {p0, p1, p2, p3}, Lcom/android/vcard/VCardUtils;->sortNameElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 345
    .local v2, "nameList":[Ljava/lang/String;
    const/4 v1, 0x1

    .line 346
    .local v1, "first":Z
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 347
    const/4 v1, 0x0

    .line 348
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    :cond_0
    const/4 v4, 0x0

    array-length v5, v2

    :goto_0
    if-ge v4, v5, :cond_3

    aget-object v3, v2, v4

    .line 351
    .local v3, "namePart":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 352
    if-eqz v1, :cond_2

    .line 353
    const/4 v1, 0x0

    .line 357
    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 355
    :cond_2
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 360
    .end local v3    # "namePart":Ljava/lang/String;
    :cond_3
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 361
    if-nez v1, :cond_4

    .line 362
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 364
    :cond_4
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static containsOnlyAlphaDigitHyphen(Ljava/util/Collection;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, "values":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v13, 0x1

    .line 495
    if-nez p0, :cond_0

    .line 496
    return v13

    .line 498
    :cond_0
    const/16 v11, 0x41

    .line 499
    .local v11, "upperAlphabetFirst":I
    const/16 v10, 0x5b

    .line 500
    .local v10, "upperAlphabetAfterLast":I
    const/16 v7, 0x61

    .line 501
    .local v7, "lowerAlphabetFirst":I
    const/16 v6, 0x7b

    .line 502
    .local v6, "lowerAlphabetAfterLast":I
    const/16 v2, 0x30

    .line 503
    .local v2, "digitFirst":I
    const/16 v1, 0x3a

    .line 504
    .local v1, "digitAfterLast":I
    const/16 v3, 0x2d

    .line 505
    .local v3, "hyphen":I
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "str$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 506
    .local v8, "str":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 509
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v5

    .line 510
    .local v5, "length":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v5, :cond_1

    .line 511
    invoke-virtual {v8, v4}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 512
    .local v0, "codepoint":I
    const/16 v12, 0x61

    if-gt v12, v0, :cond_2

    const/16 v12, 0x7b

    if-lt v0, v12, :cond_5

    .line 513
    :cond_2
    const/16 v12, 0x41

    if-gt v12, v0, :cond_3

    const/16 v12, 0x5b

    if-lt v0, v12, :cond_5

    .line 514
    :cond_3
    const/16 v12, 0x30

    if-gt v12, v0, :cond_4

    const/16 v12, 0x3a

    if-lt v0, v12, :cond_5

    .line 515
    :cond_4
    const/16 v12, 0x2d

    if-eq v0, v12, :cond_5

    .line 516
    const/4 v12, 0x0

    return v12

    .line 510
    :cond_5
    invoke-virtual {v8, v4, v13}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v4

    goto :goto_0

    .line 520
    .end local v0    # "codepoint":I
    .end local v4    # "i":I
    .end local v5    # "length":I
    .end local v8    # "str":Ljava/lang/String;
    :cond_6
    return v13
.end method

.method public static varargs containsOnlyAlphaDigitHyphen([Ljava/lang/String;)Z
    .locals 1
    .param p0, "values"    # [Ljava/lang/String;

    .prologue
    .line 488
    if-nez p0, :cond_0

    .line 489
    const/4 v0, 0x1

    return v0

    .line 491
    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vcard/VCardUtils;->containsOnlyAlphaDigitHyphen(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public static containsOnlyNonCrLfPrintableAscii(Ljava/util/Collection;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, "values":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v8, 0x1

    .line 452
    if-nez p0, :cond_0

    .line 453
    return v8

    .line 455
    :cond_0
    const/16 v0, 0x20

    .line 456
    .local v0, "asciiFirst":I
    const/16 v1, 0x7e

    .line 457
    .local v1, "asciiLast":I
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "value$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 458
    .local v5, "value":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 461
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    .line 462
    .local v4, "length":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 463
    invoke-virtual {v5, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    .line 464
    .local v2, "c":I
    const/16 v7, 0x20

    if-gt v7, v2, :cond_2

    const/16 v7, 0x7e

    if-le v2, v7, :cond_3

    .line 465
    :cond_2
    const/4 v7, 0x0

    return v7

    .line 462
    :cond_3
    invoke-virtual {v5, v3, v8}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v3

    goto :goto_0

    .line 469
    .end local v2    # "c":I
    .end local v3    # "i":I
    .end local v4    # "length":I
    .end local v5    # "value":Ljava/lang/String;
    :cond_4
    return v8
.end method

.method public static varargs containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z
    .locals 1
    .param p0, "values"    # [Ljava/lang/String;

    .prologue
    .line 445
    if-nez p0, :cond_0

    .line 446
    const/4 v0, 0x1

    return v0

    .line 448
    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public static containsOnlyPrintableAscii(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, "values":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v3, 0x1

    .line 421
    if-nez p0, :cond_0

    .line 422
    return v3

    .line 424
    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "value$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 425
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 428
    invoke-static {v0}, Lcom/android/vcard/VCardUtils$TextUtilsPort;->isPrintableAsciiOnly(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 429
    const/4 v2, 0x0

    return v2

    .line 432
    .end local v0    # "value":Ljava/lang/String;
    :cond_2
    return v3
.end method

.method public static varargs containsOnlyPrintableAscii([Ljava/lang/String;)Z
    .locals 1
    .param p0, "values"    # [Ljava/lang/String;

    .prologue
    .line 414
    if-nez p0, :cond_0

    .line 415
    const/4 v0, 0x1

    return v0

    .line 417
    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vcard/VCardUtils;->containsOnlyPrintableAscii(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public static containsOnlyWhiteSpaces(Ljava/util/Collection;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, "values":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v5, 0x1

    .line 531
    if-nez p0, :cond_0

    .line 532
    return v5

    .line 534
    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "str$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 535
    .local v2, "str":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 538
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 539
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 540
    invoke-virtual {v2, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 541
    const/4 v4, 0x0

    return v4

    .line 539
    :cond_2
    invoke-virtual {v2, v0, v5}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v0

    goto :goto_0

    .line 545
    .end local v0    # "i":I
    .end local v1    # "length":I
    .end local v2    # "str":Ljava/lang/String;
    :cond_3
    return v5
.end method

.method public static varargs containsOnlyWhiteSpaces([Ljava/lang/String;)Z
    .locals 1
    .param p0, "values"    # [Ljava/lang/String;

    .prologue
    .line 524
    if-nez p0, :cond_0

    .line 525
    const/4 v0, 0x1

    return v0

    .line 527
    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vcard/VCardUtils;->containsOnlyWhiteSpaces(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public static final convertStringCharset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "originalString"    # Ljava/lang/String;
    .param p1, "sourceCharset"    # Ljava/lang/String;
    .param p2, "targetCharset"    # Ljava/lang/String;

    .prologue
    .line 834
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 835
    return-object p0

    .line 837
    :cond_0
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    .line 838
    .local v2, "charset":Ljava/nio/charset/Charset;
    invoke-virtual {v2, p0}, Ljava/nio/charset/Charset;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 841
    .local v0, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    new-array v1, v4, [B

    .line 842
    .local v1, "bytes":[B
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 844
    :try_start_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 845
    :catch_0
    move-exception v3

    .line 846
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v4, "vCard"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to encode: charset="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    const/4 v4, 0x0

    return-object v4
.end method

.method public static final getAppropriateParser(I)Lcom/android/vcard/VCardParser;
    .locals 2
    .param p0, "vcardType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 821
    invoke-static {p0}, Lcom/android/vcard/VCardConfig;->isVersion21(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 822
    new-instance v0, Lcom/android/vcard/VCardParser_V21;

    invoke-direct {v0}, Lcom/android/vcard/VCardParser_V21;-><init>()V

    return-object v0

    .line 823
    :cond_0
    invoke-static {p0}, Lcom/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 824
    new-instance v0, Lcom/android/vcard/VCardParser_V30;

    invoke-direct {v0}, Lcom/android/vcard/VCardParser_V30;-><init>()V

    return-object v0

    .line 825
    :cond_1
    invoke-static {p0}, Lcom/android/vcard/VCardConfig;->isVersion40(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 826
    new-instance v0, Lcom/android/vcard/VCardParser_V40;

    invoke-direct {v0}, Lcom/android/vcard/VCardParser_V40;-><init>()V

    return-object v0

    .line 828
    :cond_2
    new-instance v0, Lcom/android/vcard/exception/VCardException;

    const-string/jumbo v1, "Version is not specified"

    invoke-direct {v0, v1}, Lcom/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getPhoneNumberFormat(I)I
    .locals 1
    .param p0, "vcardType"    # I

    .prologue
    .line 327
    invoke-static {p0}, Lcom/android/vcard/VCardConfig;->isJapaneseDevice(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    const/4 v0, 0x2

    return v0

    .line 330
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static getPhoneTypeFromStrings(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/Object;
    .locals 14
    .param p1, "number"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .local p0, "types":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v13, 0x7

    .line 193
    if-nez p1, :cond_0

    .line 194
    const-string/jumbo p1, ""

    .line 196
    :cond_0
    const/4 v6, -0x1

    .line 197
    .local v6, "type":I
    const/4 v3, 0x0

    .line 198
    .local v3, "label":Ljava/lang/String;
    const/4 v2, 0x0

    .line 199
    .local v2, "isFax":Z
    const/4 v0, 0x0

    .line 201
    .local v0, "hasPref":Z
    if-eqz p0, :cond_8

    .line 202
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .end local v3    # "label":Ljava/lang/String;
    .local v9, "typeStringOrg$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 203
    .local v8, "typeStringOrg":Ljava/lang/String;
    if-eqz v8, :cond_1

    .line 206
    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    .line 207
    .local v10, "typeStringUpperCase":Ljava/lang/String;
    const-string/jumbo v11, "PREF"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 208
    const/4 v0, 0x1

    goto :goto_0

    .line 209
    :cond_2
    const-string/jumbo v11, "FAX"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 210
    const/4 v2, 0x1

    goto :goto_0

    .line 213
    :cond_3
    const-string/jumbo v11, "X-"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    if-gez v6, :cond_5

    .line 214
    const/4 v11, 0x2

    invoke-virtual {v8, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 218
    .local v4, "labelCandidate":Ljava/lang/String;
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_1

    .line 222
    sget-object v11, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 223
    .local v5, "tmp":Ljava/lang/Integer;
    if-eqz v5, :cond_7

    .line 224
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 237
    .local v7, "typeCandidate":I
    const-string/jumbo v11, "@"

    invoke-virtual {p1, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 238
    .local v1, "indexOfAt":I
    const/4 v11, 0x6

    if-ne v7, v11, :cond_6

    .line 239
    if-lez v1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    if-ge v1, v11, :cond_6

    .line 243
    :cond_4
    :goto_2
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_0

    .line 216
    .end local v1    # "indexOfAt":I
    .end local v4    # "labelCandidate":Ljava/lang/String;
    .end local v5    # "tmp":Ljava/lang/Integer;
    .end local v7    # "typeCandidate":I
    :cond_5
    move-object v4, v8

    .restart local v4    # "labelCandidate":Ljava/lang/String;
    goto :goto_1

    .line 240
    .restart local v1    # "indexOfAt":I
    .restart local v5    # "tmp":Ljava/lang/Integer;
    .restart local v7    # "typeCandidate":I
    :cond_6
    if-ltz v6, :cond_4

    .line 241
    if-eqz v6, :cond_4

    .line 242
    if-ne v6, v13, :cond_1

    goto :goto_2

    .line 245
    .end local v1    # "indexOfAt":I
    .end local v7    # "typeCandidate":I
    :cond_7
    if-gez v6, :cond_1

    .line 246
    const/4 v6, 0x0

    .line 247
    move-object v3, v4

    .local v3, "label":Ljava/lang/String;
    goto :goto_0

    .line 252
    .end local v3    # "label":Ljava/lang/String;
    .end local v4    # "labelCandidate":Ljava/lang/String;
    .end local v5    # "tmp":Ljava/lang/Integer;
    .end local v8    # "typeStringOrg":Ljava/lang/String;
    .end local v9    # "typeStringOrg$iterator":Ljava/util/Iterator;
    .end local v10    # "typeStringUpperCase":Ljava/lang/String;
    :cond_8
    if-gez v6, :cond_9

    .line 253
    if-eqz v0, :cond_b

    .line 254
    const/16 v6, 0xc

    .line 260
    :cond_9
    :goto_3
    if-eqz v2, :cond_a

    .line 261
    const/4 v11, 0x1

    if-ne v6, v11, :cond_c

    .line 262
    const/4 v6, 0x5

    .line 269
    :cond_a
    :goto_4
    if-nez v6, :cond_e

    .line 270
    return-object v3

    .line 257
    :cond_b
    const/4 v6, 0x1

    goto :goto_3

    .line 263
    :cond_c
    const/4 v11, 0x3

    if-ne v6, v11, :cond_d

    .line 264
    const/4 v6, 0x4

    goto :goto_4

    .line 265
    :cond_d
    if-ne v6, v13, :cond_a

    .line 266
    const/16 v6, 0xd

    goto :goto_4

    .line 272
    :cond_e
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    return-object v11
.end method

.method public static getPhoneTypeString(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # Ljava/lang/Integer;

    .prologue
    .line 184
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypesMap_ItoS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getPropertyNameForIm(I)Ljava/lang/String;
    .locals 2
    .param p0, "protocol"    # I

    .prologue
    .line 289
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static guessImageType([B)Ljava/lang/String;
    .locals 7
    .param p0, "input"    # [B

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 662
    if-nez p0, :cond_0

    .line 663
    return-object v5

    .line 665
    :cond_0
    array-length v0, p0

    if-lt v0, v6, :cond_1

    aget-byte v0, p0, v2

    const/16 v1, 0x47

    if-ne v0, v1, :cond_1

    aget-byte v0, p0, v3

    const/16 v1, 0x49

    if-ne v0, v1, :cond_1

    aget-byte v0, p0, v4

    const/16 v1, 0x46

    if-ne v0, v1, :cond_1

    .line 666
    const-string/jumbo v0, "GIF"

    return-object v0

    .line 667
    :cond_1
    array-length v0, p0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_2

    aget-byte v0, p0, v2

    const/16 v1, -0x77

    if-ne v0, v1, :cond_2

    .line 668
    aget-byte v0, p0, v3

    const/16 v1, 0x50

    if-ne v0, v1, :cond_2

    aget-byte v0, p0, v4

    const/16 v1, 0x4e

    if-ne v0, v1, :cond_2

    aget-byte v0, p0, v6

    const/16 v1, 0x47

    if-ne v0, v1, :cond_2

    .line 672
    const-string/jumbo v0, "PNG"

    return-object v0

    .line 673
    :cond_2
    array-length v0, p0

    if-lt v0, v4, :cond_3

    aget-byte v0, p0, v2

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 674
    aget-byte v0, p0, v3

    const/16 v1, -0x28

    if-ne v0, v1, :cond_3

    .line 675
    const-string/jumbo v0, "JPEG"

    return-object v0

    .line 677
    :cond_3
    return-object v5
.end method

.method public static isMobilePhoneLabel(Ljava/lang/String;)Z
    .locals 1
    .param p0, "label"    # Ljava/lang/String;

    .prologue
    .line 281
    const-string/jumbo v0, "_AUTO_CELL"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/vcard/VCardUtils;->sMobilePhoneLabelSet:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isV21Word(Ljava/lang/String;)Z
    .locals 8
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 558
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 559
    return v7

    .line 561
    :cond_0
    const/16 v0, 0x20

    .line 562
    .local v0, "asciiFirst":I
    const/16 v1, 0x7e

    .line 563
    .local v1, "asciiLast":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 564
    .local v4, "length":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_3

    .line 565
    invoke-virtual {p0, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    .line 566
    .local v2, "c":I
    const/16 v5, 0x20

    if-gt v5, v2, :cond_1

    const/16 v5, 0x7e

    if-le v2, v5, :cond_2

    .line 568
    :cond_1
    const/4 v5, 0x0

    return v5

    .line 567
    :cond_2
    sget-object v5, Lcom/android/vcard/VCardUtils;->sUnAcceptableAsciiInV21WordSet:Ljava/util/Set;

    int-to-char v6, v2

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    .line 566
    if-nez v5, :cond_1

    .line 564
    invoke-virtual {p0, v3, v7}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v3

    goto :goto_0

    .line 571
    .end local v2    # "c":I
    :cond_3
    return v7
.end method

.method public static isValidInV21ButUnknownToContactsPhoteType(Ljava/lang/String;)Z
    .locals 1
    .param p0, "label"    # Ljava/lang/String;

    .prologue
    .line 285
    sget-object v0, Lcom/android/vcard/VCardUtils;->sPhoneTypesUnknownToContactsSet:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static parseQuotedPrintable(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 21
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "strictLineBreaking"    # Z
    .param p2, "sourceCharset"    # Ljava/lang/String;
    .param p3, "targetCharset"    # Ljava/lang/String;

    .prologue
    .line 733
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 734
    .local v2, "builder":Ljava/lang/StringBuilder;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v9

    .line 735
    .local v9, "length":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v9, :cond_2

    .line 736
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 737
    .local v3, "ch":C
    const/16 v17, 0x3d

    move/from16 v0, v17

    if-ne v3, v0, :cond_1

    add-int/lit8 v17, v9, -0x1

    move/from16 v0, v17

    if-ge v7, v0, :cond_1

    .line 738
    add-int/lit8 v17, v7, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v13

    .line 739
    .local v13, "nextCh":C
    const/16 v17, 0x20

    move/from16 v0, v17

    if-eq v13, v0, :cond_0

    const/16 v17, 0x9

    move/from16 v0, v17

    if-ne v13, v0, :cond_1

    .line 740
    :cond_0
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 741
    add-int/lit8 v7, v7, 0x1

    .line 735
    .end local v13    # "nextCh":C
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 745
    :cond_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 747
    .end local v3    # "ch":C
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 751
    .local v14, "quotedPrintable":Ljava/lang/String;
    if-eqz p1, :cond_4

    .line 752
    const-string/jumbo v17, "\r\n"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 782
    .local v11, "lines":[Ljava/lang/String;
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    .end local v2    # "builder":Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 783
    .restart local v2    # "builder":Ljava/lang/StringBuilder;
    const/16 v17, 0x0

    array-length v0, v11

    move/from16 v18, v0

    :goto_3
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_a

    aget-object v10, v11, v17

    .line 784
    .local v10, "line":Ljava/lang/String;
    const-string/jumbo v19, "="

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 785
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    const/16 v20, 0x0

    move/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 787
    :cond_3
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 783
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 754
    .end local v10    # "line":Ljava/lang/String;
    .end local v11    # "lines":[Ljava/lang/String;
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    .end local v2    # "builder":Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 755
    .restart local v2    # "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v9

    .line 756
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 757
    .local v12, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v7, 0x0

    :goto_4
    if-ge v7, v9, :cond_8

    .line 758
    invoke-virtual {v14, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 759
    .restart local v3    # "ch":C
    const/16 v17, 0xa

    move/from16 v0, v17

    if-ne v3, v0, :cond_6

    .line 760
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 761
    new-instance v2, Ljava/lang/StringBuilder;

    .end local v2    # "builder":Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 757
    .restart local v2    # "builder":Ljava/lang/StringBuilder;
    :cond_5
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 762
    :cond_6
    const/16 v17, 0xd

    move/from16 v0, v17

    if-ne v3, v0, :cond_7

    .line 763
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 764
    new-instance v2, Ljava/lang/StringBuilder;

    .end local v2    # "builder":Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 765
    .restart local v2    # "builder":Ljava/lang/StringBuilder;
    add-int/lit8 v17, v9, -0x1

    move/from16 v0, v17

    if-ge v7, v0, :cond_5

    .line 766
    add-int/lit8 v17, v7, 0x1

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->charAt(I)C

    move-result v13

    .line 767
    .restart local v13    # "nextCh":C
    const/16 v17, 0xa

    move/from16 v0, v17

    if-ne v13, v0, :cond_5

    .line 768
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 772
    .end local v13    # "nextCh":C
    :cond_7
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 775
    .end local v3    # "ch":C
    :cond_8
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 776
    .local v8, "lastLine":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_9

    .line 777
    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 779
    :cond_9
    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/String;

    .restart local v11    # "lines":[Ljava/lang/String;
    goto/16 :goto_2

    .line 790
    .end local v8    # "lastLine":Ljava/lang/String;
    .end local v12    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 791
    .local v16, "rawString":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 792
    const-string/jumbo v17, "vCard"

    const-string/jumbo v18, "Given raw string is empty."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    :cond_b
    const/4 v15, 0x0

    .line 797
    .local v15, "rawBytes":[B
    :try_start_0
    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    .line 803
    .local v15, "rawBytes":[B
    :goto_6
    const/4 v4, 0x0

    .line 805
    .local v4, "decodedBytes":[B
    :try_start_1
    invoke-static {v15}, Lcom/android/vcard/VCardUtils$QuotedPrintableCodecPort;->decodeQuotedPrintable([B)[B
    :try_end_1
    .catch Lcom/android/vcard/VCardUtils$DecoderException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 812
    .local v4, "decodedBytes":[B
    :goto_7
    :try_start_2
    new-instance v17, Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-direct {v0, v4, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    return-object v17

    .line 798
    .end local v4    # "decodedBytes":[B
    .local v15, "rawBytes":[B
    :catch_0
    move-exception v6

    .line 799
    .local v6, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v17, "vCard"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Failed to decode: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    .local v15, "rawBytes":[B
    goto :goto_6

    .line 806
    .end local v6    # "e":Ljava/io/UnsupportedEncodingException;
    .local v4, "decodedBytes":[B
    :catch_1
    move-exception v5

    .line 807
    .local v5, "e":Lcom/android/vcard/VCardUtils$DecoderException;
    const-string/jumbo v17, "vCard"

    const-string/jumbo v18, "DecoderException is thrown."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    move-object v4, v15

    .local v4, "decodedBytes":[B
    goto :goto_7

    .line 813
    .end local v5    # "e":Lcom/android/vcard/VCardUtils$DecoderException;
    :catch_2
    move-exception v6

    .line 814
    .restart local v6    # "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v17, "vCard"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Failed to encode: charset="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    new-instance v17, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V

    return-object v17
.end method

.method public static sortNameElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p0, "nameOrder"    # I
    .param p1, "familyName"    # Ljava/lang/String;
    .param p2, "middleName"    # Ljava/lang/String;
    .param p3, "givenName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 294
    const/4 v2, 0x3

    new-array v0, v2, [Ljava/lang/String;

    .line 295
    .local v0, "list":[Ljava/lang/String;
    invoke-static {p0}, Lcom/android/vcard/VCardConfig;->getNameOrderType(I)I

    move-result v1

    .line 296
    .local v1, "nameOrderType":I
    sparse-switch v1, :sswitch_data_0

    .line 317
    aput-object p3, v0, v3

    .line 318
    aput-object p2, v0, v4

    .line 319
    aput-object p1, v0, v5

    .line 323
    :goto_0
    return-object v0

    .line 298
    :sswitch_0
    new-array v2, v4, [Ljava/lang/String;

    aput-object p1, v2, v3

    invoke-static {v2}, Lcom/android/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 299
    new-array v2, v4, [Ljava/lang/String;

    aput-object p3, v2, v3

    invoke-static {v2}, Lcom/android/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v2

    .line 298
    if-eqz v2, :cond_0

    .line 300
    aput-object p3, v0, v3

    .line 301
    aput-object p2, v0, v4

    .line 302
    aput-object p1, v0, v5

    goto :goto_0

    .line 304
    :cond_0
    aput-object p1, v0, v3

    .line 305
    aput-object p2, v0, v4

    .line 306
    aput-object p3, v0, v5

    goto :goto_0

    .line 311
    :sswitch_1
    aput-object p2, v0, v3

    .line 312
    aput-object p3, v0, v4

    .line 313
    aput-object p1, v0, v5

    goto :goto_0

    .line 296
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public static toHalfWidthString(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "orgString"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 635
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 636
    return-object v6

    .line 638
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 639
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 640
    .local v4, "length":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_2

    .line 643
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 644
    .local v1, "ch":C
    invoke-static {v1}, Lcom/android/vcard/JapaneseUtils;->tryGetHalfWidthText(C)Ljava/lang/String;

    move-result-object v2

    .line 645
    .local v2, "halfWidthText":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 646
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    :goto_1
    const/4 v5, 0x1

    invoke-virtual {p0, v3, v5}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v3

    goto :goto_0

    .line 648
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 651
    .end local v1    # "ch":C
    .end local v2    # "halfWidthText":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private static toStringAsParamValue(Ljava/lang/String;[I)Ljava/lang/String;
    .locals 14
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "escapeIndicators"    # [I

    .prologue
    const/4 v13, 0x1

    const/4 v10, 0x0

    const/16 v12, 0x22

    .line 604
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 605
    const-string/jumbo p0, ""

    .line 607
    :cond_0
    const/16 v0, 0x20

    .line 608
    .local v0, "asciiFirst":I
    const/16 v1, 0x7e

    .line 609
    .local v1, "asciiLast":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 610
    .local v2, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 611
    .local v6, "length":I
    const/4 v7, 0x0

    .line 612
    .local v7, "needQuote":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v6, :cond_4

    .line 613
    invoke-virtual {p0, v4}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    .line 614
    .local v3, "codePoint":I
    const/16 v9, 0x20

    if-lt v3, v9, :cond_1

    if-ne v3, v12, :cond_2

    .line 612
    :cond_1
    :goto_1
    invoke-virtual {p0, v4, v13}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v4

    goto :goto_0

    .line 618
    :cond_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 619
    array-length v11, p1

    move v9, v10

    :goto_2
    if-ge v9, v11, :cond_1

    aget v5, p1, v9

    .line 620
    .local v5, "indicator":I
    if-ne v3, v5, :cond_3

    .line 621
    const/4 v7, 0x1

    .line 622
    goto :goto_1

    .line 619
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 627
    .end local v3    # "codePoint":I
    .end local v5    # "indicator":I
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 628
    .local v8, "result":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_5

    new-array v9, v13, [Ljava/lang/String;

    aput-object v8, v9, v10

    invoke-static {v9}, Lcom/android/vcard/VCardUtils;->containsOnlyWhiteSpaces([Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 629
    :cond_5
    const-string/jumbo v8, ""

    .line 628
    .end local v8    # "result":Ljava/lang/String;
    :cond_6
    :goto_3
    return-object v8

    .line 630
    .restart local v8    # "result":Ljava/lang/String;
    :cond_7
    if-eqz v7, :cond_6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_3
.end method

.method public static toStringAsV30ParamValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 596
    sget-object v0, Lcom/android/vcard/VCardUtils;->sEscapeIndicatorsV30:[I

    invoke-static {p0, v0}, Lcom/android/vcard/VCardUtils;->toStringAsParamValue(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toStringAsV40ParamValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 600
    sget-object v0, Lcom/android/vcard/VCardUtils;->sEscapeIndicatorsV40:[I

    invoke-static {p0, v0}, Lcom/android/vcard/VCardUtils;->toStringAsParamValue(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
