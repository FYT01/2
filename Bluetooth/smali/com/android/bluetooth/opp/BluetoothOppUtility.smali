.class public Lcom/android/bluetooth/opp/BluetoothOppUtility;
.super Ljava/lang/Object;
.source "BluetoothOppUtility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/opp/BluetoothOppUtility$CustomIntent;
    }
.end annotation


# static fields
.field private static final D:Z = true

.field private static final TAG:Ljava/lang/String; = "BluetoothOppUtility"

.field private static final V:Z

.field private static final sSendFileMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Landroid/net/Uri;",
            "Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppUtility;->V:Z

    return v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 65
    const-string/jumbo v0, "BluetoothOpp"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppUtility;->V:Z

    .line 68
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 67
    sput-object v0, Lcom/android/bluetooth/opp/BluetoothOppUtility;->sSendFileMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 62
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static closeSendFileInfo(Landroid/net/Uri;)V
    .locals 5
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 383
    const-string/jumbo v2, "BluetoothOppUtility"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "closeSendFileInfo: uri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    sget-object v2, Lcom/android/bluetooth/opp/BluetoothOppUtility;->sSendFileMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    .line 385
    .local v1, "info":Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mInputStream:Ljava/io/FileInputStream;

    if-eqz v2, :cond_0

    .line 387
    :try_start_0
    iget-object v2, v1, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mInputStream:Ljava/io/FileInputStream;

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    :cond_0
    :goto_0
    return-void

    .line 388
    :catch_0
    move-exception v0

    .local v0, "ignored":Ljava/io/IOException;
    goto :goto_0
.end method

.method public static formatProgressText(JJ)Ljava/lang/String;
    .locals 6
    .param p0, "totalBytes"    # J
    .param p2, "currentBytes"    # J

    .prologue
    .line 289
    const-wide/16 v4, 0x0

    cmp-long v3, p0, v4

    if-gtz v3, :cond_0

    .line 290
    const-string/jumbo v3, "0%"

    return-object v3

    .line 292
    :cond_0
    const-wide/16 v4, 0x64

    mul-long/2addr v4, p2

    div-long v0, v4, p0

    .line 293
    .local v0, "progress":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 294
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 295
    const/16 v3, 0x25

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 296
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method static generateUri(Landroid/net/Uri;Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;)Landroid/net/Uri;
    .locals 5
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "sendFileInfo"    # Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    .prologue
    .line 363
    invoke-virtual {p1}, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->toString()Ljava/lang/String;

    move-result-object v1

    .line 364
    .local v1, "fileInfo":Ljava/lang/String;
    const-string/jumbo v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 365
    .local v0, "atIndex":I
    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 366
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 367
    sget-boolean v2, Lcom/android/bluetooth/opp/BluetoothOppUtility;->V:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "BluetoothOppUtility"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "generateUri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_0
    return-object p0
.end method

.method static getSendFileInfo(Landroid/net/Uri;)Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;
    .locals 4
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 377
    const-string/jumbo v1, "BluetoothOppUtility"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getSendFileInfo: uri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    sget-object v1, Lcom/android/bluetooth/opp/BluetoothOppUtility;->sSendFileMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    .line 379
    .local v0, "info":Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;
    if-eqz v0, :cond_0

    .end local v0    # "info":Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;
    :goto_0
    return-object v0

    .restart local v0    # "info":Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;
    :cond_0
    sget-object v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->SEND_FILE_INFO_ERROR:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    goto :goto_0
.end method

