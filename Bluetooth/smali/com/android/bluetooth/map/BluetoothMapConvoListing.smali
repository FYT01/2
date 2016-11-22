.class public Lcom/android/bluetooth/map/BluetoothMapConvoListing;
.super Ljava/lang/Object;
.source "BluetoothMapConvoListing.java"


# static fields
.field private static final D:Z = true

.field private static final TAG:Ljava/lang/String; = "BluetoothMapConvoListing"

.field private static final XML_TAG:Ljava/lang/String; = "MAP-convo-listing"


# instance fields
.field private hasUnread:Z

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListing;->hasUnread:Z

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListing;->mList:Ljava/util/List;

    .line 44
    return-void
.end method

.method private readConversations(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 178
    const-string/jumbo v2, "BluetoothMapConvoListing"

    const-string/jumbo v3, "readConversations(): "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .local v1, "type":I
    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    .line 180
    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    .line 182
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 186
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "conversation"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 189
    const-string/jumbo v2, "BluetoothMapConvoListing"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown XML tag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 194
    :cond_1
    invoke-static {p1}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->createFromXml(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/map/BluetoothMapConvoListing;->add(Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;)V

    goto :goto_0

    .line 176
    .end local v0    # "name":Ljava/lang/String;
    :cond_2
    return-void
.end method


# virtual methods
.method public add(Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;)V
    .locals 1
    .param p1, "element"    # Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListing;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->getReadBool()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListing;->hasUnread:Z

    .line 47
    :cond_0
    return-void
.end method

.method public appendFromXml(Ljava/io/InputStream;)V
    .locals 6
    .param p1, "xmlDocument"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 144
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 146
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string/jumbo v3, "UTF-8"

    invoke-interface {v1, p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 149
    :cond_0
    :goto_0
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .local v2, "type":I
    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    .line 150
    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    .line 152
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 156
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "name":Ljava/lang/String;
    const-string/jumbo v3, "MAP-convo-listing"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 158
    const-string/jumbo v3, "BluetoothMapConvoListing"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown XML tag: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 161
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/bluetooth/map/BluetoothMapConvoListing;->readConversations(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 163
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v2    # "type":I
    :catchall_0
    move-exception v3

    .line 164
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 163
    throw v3

    .line 164
    .restart local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v2    # "type":I
    :cond_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 142
    return-void
.end method

.method public encode()[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 95
    new-instance v5, Ljava/io/StringWriter;

    invoke-direct {v5}, Ljava/io/StringWriter;-><init>()V

    .line 96
    .local v5, "sw":Ljava/io/StringWriter;
    new-instance v6, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v6}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 98
    .local v6, "xmlConvoElement":Lorg/xmlpull/v1/XmlSerializer;
    :try_start_0
    invoke-interface {v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 99
    const-string/jumbo v7, "UTF-8"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 100
    const-string/jumbo v7, "http://xmlpull.org/v1/doc/features.html#indent-output"

    .line 101
    const/4 v8, 0x1

    .line 100
    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 102
    const-string/jumbo v7, "MAP-convo-listing"

    const/4 v8, 0x0

    invoke-interface {v6, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 103
    const-string/jumbo v7, "version"

    const-string/jumbo v8, "1.0"

    const/4 v9, 0x0

    invoke-interface {v6, v9, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 105
    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListing;->mList:Ljava/util/List;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "element$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;

    .line 106
    .local v3, "element":Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;
    invoke-virtual {v3, v6}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->encode(Lorg/xmlpull/v1/XmlSerializer;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 110
    .end local v3    # "element":Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;
    .end local v4    # "element$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v1

    .line 111
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v7, "BluetoothMapConvoListing"

    invoke-static {v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 117
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :goto_1
    invoke-virtual {v5}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "UTF-8"

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    return-object v7

    .line 108
    .restart local v4    # "element$iterator":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    const-string/jumbo v7, "MAP-convo-listing"

    const/4 v8, 0x0

    invoke-interface {v6, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 109
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 112
    .end local v4    # "element$iterator":Ljava/util/Iterator;
    :catch_1
    move-exception v2

    .line 113
    .local v2, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v7, "BluetoothMapConvoListing"

    invoke-static {v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 114
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v0

    .line 115
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v7, "BluetoothMapConvoListing"

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 201
    if-ne p0, p1, :cond_0

    .line 202
    return v4

    .line 204
    :cond_0
    if-nez p1, :cond_1

    .line 205
    return v3

    .line 207
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapConvoListing;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 208
    return v3

    :cond_2
    move-object v0, p1

    .line 210
    check-cast v0, Lcom/android/bluetooth/map/BluetoothMapConvoListing;

    .line 211
    .local v0, "other":Lcom/android/bluetooth/map/BluetoothMapConvoListing;
    iget-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListing;->hasUnread:Z

    iget-boolean v2, v0, Lcom/android/bluetooth/map/BluetoothMapConvoListing;->hasUnread:Z

    if-eq v1, v2, :cond_3

    .line 212
    return v3

    .line 214
    :cond_3
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListing;->mList:Ljava/util/List;

    if-nez v1, :cond_4

    .line 215
    iget-object v1, v0, Lcom/android/bluetooth/map/BluetoothMapConvoListing;->mList:Ljava/util/List;

    if-eqz v1, :cond_5

    .line 216
    return v3

    .line 218
    :cond_4
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListing;->mList:Ljava/util/List;

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapConvoListing;->mList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 219
    return v3

    .line 221
    :cond_5
    return v4
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListing;->mList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListing;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 65
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListing;->mList:Ljava/util/List;

    return-object v0
.end method

.method public hasUnread()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListing;->hasUnread:Z

    return v0
.end method

.method public segment(II)V
    .locals 2
    .param p1, "count"    # I
    .param p2, "offset"    # I

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListing;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, p2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 126
    if-lez p1, :cond_1

    .line 127
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListing;->mList:Ljava/util/List;

    add-int v1, p2, p1

    invoke-interface {v0, p2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListing;->mList:Ljava/util/List;

    .line 128
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListing;->mList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListing;->mList:Ljava/util/List;

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListing;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le p2, v0, :cond_2

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListing;->mList:Ljava/util/List;

    .line 134
    const-string/jumbo v0, "BluetoothMapConvoListing"

    const-string/jumbo v1, "offset greater than list size. Returning empty list"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 136
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListing;->mList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListing;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, p2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListing;->mList:Ljava/util/List;

    goto :goto_0
.end method

.method public sort()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListing;->mList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 120
    return-void
.end method
