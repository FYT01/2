.class public Lcom/android/emailcommon/utility/Utility;
.super Ljava/lang/Object;
.source "Utility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/utility/Utility$ThreadLocalDateFormat;,
        Lcom/android/emailcommon/utility/Utility$NewFileCreator;,
        Lcom/android/emailcommon/utility/Utility$CursorGetter;,
        Lcom/android/emailcommon/utility/Utility$1;,
        Lcom/android/emailcommon/utility/Utility$2;,
        Lcom/android/emailcommon/utility/Utility$3;,
        Lcom/android/emailcommon/utility/Utility$4;
    }
.end annotation


# static fields
.field private static final ACCOUNT_WHERE_HOSTAUTH:Ljava/lang/String; = "hostAuthKeyRecv=?"

.field public static final ASCII:Ljava/nio/charset/Charset;

.field private static final BLOB_GETTER:Lcom/android/emailcommon/utility/Utility$CursorGetter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/emailcommon/utility/Utility$CursorGetter",
            "<[B>;"
        }
    .end annotation
.end field

.field private static final DATE_CLEANUP_PATTERN_WRONG_TIMEZONE:Ljava/util/regex/Pattern;

.field public static final EMPTY_STRINGS:[Ljava/lang/String;

.field private static final HOSTAUTH_WHERE_CREDENTIALS:Ljava/lang/String; = "address like ? and login like ?  ESCAPE \'\\\' and protocol not like \"smtp\""

.field private static final INT_GETTER:Lcom/android/emailcommon/utility/Utility$CursorGetter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/emailcommon/utility/Utility$CursorGetter",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final LONG_GETTER:Lcom/android/emailcommon/utility/Utility$CursorGetter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/emailcommon/utility/Utility$CursorGetter",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final STRING_GETTER:Lcom/android/emailcommon/utility/Utility$CursorGetter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/emailcommon/utility/Utility$CursorGetter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final UTF_8:Ljava/nio/charset/Charset;

.field private static final mAbbrevDateTimeFormat:Lcom/android/emailcommon/utility/Utility$ThreadLocalDateFormat;

.field private static final mAbbrevEmailDateTimeFormat:Lcom/android/emailcommon/utility/Utility$ThreadLocalDateFormat;

.field private static final mEmailDateTimeFormat:Lcom/android/emailcommon/utility/Utility$ThreadLocalDateFormat;

.field private static final mEmailDateTimeFormatWithMillis:Lcom/android/emailcommon/utility/Utility$ThreadLocalDateFormat;

.field private static final mFullDateTimeFormat:Lcom/android/emailcommon/utility/Utility$ThreadLocalDateFormat;

.field private static sMainThreadHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 67
    const-string/jumbo v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/utility/Utility;->UTF_8:Ljava/nio/charset/Charset;

    .line 68
    const-string/jumbo v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/utility/Utility;->ASCII:Ljava/nio/charset/Charset;

    .line 70
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/emailcommon/utility/Utility;->EMPTY_STRINGS:[Ljava/lang/String;

    .line 74
    const-string/jumbo v0, "GMT([-+]\\d{4})$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 73
    sput-object v0, Lcom/android/emailcommon/utility/Utility;->DATE_CLEANUP_PATTERN_WRONG_TIMEZONE:Ljava/util/regex/Pattern;

    .line 244
    new-instance v0, Lcom/android/emailcommon/utility/Utility$ThreadLocalDateFormat;

    const-string/jumbo v1, "yyyyMMdd\'T\'HHmmss\'Z\'"

    invoke-direct {v0, v1}, Lcom/android/emailcommon/utility/Utility$ThreadLocalDateFormat;-><init>(Ljava/lang/String;)V

    .line 243
    sput-object v0, Lcom/android/emailcommon/utility/Utility;->mFullDateTimeFormat:Lcom/android/emailcommon/utility/Utility$ThreadLocalDateFormat;

    .line 247
    new-instance v0, Lcom/android/emailcommon/utility/Utility$ThreadLocalDateFormat;

    const-string/jumbo v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Lcom/android/emailcommon/utility/Utility$ThreadLocalDateFormat;-><init>(Ljava/lang/String;)V

    .line 246
    sput-object v0, Lcom/android/emailcommon/utility/Utility;->mAbbrevDateTimeFormat:Lcom/android/emailcommon/utility/Utility$ThreadLocalDateFormat;

    .line 267
    new-instance v0, Lcom/android/emailcommon/utility/Utility$ThreadLocalDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Lcom/android/emailcommon/utility/Utility$ThreadLocalDateFormat;-><init>(Ljava/lang/String;)V

    .line 266
    sput-object v0, Lcom/android/emailcommon/utility/Utility;->mAbbrevEmailDateTimeFormat:Lcom/android/emailcommon/utility/Utility$ThreadLocalDateFormat;

    .line 270
    new-instance v0, Lcom/android/emailcommon/utility/Utility$ThreadLocalDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-direct {v0, v1}, Lcom/android/emailcommon/utility/Utility$ThreadLocalDateFormat;-><init>(Ljava/lang/String;)V

    .line 269
    sput-object v0, Lcom/android/emailcommon/utility/Utility;->mEmailDateTimeFormat:Lcom/android/emailcommon/utility/Utility$ThreadLocalDateFormat;

    .line 273
    new-instance v0, Lcom/android/emailcommon/utility/Utility$ThreadLocalDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-direct {v0, v1}, Lcom/android/emailcommon/utility/Utility$ThreadLocalDateFormat;-><init>(Ljava/lang/String;)V

    .line 272
    sput-object v0, Lcom/android/emailcommon/utility/Utility;->mEmailDateTimeFormatWithMillis:Lcom/android/emailcommon/utility/Utility$ThreadLocalDateFormat;

    .line 515
    new-instance v0, Lcom/android/emailcommon/utility/Utility$1;

    invoke-direct {v0}, Lcom/android/emailcommon/utility/Utility$1;-><init>()V

    sput-object v0, Lcom/android/emailcommon/utility/Utility;->LONG_GETTER:Lcom/android/emailcommon/utility/Utility$CursorGetter;

    .line 522
    new-instance v0, Lcom/android/emailcommon/utility/Utility$2;

    invoke-direct {v0}, Lcom/android/emailcommon/utility/Utility$2;-><init>()V

    sput-object v0, Lcom/android/emailcommon/utility/Utility;->INT_GETTER:Lcom/android/emailcommon/utility/Utility$CursorGetter;

    .line 529
    new-instance v0, Lcom/android/emailcommon/utility/Utility$3;

    invoke-direct {v0}, Lcom/android/emailcommon/utility/Utility$3;-><init>()V

    sput-object v0, Lcom/android/emailcommon/utility/Utility;->STRING_GETTER:Lcom/android/emailcommon/utility/Utility$CursorGetter;

    .line 536
    new-instance v0, Lcom/android/emailcommon/utility/Utility$4;

    invoke-direct {v0}, Lcom/android/emailcommon/utility/Utility$4;-><init>()V

    sput-object v0, Lcom/android/emailcommon/utility/Utility;->BLOB_GETTER:Lcom/android/emailcommon/utility/Utility$CursorGetter;

    .line 66
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static arrayContains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 91
    invoke-static {p0, p1}, Lcom/android/emailcommon/utility/Utility;->arrayIndex([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 92
    .local v0, "index":I
    if-ltz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static arrayIndex([Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 96
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v0, p0

    .local v0, "count":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 97
    aget-object v2, p0, v1

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 98
    return v1

    .line 96
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 101
    :cond_1
    const/4 v2, -0x1

    return v2
.end method

.method public static attachmentExists(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;)Z
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attachment"    # Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 649
    if-nez p1, :cond_0

    .line 650
    return v11

    .line 651
    :cond_0
    iget-object v8, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentBytes:[B

    if-eqz v8, :cond_1

    .line 652
    return v12

    .line 654
    :cond_1
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->getCachedFileUri()Ljava/lang/String;

    move-result-object v0

    .line 656
    .local v0, "cachedFile":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 657
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 660
    .local v1, "cachedFileUri":Landroid/net/Uri;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 662
    .local v6, "inStream":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 666
    :goto_0
    return v12

    .line 663
    :catch_0
    move-exception v4

    .local v4, "e":Ljava/io/IOException;
    goto :goto_0

    .line 667
    .end local v4    # "e":Ljava/io/IOException;
    .end local v6    # "inStream":Ljava/io/InputStream;
    :catch_1
    move-exception v3

    .line 669
    .local v3, "e":Ljava/io/FileNotFoundException;
    sget-object v8, Lcom/android/mail/utils/LogUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "not able to open cached file"

    new-array v10, v11, [Ljava/lang/Object;

    invoke-static {v8, v3, v9, v10}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 672
    .end local v1    # "cachedFileUri":Landroid/net/Uri;
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :cond_2
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->getContentUri()Ljava/lang/String;

    move-result-object v2

    .line 673
    .local v2, "contentUri":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 674
    return v11

    .line 677
    :cond_3
    :try_start_2
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_4

    move-result-object v5

    .line 680
    .local v5, "fileUri":Landroid/net/Uri;
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v6

    .line 682
    .restart local v6    # "inStream":Ljava/io/InputStream;
    :try_start_4
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_4

    .line 686
    :goto_1
    return v12

    .line 683
    :catch_2
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 687
    .end local v4    # "e":Ljava/io/IOException;
    .end local v6    # "inStream":Ljava/io/InputStream;
    :catch_3
    move-exception v3

    .line 688
    .restart local v3    # "e":Ljava/io/FileNotFoundException;
    return v11

    .line 690
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    .end local v5    # "fileUri":Landroid/net/Uri;
    :catch_4
    move-exception v7

    .line 691
    .local v7, "re":Ljava/lang/RuntimeException;
    sget-object v8, Lcom/android/mail/utils/LogUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "attachmentExists RuntimeException"

    new-array v10, v11, [Ljava/lang/Object;

    invoke-static {v8, v7, v9, v10}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 692
    return v11
.end method

.method static buildLimitOneUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 2
    .param p0, "original"    # Landroid/net/Uri;

    .prologue
    .line 551
    const-string/jumbo v0, "content"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 552
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 551
    if-eqz v0, :cond_0

    .line 553
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/emailcommon/provider/EmailContent;->uriWithLimit(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 555
    :cond_0
    return-object p0
.end method

.method public static byteToHex(I)Ljava/lang/String;
    .locals 1
    .param p0, "b"    # I

    .prologue
    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, p0}, Lcom/android/emailcommon/utility/Utility;->byteToHex(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static byteToHex(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;
    .locals 2
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "b"    # I

    .prologue
    .line 344
    and-int/lit16 p1, p1, 0xff

    .line 345
    const-string/jumbo v0, "0123456789ABCDEF"

    shr-int/lit8 v1, p1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 346
    const-string/jumbo v0, "0123456789ABCDEF"

    and-int/lit8 v1, p1, 0xf

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 347
    return-object p0
.end method

.method public static cancelTask(Landroid/os/AsyncTask;Z)V
    .locals 2
    .param p1, "mayInterruptIfRunning"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/AsyncTask",
            "<***>;Z)V"
        }
    .end annotation

    .prologue
    .line 369
    .local p0, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<***>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 370
    invoke-virtual {p0, p1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 368
    :cond_0
    return-void
.end method

.method public static cancelTaskInterrupt(Landroid/os/AsyncTask;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/AsyncTask",
            "<***>;)V"
        }
    .end annotation

    .prologue
    .line 358
    .local p0, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<***>;"
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/emailcommon/utility/Utility;->cancelTask(Landroid/os/AsyncTask;Z)V

    .line 357
    return-void
.end method

.method public static cleanUpMimeDate(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "date"    # Ljava/lang/String;

    .prologue
    .line 406
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 407
    return-object p0

    .line 409
    :cond_0
    sget-object v0, Lcom/android/emailcommon/utility/Utility;->DATE_CLEANUP_PATTERN_WRONG_TIMEZONE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string/jumbo v1, "$1"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 410
    return-object p0
.end method

.method public static combine([Ljava/lang/Object;C)Ljava/lang/String;
    .locals 3
    .param p0, "parts"    # [Ljava/lang/Object;
    .param p1, "separator"    # C

    .prologue
    const/4 v2, 0x0

    .line 109
    if-nez p0, :cond_0

    .line 110
    return-object v2

    .line 112
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 114
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_1

    .line 116
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 113
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 119
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static createUniqueFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p0, "directory"    # Ljava/io/File;
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 480
    sget-object v0, Lcom/android/emailcommon/utility/Utility$NewFileCreator;->DEFAULT:Lcom/android/emailcommon/utility/Utility$NewFileCreator;

    invoke-static {v0, p0, p1}, Lcom/android/emailcommon/utility/Utility;->createUniqueFileInternal(Lcom/android/emailcommon/utility/Utility$NewFileCreator;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static createUniqueFileInternal(Lcom/android/emailcommon/utility/Utility$NewFileCreator;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 8
    .param p0, "nfc"    # Lcom/android/emailcommon/utility/Utility$NewFileCreator;
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 485
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 486
    .local v1, "file":Ljava/io/File;
    invoke-interface {p0, v1}, Lcom/android/emailcommon/utility/Utility$NewFileCreator;->createNewFile(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 487
    return-object v1

    .line 490
    :cond_0
    const/16 v6, 0x2e

    invoke-virtual {p2, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 493
    .local v3, "index":I
    const/4 v6, -0x1

    if-eq v3, v6, :cond_1

    .line 494
    const/4 v6, 0x0

    invoke-virtual {p2, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 495
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 501
    .local v0, "extension":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x2

    .local v2, "i":I
    :goto_1
    const v6, 0x7fffffff

    if-ge v2, v6, :cond_3

    .line 503
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 504
    .local v5, "numberedFile":Ljava/io/File;
    invoke-interface {p0, v5}, Lcom/android/emailcommon/utility/Utility$NewFileCreator;->createNewFile(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 505
    return-object v5

    .line 497
    .end local v0    # "extension":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "numberedFile":Ljava/io/File;
    :cond_1
    move-object v4, p2

    .line 498
    .restart local v4    # "name":Ljava/lang/String;
    const-string/jumbo v0, ""

    .restart local v0    # "extension":Ljava/lang/String;
    goto :goto_0

    .line 501
    .restart local v2    # "i":I
    .restart local v5    # "numberedFile":Ljava/io/File;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 508
    .end local v5    # "numberedFile":Ljava/io/File;
    :cond_3
    const/4 v6, 0x0

    return-object v6
.end method

.method private static decode(Ljava/nio/charset/Charset;[B)Ljava/lang/String;
    .locals 5
    .param p0, "charset"    # Ljava/nio/charset/Charset;
    .param p1, "b"    # [B

    .prologue
    const/4 v1, 0x0

    .line 304
    if-nez p1, :cond_0

    .line 305
    return-object v1

    .line 307
    :cond_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 308
    .local v0, "cb":Ljava/nio/CharBuffer;
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v2

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v1
.end method

.method public static enableStrictMode(Z)V
    .locals 1
    .param p0, "enabled"    # Z

    .prologue
    .line 784
    if-eqz p0, :cond_0

    .line 785
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 784
    :goto_0
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 787
    if-eqz p0, :cond_1

    .line 788
    new-instance v0, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectAll()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v0

    .line 787
    :goto_1
    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 783
    return-void

    .line 786
    :cond_0
    sget-object v0, Landroid/os/StrictMode$ThreadPolicy;->LAX:Landroid/os/StrictMode$ThreadPolicy;

    goto :goto_0

    .line 789
    :cond_1
    sget-object v0, Landroid/os/StrictMode$VmPolicy;->LAX:Landroid/os/StrictMode$VmPolicy;

    goto :goto_1
.end method

.method private static encode(Ljava/nio/charset/Charset;Ljava/lang/String;)[B
    .locals 3
    .param p0, "charset"    # Ljava/nio/charset/Charset;
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 294
    if-nez p1, :cond_0

    .line 295
    return-object v2

    .line 297
    :cond_0
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/nio/charset/Charset;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 298
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    new-array v1, v2, [B

    .line 299
    .local v1, "bytes":[B
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 300
    return-object v1
.end method

.method public static findExistingAccount(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)Lcom/android/emailcommon/provider/Account;
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "allowAccountId"    # J
    .param p3, "hostName"    # Ljava/lang/String;
    .param p4, "userLogin"    # Ljava/lang/String;

    .prologue
    .line 182
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 183
    .local v2, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v3, "_"

    const-string/jumbo v4, "\\_"

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    .line 184
    .local v13, "userName":Ljava/lang/String;
    sget-object v3, Lcom/android/emailcommon/provider/HostAuth;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/emailcommon/provider/HostAuth;->ID_PROJECTION:[Ljava/lang/String;

    .line 185
    const-string/jumbo v5, "address like ? and login like ?  ESCAPE \'\\\' and protocol not like \"smtp\""

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p3, v6, v7

    const/4 v7, 0x1

    aput-object v13, v6, v7

    const/4 v7, 0x0

    .line 184
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 186
    .local v9, "c":Landroid/database/Cursor;
    if-nez v9, :cond_1

    new-instance v3, Lcom/android/emailcommon/provider/ProviderUnavailableException;

    invoke-direct {v3}, Lcom/android/emailcommon/provider/ProviderUnavailableException;-><init>()V

    throw v3

    .line 204
    .local v12, "c2":Landroid/database/Cursor;
    .local v14, "hostAuthId":J
    :cond_0
    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 188
    .end local v12    # "c2":Landroid/database/Cursor;
    .end local v14    # "hostAuthId":J
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 189
    const/4 v3, 0x0

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 191
    .restart local v14    # "hostAuthId":J
    sget-object v3, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/emailcommon/provider/Account;->ID_PROJECTION:[Ljava/lang/String;

    .line 192
    const-string/jumbo v5, "hostAuthKeyRecv=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    const/16 v16, 0x0

    aput-object v7, v6, v16

    const/4 v7, 0x0

    .line 191
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v12

    .line 194
    .restart local v12    # "c2":Landroid/database/Cursor;
    :cond_2
    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 195
    const/4 v3, 0x0

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 196
    .local v10, "accountId":J
    cmp-long v3, v10, p1

    if-eqz v3, :cond_2

    .line 197
    move-object/from16 v0, p0

    invoke-static {v0, v10, v11}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    .line 198
    .local v8, "account":Lcom/android/emailcommon/provider/Account;
    if-eqz v8, :cond_2

    .line 204
    :try_start_2
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 208
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 199
    return-object v8

    .line 203
    .end local v8    # "account":Lcom/android/emailcommon/provider/Account;
    .end local v10    # "accountId":J
    :catchall_0
    move-exception v3

    .line 204
    :try_start_3
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 203
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 207
    .end local v12    # "c2":Landroid/database/Cursor;
    .end local v14    # "hostAuthId":J
    :catchall_1
    move-exception v3

    .line 208
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 207
    throw v3

    .line 208
    :cond_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 211
    const/4 v3, 0x0

    return-object v3
.end method

.method public static fromAscii([B)Ljava/lang/String;
    .locals 1
    .param p0, "b"    # [B

    .prologue
    .line 328
    sget-object v0, Lcom/android/emailcommon/utility/Utility;->ASCII:Ljava/nio/charset/Charset;

    invoke-static {v0, p0}, Lcom/android/emailcommon/utility/Utility;->decode(Ljava/nio/charset/Charset;[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static fromUtf8([B)Ljava/lang/String;
    .locals 1
    .param p0, "b"    # [B

    .prologue
    .line 318
    sget-object v0, Lcom/android/emailcommon/utility/Utility;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v0, p0}, Lcom/android/emailcommon/utility/Utility;->decode(Ljava/nio/charset/Charset;[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFirstRowBlob(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I[B)[B
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;
    .param p6, "column"    # I
    .param p7, "defaultValue"    # [B

    .prologue
    .line 645
    sget-object v8, Lcom/android/emailcommon/utility/Utility;->BLOB_GETTER:Lcom/android/emailcommon/utility/Utility$CursorGetter;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move-object/from16 v7, p7

    .line 644
    invoke-static/range {v0 .. v8}, Lcom/android/emailcommon/utility/Utility;->getFirstRowColumn(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;Lcom/android/emailcommon/utility/Utility$CursorGetter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public static getFirstRowColumn(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;Lcom/android/emailcommon/utility/Utility$CursorGetter;)Ljava/lang/Object;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;
    .param p6, "column"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ITT;",
            "Lcom/android/emailcommon/utility/Utility$CursorGetter",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 566
    .local p7, "defaultValue":Ljava/lang/Object;, "TT;"
    .local p8, "getter":Lcom/android/emailcommon/utility/Utility$CursorGetter;, "Lcom/android/emailcommon/utility/Utility$CursorGetter<TT;>;"
    invoke-static {p1}, Lcom/android/emailcommon/utility/Utility;->buildLimitOneUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    .line 567
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 569
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 571
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 572
    invoke-interface {p8, v6, p6}, Lcom/android/emailcommon/utility/Utility$CursorGetter;->get(Landroid/database/Cursor;I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 575
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 572
    return-object v0

    .line 575
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 578
    :cond_1
    return-object p7

    .line 574
    :catchall_0
    move-exception v0

    .line 575
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 574
    throw v0
.end method

.method public static getFirstRowInt(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Integer;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;
    .param p6, "column"    # I

    .prologue
    .line 606
    sget-object v8, Lcom/android/emailcommon/utility/Utility;->INT_GETTER:Lcom/android/emailcommon/utility/Utility$CursorGetter;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    .line 605
    invoke-static/range {v0 .. v8}, Lcom/android/emailcommon/utility/Utility;->getFirstRowColumn(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;Lcom/android/emailcommon/utility/Utility$CursorGetter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public static getFirstRowInt(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Integer;)Ljava/lang/Integer;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;
    .param p6, "column"    # I
    .param p7, "defaultValue"    # Ljava/lang/Integer;

    .prologue
    .line 616
    sget-object v8, Lcom/android/emailcommon/utility/Utility;->INT_GETTER:Lcom/android/emailcommon/utility/Utility$CursorGetter;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move-object/from16 v7, p7

    .line 615
    invoke-static/range {v0 .. v8}, Lcom/android/emailcommon/utility/Utility;->getFirstRowColumn(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;Lcom/android/emailcommon/utility/Utility$CursorGetter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public static getFirstRowLong(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Long;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;
    .param p6, "column"    # I

    .prologue
    .line 587
    sget-object v8, Lcom/android/emailcommon/utility/Utility;->LONG_GETTER:Lcom/android/emailcommon/utility/Utility$CursorGetter;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    .line 586
    invoke-static/range {v0 .. v8}, Lcom/android/emailcommon/utility/Utility;->getFirstRowColumn(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;Lcom/android/emailcommon/utility/Utility$CursorGetter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method public static getFirstRowLong(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;)Ljava/lang/Long;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;
    .param p6, "column"    # I
    .param p7, "defaultValue"    # Ljava/lang/Long;

    .prologue
    .line 597
    sget-object v8, Lcom/android/emailcommon/utility/Utility;->LONG_GETTER:Lcom/android/emailcommon/utility/Utility$CursorGetter;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move-object/from16 v7, p7

    .line 596
    invoke-static/range {v0 .. v8}, Lcom/android/emailcommon/utility/Utility;->getFirstRowColumn(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;Lcom/android/emailcommon/utility/Utility$CursorGetter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method public static getFirstRowString(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;
    .param p6, "column"    # I

    .prologue
    .line 625
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    .line 624
    invoke-static/range {v0 .. v7}, Lcom/android/emailcommon/utility/Utility;->getFirstRowString(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFirstRowString(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;
    .param p6, "column"    # I
    .param p7, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 635
    sget-object v8, Lcom/android/emailcommon/utility/Utility;->STRING_GETTER:Lcom/android/emailcommon/utility/Utility$CursorGetter;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move-object/from16 v7, p7

    .line 634
    invoke-static/range {v0 .. v8}, Lcom/android/emailcommon/utility/Utility;->getFirstRowColumn(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;Lcom/android/emailcommon/utility/Utility$CursorGetter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getMainThreadHandler()Landroid/os/Handler;
    .locals 2

    .prologue
    .line 82
    sget-object v0, Lcom/android/emailcommon/utility/Utility;->sMainThreadHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/emailcommon/utility/Utility;->sMainThreadHandler:Landroid/os/Handler;

    .line 87
    :cond_0
    sget-object v0, Lcom/android/emailcommon/utility/Utility;->sMainThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static varargs getRowColumns(Landroid/content/Context;Landroid/net/Uri;J[Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "baseUri"    # Landroid/net/Uri;
    .param p2, "id"    # J
    .param p4, "projection"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 775
    invoke-static {p1, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0, p4, v1, v1}, Lcom/android/emailcommon/utility/Utility;->getRowColumns(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRowColumns(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 751
    array-length v1, p2

    new-array v8, v1, [Ljava/lang/String;

    .line 752
    .local v8, "values":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, "cr":Landroid/content/ContentResolver;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 753
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 755
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 756
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v1, p2

    if-ge v7, v1, :cond_1

    .line 757
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 756
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 763
    .end local v7    # "i":I
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 760
    return-object v5

    .line 763
    .restart local v7    # "i":I
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 765
    return-object v8

    .line 762
    .end local v7    # "i":I
    :catchall_0
    move-exception v1

    .line 763
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 762
    throw v1
.end method

.method public static getSmallHash(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 377
    :try_start_0
    const-string/jumbo v3, "SHA-1"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 381
    .local v2, "sha":Ljava/security/MessageDigest;
    invoke-static {p0}, Lcom/android/emailcommon/utility/Utility;->toUtf8(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 382
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    invoke-static {v3}, Lcom/android/emailcommon/utility/Utility;->getSmallHashFromSha1([B)I

    move-result v0

    .line 383
    .local v0, "hash":I
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 378
    .end local v0    # "hash":I
    .end local v2    # "sha":Ljava/security/MessageDigest;
    :catch_0
    move-exception v1

    .line 379
    .local v1, "impossible":Ljava/security/NoSuchAlgorithmException;
    const/4 v3, 0x0

    return-object v3
.end method

.method static getSmallHashFromSha1([B)I
    .locals 3
    .param p0, "sha1"    # [B

    .prologue
    .line 390
    const/16 v1, 0x13

    aget-byte v1, p0, v1

    and-int/lit8 v0, v1, 0xf

    .line 391
    .local v0, "offset":I
    aget-byte v1, p0, v0

    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x18

    .line 392
    add-int/lit8 v2, v0, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    .line 391
    or-int/2addr v1, v2

    .line 393
    add-int/lit8 v2, v0, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    .line 391
    or-int/2addr v1, v2

    .line 394
    add-int/lit8 v2, v0, 0x3

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    .line 391
    or-int/2addr v1, v2

    return v1
.end method

.method public static hasUnloadedAttachments(Landroid/content/Context;J)Z
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "messageId"    # J

    .prologue
    .line 706
    invoke-static {p0, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v4

    .line 707
    .local v4, "msg":Lcom/android/emailcommon/provider/EmailContent$Message;
    if-nez v4, :cond_0

    const/4 v5, 0x0

    return v5

    .line 708
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentsWithMessageId(Landroid/content/Context;J)[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v2

    .line 709
    .local v2, "atts":[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    const/4 v5, 0x0

    array-length v6, v2

    :goto_0
    if-ge v5, v6, :cond_6

    aget-object v1, v2, v5

    .line 710
    .local v1, "att":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    invoke-static {p0, v1}, Lcom/android/emailcommon/utility/Utility;->attachmentExists(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 715
    iget v7, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit8 v7, v7, 0x6

    if-nez v7, :cond_5

    .line 717
    sget-object v7, Lcom/android/mail/utils/LogUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "Unloaded attachment isn\'t marked for download: %s, #%d"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    .line 718
    iget-object v10, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v10, v9, v11

    iget-wide v10, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v9, v11

    .line 717
    invoke-static {v7, v8, v9}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 719
    iget-wide v8, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {p0, v8, v9}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 720
    .local v0, "acct":Lcom/android/emailcommon/provider/Account;
    if-nez v0, :cond_1

    const/4 v5, 0x1

    return v5

    .line 724
    :cond_1
    iget v7, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_3

    .line 725
    iget v7, v0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    and-int/lit16 v7, v7, 0x80

    if-eqz v7, :cond_3

    .line 709
    .end local v0    # "acct":Lcom/android/emailcommon/provider/Account;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 729
    .restart local v0    # "acct":Lcom/android/emailcommon/provider/Account;
    :cond_3
    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v6, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mId:J

    invoke-static {p0, v5, v6, v7}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->delete(Landroid/content/Context;Landroid/net/Uri;J)I

    .line 737
    .end local v0    # "acct":Lcom/android/emailcommon/provider/Account;
    :cond_4
    :goto_1
    const/4 v5, 0x1

    return v5

    .line 730
    :cond_5
    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->getContentUri()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 733
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 734
    .local v3, "cv":Landroid/content/ContentValues;
    const-string/jumbo v5, "contentUri"

    invoke-virtual {v3, v5}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 735
    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v6, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mId:J

    invoke-static {p0, v5, v6, v7, v3}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->update(Landroid/content/Context;Landroid/net/Uri;JLandroid/content/ContentValues;)I

    goto :goto_1

    .line 740
    .end local v1    # "att":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v3    # "cv":Landroid/content/ContentValues;
    :cond_6
    const/4 v5, 0x0

    return v5
.end method

.method public static isExternalStorageMounted()Z
    .locals 2

    .prologue
    .line 780
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isFirstUtf8Byte(B)Z
    .locals 2
    .param p0, "b"    # B

    .prologue
    .line 336
    and-int/lit16 v0, p0, 0xc0

    const/16 v1, 0x80

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPortFieldValid(Landroid/widget/TextView;)Z
    .locals 6
    .param p0, "view"    # Landroid/widget/TextView;

    .prologue
    const/4 v3, 0x0

    .line 123
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 124
    .local v0, "chars":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v3

    .line 129
    :cond_0
    :try_start_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 133
    .local v2, "port":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/high16 v5, 0x10000

    if-ge v4, v5, :cond_1

    const/4 v3, 0x1

    :cond_1
    return v3

    .line 130
    .end local v2    # "port":Ljava/lang/Integer;
    :catch_0
    move-exception v1

    .line 131
    .local v1, "e":Ljava/lang/NumberFormatException;
    return v3
.end method

.method public static isServerNameValid(Landroid/widget/TextView;)Z
    .locals 1
    .param p0, "view"    # Landroid/widget/TextView;

    .prologue
    .line 143
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->isServerNameValid(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isServerNameValid(Ljava/lang/String;)Z
    .locals 10
    .param p0, "serverName"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 147
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 148
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    return v9

    .line 152
    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URI;

    .line 153
    const-string/jumbo v1, "http"

    .line 154
    const/4 v2, 0x0

    .line 156
    const/4 v4, -0x1

    .line 157
    const/4 v5, 0x0

    .line 158
    const/4 v6, 0x0

    .line 159
    const/4 v7, 0x0

    move-object v3, p0

    .line 152
    invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    const/4 v0, 0x1

    return v0

    .line 161
    :catch_0
    move-exception v8

    .line 162
    .local v8, "e":Ljava/net/URISyntaxException;
    return v9
.end method

.method public static parseDateTimeToCalendar(Ljava/lang/String;)Ljava/util/GregorianCalendar;
    .locals 3
    .param p0, "date"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 257
    new-instance v0, Ljava/util/GregorianCalendar;

    const-string/jumbo v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 258
    .local v0, "cal":Ljava/util/GregorianCalendar;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-gt v1, v2, :cond_0

    .line 259
    sget-object v1, Lcom/android/emailcommon/utility/Utility;->mAbbrevDateTimeFormat:Lcom/android/emailcommon/utility/Utility$ThreadLocalDateFormat;

    invoke-virtual {v1, p0}, Lcom/android/emailcommon/utility/Utility$ThreadLocalDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 263
    :goto_0
    return-object v0

    .line 261
    :cond_0
    sget-object v1, Lcom/android/emailcommon/utility/Utility;->mFullDateTimeFormat:Lcom/android/emailcommon/utility/Utility$ThreadLocalDateFormat;

    invoke-virtual {v1, p0}, Lcom/android/emailcommon/utility/Utility$ThreadLocalDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    goto :goto_0
.end method

.method public static parseDateTimeToMillis(Ljava/lang/String;)J
    .locals 2
    .param p0, "date"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 240
    invoke-static {p0}, Lcom/android/emailcommon/utility/Utility;->parseDateTimeToCalendar(Ljava/lang/String;)Ljava/util/GregorianCalendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static parseEmailDateTimeToMillis(Ljava/lang/String;)J
    .locals 4
    .param p0, "date"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 282
    new-instance v0, Ljava/util/GregorianCalendar;

    const-string/jumbo v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 283
    .local v0, "cal":Ljava/util/GregorianCalendar;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa

    if-gt v1, v2, :cond_0

    .line 284
    sget-object v1, Lcom/android/emailcommon/utility/Utility;->mAbbrevEmailDateTimeFormat:Lcom/android/emailcommon/utility/Utility$ThreadLocalDateFormat;

    invoke-virtual {v1, p0}, Lcom/android/emailcommon/utility/Utility$ThreadLocalDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 290
    :goto_0
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v2

    return-wide v2

    .line 285
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x14

    if-gt v1, v2, :cond_1

    .line 286
    sget-object v1, Lcom/android/emailcommon/utility/Utility;->mEmailDateTimeFormat:Lcom/android/emailcommon/utility/Utility$ThreadLocalDateFormat;

    invoke-virtual {v1, p0}, Lcom/android/emailcommon/utility/Utility$ThreadLocalDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    goto :goto_0

    .line 288
    :cond_1
    sget-object v1, Lcom/android/emailcommon/utility/Utility;->mEmailDateTimeFormatWithMillis:Lcom/android/emailcommon/utility/Utility$ThreadLocalDateFormat;

    invoke-virtual {v1, p0}, Lcom/android/emailcommon/utility/Utility$ThreadLocalDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    goto :goto_0
.end method

.method public static replaceBareLfWithCrlf(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 351
    const-string/jumbo v0, "\r"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\n"

    const-string/jumbo v2, "\r\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;
    .locals 3
    .param p0, "r"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 452
    new-instance v0, Lcom/android/emailcommon/utility/Utility$6;

    invoke-direct {v0, p0}, Lcom/android/emailcommon/utility/Utility$6;-><init>(Ljava/lang/Runnable;)V

    .line 457
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 452
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/android/emailcommon/utility/Utility$6;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public static showToast(Landroid/content/Context;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I

    .prologue
    .line 424
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/emailcommon/utility/Utility;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 423
    return-void
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 434
    invoke-static {}, Lcom/android/emailcommon/utility/Utility;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/emailcommon/utility/Utility$5;

    invoke-direct {v1, p0, p1}, Lcom/android/emailcommon/utility/Utility$5;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 433
    return-void
.end method

.method public static streamFromAsciiString(Ljava/lang/String;)Ljava/io/ByteArrayInputStream;
    .locals 2
    .param p0, "ascii"    # Ljava/lang/String;

    .prologue
    .line 414
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-static {p0}, Lcom/android/emailcommon/utility/Utility;->toAscii(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public static toAscii(Ljava/lang/String;)[B
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 323
    sget-object v0, Lcom/android/emailcommon/utility/Utility;->ASCII:Ljava/nio/charset/Charset;

    invoke-static {v0, p0}, Lcom/android/emailcommon/utility/Utility;->encode(Ljava/nio/charset/Charset;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static toUtf8(Ljava/lang/String;)[B
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 313
    sget-object v0, Lcom/android/emailcommon/utility/Utility;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v0, p0}, Lcom/android/emailcommon/utility/Utility;->encode(Ljava/nio/charset/Charset;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method
