.class public abstract Lorg/apache/james/mime4j/message/Entity;
.super Ljava/lang/Object;
.source "Entity.java"


# instance fields
.field private body:Lorg/apache/james/mime4j/message/Body;

.field private header:Lorg/apache/james/mime4j/message/Header;

.field private parent:Lorg/apache/james/mime4j/message/Entity;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object v0, p0, Lorg/apache/james/mime4j/message/Entity;->header:Lorg/apache/james/mime4j/message/Header;

    .line 37
    iput-object v0, p0, Lorg/apache/james/mime4j/message/Entity;->body:Lorg/apache/james/mime4j/message/Body;

    .line 38
    iput-object v0, p0, Lorg/apache/james/mime4j/message/Entity;->parent:Lorg/apache/james/mime4j/message/Entity;

    .line 35
    return-void
.end method


# virtual methods
.method public getBody()Lorg/apache/james/mime4j/message/Body;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Entity;->body:Lorg/apache/james/mime4j/message/Body;

    return-object v0
.end method

.method public getCharset()Ljava/lang/String;
    .locals 2

    .prologue
    .line 122
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Entity;->getHeader()Lorg/apache/james/mime4j/message/Header;

    move-result-object v0

    const-string/jumbo v1, "Content-Type"

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/message/Header;->getField(Ljava/lang/String;)Lorg/apache/james/mime4j/field/Field;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/ContentTypeField;

    .line 121
    invoke-static {v0}, Lorg/apache/james/mime4j/field/ContentTypeField;->getCharset(Lorg/apache/james/mime4j/field/ContentTypeField;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentTransferEncoding()Ljava/lang/String;
    .locals 3

    .prologue
    .line 132
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Entity;->getHeader()Lorg/apache/james/mime4j/message/Header;

    move-result-object v1

    const-string/jumbo v2, "Content-Transfer-Encoding"

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/message/Header;->getField(Ljava/lang/String;)Lorg/apache/james/mime4j/field/Field;

    move-result-object v0

    .line 131
    check-cast v0, Lorg/apache/james/mime4j/field/ContentTransferEncodingField;

    .line 134
    .local v0, "f":Lorg/apache/james/mime4j/field/ContentTransferEncodingField;
    invoke-static {v0}, Lorg/apache/james/mime4j/field/ContentTransferEncodingField;->getEncoding(Lorg/apache/james/mime4j/field/ContentTransferEncodingField;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getHeader()Lorg/apache/james/mime4j/message/Header;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Entity;->header:Lorg/apache/james/mime4j/message/Header;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 4

    .prologue
    .line 106
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Entity;->getHeader()Lorg/apache/james/mime4j/message/Header;

    move-result-object v2

    const-string/jumbo v3, "Content-Type"

    invoke-virtual {v2, v3}, Lorg/apache/james/mime4j/message/Header;->getField(Ljava/lang/String;)Lorg/apache/james/mime4j/field/Field;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/ContentTypeField;

    .line 107
    .local v0, "child":Lorg/apache/james/mime4j/field/ContentTypeField;
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Entity;->getParent()Lorg/apache/james/mime4j/message/Entity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 108
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Entity;->getParent()Lorg/apache/james/mime4j/message/Entity;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/james/mime4j/message/Entity;->getHeader()Lorg/apache/james/mime4j/message/Header;

    move-result-object v2

    .line 109
    const-string/jumbo v3, "Content-Type"

    .line 108
    invoke-virtual {v2, v3}, Lorg/apache/james/mime4j/message/Header;->getField(Ljava/lang/String;)Lorg/apache/james/mime4j/field/Field;

    move-result-object v1

    check-cast v1, Lorg/apache/james/mime4j/field/ContentTypeField;

    .line 112
    :goto_0
    invoke-static {v0, v1}, Lorg/apache/james/mime4j/field/ContentTypeField;->getMimeType(Lorg/apache/james/mime4j/field/ContentTypeField;Lorg/apache/james/mime4j/field/ContentTypeField;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 110
    :cond_0
    const/4 v1, 0x0

    .local v1, "parent":Lorg/apache/james/mime4j/field/ContentTypeField;
    goto :goto_0
.end method

.method public getParent()Lorg/apache/james/mime4j/message/Entity;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Entity;->parent:Lorg/apache/james/mime4j/message/Entity;

    return-object v0
.end method

.method public isMimeType(Ljava/lang/String;)Z
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 145
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Entity;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isMultipart()Z
    .locals 3

    .prologue
    .line 158
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Entity;->getHeader()Lorg/apache/james/mime4j/message/Header;

    move-result-object v1

    const-string/jumbo v2, "Content-Type"

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/message/Header;->getField(Ljava/lang/String;)Lorg/apache/james/mime4j/field/Field;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/ContentTypeField;

    .line 159
    .local v0, "f":Lorg/apache/james/mime4j/field/ContentTypeField;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/ContentTypeField;->getBoundary()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 160
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Entity;->getMimeType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "multipart/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    .line 159
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setBody(Lorg/apache/james/mime4j/message/Body;)V
    .locals 0
    .param p1, "body"    # Lorg/apache/james/mime4j/message/Body;

    .prologue
    .line 93
    iput-object p1, p0, Lorg/apache/james/mime4j/message/Entity;->body:Lorg/apache/james/mime4j/message/Body;

    .line 94
    invoke-interface {p1, p0}, Lorg/apache/james/mime4j/message/Body;->setParent(Lorg/apache/james/mime4j/message/Entity;)V

    .line 92
    return-void
.end method

.method public setHeader(Lorg/apache/james/mime4j/message/Header;)V
    .locals 0
    .param p1, "header"    # Lorg/apache/james/mime4j/message/Header;

    .prologue
    .line 75
    iput-object p1, p0, Lorg/apache/james/mime4j/message/Entity;->header:Lorg/apache/james/mime4j/message/Header;

    .line 74
    return-void
.end method

.method public setParent(Lorg/apache/james/mime4j/message/Entity;)V
    .locals 0
    .param p1, "parent"    # Lorg/apache/james/mime4j/message/Entity;

    .prologue
    .line 57
    iput-object p1, p0, Lorg/apache/james/mime4j/message/Entity;->parent:Lorg/apache/james/mime4j/message/Entity;

    .line 56
    return-void
.end method

.method public abstract writeTo(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
