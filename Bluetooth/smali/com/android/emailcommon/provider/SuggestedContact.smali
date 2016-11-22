.class public abstract Lcom/android/emailcommon/provider/SuggestedContact;
.super Lcom/android/emailcommon/provider/EmailContent;
.source "SuggestedContact.java"

# interfaces
.implements Lcom/android/emailcommon/provider/EmailContent$SuggestedContactColumns;


# static fields
.field public static ACCOUNT_ID_URI:Landroid/net/Uri; = null

.field public static CONTENT_URI:Landroid/net/Uri; = null

.field public static final PROJECTION:[Ljava/lang/String;

.field public static final TABLE_NAME:Ljava/lang/String; = "SuggestedContact"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 35
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    .line 36
    const-string/jumbo v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 37
    const-string/jumbo v1, "accountKey"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 38
    const-string/jumbo v1, "address"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 39
    const-string/jumbo v1, "name"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 40
    const-string/jumbo v1, "display_name"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 41
    const-string/jumbo v1, "last_seen"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 35
    sput-object v0, Lcom/android/emailcommon/provider/SuggestedContact;->PROJECTION:[Ljava/lang/String;

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/emailcommon/provider/EmailContent;-><init>()V

    return-void
.end method

.method public static initSuggestedContact()V
    .locals 2

    .prologue
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/suggestedcontact"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/SuggestedContact;->CONTENT_URI:Landroid/net/Uri;

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/suggestedcontact/account"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/SuggestedContact;->ACCOUNT_ID_URI:Landroid/net/Uri;

    .line 44
    return-void
.end method
