.class public Lcom/android/bluetooth/map/BluetoothMapFolderElement;
.super Ljava/lang/Object;
.source "BluetoothMapFolderElement.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/bluetooth/map/BluetoothMapFolderElement;",
        ">;"
    }
.end annotation


# static fields
.field private static final D:Z = true

.field private static final TAG:Ljava/lang/String; = "BluetoothMapFolderElement"

.field private static final V:Z


# instance fields
.field private mFolderId:J

.field private mHasEmailContent:Z

.field private mHasImContent:Z

.field private mHasSmsMmsContent:Z

.field private mIgnore:Z

.field private mName:Ljava/lang/String;

.field private mParent:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

.field private mSubFolders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/bluetooth/map/BluetoothMapFolderElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    sput-boolean v0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->V:Z

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapFolderElement;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "parrent"    # Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .prologue
    const/4 v2, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mParent:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 44
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mFolderId:J

    .line 45
    iput-boolean v2, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mHasSmsMmsContent:Z

    .line 46
    iput-boolean v2, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mHasImContent:Z

    .line 47
    iput-boolean v2, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mHasEmailContent:Z

    .line 49
    iput-boolean v2, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mIgnore:Z

    .line 59
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mName:Ljava/lang/String;

    .line 60
    iput-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mParent:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mSubFolders:Ljava/util/HashMap;

    .line 58
    return-void
.end method

