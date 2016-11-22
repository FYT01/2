.class public Lcom/android/bluetooth/map/BluetoothMapMessageListing;
.super Ljava/lang/Object;
.source "BluetoothMapMessageListing.java"


# static fields
.field private static final BENZ_CARKIT:Ljava/lang/String; = "00:26:e8"

.field private static final D:Z = true

.field private static final TAG:Ljava/lang/String; = "BluetoothMapMessageListing"


# instance fields
.field private hasUnread:Z

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->hasUnread:Z

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->mList:Ljava/util/List;

    .line 38
    return-void
.end method


# virtual methods
.method public add(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;)V
    .locals 1
    .param p1, "element"    # Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->getReadBool()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->hasUnread:Z

    .line 41
    :cond_0
    return-void
.end method

.method public encode(ZLjava/lang/String;)[B
    .locals 11
    .param p1, "includeThreadId"    # Z
    .param p2, "version"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 93
    new-instance v6, Ljava/io/StringWriter;

    invoke-direct {v6}, Ljava/io/StringWriter;-><init>()V

    .line 94
    .local v6, "sw":Ljava/io/StringWriter;
    const/4 v7, 0x0

    .line 95
    .local v7, "xmlMsgElement":Lorg/xmlpull/v1/XmlSerializer;
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapService;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v8

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    .line 96
    const-string/jumbo v9, "00:26:e8"

    .line 95
    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    .line 97
    .local v5, "isBenzCarkit":Z
    const-string/jumbo v8, "BluetoothMapMessageListing"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Remote is BENZ CARKIT: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    if-eqz v5, :cond_0

    .line 99
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v7

    .line 104
    .local v7, "xmlMsgElement":Lorg/xmlpull/v1/XmlSerializer;
    :goto_0
    :try_start_0
    invoke-interface {v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 105
    if-eqz v5, :cond_1

    .line 106
    const-string/jumbo v8, "\n"

    invoke-interface {v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 113
    :goto_1
    const-string/jumbo v8, "MAP-msg-listing"

    const/4 v9, 0x0

    invoke-interface {v7, v9, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 114
    const-string/jumbo v8, "version"

    const/4 v9, 0x0

    invoke-interface {v7, v9, v8, p2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 116
    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->mList:Ljava/util/List;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "element$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;

    .line 117
    .local v3, "element":Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    invoke-virtual {v3, v7, p1}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->encode(Lorg/xmlpull/v1/XmlSerializer;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_2

    .line 121
    .end local v3    # "element":Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    .end local v4    # "element$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v1

    .line 122
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v8, "BluetoothMapMessageListing"

    invoke-static {v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 128
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :goto_3
    invoke-virtual {v6}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "UTF-8"

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    return-object v8

    .line 101
    .local v7, "xmlMsgElement":Lorg/xmlpull/v1/XmlSerializer;
    :cond_0
    new-instance v7, Lcom/android/internal/util/FastXmlSerializer;

    .end local v7    # "xmlMsgElement":Lorg/xmlpull/v1/XmlSerializer;
    invoke-direct {v7}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .local v7, "xmlMsgElement":Lorg/xmlpull/v1/XmlSerializer;
    goto :goto_0

    .line 108
    :cond_1
    :try_start_1
    const-string/jumbo v8, "UTF-8"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 109
    const-string/jumbo v8, "\n"

    invoke-interface {v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 110
    const-string/jumbo v8, "http://xmlpull.org/v1/doc/features.html#indent-output"

    .line 111
    const/4 v9, 0x1

    .line 110
    invoke-interface {v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 123
    :catch_1
    move-exception v2

    .line 124
    .local v2, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v8, "BluetoothMapMessageListing"

    invoke-static {v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 119
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    .restart local v4    # "element$iterator":Ljava/util/Iterator;
    :cond_2
    :try_start_2
    const-string/jumbo v8, "MAP-msg-listing"

    const/4 v9, 0x0

    invoke-interface {v7, v9, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 120
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    .line 125
    .end local v4    # "element$iterator":Ljava/util/Iterator;
    :catch_2
    move-exception v0

    .line 126
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v8, "BluetoothMapMessageListing"

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->mList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 59
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
            "Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->mList:Ljava/util/List;

    return-object v0
.end method

.method public hasUnread()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->hasUnread:Z

    return v0
.end method

.method public segment(II)V
    .locals 2
    .param p1, "count"    # I
    .param p2, "offset"    # I

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, p2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 137
    if-lez p1, :cond_1

    .line 138
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->mList:Ljava/util/List;

    add-int v1, p2, p1

    invoke-interface {v0, p2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->mList:Ljava/util/List;

    .line 139
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->mList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->mList:Ljava/util/List;

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le p2, v0, :cond_2

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->mList:Ljava/util/List;

    .line 145
    const-string/jumbo v0, "BluetoothMapMessageListing"

    const-string/jumbo v1, "offset greater than list size. Returning empty list"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 147
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->mList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, p2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->mList:Ljava/util/List;

    goto :goto_0
.end method

.method public sort()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->mList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 131
    return-void
.end method
