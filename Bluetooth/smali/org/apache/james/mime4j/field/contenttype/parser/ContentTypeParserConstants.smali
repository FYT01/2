.class public interface abstract Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserConstants;
.super Ljava/lang/Object;
.source "ContentTypeParserConstants.java"


# static fields
.field public static final ANY:I = 0x17

.field public static final ATOKEN:I = 0x15

.field public static final COMMENT:I = 0x8

.field public static final DEFAULT:I = 0x0

.field public static final DIGITS:I = 0x14

.field public static final EOF:I = 0x0

.field public static final INCOMMENT:I = 0x1

.field public static final INQUOTEDSTRING:I = 0x3

.field public static final NESTED_COMMENT:I = 0x2

.field public static final QUOTEDPAIR:I = 0x16

.field public static final QUOTEDSTRING:I = 0x13

.field public static final WS:I = 0x6

.field public static final tokenImage:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 35
    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    .line 36
    const-string/jumbo v1, "<EOF>"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 37
    const-string/jumbo v1, "\"\\r\""

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 38
    const-string/jumbo v1, "\"\\n\""

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 39
    const-string/jumbo v1, "\"/\""

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 40
    const-string/jumbo v1, "\";\""

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 41
    const-string/jumbo v1, "\"=\""

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 42
    const-string/jumbo v1, "<WS>"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 43
    const-string/jumbo v1, "\"(\""

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 44
    const-string/jumbo v1, "\")\""

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 45
    const-string/jumbo v1, "<token of kind 9>"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 46
    const-string/jumbo v1, "\"(\""

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 47
    const-string/jumbo v1, "<token of kind 11>"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 48
    const-string/jumbo v1, "<token of kind 12>"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 49
    const-string/jumbo v1, "\"(\""

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 50
    const-string/jumbo v1, "\")\""

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 51
    const-string/jumbo v1, "<token of kind 15>"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 52
    const-string/jumbo v1, "\"\\\"\""

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 53
    const-string/jumbo v1, "<token of kind 17>"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 54
    const-string/jumbo v1, "<token of kind 18>"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 55
    const-string/jumbo v1, "\"\\\"\""

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 56
    const-string/jumbo v1, "<DIGITS>"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 57
    const-string/jumbo v1, "<ATOKEN>"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 58
    const-string/jumbo v1, "<QUOTEDPAIR>"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 59
    const-string/jumbo v1, "<ANY>"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 35
    sput-object v0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserConstants;->tokenImage:[Ljava/lang/String;

    .line 19
    return-void
.end method