.method public static getStatusDescription(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "statusCode"    # I
    .param p2, "deviceName"    # Ljava/lang/String;

    .prologue
    .line 304
    const/16 v1, 0xbe

    if-ne p1, v1, :cond_0

    .line 305
    const v1, 0x7f06004b

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 333
    .local v0, "ret":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 306
    .end local v0    # "ret":Ljava/lang/String;
    :cond_0
    const/16 v1, 0xc0

    if-ne p1, v1, :cond_1

    .line 307
    const v1, 0x7f06004c

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 308
    .end local v0    # "ret":Ljava/lang/String;
    :cond_1
    const/16 v1, 0xc8

    if-ne p1, v1, :cond_2

    .line 309
    const v1, 0x7f06004d

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 310
    .end local v0    # "ret":Ljava/lang/String;
    :cond_2
    const/16 v1, 0x196

    if-ne p1, v1, :cond_3

    .line 311
    const v1, 0x7f06004e

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 312
    .end local v0    # "ret":Ljava/lang/String;
    :cond_3
    const/16 v1, 0x193

    if-ne p1, v1, :cond_4

    .line 313
    const v1, 0x7f06004f

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 314
    .end local v0    # "ret":Ljava/lang/String;
    :cond_4
    const/16 v1, 0x1ea

    if-ne p1, v1, :cond_5

    .line 315
    const v1, 0x7f060050

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 316
    .end local v0    # "ret":Ljava/lang/String;
    :cond_5
    const/16 v1, 0x1ec

    if-ne p1, v1, :cond_6

    .line 317
    const v1, 0x7f060051

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 318
    .end local v0    # "ret":Ljava/lang/String;
    :cond_6
    const/16 v1, 0x1ed

    if-ne p1, v1, :cond_7

    .line 319
    const v1, 0x7f060052

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 320
    .end local v0    # "ret":Ljava/lang/String;
    :cond_7
    const/16 v1, 0x1f1

    if-ne p1, v1, :cond_8

    .line 321
    const v1, 0x7f060053

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 322
    .end local v0    # "ret":Ljava/lang/String;
    :cond_8
    const/16 v1, 0x1ee

    if-ne p1, v1, :cond_9

    .line 323
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const v2, 0x7f060048

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 324
    .end local v0    # "ret":Ljava/lang/String;
    :cond_9
    const/16 v1, 0x190

    if-eq p1, v1, :cond_a

    .line 325
    const/16 v1, 0x19b

    if-ne p1, v1, :cond_b

    .line 329
    :cond_a
    const v1, 0x7f060054

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "ret":Ljava/lang/String;
    goto/16 :goto_0

    .line 326
    .end local v0    # "ret":Ljava/lang/String;
    :cond_b
    const/16 v1, 0x19c

    if-eq p1, v1, :cond_a

    .line 327
    const/16 v1, 0x1ef

    if-eq p1, v1, :cond_a

    .line 328
    const/16 v1, 0x1f0

    if-eq p1, v1, :cond_a

    .line 331
    const v1, 0x7f060055

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "ret":Ljava/lang/String;
    goto/16 :goto_0
.end method

.method public static isRecognizedFileType(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileUri"    # Landroid/net/Uri;
    .param p2, "mimetype"    # Ljava/lang/String;

    .prologue
    .line 260
    const/4 v2, 0x1

    .line 262
    .local v2, "ret":Z
    const-string/jumbo v3, "BluetoothOppUtility"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "RecognizedFileType() fileUri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " mimetype: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 265
    .local v1, "mimetypeIntent":Landroid/content/Intent;
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->setDataAndTypeAndNormalize(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 266
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 267
    const/high16 v4, 0x10000

    .line 266
    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 269
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 270
    const-string/jumbo v3, "BluetoothOppUtility"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "NO application to handle MIME type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    const/4 v2, 0x0

    .line 273
    :cond_0
    return v2
.end method

.method public static openReceivedFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Landroid/net/Uri;)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "mimetype"    # Ljava/lang/String;
    .param p3, "timeStamp"    # Ljava/lang/Long;
    .param p4, "uri"    # Landroid/net/Uri;

    .prologue
    .line 186
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 187
    :cond_0
    const-string/jumbo v10, "BluetoothOppUtility"

    const-string/jumbo v11, "ERROR: Para fileName ==null, or mimetype == null"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    return-void

    .line 191
    :cond_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 192
    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_3

    .line 193
    new-instance v4, Landroid/content/Intent;

    const-class v10, Lcom/android/bluetooth/opp/BluetoothOppBtErrorActivity;

    invoke-direct {v4, p0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 194
    .local v4, "in":Landroid/content/Intent;
    const/high16 v10, 0x10000000

    invoke-virtual {v4, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 195
    const-string/jumbo v10, "title"

    const v11, 0x7f06003e

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    const-string/jumbo v10, "content"

    const v11, 0x7f06003f

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    invoke-virtual {p0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 201
    sget-boolean v10, Lcom/android/bluetooth/opp/BluetoothOppUtility;->V:Z

    if-eqz v10, :cond_2

    const-string/jumbo v10, "BluetoothOppUtility"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "This uri will be deleted: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p4

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v10, v0, v11, v12}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 203
    return-void

    .line 206
    .end local v4    # "in":Landroid/content/Intent;
    :cond_3
    new-instance v1, Lcom/android/bluetooth/opp/BluetoothOppUtility$CustomIntent;

    const-string/jumbo v10, "android.intent.action.VIEW"

    invoke-direct {v1, v10}, Lcom/android/bluetooth/opp/BluetoothOppUtility$CustomIntent;-><init>(Ljava/lang/String;)V

    .line 207
    .local v1, "activityIntent":Lcom/android/bluetooth/opp/BluetoothOppUtility$CustomIntent;
    const-string/jumbo v10, "application/vnd.android.package-archive"

    invoke-virtual {v10, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 209
    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v1, v10, p2}, Lcom/android/bluetooth/opp/BluetoothOppUtility$CustomIntent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 211
    return-void

    .line 215
    :cond_4
    const-string/jumbo v10, "com.google.android.bluetooth.fileprovider"

    .line 214
    invoke-static {p0, v10, v3}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    .line 217
    .local v6, "path":Landroid/net/Uri;
    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_5

    .line 218
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    .line 221
    :cond_5
    invoke-static {p0, v6, p2}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->isRecognizedFileType(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 222
    invoke-virtual {v1, v6, p2}, Lcom/android/bluetooth/opp/BluetoothOppUtility$CustomIntent;->setDataAndTypeAndNormalize(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 226
    const/high16 v11, 0x10000

    .line 224
    invoke-virtual {v10, v1, v11}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 229
    .local v7, "resInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "resolveInfo$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 230
    .local v8, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v10, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 232
    .local v5, "packageName":Ljava/lang/String;
    const/4 v10, 0x3

    .line 231
    invoke-virtual {p0, v5, v6, v10}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    goto :goto_0

    .line 236
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v8    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_6
    const/high16 v10, 0x10000000

    invoke-virtual {v1, v10}, Lcom/android/bluetooth/opp/BluetoothOppUtility$CustomIntent;->setFlags(I)Landroid/content/Intent;

    .line 237
    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Lcom/android/bluetooth/opp/BluetoothOppUtility$CustomIntent;->setFlags(I)Landroid/content/Intent;

    .line 238
    const/4 v10, 0x2

    invoke-virtual {v1, v10}, Lcom/android/bluetooth/opp/BluetoothOppUtility$CustomIntent;->setFlags(I)Landroid/content/Intent;

    .line 241
    :try_start_0
    sget-boolean v10, Lcom/android/bluetooth/opp/BluetoothOppUtility;->V:Z

    if-eqz v10, :cond_7

    const-string/jumbo v10, "BluetoothOppUtility"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "ACTION_VIEW intent sent out: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " / "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_7
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    .end local v7    # "resInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v9    # "resolveInfo$iterator":Ljava/util/Iterator;
    :cond_8
    :goto_1
    return-void

    .line 243
    .restart local v7    # "resInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v9    # "resolveInfo$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v2

    .line 244
    .local v2, "ex":Landroid/content/ActivityNotFoundException;
    sget-boolean v10, Lcom/android/bluetooth/opp/BluetoothOppUtility;->V:Z

    if-eqz v10, :cond_8

    const-string/jumbo v10, "BluetoothOppUtility"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "no activity for handling ACTION_VIEW intent:  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 247
    .end local v2    # "ex":Landroid/content/ActivityNotFoundException;
    .end local v7    # "resInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v9    # "resolveInfo$iterator":Ljava/util/Iterator;
    :cond_9
    new-instance v4, Landroid/content/Intent;

    const-class v10, Lcom/android/bluetooth/opp/BluetoothOppBtErrorActivity;

    invoke-direct {v4, p0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 248
    .restart local v4    # "in":Landroid/content/Intent;
    const/high16 v10, 0x10000000

    invoke-virtual {v4, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 249
    const-string/jumbo v10, "title"

    const v11, 0x7f06003c

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    const-string/jumbo v10, "content"

    const v11, 0x7f06003d

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 251
    invoke-virtual {p0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method static originalUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 5
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 352
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 353
    .local v1, "mUri":Ljava/lang/String;
    const-string/jumbo v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 354
    .local v0, "atIndex":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 355
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 356
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 358
    :cond_0
    sget-boolean v2, Lcom/android/bluetooth/opp/BluetoothOppUtility;->V:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "BluetoothOppUtility"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "originalUri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :cond_1
    return-object p0
.end method

.method static putSendFileInfo(Landroid/net/Uri;Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;)V
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "sendFileInfo"    # Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    .prologue
    .line 372
    const-string/jumbo v0, "BluetoothOppUtility"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "putSendFileInfo: uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " sendFileInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    sget-object v0, Lcom/android/bluetooth/opp/BluetoothOppUtility;->sSendFileMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    return-void
.end method

.method public static queryRecord(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 71
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v6

    .line 72
    .local v6, "adapter":Landroid/bluetooth/BluetoothAdapter;
    new-instance v10, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    invoke-direct {v10}, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;-><init>()V

    .line 75
    .local v10, "info":Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 81
    :goto_0
    if-eqz v8, :cond_7

    .line 82
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 83
    const-string/jumbo v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v10, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mID:I

    .line 84
    const-string/jumbo v0, "status"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v10, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mStatus:I

    .line 86
    const-string/jumbo v0, "direction"

    .line 85
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v10, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDirection:I

    .line 88
    const-string/jumbo v0, "total_bytes"

    .line 87
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v10, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mTotalBytes:J

    .line 90
    const-string/jumbo v0, "current_bytes"

    .line 89
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v10, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mCurrentBytes:J

    .line 92
    const-string/jumbo v0, "timestamp"

    .line 91
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v10, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mTimeStamp:Ljava/lang/Long;

    .line 94
    const-string/jumbo v0, "destination"

    .line 93
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDestAddr:Ljava/lang/String;

    .line 97
    const-string/jumbo v0, "_data"

    .line 96
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileName:Ljava/lang/String;

    .line 98
    iget-object v0, v10, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 100
    const-string/jumbo v0, "hint"

    .line 99
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileName:Ljava/lang/String;

    .line 102
    :cond_0
    iget-object v0, v10, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 103
    const v0, 0x7f06003c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileName:Ljava/lang/String;

    .line 106
    :cond_1
    const-string/jumbo v0, "uri"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileUri:Ljava/lang/String;

    .line 108
    iget-object v0, v10, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileUri:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 109
    iget-object v0, v10, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 110
    .local v12, "u":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileType:Ljava/lang/String;

    .line 115
    :goto_1
    iget-object v0, v10, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileType:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 117
    const-string/jumbo v0, "mimetype"

    .line 116
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileType:Ljava/lang/String;

    .line 120
    :cond_2
    iget-object v0, v10, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDestAddr:Ljava/lang/String;

    invoke-virtual {v6, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v11

    .line 122
    .local v11, "remoteDevice":Landroid/bluetooth/BluetoothDevice;
    invoke-static {p0}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppManager;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getDeviceName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v0

    .line 121
    iput-object v0, v10, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDeviceName:Ljava/lang/String;

    .line 125
    const-string/jumbo v0, "confirm"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 124
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 127
    .local v7, "confirmationType":I
    const/4 v0, 0x5

    if-ne v7, v0, :cond_6

    const/4 v0, 0x1

    .line 126
    :goto_2
    iput-boolean v0, v10, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mHandoverInitiated:Z

    .line 129
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppUtility;->V:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "BluetoothOppUtility"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Get data from db:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v10, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v10, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 130
    iget-object v2, v10, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDestAddr:Ljava/lang/String;

    .line 129
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .end local v7    # "confirmationType":I
    .end local v11    # "remoteDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v12    # "u":Landroid/net/Uri;
    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 133
    const/4 v8, 0x0

    .line 138
    .end local v10    # "info":Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;
    :cond_4
    :goto_3
    return-object v10

    .line 76
    .restart local v10    # "info":Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;
    :catch_0
    move-exception v9

    .line 77
    .local v9, "e":Landroid/database/sqlite/SQLiteException;
    const/4 v8, 0x0

    .line 78
    .local v8, "cursor":Landroid/database/Cursor;
    const-string/jumbo v0, "BluetoothOppUtility"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SQLite exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 112
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "e":Landroid/database/sqlite/SQLiteException;
    :cond_5
    iget-object v0, v10, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileName:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 113
    .restart local v12    # "u":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileType:Ljava/lang/String;

    goto/16 :goto_1

    .line 127
    .restart local v7    # "confirmationType":I
    .restart local v11    # "remoteDevice":Landroid/bluetooth/BluetoothDevice;
    :cond_6
    const/4 v0, 0x0

    goto :goto_2

    .line 135
    .end local v7    # "confirmationType":I
    .end local v11    # "remoteDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v12    # "u":Landroid/net/Uri;
    :cond_7
    const/4 v10, 0x0

    .line 136
    .local v10, "info":Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppUtility;->V:Z

    if-eqz v0, :cond_4

    const-string/jumbo v0, "BluetoothOppUtility"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "BluetoothOppManager Error: not got data from db for uri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public static queryTransfersInBatch(Landroid/content/Context;Ljava/lang/Long;)Ljava/util/ArrayList;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "timeStamp"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 146
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v10

    .line 147
    .local v10, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "timestamp == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 151
    .local v3, "WHERE":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    .line 152
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 153
    const-string/jumbo v4, "_data"

    const/4 v5, 0x0

    aput-object v4, v2, v5

    .line 154
    const-string/jumbo v5, "_id"

    const/4 v4, 0x0

    .line 151
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 160
    :goto_0
    if-nez v8, :cond_0

    .line 161
    return-object v11

    .line 155
    :catch_0
    move-exception v6

    .line 156
    .local v6, "e":Landroid/database/sqlite/SQLiteException;
    const/4 v8, 0x0

    .line 157
    .local v8, "metadataCursor":Landroid/database/Cursor;
    const-string/jumbo v0, "BluetoothOppUtility"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SQLite exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 164
    .end local v6    # "e":Landroid/database/sqlite/SQLiteException;
    .end local v8    # "metadataCursor":Landroid/database/Cursor;
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_3

    .line 166
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 167
    .local v7, "fileName":Ljava/lang/String;
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 169
    .local v9, "path":Landroid/net/Uri;
    invoke-virtual {v9}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 170
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v9

    .line 172
    :cond_1
    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppUtility;->V:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "BluetoothOppUtility"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Uri in this batch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 175
    .end local v7    # "fileName":Ljava/lang/String;
    .end local v9    # "path":Landroid/net/Uri;
    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 176
    const/4 v8, 0x0

    .line 177
    .restart local v8    # "metadataCursor":Landroid/database/Cursor;
    return-object v10
.end method

.method public static retryTransfer(Landroid/content/Context;Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "transInfo"    # Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    .prologue
    .line 340
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 341
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "uri"

    iget-object v3, p1, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileUri:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    const-string/jumbo v2, "mimetype"

    iget-object v3, p1, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    const-string/jumbo v2, "destination"

    iget-object v3, p1, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDestAddr:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 347
    .local v0, "contentUri":Landroid/net/Uri;
    sget-boolean v2, Lcom/android/bluetooth/opp/BluetoothOppUtility;->V:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "BluetoothOppUtility"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Insert contentUri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  to device: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 348
    iget-object v4, p1, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDeviceName:Ljava/lang/String;

    .line 347
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_0
    return-void
.end method

.method public static updateVisibilityToHidden(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 280
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 281
    .local v0, "updateValues":Landroid/content/ContentValues;
    const-string/jumbo v1, "visibility"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 282
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 279
    return-void
.end method
