.class public interface abstract Lorg/apache/james/mime4j/field/address/parser/AddressListParserTreeConstants;
.super Ljava/lang/Object;
.source "AddressListParserTreeConstants.java"


# static fields
.field public static final JJTADDRESS:I = 0x2

.field public static final JJTADDRESS_LIST:I = 0x1

.field public static final JJTADDR_SPEC:I = 0x9

.field public static final JJTANGLE_ADDR:I = 0x6

.field public static final JJTDOMAIN:I = 0xb

.field public static final JJTGROUP_BODY:I = 0x5

.field public static final JJTLOCAL_PART:I = 0xa

.field public static final JJTMAILBOX:I = 0x3

.field public static final JJTNAME_ADDR:I = 0x4

.field public static final JJTPHRASE:I = 0x8

.field public static final JJTROUTE:I = 0x7

.field public static final JJTVOID:I

.field public static final jjtNodeName:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 21
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    .line 22
    const-string/jumbo v1, "void"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 23
    const-string/jumbo v1, "address_list"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 24
    const-string/jumbo v1, "address"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 25
    const-string/jumbo v1, "mailbox"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 26
    const-string/jumbo v1, "name_addr"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 27
    const-string/jumbo v1, "group_body"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 28
    const-string/jumbo v1, "angle_addr"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 29
    const-string/jumbo v1, "route"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 30
    const-string/jumbo v1, "phrase"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 31
    const-string/jumbo v1, "addr_spec"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 32
    const-string/jumbo v1, "local_part"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 33
    const-string/jumbo v1, "domain"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 21
    sput-object v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTreeConstants;->jjtNodeName:[Ljava/lang/String;

    .line 5
    return-void
.end method
