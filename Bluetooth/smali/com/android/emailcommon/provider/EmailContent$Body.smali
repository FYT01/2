.class public final Lcom/android/emailcommon/provider/EmailContent$Body;
.super Lcom/android/emailcommon/provider/EmailContent;
.source "EmailContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/provider/EmailContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Body"
.end annotation


# static fields
.field public static final CONTENT_HTML_URI_COLUMN:I = 0x2

.field public static final CONTENT_ID_COLUMN:I = 0x0

.field public static final CONTENT_MESSAGE_KEY_COLUMN:I = 0x1

.field public static final CONTENT_PROJECTION:[Ljava/lang/String;

.field public static final CONTENT_QUOTED_TEXT_START_POS_COLUMN:I = 0x5

.field public static final CONTENT_SOURCE_KEY_COLUMN:I = 0x4

.field public static final CONTENT_TEXT_URI_COLUMN:I = 0x3

.field public static CONTENT_URI:Landroid/net/Uri; = null

.field public static final SELECTION_BY_MESSAGE_KEY:Ljava/lang/String; = "messageKey=?"

.field public static final TABLE_NAME:Ljava/lang/String; = "Body"


# instance fields
.field public mHtmlContent:Ljava/lang/String;

.field public mMessageKey:J

.field public mQuotedTextStartPos:I

.field public mSourceKey:J

.field public mTextContent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 487
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    .line 488
    const-string/jumbo v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 489
    const-string/jumbo v1, "messageKey"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 490
    const-string/jumbo v1, "htmlContentUri"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 491
    const-string/jumbo v1, "textContentUri"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 492
    const-string/jumbo v1, "sourceMessageKey"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 493
    const-string/jumbo v1, "quotedTextStartPos"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 487
    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Body;->CONTENT_PROJECTION:[Ljava/lang/String;

    .line 476
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 513
    invoke-direct {p0}, Lcom/android/emailcommon/provider/EmailContent;-><init>()V

    .line 514
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Body;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mBaseUri:Landroid/net/Uri;

    .line 513
    return-void
.end method

.method public static getBodyHtmlUriForMessageWithId(J)Landroid/net/Uri;
    .locals 2
    .param p0, "messageId"    # J

    .prologue
    .line 595
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 596
    const-string/jumbo v1, "bodyHtml"

    .line 595
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 596
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 595
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getBodyTextUriForMessageWithId(J)Landroid/net/Uri;
    .locals 2
    .param p0, "messageId"    # J

    .prologue
    .line 590
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 591
    const-string/jumbo v1, "bodyText"

    .line 590
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 591
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 590
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static initBody()V
    .locals 2

    .prologue
    .line 484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/body"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Body;->CONTENT_URI:Landroid/net/Uri;

    .line 483
    return-void
.end method

.method public static lookupBodyIdWithMessageId(Landroid/content/Context;J)J
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "messageId"    # J

    .prologue
    const/4 v6, 0x0

    .line 558
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Body;->CONTENT_URI:Landroid/net/Uri;

    .line 559
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Body;->ID_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "messageKey=?"

    .line 560
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    const-wide/16 v8, -0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v5, 0x0

    move-object v0, p0

    .line 558
    invoke-static/range {v0 .. v7}, Lcom/android/emailcommon/utility/Utility;->getFirstRowLong(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private static readBodyFromProvider(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 610
    const/4 v1, 0x0

    .line 613
    .local v1, "content":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 615
    .local v0, "bodyInput":Ljava/io/InputStream;
    :try_start_1
    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->toString(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 617
    .local v1, "content":Ljava/lang/String;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 622
    .end local v0    # "bodyInput":Ljava/io/InputStream;
    .end local v1    # "content":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 616
    .restart local v0    # "bodyInput":Ljava/io/InputStream;
    .local v1, "content":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 617
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 616
    throw v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 619
    .end local v0    # "bodyInput":Ljava/io/InputStream;
    .end local v1    # "content":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 620
    .local v2, "e":Ljava/io/IOException;
    sget-object v3, Lcom/android/mail/utils/LogUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Exception while reading body content"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v2, v4, v5}, Lcom/android/mail/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public static restoreBodyHtmlWithMessageId(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "messageId"    # J

    .prologue
    .line 606
    invoke-static {p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Body;->getBodyHtmlUriForMessageWithId(J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 605
    invoke-static {p0, v0}, Lcom/android/emailcommon/provider/EmailContent$Body;->readBodyFromProvider(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static restoreBodySourceKey(Landroid/content/Context;J)J
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "messageId"    # J
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 583
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Body;->CONTENT_URI:Landroid/net/Uri;

    .line 584
    new-array v2, v4, [Ljava/lang/String;

    const-string/jumbo v0, "sourceMessageKey"

    aput-object v0, v2, v6

    .line 585
    const-string/jumbo v3, "messageKey=?"

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    .line 586
    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 585
    const/4 v5, 0x0

    move-object v0, p0

    .line 583
    invoke-static/range {v0 .. v7}, Lcom/android/emailcommon/utility/Utility;->getFirstRowLong(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static restoreBodyTextWithMessageId(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "messageId"    # J

    .prologue
    .line 601
    invoke-static {p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Body;->getBodyTextUriForMessageWithId(J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 600
    invoke-static {p0, v0}, Lcom/android/emailcommon/provider/EmailContent$Body;->readBodyFromProvider(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static restoreBodyWithCursor(Landroid/content/Context;Landroid/database/Cursor;)Lcom/android/emailcommon/provider/EmailContent$Body;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 536
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 537
    const-class v0, Lcom/android/emailcommon/provider/EmailContent$Body;

    invoke-static {p0, p1, v0}, Lcom/android/emailcommon/provider/EmailContent$Body;->getContent(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Body;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 542
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 537
    return-object v0

    .line 539
    :cond_0
    const/4 v0, 0x0

    .line 542
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 539
    return-object v0

    .line 541
    :catchall_0
    move-exception v0

    .line 542
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 541
    throw v0
.end method

.method public static restoreBodyWithMessageId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Body;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "messageId"    # J

    .prologue
    const/4 v5, 0x0

    .line 547
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Body;->CONTENT_URI:Landroid/net/Uri;

    .line 548
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Body;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "messageKey=?"

    .line 549
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v4, v8

    .line 547
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 550
    .local v6, "c":Landroid/database/Cursor;
    if-nez v6, :cond_0

    new-instance v0, Lcom/android/emailcommon/provider/ProviderUnavailableException;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/ProviderUnavailableException;-><init>()V

    throw v0

    .line 551
    :cond_0
    invoke-static {p0, v6}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreBodyWithCursor(Landroid/content/Context;Landroid/database/Cursor;)Lcom/android/emailcommon/provider/EmailContent$Body;

    move-result-object v0

    return-object v0
.end method

.method public static updateBodyWithMessageId(Landroid/content/Context;JLandroid/content/ContentValues;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "messageId"    # J
    .param p3, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v6, 0x0

    .line 570
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 571
    .local v2, "resolver":Landroid/content/ContentResolver;
    invoke-static {p0, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Body;->lookupBodyIdWithMessageId(Landroid/content/Context;J)J

    move-result-wide v0

    .line 572
    .local v0, "bodyId":J
    const-string/jumbo v4, "messageKey"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 573
    const-wide/16 v4, -0x1

    cmp-long v4, v0, v4

    if-nez v4, :cond_0

    .line 574
    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Body;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v4, p3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 569
    :goto_0
    return-void

    .line 576
    :cond_0
    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Body;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 577
    .local v3, "uri":Landroid/net/Uri;
    invoke-virtual {v2, v3, p3, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public restore(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 632
    invoke-static {}, Lcom/android/emailcommon/provider/EmailContent;->-wrap0()V

    .line 633
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Body;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mBaseUri:Landroid/net/Uri;

    .line 634
    const/4 v0, 0x1

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mMessageKey:J

    .line 638
    const/4 v0, 0x2

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/emailcommon/provider/EmailContent$Body;->readBodyFromProvider(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    .line 639
    const/4 v0, 0x3

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/emailcommon/provider/EmailContent$Body;->readBodyFromProvider(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    .line 640
    const/4 v0, 0x4

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mSourceKey:J

    .line 641
    const/4 v0, 0x5

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mQuotedTextStartPos:I

    .line 631
    return-void
.end method

.method public restore(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 627
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Must have context to restore Body object"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 519
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 522
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "messageKey"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mMessageKey:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 523
    const-string/jumbo v1, "htmlContent"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    const-string/jumbo v1, "textContent"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    const-string/jumbo v1, "sourceMessageKey"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mSourceKey:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 526
    return-object v0
.end method
