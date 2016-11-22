.class public Lorg/apache/commons/io/output/NullWriter;
.super Ljava/io/Writer;
.source "NullWriter.java"


# static fields
.field public static final NULL_WRITER:Lorg/apache/commons/io/output/NullWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lorg/apache/commons/io/output/NullWriter;

    invoke-direct {v0}, Lorg/apache/commons/io/output/NullWriter;-><init>()V

    sput-object v0, Lorg/apache/commons/io/output/NullWriter;->NULL_WRITER:Lorg/apache/commons/io/output/NullWriter;

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 92
    return-void
.end method

.method public flush()V
    .locals 0

    .prologue
    .line 87
    return-void
.end method

.method public write(I)V
    .locals 0
    .param p1, "idx"    # I

    .prologue
    .line 46
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 72
    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "st"    # I
    .param p3, "end"    # I

    .prologue
    .line 82
    return-void
.end method

.method public write([C)V
    .locals 0
    .param p1, "chr"    # [C

    .prologue
    .line 54
    return-void
.end method

.method public write([CII)V
    .locals 0
    .param p1, "chr"    # [C
    .param p2, "st"    # I
    .param p3, "end"    # I

    .prologue
    .line 64
    return-void
.end method
