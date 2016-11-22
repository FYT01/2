.class public Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;
.super Ljava/lang/Object;
.source "BluetoothMapConvoListingElement.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;",
        ">;"
    }
.end annotation


# static fields
.field private static final D:Z = true

.field private static final TAG:Ljava/lang/String; = "BluetoothMapConvoListingElement"

.field private static final V:Z

.field private static final XML_ATT_ID:Ljava/lang/String; = "id"

.field private static final XML_ATT_LAST_ACTIVITY:Ljava/lang/String; = "last_activity"

.field private static final XML_ATT_NAME:Ljava/lang/String; = "name"

.field private static final XML_ATT_READ:Ljava/lang/String; = "readstatus"

.field private static final XML_ATT_SUMMARY:Ljava/lang/String; = "summary"

.field private static final XML_ATT_VERSION_COUNTER:Ljava/lang/String; = "version_counter"

.field public static final XML_TAG_CONVERSATION:Ljava/lang/String; = "conversation"


# instance fields
.field private mContacts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;",
            ">;"
        }
    .end annotation
.end field

.field private mCursorIndex:I

.field private mId:Lcom/android/bluetooth/SignedLongLong;

.field private mLastActivity:J

.field private mName:Ljava/lang/String;

.field private mRead:Z

.field private mReportRead:Z

.field private mSmsMmsContacts:Ljava/lang/String;

.field private mSummary:Ljava/lang/String;

.field private mType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