.method private static findFolderById(JLcom/android/bluetooth/map/BluetoothMapFolderElement;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .locals 6
    .param p0, "id"    # J
    .param p2, "folder"    # Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .prologue
    const/4 v5, 0x0

    .line 154
    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderId()J

    move-result-wide v2

    cmp-long v2, v2, p0

    if-nez v2, :cond_0

    .line 155
    return-object p2

    .line 158
    :cond_0
    iget-object v2, p2, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mSubFolders:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    .line 159
    iget-object v3, p2, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mSubFolders:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    new-array v3, v3, [Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 158
    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    const/4 v3, 0x0

    array-length v4, v2

    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v1, v2, v3

    .line 161
    .local v1, "subFolder":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    invoke-static {p0, p1, v1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->findFolderById(JLcom/android/bluetooth/map/BluetoothMapFolderElement;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v0

    .line 162
    .local v0, "ret":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    if-eqz v0, :cond_1

    .line 163
    return-object v0

    .line 158
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 166
    .end local v0    # "ret":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .end local v1    # "subFolder":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    :cond_2
    return-object v5
.end method

.method public static getFolderById(JLcom/android/bluetooth/map/BluetoothMapFolderElement;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .locals 2
    .param p0, "id"    # J
    .param p2, "folderStructure"    # Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .prologue
    const/4 v0, 0x0

    .line 146
    if-nez p2, :cond_0

    .line 147
    return-object v0

    .line 149
    :cond_0
    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getRoot()Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->findFolderById(JLcom/android/bluetooth/map/BluetoothMapFolderElement;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addEmailFolder(Ljava/lang/String;J)Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "emailFolderId"    # J

    .prologue
    .line 230
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->V:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "BluetoothMapFolderElement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "addEmailFolder() id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->addFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v0

    .line 232
    .local v0, "newFolder":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    invoke-virtual {v0, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->setFolderId(J)V

    .line 233
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->setHasEmailContent(Z)V

    .line 234
    return-object v0
.end method

.method public addFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 187
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 188
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mSubFolders:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 189
    .local v0, "newFolder":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    if-nez v0, :cond_0

    .line 190
    const-string/jumbo v1, "BluetoothMapFolderElement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "addFolder():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .end local v0    # "newFolder":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    invoke-direct {v0, p1, p0}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;-><init>(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapFolderElement;)V

    .line 192
    .restart local v0    # "newFolder":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mSubFolders:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    :goto_0
    return-object v0

    .line 194
    :cond_0
    const-string/jumbo v1, "BluetoothMapFolderElement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "addFolder():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " already added"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public addImFolder(Ljava/lang/String;J)Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "idFolder"    # J

    .prologue
    .line 217
    const-string/jumbo v1, "BluetoothMapFolderElement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "addImFolder() id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->addFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v0

    .line 219
    .local v0, "newFolder":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->setHasImContent(Z)V

    .line 220
    invoke-virtual {v0, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->setFolderId(J)V

    .line 221
    return-object v0
.end method

.method public addSmsMmsFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 205
    const-string/jumbo v1, "BluetoothMapFolderElement"

    const-string/jumbo v2, "addSmsMmsFolder()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->addFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v0

    .line 207
    .local v0, "newFolder":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->setHasSmsMmsContent(Z)V

    .line 208
    return-object v0
.end method

.method public appendSubfolders(Ljava/io/InputStream;)V
    .locals 6
    .param p1, "xmlDocument"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 310
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 312
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string/jumbo v3, "UTF-8"

    invoke-interface {v1, p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 315
    :cond_0
    :goto_0
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .local v2, "type":I
    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    .line 316
    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    .line 318
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 322
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 323
    .local v0, "name":Ljava/lang/String;
    const-string/jumbo v3, "folder-listing"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 324
    const-string/jumbo v3, "BluetoothMapFolderElement"

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

    .line 325
    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 327
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->readFolders(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 329
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v2    # "type":I
    :catchall_0
    move-exception v3

    .line 330
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 329
    throw v3

    .line 330
    .restart local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v2    # "type":I
    :cond_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 308
    return-void
.end method

.method public compareTo(Lcom/android/bluetooth/map/BluetoothMapFolderElement;)I
    .locals 8
    .param p1, "another"    # Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .prologue
    const/4 v7, 0x1

    .line 379
    if-nez p1, :cond_0

    return v7

    .line 380
    :cond_0
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mName:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    .line 382
    .local v0, "ret":I
    if-nez v0, :cond_5

    .line 383
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mSubFolders:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    iget-object v5, p1, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mSubFolders:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    sub-int v0, v4, v5

    .line 384
    if-nez v0, :cond_3

    .line 386
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mSubFolders:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "subfolder$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 388
    .local v1, "subfolder":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    iget-object v4, p1, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mSubFolders:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 389
    .local v3, "subfolderAnother":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    if-nez v3, :cond_2

    .line 390
    const-string/jumbo v4, "BluetoothMapFolderElement"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFullPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " not in another"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    return v7

    .line 393
    :cond_2
    invoke-virtual {v1, v3}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->compareTo(Lcom/android/bluetooth/map/BluetoothMapFolderElement;)I

    move-result v0

    .line 394
    if-eqz v0, :cond_1

    .line 395
    const-string/jumbo v4, "BluetoothMapFolderElement"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFullPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " filed compareTo()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    return v0

    .line 400
    .end local v1    # "subfolder":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .end local v2    # "subfolder$iterator":Ljava/util/Iterator;
    .end local v3    # "subfolderAnother":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    :cond_3
    const-string/jumbo v4, "BluetoothMapFolderElement"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mSubFolders.size(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mSubFolders:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 401
    const-string/jumbo v6, " another.mSubFolders.size(): "

    .line 400
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 401
    iget-object v6, p1, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mSubFolders:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    .line 400
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :cond_4
    :goto_0
    return v0

    .line 404
    :cond_5
    const-string/jumbo v4, "BluetoothMapFolderElement"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " another.mName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "another"    # Ljava/lang/Object;

    .prologue
    .line 378
    check-cast p1, Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .end local p1    # "another":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->compareTo(Lcom/android/bluetooth/map/BluetoothMapFolderElement;)I

    move-result v0

    return v0
.end method

.method public encode(II)[B
    .locals 11
    .param p1, "offset"    # I
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 254
    new-instance v6, Ljava/io/StringWriter;

    invoke-direct {v6}, Ljava/io/StringWriter;-><init>()V

    .line 255
    .local v6, "sw":Ljava/io/StringWriter;
    new-instance v7, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v7}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 258
    .local v7, "xmlMsgElement":Lorg/xmlpull/v1/XmlSerializer;
    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mSubFolders:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mSubFolders:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    new-array v9, v9, [Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    invoke-interface {v8, v9}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 260
    .local v3, "folders":[Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mSubFolders:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    if-le p1, v8, :cond_0

    .line 261
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "FolderListingEncode: offset > subFolders.size()"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 263
    :cond_0
    add-int v5, p1, p2

    .line 264
    .local v5, "stopIndex":I
    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mSubFolders:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    if-le v5, v8, :cond_1

    .line 265
    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mSubFolders:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v5

    .line 268
    :cond_1
    :try_start_0
    invoke-interface {v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 269
    const-string/jumbo v8, "UTF-8"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 270
    const-string/jumbo v8, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v9, 0x1

    invoke-interface {v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 271
    const-string/jumbo v8, "folder-listing"

    const/4 v9, 0x0

    invoke-interface {v7, v9, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 272
    const-string/jumbo v8, "version"

    const-string/jumbo v9, "1.0"

    const/4 v10, 0x0

    invoke-interface {v7, v10, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 273
    move v4, p1

    .local v4, "i":I
    :goto_0
    if-ge v4, v5, :cond_2

    .line 275
    const-string/jumbo v8, "folder"

    const/4 v9, 0x0

    invoke-interface {v7, v9, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 276
    const-string/jumbo v8, "name"

    aget-object v9, v3, v4

    invoke-virtual {v9}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v7, v10, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 277
    const-string/jumbo v8, "folder"

    const/4 v9, 0x0

    invoke-interface {v7, v9, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 273
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 279
    :cond_2
    const-string/jumbo v8, "folder-listing"

    const/4 v9, 0x0

    invoke-interface {v7, v9, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 280
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    invoke-virtual {v6}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "UTF-8"

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    return-object v8

    .line 287
    .end local v4    # "i":I
    :catch_0
    move-exception v0

    .line 288
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v8, "BluetoothMapFolderElement"

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 289
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "error encoding folderElement"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 284
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 285
    .local v2, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v8, "BluetoothMapFolderElement"

    invoke-static {v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 286
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "error encoding folderElement"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 281
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v1

    .line 282
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v8, "BluetoothMapFolderElement"

    invoke-static {v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 283
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "error encoding folderElement"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method public getFolderById(J)Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 141
    invoke-static {p1, p2, p0}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderById(JLcom/android/bluetooth/map/BluetoothMapFolderElement;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v0

    return-object v0
.end method

.method public getFolderByName(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getRoot()Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v0

    .line 132
    .local v0, "folderElement":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    const-string/jumbo v1, "telecom"

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getSubFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v0

    .line 133
    const-string/jumbo v1, "msg"

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getSubFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v0

    .line 134
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getSubFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v0

    .line 135
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderId()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 136
    const/4 v0, 0x0

    .line 137
    .end local v0    # "folderElement":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    :cond_0
    return-object v0
.end method

.method public getFolderId()J
    .locals 2

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mFolderId:J

    return-wide v0
.end method

.method public getFullPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mName:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mParent:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 119
    .local v0, "current":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    :goto_0
    if-eqz v0, :cond_1

    .line 120
    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getParent()Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 121
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getParent()Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v0

    goto :goto_0

    .line 126
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mParent:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    return-object v0
.end method

.method public getRoot()Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .locals 2

    .prologue
    .line 175
    move-object v0, p0

    .line 176
    .local v0, "rootFolder":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    :goto_0
    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getParent()Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 177
    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getParent()Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v0

    goto :goto_0

    .line 178
    :cond_0
    return-object v0
.end method

.method public getSubFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .locals 2
    .param p1, "folderName"    # Ljava/lang/String;

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mSubFolders:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    return-object v0
.end method

.method public getSubFolderCount()I
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mSubFolders:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public hasEmailContent()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mHasEmailContent:Z

    return v0
.end method

.method public hasImContent()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mHasImContent:Z

    return v0
.end method

.method public hasSmsMmsContent()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mHasSmsMmsContent:Z

    return v0
.end method

.method public readFolders(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 343
    const-string/jumbo v5, "BluetoothMapFolderElement"

    const-string/jumbo v6, "readFolders(): "

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .local v4, "type":I
    const/4 v5, 0x3

    if-eq v4, v5, :cond_4

    .line 345
    const/4 v5, 0x1

    if-eq v4, v5, :cond_4

    .line 347
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 351
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 352
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "folder"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 353
    const-string/jumbo v5, "BluetoothMapFolderElement"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unknown XML tag: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 357
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    .line 358
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 359
    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "name"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 362
    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->addFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v1

    .line 363
    .local v1, "element":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    iget-boolean v5, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mHasEmailContent:Z

    invoke-virtual {v1, v5}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->setHasEmailContent(Z)V

    .line 364
    iget-boolean v5, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mHasImContent:Z

    invoke-virtual {v1, v5}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->setHasImContent(Z)V

    .line 365
    iget-boolean v5, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mHasSmsMmsContent:Z

    invoke-virtual {v1, v5}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->setHasSmsMmsContent(Z)V

    .line 358
    .end local v1    # "element":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 367
    :cond_2
    const-string/jumbo v5, "BluetoothMapFolderElement"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unknown XML attribute: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 370
    :cond_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    goto/16 :goto_0

    .line 341
    .end local v0    # "count":I
    .end local v2    # "i":I
    .end local v3    # "name":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method public setFolderId(J)V
    .locals 1
    .param p1, "folderId"    # J

    .prologue
    .line 88
    iput-wide p1, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mFolderId:J

    .line 87
    return-void
.end method

.method public setHasEmailContent(Z)V
    .locals 0
    .param p1, "hasEmailContent"    # Z

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mHasEmailContent:Z

    .line 93
    return-void
.end method

.method public setHasImContent(Z)V
    .locals 0
    .param p1, "hasImContent"    # Z

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mHasImContent:Z

    .line 96
    return-void
.end method

.method public setHasSmsMmsContent(Z)V
    .locals 0
    .param p1, "hasSmsMmsContent"    # Z

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mHasSmsMmsContent:Z

    .line 90
    return-void
.end method

.method public setIngore(Z)V
    .locals 0
    .param p1, "ignore"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mIgnore:Z

    .line 64
    return-void
.end method

.method public shouldIgnore()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mIgnore:Z

    return v0
.end method
