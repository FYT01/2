.class public Lcom/android/emailcommon/utility/TextUtilities;
.super Ljava/lang/Object;
.source "TextUtilities.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/utility/TextUtilities$SearchTerm;
    }
.end annotation


# static fields
.field static final ESCAPE_STRINGS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field public static final HIGHLIGHT_COLOR_INT:I = -0x100

.field static final HIGHLIGHT_COLOR_STRING:Ljava/lang/String;

.field private static final MAX_SNIPPET_LENGTH:I = 0xc8

.field static final MAX_STRIP_TAG_LENGTH:I = 0x6

.field static final NON_BREAKING_SPACE_CHARACTER:C = '\u00a0'

.field static final STRIP_TAGS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0xfc

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0xffff00

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 39
    sput-object v0, Lcom/android/emailcommon/utility/TextUtilities;->HIGHLIGHT_COLOR_STRING:Ljava/lang/String;

    .line 49
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "title"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "script"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "style"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "applet"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "head"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 48
    sput-object v0, Lcom/android/emailcommon/utility/TextUtilities;->STRIP_TAGS:[Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    .line 60
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&nbsp"

    const/16 v2, 0xa0

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&iexcl"

    const/16 v2, 0xa1

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&cent"

    const/16 v2, 0xa2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&pound"

    const/16 v2, 0xa3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&curren"

    const/16 v2, 0xa4

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&yen"

    const/16 v2, 0xa5

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&brvbar"

    const/16 v2, 0xa6

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&sect"

    const/16 v2, 0xa7

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&uml"

    const/16 v2, 0xa8

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&copy"

    const/16 v2, 0xa9

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&ordf"

    const/16 v2, 0xaa

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&laquo"

    const/16 v2, 0xab

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&not"

    const/16 v2, 0xac

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&shy"

    const/16 v2, 0xad

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&reg"

    const/16 v2, 0xae

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&macr"

    const/16 v2, 0xaf

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&deg"

    const/16 v2, 0xb0

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&plusmn"

    const/16 v2, 0xb1

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&sup2"

    const/16 v2, 0xb2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&sup3"

    const/16 v2, 0xb3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&acute"

    const/16 v2, 0xb4

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&micro"

    const/16 v2, 0xb5

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&para"

    const/16 v2, 0xb6

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&middot"

    const/16 v2, 0xb7

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&cedil"

    const/16 v2, 0xb8

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&sup1"

    const/16 v2, 0xb9

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&ordm"

    const/16 v2, 0xba

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&raquo"

    const/16 v2, 0xbb

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&frac14"

    const/16 v2, 0xbc

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&frac12"

    const/16 v2, 0xbd

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&frac34"

    const/16 v2, 0xbe

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&iquest"

    const/16 v2, 0xbf

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&Agrave"

    const/16 v2, 0xc0

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&Aacute"

    const/16 v2, 0xc1

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&Acirc"

    const/16 v2, 0xc2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&Atilde"

    const/16 v2, 0xc3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&Auml"

    const/16 v2, 0xc4

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&Aring"

    const/16 v2, 0xc5

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&AElig"

    const/16 v2, 0xc6

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&Ccedil"

    const/16 v2, 0xc7

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&Egrave"

    const/16 v2, 0xc8

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&Eacute"

    const/16 v2, 0xc9

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&Ecirc"

    const/16 v2, 0xca

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&Euml"

    const/16 v2, 0xcb

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&Igrave"

    const/16 v2, 0xcc

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&Iacute"

    const/16 v2, 0xcd

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&Icirc"

    const/16 v2, 0xce

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&Iuml"

    const/16 v2, 0xcf

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&ETH"

    const/16 v2, 0xd0

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&Ntilde"

    const/16 v2, 0xd1

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&Ograve"

    const/16 v2, 0xd2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&Oacute"

    const/16 v2, 0xd3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&Ocirc"

    const/16 v2, 0xd4

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&Otilde"

    const/16 v2, 0xd5

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&Ouml"

    const/16 v2, 0xd6

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&times"

    const/16 v2, 0xd7

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&Oslash"

    const/16 v2, 0xd8

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&Ugrave"

    const/16 v2, 0xd9

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&Uacute"

    const/16 v2, 0xda

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&Ucirc"

    const/16 v2, 0xdb

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&Uuml"

    const/16 v2, 0xdc

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&Yacute"

    const/16 v2, 0xdd

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&THORN"

    const/16 v2, 0xde

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&szlig"

    const/16 v2, 0xdf

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&agrave"

    const/16 v2, 0xe0

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&aacute"

    const/16 v2, 0xe1

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&acirc"

    const/16 v2, 0xe2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&atilde"

    const/16 v2, 0xe3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&auml"

    const/16 v2, 0xe4

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&aring"

    const/16 v2, 0xe5

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&aelig"

    const/16 v2, 0xe6

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&ccedil"

    const/16 v2, 0xe7

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&egrave"

    const/16 v2, 0xe8

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&eacute"

    const/16 v2, 0xe9

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&ecirc"

    const/16 v2, 0xea

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&euml"

    const/16 v2, 0xeb

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&igrave"

    const/16 v2, 0xec

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&iacute"

    const/16 v2, 0xed

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&icirc"

    const/16 v2, 0xee

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&iuml"

    const/16 v2, 0xef

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&eth"

    const/16 v2, 0xf0

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&ntilde"

    const/16 v2, 0xf1

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&ograve"

    const/16 v2, 0xf2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&oacute"

    const/16 v2, 0xf3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&ocirc"

    const/16 v2, 0xf4

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&otilde"

    const/16 v2, 0xf5

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&ouml"

    const/16 v2, 0xf6

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&divide"

    const/16 v2, 0xf7

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&oslash"

    const/16 v2, 0xf8

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&ugrave"

    const/16 v2, 0xf9

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&uacute"

    const/16 v2, 0xfa

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&ucirc"

    const/16 v2, 0xfb

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&uuml"

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&yacute"

    const/16 v2, 0xfd

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&thorn"

    const/16 v2, 0xfe

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&yuml"

    const/16 v2, 0xff

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&fnof"

    const/16 v2, 0x192

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&Alpha"

    const/16 v2, 0x391

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&Beta"

    const/16 v2, 0x392

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&Gamma"

    const/16 v2, 0x393

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&Delta"

    const/16 v2, 0x394

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&Epsilon"

    const/16 v2, 0x395

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&Zeta"

    const/16 v2, 0x396

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&Eta"

    const/16 v2, 0x397

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&Theta"

    const/16 v2, 0x398

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&Iota"

    const/16 v2, 0x399

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&Kappa"

    const/16 v2, 0x39a

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&Lambda"

    const/16 v2, 0x39b

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&Mu"

    const/16 v2, 0x39c

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&Nu"

    const/16 v2, 0x39d

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&Xi"

    const/16 v2, 0x39e

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&Omicron"

    const/16 v2, 0x39f

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&Pi"

    const/16 v2, 0x3a0

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&Rho"

    const/16 v2, 0x3a1

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&Sigma"

    const/16 v2, 0x3a3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&Tau"

    const/16 v2, 0x3a4

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&Upsilon"

    const/16 v2, 0x3a5

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&Phi"

    const/16 v2, 0x3a6

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&Chi"

    const/16 v2, 0x3a7

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&Psi"

    const/16 v2, 0x3a8

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&Omega"

    const/16 v2, 0x3a9

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&alpha"

    const/16 v2, 0x3b1

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&beta"

    const/16 v2, 0x3b2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&gamma"

    const/16 v2, 0x3b3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&delta"

    const/16 v2, 0x3b4

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&epsilon"

    const/16 v2, 0x3b5

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&zeta"

    const/16 v2, 0x3b6

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&eta"

    const/16 v2, 0x3b7

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&theta"

    const/16 v2, 0x3b8

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&iota"

    const/16 v2, 0x3b9

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&kappa"

    const/16 v2, 0x3ba

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&lambda"

    const/16 v2, 0x3bb

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&mu"

    const/16 v2, 0x3bc

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&nu"

    const/16 v2, 0x3bd

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&xi"

    const/16 v2, 0x3be

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&omicron"

    const/16 v2, 0x3bf

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&pi"

    const/16 v2, 0x3c0

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&rho"

    const/16 v2, 0x3c1

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&sigmaf"

    const/16 v2, 0x3c2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&sigma"

    const/16 v2, 0x3c3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&tau"

    const/16 v2, 0x3c4

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&upsilon"

    const/16 v2, 0x3c5

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&phi"

    const/16 v2, 0x3c6

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&chi"

    const/16 v2, 0x3c7

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&psi"

    const/16 v2, 0x3c8

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&omega"

    const/16 v2, 0x3c9

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&thetasym"

    const/16 v2, 0x3d1

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&upsih"

    const/16 v2, 0x3d2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&piv"

    const/16 v2, 0x3d6

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&bull"

    const/16 v2, 0x2022

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&hellip"

    const/16 v2, 0x2026

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&prime"

    const/16 v2, 0x2032

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&Prime"

    const/16 v2, 0x2033

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&oline"

    const/16 v2, 0x203e

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&frasl"

    const/16 v2, 0x2044

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&weierp"

    const/16 v2, 0x2118

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&image"

    const/16 v2, 0x2111

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&real"

    const/16 v2, 0x211c

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&trade"

    const/16 v2, 0x2122

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&alefsym"

    const/16 v2, 0x2135

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&larr"

    const/16 v2, 0x2190

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&uarr"

    const/16 v2, 0x2191

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&rarr"

    const/16 v2, 0x2192

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&darr"

    const/16 v2, 0x2193

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&harr"

    const/16 v2, 0x2194

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&crarr"

    const/16 v2, 0x21b5

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&lArr"

    const/16 v2, 0x21d0

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&uArr"

    const/16 v2, 0x21d1

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&rArr"

    const/16 v2, 0x21d2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&dArr"

    const/16 v2, 0x21d3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&hArr"

    const/16 v2, 0x21d4

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&forall"

    const/16 v2, 0x2200

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&part"

    const/16 v2, 0x2202

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&exist"

    const/16 v2, 0x2203

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&empty"

    const/16 v2, 0x2205

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&nabla"

    const/16 v2, 0x2207

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&isin"

    const/16 v2, 0x2208

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&notin"

    const/16 v2, 0x2209

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&ni"

    const/16 v2, 0x220b

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&prod"

    const/16 v2, 0x220f

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&sum"

    const/16 v2, 0x2211

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&minus"

    const/16 v2, 0x2212

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&lowast"

    const/16 v2, 0x2217

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&radic"

    const/16 v2, 0x221a

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&prop"

    const/16 v2, 0x221d

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&infin"

    const/16 v2, 0x221e

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&ang"

    const/16 v2, 0x2220

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&and"

    const/16 v2, 0x2227

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&or"

    const/16 v2, 0x2228

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&cap"

    const/16 v2, 0x2229

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&cup"

    const/16 v2, 0x222a

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&int"

    const/16 v2, 0x222b

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&there4"

    const/16 v2, 0x2234

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&sim"

    const/16 v2, 0x223c

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&cong"

    const/16 v2, 0x2245

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&asymp"

    const/16 v2, 0x2248

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&ne"

    const/16 v2, 0x2260

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&equiv"

    const/16 v2, 0x2261

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&le"

    const/16 v2, 0x2264

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&ge"

    const/16 v2, 0x2265

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&sub"

    const/16 v2, 0x2282

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&sup"

    const/16 v2, 0x2283

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&nsub"

    const/16 v2, 0x2284

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&sube"

    const/16 v2, 0x2286

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&supe"

    const/16 v2, 0x2287

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&oplus"

    const/16 v2, 0x2295

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&otimes"

    const/16 v2, 0x2297

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&perp"

    const/16 v2, 0x22a5

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&sdot"

    const/16 v2, 0x22c5

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&lceil"

    const/16 v2, 0x2308

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&rceil"

    const/16 v2, 0x2309

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&lfloor"

    const/16 v2, 0x230a

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&rfloor"

    const/16 v2, 0x230b

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&lang"

    const/16 v2, 0x2329

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&rang"

    const/16 v2, 0x232a

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&loz"

    const/16 v2, 0x25ca

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&spades"

    const/16 v2, 0x2660

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&clubs"

    const/16 v2, 0x2663

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&hearts"

    const/16 v2, 0x2665

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&diams"

    const/16 v2, 0x2666

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&quot"

    const/16 v2, 0x22

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&amp"

    const/16 v2, 0x26

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&lt"

    const/16 v2, 0x3c

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&gt"

    const/16 v2, 0x3e

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&OElig"

    const/16 v2, 0x152

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&oelig"

    const/16 v2, 0x153

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&Scaron"

    const/16 v2, 0x160

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&scaron"

    const/16 v2, 0x161

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&Yuml"

    const/16 v2, 0x178

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&circ"

    const/16 v2, 0x2c6

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&tilde"

    const/16 v2, 0x2dc

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&ensp"

    const/16 v2, 0x2002

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&emsp"

    const/16 v2, 0x2003

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&thinsp"

    const/16 v2, 0x2009

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&zwnj"

    const/16 v2, 0x200c

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&zwj"

    const/16 v2, 0x200d

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&lrm"

    const/16 v2, 0x200e

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&rlm"

    const/16 v2, 0x200f

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&ndash"

    const/16 v2, 0x2013

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&mdash"

    const/16 v2, 0x2014

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&lsquo"

    const/16 v2, 0x2018

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&rsquo"

    const/16 v2, 0x2019

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&sbquo"

    const/16 v2, 0x201a

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&ldquo"

    const/16 v2, 0x201c

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&rdquo"

    const/16 v2, 0x201d

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&bdquo"

    const/16 v2, 0x201e

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&dagger"

    const/16 v2, 0x2020

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&Dagger"

    const/16 v2, 0x2021

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&permil"

    const/16 v2, 0x2030

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&lsaquo"

    const/16 v2, 0x2039

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&rsaquo"

    const/16 v2, 0x203a

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    sget-object v0, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&euro"

    const/16 v2, 0x20ac

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static findTagEnd(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 6
    .param p0, "htmlText"    # Ljava/lang/String;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "startPos"    # I

    .prologue
    .line 345
    const-string/jumbo v4, " "

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 346
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x0

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 348
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 349
    .local v2, "length":I
    const/4 v3, 0x0

    .line 350
    .local v3, "prevChar":C
    move v1, p2

    .end local v3    # "prevChar":C
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 351
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 352
    .local v0, "c":C
    const/16 v4, 0x3e

    if-ne v0, v4, :cond_1

    .line 353
    const/16 v4, 0x2f

    if-ne v3, v4, :cond_2

    .line 354
    add-int/lit8 v4, v1, -0x1

    return v4

    .line 358
    :cond_1
    move v3, v0

    .line 350
    .local v3, "prevChar":C
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 361
    .end local v0    # "c":C
    .end local v3    # "prevChar":C
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    return v4
.end method

.method public static highlightTerms(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/CharSequence;
    .locals 32
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "html"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 570
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_0

    const-string/jumbo v28, ""

    return-object v28

    .line 571
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v13

    .line 574
    .local v13, "length":I
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 575
    .local v27, "terms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/emailcommon/utility/TextUtilities$SearchTerm;>;"
    if-eqz p1, :cond_1

    .line 576
    new-instance v20, Ljava/util/StringTokenizer;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 577
    .local v20, "st":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual/range {v20 .. v20}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v28

    if-eqz v28, :cond_1

    .line 578
    new-instance v28, Lcom/android/emailcommon/utility/TextUtilities$SearchTerm;

    invoke-virtual/range {v20 .. v20}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Lcom/android/emailcommon/utility/TextUtilities$SearchTerm;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 584
    .end local v20    # "st":Ljava/util/StringTokenizer;
    :cond_1
    if-eqz p2, :cond_5

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    .line 586
    .local v19, "sb":Ljava/lang/Appendable;
    :goto_1
    const/4 v10, 0x0

    .line 588
    .local v10, "inTag":Z
    const/4 v11, -0x1

    .line 592
    .local v11, "lastOut":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    if-ge v9, v13, :cond_4

    .line 593
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 594
    .local v5, "chr":C
    if-eqz p2, :cond_c

    .line 595
    if-nez v10, :cond_b

    const/16 v28, 0x3c

    move/from16 v0, v28

    if-ne v5, v0, :cond_b

    .line 597
    add-int/lit8 v28, v13, -0x1

    move/from16 v0, v28

    if-ge v9, v0, :cond_7

    .line 598
    add-int/lit8 v28, v9, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v18

    .line 599
    .local v18, "peek":C
    const/16 v28, 0x21

    move/from16 v0, v18

    move/from16 v1, v28

    if-eq v0, v1, :cond_2

    const/16 v28, 0x2d

    move/from16 v0, v18

    move/from16 v1, v28

    if-ne v0, v1, :cond_6

    .line 600
    :cond_2
    const/4 v10, 0x1

    .line 602
    add-int/lit8 v28, v13, -0x8

    move/from16 v0, v28

    if-ge v9, v0, :cond_7

    .line 603
    add-int/lit8 v28, v9, 0x1

    add-int/lit8 v29, v9, 0x6

    add-int/lit8 v29, v29, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    .line 604
    .local v25, "tag":Ljava/lang/String;
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v26

    .line 605
    .local v26, "tagLowerCase":Ljava/lang/String;
    const/16 v21, 0x0

    .line 606
    .local v21, "stripContent":Z
    sget-object v29, Lcom/android/emailcommon/utility/TextUtilities;->STRIP_TAGS:[Ljava/lang/String;

    const/16 v28, 0x0

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v30, v0

    :goto_3
    move/from16 v0, v28

    move/from16 v1, v30

    if-ge v0, v1, :cond_3

    aget-object v22, v29, v28

    .line 607
    .local v22, "stripTag":Ljava/lang/String;
    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_9

    .line 608
    const/16 v21, 0x1

    .line 609
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v28

    const/16 v29, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v29

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    .line 613
    .end local v22    # "stripTag":Ljava/lang/String;
    :cond_3
    if-eqz v21, :cond_7

    .line 615
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-static {v0, v1, v9}, Lcom/android/emailcommon/utility/TextUtilities;->findTagEnd(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v7

    .line 616
    .local v7, "endTagPosition":I
    if-gez v7, :cond_a

    .line 617
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 715
    .end local v5    # "chr":C
    .end local v7    # "endTagPosition":I
    .end local v18    # "peek":C
    .end local v21    # "stripContent":Z
    .end local v25    # "tag":Ljava/lang/String;
    .end local v26    # "tagLowerCase":Ljava/lang/String;
    :cond_4
    check-cast v19, Ljava/lang/CharSequence;

    .end local v19    # "sb":Ljava/lang/Appendable;
    return-object v19

    .line 584
    .end local v9    # "i":I
    .end local v10    # "inTag":Z
    .end local v11    # "lastOut":I
    :cond_5
    new-instance v19, Landroid/text/SpannableStringBuilder;

    invoke-direct/range {v19 .. v19}, Landroid/text/SpannableStringBuilder;-><init>()V

    goto/16 :goto_1

    .line 599
    .restart local v5    # "chr":C
    .restart local v9    # "i":I
    .restart local v10    # "inTag":Z
    .restart local v11    # "lastOut":I
    .restart local v18    # "peek":C
    .restart local v19    # "sb":Ljava/lang/Appendable;
    :cond_6
    const/16 v28, 0x2f

    move/from16 v0, v18

    move/from16 v1, v28

    if-eq v0, v1, :cond_2

    invoke-static/range {v18 .. v18}, Ljava/lang/Character;->isLetter(C)Z

    move-result v28

    if-nez v28, :cond_2

    .line 632
    .end local v18    # "peek":C
    :cond_7
    :goto_4
    if-eqz v10, :cond_c

    .line 633
    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 592
    :cond_8
    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    .line 606
    .restart local v18    # "peek":C
    .restart local v21    # "stripContent":Z
    .restart local v22    # "stripTag":Ljava/lang/String;
    .restart local v25    # "tag":Ljava/lang/String;
    .restart local v26    # "tagLowerCase":Ljava/lang/String;
    :cond_9
    add-int/lit8 v28, v28, 0x1

    goto :goto_3

    .line 620
    .end local v22    # "stripTag":Ljava/lang/String;
    .restart local v7    # "endTagPosition":I
    :cond_a
    add-int/lit8 v28, v7, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 621
    add-int/lit8 v9, v7, -0x1

    .line 622
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v5

    goto :goto_4

    .line 628
    .end local v7    # "endTagPosition":I
    .end local v18    # "peek":C
    .end local v21    # "stripContent":Z
    .end local v25    # "tag":Ljava/lang/String;
    .end local v26    # "tagLowerCase":Ljava/lang/String;
    :cond_b
    if-eqz v10, :cond_7

    const/16 v28, 0x3e

    move/from16 v0, v28

    if-ne v5, v0, :cond_7

    .line 629
    const/4 v10, 0x0

    goto :goto_4

    .line 639
    :cond_c
    invoke-static {v5}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v6

    .line 642
    .local v6, "chrLowerCase":C
    const/4 v4, 0x1

    .line 644
    .local v4, "appendNow":Z
    invoke-interface/range {v27 .. v27}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .local v24, "t$iterator":Ljava/util/Iterator;
    :goto_6
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_1a

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/emailcommon/utility/TextUtilities$SearchTerm;

    .line 645
    .local v23, "t":Lcom/android/emailcommon/utility/TextUtilities$SearchTerm;
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/emailcommon/utility/TextUtilities$SearchTerm;->mTermLowerCase:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/emailcommon/utility/TextUtilities$SearchTerm;->mMatchLength:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->charAt(I)C

    move-result v28

    move/from16 v0, v28

    if-ne v6, v0, :cond_12

    .line 646
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/emailcommon/utility/TextUtilities$SearchTerm;->mMatchLength:I

    move/from16 v28, v0

    add-int/lit8 v29, v28, 0x1

    move/from16 v0, v29

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/emailcommon/utility/TextUtilities$SearchTerm;->mMatchLength:I

    if-nez v28, :cond_d

    .line 648
    move-object/from16 v0, v23

    iput v9, v0, Lcom/android/emailcommon/utility/TextUtilities$SearchTerm;->mMatchStart:I

    .line 650
    :cond_d
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/emailcommon/utility/TextUtilities$SearchTerm;->mMatchLength:I

    move/from16 v28, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/emailcommon/utility/TextUtilities$SearchTerm;->mLength:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_f

    .line 651
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/emailcommon/utility/TextUtilities$SearchTerm;->mMatchStart:I

    move/from16 v28, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/emailcommon/utility/TextUtilities$SearchTerm;->mMatchStart:I

    move/from16 v29, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/emailcommon/utility/TextUtilities$SearchTerm;->mLength:I

    move/from16 v30, v0

    add-int v29, v29, v30

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 653
    .local v15, "matchText":Ljava/lang/String;
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/emailcommon/utility/TextUtilities$SearchTerm;->mMatchStart:I

    move/from16 v28, v0

    move/from16 v0, v28

    if-gt v0, v11, :cond_e

    .line 654
    add-int/lit8 v28, v11, 0x1

    add-int/lit8 v29, v9, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 657
    :cond_e
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v28

    if-nez v28, :cond_10

    .line 669
    :goto_7
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/emailcommon/utility/TextUtilities$SearchTerm;->mMatchStart:I

    move/from16 v28, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/emailcommon/utility/TextUtilities$SearchTerm;->mLength:I

    move/from16 v29, v0

    add-int v28, v28, v29

    add-int/lit8 v11, v28, -0x1

    .line 670
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/emailcommon/utility/TextUtilities$SearchTerm;->mMatchLength:I

    .line 671
    const/16 v28, -0x1

    move/from16 v0, v28

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/emailcommon/utility/TextUtilities$SearchTerm;->mMatchStart:I

    .line 673
    .end local v15    # "matchText":Ljava/lang/String;
    :cond_f
    const/4 v4, 0x0

    goto/16 :goto_6

    .line 658
    .restart local v15    # "matchText":Ljava/lang/String;
    :cond_10
    if-eqz p2, :cond_11

    .line 659
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "<span style=\"background-color: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    sget-object v29, Lcom/android/emailcommon/utility/TextUtilities;->HIGHLIGHT_COLOR_STRING:Ljava/lang/String;

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    .line 660
    const-string/jumbo v29, "\">"

    .line 659
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 661
    move-object/from16 v0, v19

    invoke-interface {v0, v15}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 662
    const-string/jumbo v28, "</span>"

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_7

    .line 664
    :cond_11
    new-instance v8, Landroid/text/SpannableString;

    invoke-direct {v8, v15}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 665
    .local v8, "highlightSpan":Landroid/text/SpannableString;
    new-instance v28, Landroid/text/style/BackgroundColorSpan;

    const/16 v29, -0x100

    invoke-direct/range {v28 .. v29}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 666
    invoke-virtual {v8}, Landroid/text/SpannableString;->length()I

    move-result v29

    .line 665
    const/16 v30, 0x0

    .line 666
    const/16 v31, 0x21

    .line 665
    move-object/from16 v0, v28

    move/from16 v1, v30

    move/from16 v2, v29

    move/from16 v3, v31

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 667
    move-object/from16 v0, v19

    invoke-interface {v0, v8}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_7

    .line 675
    .end local v8    # "highlightSpan":Landroid/text/SpannableString;
    .end local v15    # "matchText":Ljava/lang/String;
    :cond_12
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/emailcommon/utility/TextUtilities$SearchTerm;->mMatchStart:I

    move/from16 v28, v0

    if-ltz v28, :cond_17

    .line 677
    const/4 v12, -0x1

    .line 678
    .local v12, "leastOtherStart":I
    invoke-interface/range {v27 .. v27}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "ot$iterator":Ljava/util/Iterator;
    :cond_13
    :goto_8
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_15

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/emailcommon/utility/TextUtilities$SearchTerm;

    .line 680
    .local v16, "ot":Lcom/android/emailcommon/utility/TextUtilities$SearchTerm;
    move-object/from16 v0, v16

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_13

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/emailcommon/utility/TextUtilities$SearchTerm;->mMatchStart:I

    move/from16 v28, v0

    if-ltz v28, :cond_13

    if-ltz v12, :cond_14

    .line 681
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/emailcommon/utility/TextUtilities$SearchTerm;->mMatchStart:I

    move/from16 v28, v0

    move/from16 v0, v28

    if-gt v0, v12, :cond_13

    .line 682
    :cond_14
    move-object/from16 v0, v16

    iget v12, v0, Lcom/android/emailcommon/utility/TextUtilities$SearchTerm;->mMatchStart:I

    goto :goto_8

    .line 685
    .end local v16    # "ot":Lcom/android/emailcommon/utility/TextUtilities$SearchTerm;
    :cond_15
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/emailcommon/utility/TextUtilities$SearchTerm;->mMatchStart:I

    move/from16 v28, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/emailcommon/utility/TextUtilities$SearchTerm;->mMatchLength:I

    move/from16 v29, v0

    add-int v14, v28, v29

    .line 686
    .local v14, "matchEnd":I
    if-ltz v12, :cond_16

    if-le v12, v14, :cond_18

    .line 688
    :cond_16
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/emailcommon/utility/TextUtilities$SearchTerm;->mMatchStart:I

    move/from16 v28, v0

    move/from16 v0, v28

    if-le v0, v11, :cond_17

    .line 689
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/emailcommon/utility/TextUtilities$SearchTerm;->mMatchStart:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 690
    move v11, v14

    .line 704
    .end local v12    # "leastOtherStart":I
    .end local v14    # "matchEnd":I
    .end local v17    # "ot$iterator":Ljava/util/Iterator;
    :cond_17
    :goto_9
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/emailcommon/utility/TextUtilities$SearchTerm;->mMatchLength:I

    .line 705
    const/16 v28, -0x1

    move/from16 v0, v28

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/emailcommon/utility/TextUtilities$SearchTerm;->mMatchStart:I

    goto/16 :goto_6

    .line 692
    .restart local v12    # "leastOtherStart":I
    .restart local v14    # "matchEnd":I
    .restart local v17    # "ot$iterator":Ljava/util/Iterator;
    :cond_18
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/emailcommon/utility/TextUtilities$SearchTerm;->mMatchStart:I

    move/from16 v28, v0

    move/from16 v0, v28

    if-eq v12, v0, :cond_17

    .line 694
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/emailcommon/utility/TextUtilities$SearchTerm;->mMatchStart:I

    move/from16 v28, v0

    move/from16 v0, v28

    if-ge v12, v0, :cond_19

    .line 696
    const/4 v4, 0x0

    goto :goto_9

    .line 697
    :cond_19
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/emailcommon/utility/TextUtilities$SearchTerm;->mMatchStart:I

    move/from16 v28, v0

    move/from16 v0, v28

    if-le v0, v11, :cond_17

    .line 699
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/emailcommon/utility/TextUtilities$SearchTerm;->mMatchStart:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 700
    move v11, v12

    goto :goto_9

    .line 709
    .end local v12    # "leastOtherStart":I
    .end local v14    # "matchEnd":I
    .end local v17    # "ot$iterator":Ljava/util/Iterator;
    .end local v23    # "t":Lcom/android/emailcommon/utility/TextUtilities$SearchTerm;
    :cond_1a
    if-eqz v4, :cond_8

    .line 710
    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 711
    move v11, v9

    goto/16 :goto_5
.end method

.method public static highlightTermsInHtml(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "query"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 517
    const/4 v1, 0x1

    :try_start_0
    invoke-static {p0, p1, v1}, Lcom/android/emailcommon/utility/TextUtilities;->highlightTerms(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 518
    :catch_0
    move-exception v0

    .line 520
    .local v0, "e":Ljava/io/IOException;
    return-object p0
.end method

.method public static highlightTermsInText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 534
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1, v1}, Lcom/android/emailcommon/utility/TextUtilities;->highlightTerms(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 535
    :catch_0
    move-exception v0

    .line 537
    .local v0, "e":Ljava/io/IOException;
    return-object p0
.end method

.method public static makeSnippetFromHtmlText(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 330
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/emailcommon/utility/TextUtilities;->makeSnippetFromText(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static makeSnippetFromPlainText(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 334
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/emailcommon/utility/TextUtilities;->makeSnippetFromText(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static makeSnippetFromText(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 22
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "stripHtml"    # Z

    .prologue
    .line 366
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_0

    const-string/jumbo v18, ""

    return-object v18

    .line 368
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v11

    .line 370
    .local v11, "length":I
    const/16 v18, 0xc8

    move/from16 v0, v18

    new-array v3, v0, [C

    .line 375
    .local v3, "buffer":[C
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v13, v0, [I

    .line 376
    .local v13, "skipCount":[I
    const/4 v4, 0x0

    .line 378
    .local v4, "bufferCount":I
    const/16 v10, 0x20

    .line 380
    .local v10, "last":C
    const/4 v9, 0x0

    .line 383
    .local v9, "inTag":Z
    const/4 v8, 0x0

    .local v8, "i":I
    move v5, v4

    .end local v4    # "bufferCount":I
    .end local v10    # "last":C
    .local v5, "bufferCount":I
    :goto_0
    if-ge v8, v11, :cond_5

    const/16 v18, 0xc8

    move/from16 v0, v18

    if-ge v5, v0, :cond_5

    .line 384
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 385
    .local v6, "c":C
    if-eqz p1, :cond_1

    if-eqz v9, :cond_2

    .line 415
    :cond_1
    if-eqz p1, :cond_7

    if-eqz v9, :cond_7

    const/16 v18, 0x3e

    move/from16 v0, v18

    if-ne v6, v0, :cond_7

    .line 417
    const/4 v9, 0x0

    move v4, v5

    .line 383
    .end local v5    # "bufferCount":I
    .end local v6    # "c":C
    .restart local v4    # "bufferCount":I
    :goto_1
    add-int/lit8 v8, v8, 0x1

    move v5, v4

    .end local v4    # "bufferCount":I
    .restart local v5    # "bufferCount":I
    goto :goto_0

    .line 385
    .restart local v6    # "c":C
    :cond_2
    const/16 v18, 0x3c

    move/from16 v0, v18

    if-ne v6, v0, :cond_1

    .line 387
    add-int/lit8 v18, v11, -0x1

    move/from16 v0, v18

    if-ge v8, v0, :cond_7

    .line 388
    add-int/lit8 v18, v8, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v12

    .line 389
    .local v12, "peek":C
    const/16 v18, 0x21

    move/from16 v0, v18

    if-eq v12, v0, :cond_3

    const/16 v18, 0x2d

    move/from16 v0, v18

    if-ne v12, v0, :cond_6

    .line 390
    :cond_3
    const/4 v9, 0x1

    .line 392
    add-int/lit8 v18, v11, -0x8

    move/from16 v0, v18

    if-ge v8, v0, :cond_7

    .line 393
    add-int/lit8 v18, v8, 0x1

    add-int/lit8 v19, v8, 0x6

    add-int/lit8 v19, v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 394
    .local v16, "tag":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v17

    .line 395
    .local v17, "tagLowerCase":Ljava/lang/String;
    const/4 v14, 0x0

    .line 396
    .local v14, "stripContent":Z
    sget-object v19, Lcom/android/emailcommon/utility/TextUtilities;->STRIP_TAGS:[Ljava/lang/String;

    const/16 v18, 0x0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v20, v0

    :goto_2
    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_4

    aget-object v15, v19, v18

    .line 397
    .local v15, "stripTag":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_8

    .line 398
    const/4 v14, 0x1

    .line 399
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v18

    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 403
    .end local v15    # "stripTag":Ljava/lang/String;
    :cond_4
    if-eqz v14, :cond_7

    .line 405
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v1, v8}, Lcom/android/emailcommon/utility/TextUtilities;->findTagEnd(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v7

    .line 406
    .local v7, "endTagPosition":I
    if-gez v7, :cond_9

    .line 453
    .end local v6    # "c":C
    .end local v7    # "endTagPosition":I
    .end local v12    # "peek":C
    .end local v14    # "stripContent":Z
    .end local v16    # "tag":Ljava/lang/String;
    .end local v17    # "tagLowerCase":Ljava/lang/String;
    :cond_5
    if-lez v5, :cond_11

    const/16 v18, 0x20

    move/from16 v0, v18

    if-ne v10, v0, :cond_11

    .line 454
    add-int/lit8 v4, v5, -0x1

    .line 456
    .end local v5    # "bufferCount":I
    .restart local v4    # "bufferCount":I
    :goto_3
    new-instance v18, Ljava/lang/String;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v0, v3, v1, v4}, Ljava/lang/String;-><init>([CII)V

    return-object v18

    .line 389
    .end local v4    # "bufferCount":I
    .restart local v5    # "bufferCount":I
    .restart local v6    # "c":C
    .restart local v12    # "peek":C
    :cond_6
    const/16 v18, 0x2f

    move/from16 v0, v18

    if-eq v12, v0, :cond_3

    invoke-static {v12}, Ljava/lang/Character;->isLetter(C)Z

    move-result v18

    if-nez v18, :cond_3

    .line 421
    .end local v12    # "peek":C
    :cond_7
    :goto_4
    if-eqz v9, :cond_a

    move v4, v5

    .line 423
    .end local v5    # "bufferCount":I
    .restart local v4    # "bufferCount":I
    goto/16 :goto_1

    .line 396
    .end local v4    # "bufferCount":I
    .restart local v5    # "bufferCount":I
    .restart local v12    # "peek":C
    .restart local v14    # "stripContent":Z
    .restart local v15    # "stripTag":Ljava/lang/String;
    .restart local v16    # "tag":Ljava/lang/String;
    .restart local v17    # "tagLowerCase":Ljava/lang/String;
    :cond_8
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 409
    .end local v15    # "stripTag":Ljava/lang/String;
    .restart local v7    # "endTagPosition":I
    :cond_9
    move v8, v7

    goto :goto_4

    .line 424
    .end local v7    # "endTagPosition":I
    .end local v12    # "peek":C
    .end local v14    # "stripContent":Z
    .end local v16    # "tag":Ljava/lang/String;
    .end local v17    # "tagLowerCase":Ljava/lang/String;
    :cond_a
    if-eqz p1, :cond_b

    const/16 v18, 0x26

    move/from16 v0, v18

    if-ne v6, v0, :cond_b

    .line 428
    move-object/from16 v0, p0

    invoke-static {v0, v8, v13}, Lcom/android/emailcommon/utility/TextUtilities;->stripHtmlEntity(Ljava/lang/String;I[I)C

    move-result v6

    .line 429
    const/16 v18, 0x0

    aget v18, v13, v18

    add-int v8, v8, v18

    .line 432
    :cond_b
    invoke-static {v6}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v18

    if-nez v18, :cond_c

    const/16 v18, 0xa0

    move/from16 v0, v18

    if-ne v6, v0, :cond_f

    .line 435
    :cond_c
    const/16 v18, 0x20

    move/from16 v0, v18

    if-ne v10, v0, :cond_d

    move v4, v5

    .line 436
    .end local v5    # "bufferCount":I
    .restart local v4    # "bufferCount":I
    goto/16 :goto_1

    .line 439
    .end local v4    # "bufferCount":I
    .restart local v5    # "bufferCount":I
    :cond_d
    const/16 v6, 0x20

    .line 448
    .end local v6    # "c":C
    :cond_e
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "bufferCount":I
    .restart local v4    # "bufferCount":I
    aput-char v6, v3, v5

    .line 449
    move v10, v6

    .local v10, "last":C
    goto/16 :goto_1

    .line 441
    .end local v4    # "bufferCount":I
    .end local v10    # "last":C
    .restart local v5    # "bufferCount":I
    .restart local v6    # "c":C
    :cond_f
    const/16 v18, 0x2d

    move/from16 v0, v18

    if-eq v6, v0, :cond_10

    const/16 v18, 0x3d

    move/from16 v0, v18

    if-ne v6, v0, :cond_e

    :cond_10
    if-ne v10, v6, :cond_e

    move v4, v5

    .line 444
    .end local v5    # "bufferCount":I
    .restart local v4    # "bufferCount":I
    goto/16 :goto_1

    .end local v4    # "bufferCount":I
    .end local v6    # "c":C
    .restart local v5    # "bufferCount":I
    :cond_11
    move v4, v5

    .line 453
    .end local v5    # "bufferCount":I
    .restart local v4    # "bufferCount":I
    goto :goto_3
.end method

.method public static stringOrNullEquals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 723
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    return v1

    .line 724
    :cond_0
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 725
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method static stripHtmlEntity(Ljava/lang/String;I[I)C
    .locals 10
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "skipCount"    # [I

    .prologue
    .line 460
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 463
    .local v6, "length":I
    const/4 v8, 0x0

    const/4 v9, 0x0

    aput v8, p2, v9

    .line 465
    add-int/lit8 v2, p1, 0xa

    .line 466
    .local v2, "end":I
    const/4 v3, 0x0

    .line 468
    .local v3, "entity":Ljava/lang/String;
    move v5, p1

    .local v5, "i":I
    :goto_0
    if-ge v5, v6, :cond_0

    if-ge v5, v2, :cond_0

    .line 469
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x3b

    if-ne v8, v9, :cond_1

    .line 470
    invoke-virtual {p0, p1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 474
    .end local v3    # "entity":Ljava/lang/String;
    :cond_0
    if-nez v3, :cond_2

    .line 476
    const/16 v8, 0x26

    return v8

    .line 468
    .restart local v3    # "entity":Ljava/lang/String;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 479
    .end local v3    # "entity":Ljava/lang/String;
    :cond_2
    sget-object v8, Lcom/android/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    invoke-interface {v8, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Character;

    .line 480
    .local v7, "mapping":Ljava/lang/Character;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 481
    .local v4, "entityLength":I
    if-eqz v7, :cond_3

    .line 482
    const/4 v8, 0x0

    aput v4, p2, v8

    .line 483
    invoke-virtual {v7}, Ljava/lang/Character;->charValue()C

    move-result v8

    return v8

    .line 484
    :cond_3
    const/4 v8, 0x2

    if-le v4, v8, :cond_5

    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x23

    if-ne v8, v9, :cond_5

    .line 486
    const/16 v0, 0x3f

    .line 489
    .local v0, "c":C
    const/4 v8, 0x2

    :try_start_0
    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x78

    if-ne v8, v9, :cond_4

    const/4 v8, 0x3

    if-le v4, v8, :cond_4

    .line 490
    const/4 v8, 0x3

    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x10

    invoke-static {v8, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 494
    :goto_1
    int-to-char v0, v5

    .line 498
    .end local v0    # "c":C
    :goto_2
    const/4 v8, 0x0

    aput v4, p2, v8

    .line 499
    return v0

    .line 492
    .restart local v0    # "c":C
    :cond_4
    const/4 v8, 0x2

    :try_start_1
    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v5

    goto :goto_1

    .line 503
    .end local v0    # "c":C
    :cond_5
    const/16 v8, 0x26

    return v8

    .line 495
    .restart local v0    # "c":C
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/NumberFormatException;
    goto :goto_2
.end method
