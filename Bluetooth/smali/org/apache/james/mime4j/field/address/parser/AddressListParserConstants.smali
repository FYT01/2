.class public interface abstract Lorg/apache/james/mime4j/field/address/parser/AddressListParserConstants;
.super Ljava/lang/Object;
.source "AddressListParserConstants.java"


# static fields
.field public static final ALPHA:I = 0xb

.field public static final ANY:I = 0x21

.field public static final ATEXT:I = 0xd

.field public static final COMMENT:I = 0x14

.field public static final DEFAULT:I = 0x0

.field public static final DIGIT:I = 0xc

.field public static final DOMAINLITERAL:I = 0x12

.field public static final DOTATOM:I = 0xe

.field public static final EOF:I = 0x0

.field public static final INCOMMENT:I = 0x2

.field public static final INDOMAINLITERAL:I = 0x1

.field public static final INQUOTEDSTRING:I = 0x4

.field public static final NESTED_COMMENT:I = 0x3

.field public static final QUOTEDPAIR:I = 0x20

.field public static final QUOTEDSTRING:I = 0x1f

.field public static final WS:I = 0xa

.field public static final tokenImage:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    const/16 v0, 0x22

    new-array v0, v0, [Ljava/lang/String;

    .line 40
    const-string/jumbo v1, "<EOF>"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 41
    const-string/jumbo v1, "\"\\r\""

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 42
    const-string/jumbo v1, "\"\\n\""

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 43
    const-string/jumbo v1, "\",\""

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 44
    const-string/jumbo v1, "\":\""

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 45
    const-string/jumbo v1, "\";\""

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 46
    const-string/jumbo v1, "\"<\""

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 47
    const-string/jumbo v1, "\">\""

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 48
    const-string/jumbo v1, "\"@\""

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 49
    const-string/jumbo v1, "\".\""

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 50
    const-string/jumbo v1, "<WS>"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 51
    const-string/jumbo v1, "<ALPHA>"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 52
    const-string/jumbo v1, "<DIGIT>"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 53
    const-string/jumbo v1, "<ATEXT>"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 54
    const-string/jumbo v1, "<DOTATOM>"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 55
    const-string/jumbo v1, "\"[\""

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 56
    const-string/jumbo v1, "<token of kind 16>"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 57
    const-string/jumbo v1, "<token of kind 17>"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 58
    const-string/jumbo v1, "\"]\""

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 59
    const-string/jumbo v1, "\"(\""

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 60
    const-string/jumbo v1, "\")\""

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 61
    const-string/jumbo v1, "<token of kind 21>"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 62
    const-string/jumbo v1, "\"(\""

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 63
    const-string/jumbo v1, "<token of kind 23>"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 64
    const-string/jumbo v1, "<token of kind 24>"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    .line 65
    const-string/jumbo v1, "\"(\""

    const/16 v2, 0x19

    aput-object v1, v0, v2

    .line 66
    const-string/jumbo v1, "\")\""

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    .line 67
    const-string/jumbo v1, "<token of kind 27>"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    .line 68
    const-string/jumbo v1, "\"\\\"\""

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    .line 69
    const-string/jumbo v1, "<token of kind 29>"

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    .line 70
    const-string/jumbo v1, "<token of kind 30>"

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    .line 71
    const-string/jumbo v1, "\"\\\"\""

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    .line 72
    const-string/jumbo v1, "<QUOTEDPAIR>"

    const/16 v2, 0x20

    aput-object v1, v0, v2

    .line 73
    const-string/jumbo v1, "<ANY>"

    const/16 v2, 0x21

    aput-object v1, v0, v2

    .line 39
    sput-object v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserConstants;->tokenImage:[Ljava/lang/String;

    .line 19
    return-void
.end method
