.class public final enum Lcom/android/emailcommon/mail/FetchProfile$Item;
.super Ljava/lang/Enum;
.source "FetchProfile.java"

# interfaces
.implements Lcom/android/emailcommon/mail/Fetchable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/mail/FetchProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Item"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/emailcommon/mail/FetchProfile$Item;",
        ">;",
        "Lcom/android/emailcommon/mail/Fetchable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/emailcommon/mail/FetchProfile$Item;

.field public static final enum BODY:Lcom/android/emailcommon/mail/FetchProfile$Item;

.field public static final enum BODY_SANE:Lcom/android/emailcommon/mail/FetchProfile$Item;

.field public static final enum ENVELOPE:Lcom/android/emailcommon/mail/FetchProfile$Item;

.field public static final enum FLAGS:Lcom/android/emailcommon/mail/FetchProfile$Item;

.field public static final enum STRUCTURE:Lcom/android/emailcommon/mail/FetchProfile$Item;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 40
    new-instance v0, Lcom/android/emailcommon/mail/FetchProfile$Item;

    const-string/jumbo v1, "FLAGS"

    invoke-direct {v0, v1, v2}, Lcom/android/emailcommon/mail/FetchProfile$Item;-><init>(Ljava/lang/String;I)V

    .line 43
    sput-object v0, Lcom/android/emailcommon/mail/FetchProfile$Item;->FLAGS:Lcom/android/emailcommon/mail/FetchProfile$Item;

    .line 45
    new-instance v0, Lcom/android/emailcommon/mail/FetchProfile$Item;

    const-string/jumbo v1, "ENVELOPE"

    invoke-direct {v0, v1, v3}, Lcom/android/emailcommon/mail/FetchProfile$Item;-><init>(Ljava/lang/String;I)V

    .line 49
    sput-object v0, Lcom/android/emailcommon/mail/FetchProfile$Item;->ENVELOPE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    .line 51
    new-instance v0, Lcom/android/emailcommon/mail/FetchProfile$Item;

    const-string/jumbo v1, "STRUCTURE"

    invoke-direct {v0, v1, v4}, Lcom/android/emailcommon/mail/FetchProfile$Item;-><init>(Ljava/lang/String;I)V

    .line 59
    sput-object v0, Lcom/android/emailcommon/mail/FetchProfile$Item;->STRUCTURE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    .line 61
    new-instance v0, Lcom/android/emailcommon/mail/FetchProfile$Item;

    const-string/jumbo v1, "BODY_SANE"

    invoke-direct {v0, v1, v5}, Lcom/android/emailcommon/mail/FetchProfile$Item;-><init>(Ljava/lang/String;I)V

    .line 65
    sput-object v0, Lcom/android/emailcommon/mail/FetchProfile$Item;->BODY_SANE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    .line 67
    new-instance v0, Lcom/android/emailcommon/mail/FetchProfile$Item;

    const-string/jumbo v1, "BODY"

    invoke-direct {v0, v1, v6}, Lcom/android/emailcommon/mail/FetchProfile$Item;-><init>(Ljava/lang/String;I)V

    .line 70
    sput-object v0, Lcom/android/emailcommon/mail/FetchProfile$Item;->BODY:Lcom/android/emailcommon/mail/FetchProfile$Item;

    .line 39
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/emailcommon/mail/FetchProfile$Item;

    sget-object v1, Lcom/android/emailcommon/mail/FetchProfile$Item;->FLAGS:Lcom/android/emailcommon/mail/FetchProfile$Item;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/emailcommon/mail/FetchProfile$Item;->ENVELOPE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/emailcommon/mail/FetchProfile$Item;->STRUCTURE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/emailcommon/mail/FetchProfile$Item;->BODY_SANE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/emailcommon/mail/FetchProfile$Item;->BODY:Lcom/android/emailcommon/mail/FetchProfile$Item;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/emailcommon/mail/FetchProfile$Item;->$VALUES:[Lcom/android/emailcommon/mail/FetchProfile$Item;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/emailcommon/mail/FetchProfile$Item;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 39
    const-class v0, Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/mail/FetchProfile$Item;

    return-object v0
.end method

.method public static values()[Lcom/android/emailcommon/mail/FetchProfile$Item;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/android/emailcommon/mail/FetchProfile$Item;->$VALUES:[Lcom/android/emailcommon/mail/FetchProfile$Item;

    return-object v0
.end method
