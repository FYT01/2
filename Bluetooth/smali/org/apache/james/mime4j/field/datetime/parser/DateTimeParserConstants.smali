.class public interface abstract Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserConstants;
.super Ljava/lang/Object;
.source "DateTimeParserConstants.java"


# static fields
.field public static final ANY:I = 0x30

.field public static final COMMENT:I = 0x26

.field public static final DEFAULT:I = 0x0

.field public static final DIGITS:I = 0x2e

.field public static final EOF:I = 0x0

.field public static final INCOMMENT:I = 0x1

.field public static final MILITARY_ZONE:I = 0x23

.field public static final NESTED_COMMENT:I = 0x2

.field public static final OFFSETDIR:I = 0x18

.field public static final QUOTEDPAIR:I = 0x2f

.field public static final WS:I = 0x24

.field public static final tokenImage:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 34
    const/16 v0, 0x31

    new-array v0, v0, [Ljava/lang/String;

    .line 35
    const-string/jumbo v1, "<EOF>"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 36
    const-string/jumbo v1, "\"\\r\""

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 37
    const-string/jumbo v1, "\"\\n\""

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 38
    const-string/jumbo v1, "\",\""

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 39
    const-string/jumbo v1, "\"Mon\""

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 40
    const-string/jumbo v1, "\"Tue\""

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 41
    const-string/jumbo v1, "\"Wed\""

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 42
    const-string/jumbo v1, "\"Thu\""

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 43
    const-string/jumbo v1, "\"Fri\""

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 44
    const-string/jumbo v1, "\"Sat\""

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 45
    const-string/jumbo v1, "\"Sun\""

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 46
    const-string/jumbo v1, "\"Jan\""

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 47
    const-string/jumbo v1, "\"Feb\""

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 48
    const-string/jumbo v1, "\"Mar\""

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 49
    const-string/jumbo v1, "\"Apr\""

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 50
    const-string/jumbo v1, "\"May\""

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 51
    const-string/jumbo v1, "\"Jun\""

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 52
    const-string/jumbo v1, "\"Jul\""

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 53
    const-string/jumbo v1, "\"Aug\""

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 54
    const-string/jumbo v1, "\"Sep\""

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 55
    const-string/jumbo v1, "\"Oct\""

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 56
    const-string/jumbo v1, "\"Nov\""

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 57
    const-string/jumbo v1, "\"Dec\""

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 58
    const-string/jumbo v1, "\":\""

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 59
    const-string/jumbo v1, "<OFFSETDIR>"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    .line 60
    const-string/jumbo v1, "\"UT\""

    const/16 v2, 0x19

    aput-object v1, v0, v2

    .line 61
    const-string/jumbo v1, "\"GMT\""

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    .line 62
    const-string/jumbo v1, "\"EST\""

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    .line 63
    const-string/jumbo v1, "\"EDT\""

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    .line 64
    const-string/jumbo v1, "\"CST\""

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    .line 65
    const-string/jumbo v1, "\"CDT\""

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    .line 66
    const-string/jumbo v1, "\"MST\""

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    .line 67
    const-string/jumbo v1, "\"MDT\""

    const/16 v2, 0x20

    aput-object v1, v0, v2

    .line 68
    const-string/jumbo v1, "\"PST\""

    const/16 v2, 0x21

    aput-object v1, v0, v2

    .line 69
    const-string/jumbo v1, "\"PDT\""

    const/16 v2, 0x22

    aput-object v1, v0, v2

    .line 70
    const-string/jumbo v1, "<MILITARY_ZONE>"

    const/16 v2, 0x23

    aput-object v1, v0, v2

    .line 71
    const-string/jumbo v1, "<WS>"

    const/16 v2, 0x24

    aput-object v1, v0, v2

    .line 72
    const-string/jumbo v1, "\"(\""

    const/16 v2, 0x25

    aput-object v1, v0, v2

    .line 73
    const-string/jumbo v1, "\")\""

    const/16 v2, 0x26

    aput-object v1, v0, v2

    .line 74
    const-string/jumbo v1, "<token of kind 39>"

    const/16 v2, 0x27

    aput-object v1, v0, v2

    .line 75
    const-string/jumbo v1, "\"(\""

    const/16 v2, 0x28

    aput-object v1, v0, v2

    .line 76
    const-string/jumbo v1, "<token of kind 41>"

    const/16 v2, 0x29

    aput-object v1, v0, v2

    .line 77
    const-string/jumbo v1, "<token of kind 42>"

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    .line 78
    const-string/jumbo v1, "\"(\""

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    .line 79
    const-string/jumbo v1, "\")\""

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    .line 80
    const-string/jumbo v1, "<token of kind 45>"

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    .line 81
    const-string/jumbo v1, "<DIGITS>"

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    .line 82
    const-string/jumbo v1, "<QUOTEDPAIR>"

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    .line 83
    const-string/jumbo v1, "<ANY>"

    const/16 v2, 0x30

    aput-object v1, v0, v2

    .line 34
    sput-object v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserConstants;->tokenImage:[Ljava/lang/String;

    .line 19
    return-void
.end method