.field private mVersionCounter:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 47
    const-string/jumbo v0, "BluetoothMap"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->V:Z

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mId:Lcom/android/bluetooth/SignedLongLong;

    .line 50
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mName:Ljava/lang/String;

    .line 51
    iput-wide v4, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mLastActivity:J

    .line 52
    iput-boolean v2, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mRead:Z

    .line 53
    iput-boolean v2, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mReportRead:Z

    .line 55
    iput-wide v4, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mVersionCounter:J

    .line 56
    iput v2, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mCursorIndex:I

    .line 57
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    .line 58
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mSummary:Ljava/lang/String;

    .line 61
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mSmsMmsContacts:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public static createFromXml(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;
    .locals 10
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 290
    new-instance v5, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;

    invoke-direct {v5}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;-><init>()V

    .line 291
    .local v5, "newElement":Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v2

    .line 293
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_6

    .line 294
    invoke-interface {p0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 295
    .local v0, "attributeName":Ljava/lang/String;
    invoke-interface {p0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    .line 296
    .local v1, "attributeValue":Ljava/lang/String;
    const-string/jumbo v7, "id"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 297
    invoke-static {v1}, Lcom/android/bluetooth/SignedLongLong;->fromString(Ljava/lang/String;)Lcom/android/bluetooth/SignedLongLong;

    move-result-object v7

    iput-object v7, v5, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mId:Lcom/android/bluetooth/SignedLongLong;

    .line 293
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 298
    :cond_0
    const-string/jumbo v7, "name"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 299
    iput-object v1, v5, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mName:Ljava/lang/String;

    goto :goto_1

    .line 300
    :cond_1
    const-string/jumbo v7, "last_activity"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 301
    invoke-virtual {v5, v1}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setLastActivity(Ljava/lang/String;)V

    goto :goto_1

    .line 302
    :cond_2
    const-string/jumbo v7, "readstatus"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 303
    invoke-direct {v5, v1}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setRead(Ljava/lang/String;)V

    goto :goto_1

    .line 304
    :cond_3
    const-string/jumbo v7, "version_counter"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 305
    invoke-direct {v5, v1}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setVersionCounter(Ljava/lang/String;)V

    goto :goto_1

    .line 306
    :cond_4
    const-string/jumbo v7, "summary"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 307
    invoke-virtual {v5, v1}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setSummary(Ljava/lang/String;)V

    goto :goto_1

    .line 309
    :cond_5
    const-string/jumbo v7, "BluetoothMapConvoListingElement"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unknown XML attribute: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {p0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 314
    .end local v0    # "attributeName":Ljava/lang/String;
    .end local v1    # "attributeValue":Ljava/lang/String;
    :cond_6
    :goto_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    .local v6, "type":I
    const/4 v7, 0x3

    if-eq v6, v7, :cond_8

    .line 315
    const/4 v7, 0x1

    if-eq v6, v7, :cond_8

    .line 317
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_6

    .line 321
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 322
    .local v4, "name":Ljava/lang/String;
    const-string/jumbo v7, "convocontact"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 323
    invoke-static {p0}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->createFromXml(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->addContact(Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;)V

    goto :goto_2

    .line 325
    :cond_7
    const-string/jumbo v7, "BluetoothMapConvoListingElement"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unknown XML tag: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_2

    .line 334
    .end local v4    # "name":Ljava/lang/String;
    :cond_8
    return-object v5
.end method

.method private getSummary()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 212
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mSummary:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 214
    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mSummary:Ljava/lang/String;

    const/16 v3, 0x100

    invoke-static {v2, v3}, Lcom/android/bluetooth/map/BluetoothMapUtils;->truncateUtf8StringToBytearray(Ljava/lang/String;I)[B

    move-result-object v2

    .line 215
    const-string/jumbo v3, "UTF-8"

    .line 214
    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 216
    :catch_0
    move-exception v0

    .line 218
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v1, "BluetoothMapConvoListingElement"

    const-string/jumbo v2, "Missing UTF-8 support on platform"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 221
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_0
    return-object v4
.end method

.method private setRead(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 175
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "yes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    iput-boolean v2, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mRead:Z

    .line 180
    :goto_0
    iput-boolean v2, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mReportRead:Z

    .line 174
    return-void

    .line 178
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mRead:Z

    goto :goto_0
.end method

.method private setVersionCounter(Ljava/lang/String;)V
    .locals 4
    .param p1, "vcount"    # Ljava/lang/String;

    .prologue
    .line 86
    const-string/jumbo v1, "BluetoothMapConvoListingElement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setVersionCounter: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mVersionCounter:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :goto_0
    return-void

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v1, "BluetoothMapConvoListingElement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unable to parse XML versionCounter:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mVersionCounter:J

    goto :goto_0
.end method


# virtual methods
.method public addContact(Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;)V
    .locals 1
    .param p1, "contact"    # Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mContacts:Ljava/util/List;

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mContacts:Ljava/util/List;

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mContacts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    return-void
.end method

.method public compareTo(Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;)I
    .locals 4
    .param p1, "e"    # Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;

    .prologue
    .line 233
    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mLastActivity:J

    iget-wide v2, p1, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mLastActivity:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 234
    const/4 v0, 0x1

    return v0

    .line 235
    :cond_0
    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mLastActivity:J

    iget-wide v2, p1, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mLastActivity:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 236
    const/4 v0, -0x1

    return v0

    .line 238
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "e"    # Ljava/lang/Object;

    .prologue
    .line 232
    check-cast p1, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;

    .end local p1    # "e":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->compareTo(Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;)I

    move-result v0

    return v0
.end method

.method public encode(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 7
    .param p1, "xmlConvoElement"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    .line 250
    const-string/jumbo v2, "conversation"

    invoke-interface {p1, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 251
    const-string/jumbo v2, "id"

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mId:Lcom/android/bluetooth/SignedLongLong;

    invoke-virtual {v3}, Lcom/android/bluetooth/SignedLongLong;->toHexString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v6, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 252
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mName:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 253
    const-string/jumbo v2, "name"

    .line 254
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mName:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/bluetooth/map/BluetoothMapUtils;->stripInvalidChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 253
    invoke-interface {p1, v6, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 256
    :cond_0
    iget-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mLastActivity:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 257
    const-string/jumbo v2, "last_activity"

    .line 258
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->getLastActivityString()Ljava/lang/String;

    move-result-object v3

    .line 257
    invoke-interface {p1, v6, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 261
    :cond_1
    iget-boolean v2, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mReportRead:Z

    if-eqz v2, :cond_2

    .line 262
    const-string/jumbo v2, "readstatus"

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->getRead()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v6, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 264
    :cond_2
    iget-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mVersionCounter:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    .line 265
    const-string/jumbo v2, "version_counter"

    .line 266
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->getVersionCounter()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    .line 265
    invoke-interface {p1, v6, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 268
    :cond_3
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mSummary:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 269
    const-string/jumbo v2, "summary"

    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->getSummary()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v6, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 271
    :cond_4
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mContacts:Ljava/util/List;

    if-eqz v2, :cond_5

    .line 272
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mContacts:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "contact$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;

    .line 273
    .local v0, "contact":Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->encode(Lorg/xmlpull/v1/XmlSerializer;)V

    goto :goto_0

    .line 276
    .end local v0    # "contact":Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;
    .end local v1    # "contact$iterator":Ljava/util/Iterator;
    :cond_5
    const-string/jumbo v2, "conversation"

    invoke-interface {p1, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 246
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 339
    if-ne p0, p1, :cond_0

    .line 340
    return v7

    .line 342
    :cond_0
    if-nez p1, :cond_1

    .line 343
    return v6

    .line 345
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 346
    return v6

    :cond_2
    move-object v0, p1

    .line 348
    check-cast v0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;

    .line 349
    .local v0, "other":Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mContacts:Ljava/util/List;

    if-nez v1, :cond_3

    .line 350
    iget-object v1, v0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mContacts:Ljava/util/List;

    if-eqz v1, :cond_4

    .line 351
    return v6

    .line 353
    :cond_3
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mContacts:Ljava/util/List;

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mContacts:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 354
    return v6

    .line 365
    :cond_4
    iget-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mLastActivity:J

    iget-wide v4, v0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mLastActivity:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_5

    .line 366
    return v6

    .line 368
    :cond_5
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mName:Ljava/lang/String;

    if-nez v1, :cond_6

    .line 369
    iget-object v1, v0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mName:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 370
    return v6

    .line 372
    :cond_6
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mName:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 373
    return v6

    .line 375
    :cond_7
    iget-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mRead:Z

    iget-boolean v2, v0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mRead:Z

    if-eq v1, v2, :cond_8

    .line 376
    return v6

    .line 378
    :cond_8
    return v7
.end method

.method public getContacts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mContacts:Ljava/util/List;

    return-object v0
.end method

.method public getConvoId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mId:Lcom/android/bluetooth/SignedLongLong;

    invoke-virtual {v0}, Lcom/android/bluetooth/SignedLongLong;->toHexString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCpConvoId()J
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mId:Lcom/android/bluetooth/SignedLongLong;

    invoke-virtual {v0}, Lcom/android/bluetooth/SignedLongLong;->getLeastSignificantBits()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCursorIndex()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mCursorIndex:I

    return v0
.end method

.method public getFullSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mSummary:Ljava/lang/String;

    return-object v0
.end method

.method public getLastActivity()J
    .locals 2

    .prologue
    .line 136
    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mLastActivity:J

    return-wide v0
.end method

.method public getLastActivityString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 140
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyyMMdd\'T\'HHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 141
    .local v1, "format":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    iget-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mLastActivity:J

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 142
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getRead()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mReportRead:Z

    if-nez v0, :cond_0

    .line 159
    const-string/jumbo v0, "UNKNOWN"

    return-object v0

    .line 161
    :cond_0
    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mRead:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "READ"

    :goto_0
    return-object v0

    :cond_1
    const-string/jumbo v0, "UNREAD"

    goto :goto_0
.end method

.method public getReadBool()Z
    .locals 1

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mRead:Z

    return v0
.end method

.method public getSmsMmsContacts()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mSmsMmsContacts:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    return-object v0
.end method

.method public getVersionCounter()J
    .locals 2

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mVersionCounter:J

    return-wide v0
.end method

.method public incrementVersionCounter()V
    .locals 4

    .prologue
    .line 82
    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mVersionCounter:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mVersionCounter:J

    .line 81
    return-void
.end method

.method public removeContact(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mContacts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 130
    return-void
.end method

.method public removeContact(Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;)V
    .locals 1
    .param p1, "contact"    # Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mContacts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 126
    return-void
.end method

.method public setContacts(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 117
    .local p1, "contacts":Ljava/util/List;, "Ljava/util/List<Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;>;"
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mContacts:Ljava/util/List;

    .line 116
    return-void
.end method

.method public setConvoId(JJ)V
    .locals 3
    .param p1, "type"    # J
    .param p3, "threadId"    # J

    .prologue
    .line 190
    new-instance v0, Lcom/android/bluetooth/SignedLongLong;

    invoke-direct {v0, p3, p4, p1, p2}, Lcom/android/bluetooth/SignedLongLong;-><init>(JJ)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mId:Lcom/android/bluetooth/SignedLongLong;

    .line 191
    const-string/jumbo v0, "BluetoothMapConvoListingElement"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setConvoId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    return-void
.end method

.method public setCursorIndex(I)V
    .locals 3
    .param p1, "cursorIndex"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mCursorIndex:I

    .line 69
    const-string/jumbo v0, "BluetoothMapConvoListingElement"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCursorIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return-void
.end method

.method public setLastActivity(J)V
    .locals 3
    .param p1, "last"    # J

    .prologue
    .line 146
    const-string/jumbo v0, "BluetoothMapConvoListingElement"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setLastActivity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iput-wide p1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mLastActivity:J

    .line 145
    return-void
.end method

.method public setLastActivity(Ljava/lang/String;)V
    .locals 4
    .param p1, "lastActivity"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 152
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyyMMdd\'T\'HHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 153
    .local v1, "format":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 154
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mLastActivity:J

    .line 150
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 100
    const-string/jumbo v0, "BluetoothMapConvoListingElement"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mName:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setRead(ZZ)V
    .locals 3
    .param p1, "read"    # Z
    .param p2, "reportRead"    # Z

    .prologue
    .line 169
    iput-boolean p1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mRead:Z

    .line 170
    const-string/jumbo v0, "BluetoothMapConvoListingElement"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRead: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iput-boolean p2, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mReportRead:Z

    .line 168
    return-void
.end method

.method public setSmsMmsContacts(Ljava/lang/String;)V
    .locals 0
    .param p1, "smsMmsContacts"    # Ljava/lang/String;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mSmsMmsContacts:Ljava/lang/String;

    .line 228
    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 0
    .param p1, "summary"    # Ljava/lang/String;

    .prologue
    .line 203
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mSummary:Ljava/lang/String;

    .line 202
    return-void
.end method

.method public setType(Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V
    .locals 0
    .param p1, "type"    # Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    .line 108
    return-void
.end method

.method public setVersionCounter(J)V
    .locals 3
    .param p1, "vcount"    # J

    .prologue
    .line 77
    const-string/jumbo v0, "BluetoothMapConvoListingElement"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setVersionCounter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iput-wide p1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mVersionCounter:J

    .line 76
    return-void
.end method
