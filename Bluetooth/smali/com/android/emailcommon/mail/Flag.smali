.class public final enum Lcom/android/emailcommon/mail/Flag;
.super Ljava/lang/Enum;
.source "Flag.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/emailcommon/mail/Flag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/emailcommon/mail/Flag;

.field public static final enum ANSWERED:Lcom/android/emailcommon/mail/Flag;

.field public static final enum DELETED:Lcom/android/emailcommon/mail/Flag;

.field public static final enum DRAFT:Lcom/android/emailcommon/mail/Flag;

.field public static final enum FLAGGED:Lcom/android/emailcommon/mail/Flag;

.field public static final enum RECENT:Lcom/android/emailcommon/mail/Flag;

.field public static final enum SEEN:Lcom/android/emailcommon/mail/Flag;

.field public static final enum X_DESTROYED:Lcom/android/emailcommon/mail/Flag;

.field public static final enum X_DOWNLOADED_FULL:Lcom/android/emailcommon/mail/Flag;

.field public static final enum X_DOWNLOADED_PARTIAL:Lcom/android/emailcommon/mail/Flag;

.field public static final enum X_SEND_FAILED:Lcom/android/emailcommon/mail/Flag;

.field public static final enum X_SEND_IN_PROGRESS:Lcom/android/emailcommon/mail/Flag;

.field public static final enum X_STORE_1:Lcom/android/emailcommon/mail/Flag;

.field public static final enum X_STORE_2:Lcom/android/emailcommon/mail/Flag;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 24
    new-instance v0, Lcom/android/emailcommon/mail/Flag;

    const-string/jumbo v1, "DELETED"

    invoke-direct {v0, v1, v3}, Lcom/android/emailcommon/mail/Flag;-><init>(Ljava/lang/String;I)V

    .line 26
    sput-object v0, Lcom/android/emailcommon/mail/Flag;->DELETED:Lcom/android/emailcommon/mail/Flag;

    .line 27
    new-instance v0, Lcom/android/emailcommon/mail/Flag;

    const-string/jumbo v1, "SEEN"

    invoke-direct {v0, v1, v4}, Lcom/android/emailcommon/mail/Flag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/emailcommon/mail/Flag;->SEEN:Lcom/android/emailcommon/mail/Flag;

    .line 28
    new-instance v0, Lcom/android/emailcommon/mail/Flag;

    const-string/jumbo v1, "ANSWERED"

    invoke-direct {v0, v1, v5}, Lcom/android/emailcommon/mail/Flag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/emailcommon/mail/Flag;->ANSWERED:Lcom/android/emailcommon/mail/Flag;

    .line 29
    new-instance v0, Lcom/android/emailcommon/mail/Flag;

    const-string/jumbo v1, "FLAGGED"

    invoke-direct {v0, v1, v6}, Lcom/android/emailcommon/mail/Flag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/emailcommon/mail/Flag;->FLAGGED:Lcom/android/emailcommon/mail/Flag;

    .line 30
    new-instance v0, Lcom/android/emailcommon/mail/Flag;

    const-string/jumbo v1, "DRAFT"

    invoke-direct {v0, v1, v7}, Lcom/android/emailcommon/mail/Flag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/emailcommon/mail/Flag;->DRAFT:Lcom/android/emailcommon/mail/Flag;

    .line 31
    new-instance v0, Lcom/android/emailcommon/mail/Flag;

    const-string/jumbo v1, "RECENT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/emailcommon/mail/Flag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/emailcommon/mail/Flag;->RECENT:Lcom/android/emailcommon/mail/Flag;

    .line 33
    new-instance v0, Lcom/android/emailcommon/mail/Flag;

    const-string/jumbo v1, "X_DESTROYED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/emailcommon/mail/Flag;-><init>(Ljava/lang/String;I)V

    .line 42
    sput-object v0, Lcom/android/emailcommon/mail/Flag;->X_DESTROYED:Lcom/android/emailcommon/mail/Flag;

    .line 44
    new-instance v0, Lcom/android/emailcommon/mail/Flag;

    const-string/jumbo v1, "X_SEND_FAILED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/emailcommon/mail/Flag;-><init>(Ljava/lang/String;I)V

    .line 47
    sput-object v0, Lcom/android/emailcommon/mail/Flag;->X_SEND_FAILED:Lcom/android/emailcommon/mail/Flag;

    .line 49
    new-instance v0, Lcom/android/emailcommon/mail/Flag;

    const-string/jumbo v1, "X_SEND_IN_PROGRESS"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/emailcommon/mail/Flag;-><init>(Ljava/lang/String;I)V

    .line 52
    sput-object v0, Lcom/android/emailcommon/mail/Flag;->X_SEND_IN_PROGRESS:Lcom/android/emailcommon/mail/Flag;

    .line 54
    new-instance v0, Lcom/android/emailcommon/mail/Flag;

    const-string/jumbo v1, "X_DOWNLOADED_FULL"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/emailcommon/mail/Flag;-><init>(Ljava/lang/String;I)V

    .line 58
    sput-object v0, Lcom/android/emailcommon/mail/Flag;->X_DOWNLOADED_FULL:Lcom/android/emailcommon/mail/Flag;

    .line 60
    new-instance v0, Lcom/android/emailcommon/mail/Flag;

    const-string/jumbo v1, "X_DOWNLOADED_PARTIAL"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/emailcommon/mail/Flag;-><init>(Ljava/lang/String;I)V

    .line 65
    sput-object v0, Lcom/android/emailcommon/mail/Flag;->X_DOWNLOADED_PARTIAL:Lcom/android/emailcommon/mail/Flag;

    .line 67
    new-instance v0, Lcom/android/emailcommon/mail/Flag;

    const-string/jumbo v1, "X_STORE_1"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/android/emailcommon/mail/Flag;-><init>(Ljava/lang/String;I)V

    .line 71
    sput-object v0, Lcom/android/emailcommon/mail/Flag;->X_STORE_1:Lcom/android/emailcommon/mail/Flag;

    .line 73
    new-instance v0, Lcom/android/emailcommon/mail/Flag;

    const-string/jumbo v1, "X_STORE_2"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/android/emailcommon/mail/Flag;-><init>(Ljava/lang/String;I)V

    .line 77
    sput-object v0, Lcom/android/emailcommon/mail/Flag;->X_STORE_2:Lcom/android/emailcommon/mail/Flag;

    .line 22
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/android/emailcommon/mail/Flag;

    sget-object v1, Lcom/android/emailcommon/mail/Flag;->DELETED:Lcom/android/emailcommon/mail/Flag;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/emailcommon/mail/Flag;->SEEN:Lcom/android/emailcommon/mail/Flag;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/emailcommon/mail/Flag;->ANSWERED:Lcom/android/emailcommon/mail/Flag;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/emailcommon/mail/Flag;->FLAGGED:Lcom/android/emailcommon/mail/Flag;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/emailcommon/mail/Flag;->DRAFT:Lcom/android/emailcommon/mail/Flag;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/emailcommon/mail/Flag;->RECENT:Lcom/android/emailcommon/mail/Flag;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/emailcommon/mail/Flag;->X_DESTROYED:Lcom/android/emailcommon/mail/Flag;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/emailcommon/mail/Flag;->X_SEND_FAILED:Lcom/android/emailcommon/mail/Flag;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/emailcommon/mail/Flag;->X_SEND_IN_PROGRESS:Lcom/android/emailcommon/mail/Flag;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/emailcommon/mail/Flag;->X_DOWNLOADED_FULL:Lcom/android/emailcommon/mail/Flag;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/emailcommon/mail/Flag;->X_DOWNLOADED_PARTIAL:Lcom/android/emailcommon/mail/Flag;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/emailcommon/mail/Flag;->X_STORE_1:Lcom/android/emailcommon/mail/Flag;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/emailcommon/mail/Flag;->X_STORE_2:Lcom/android/emailcommon/mail/Flag;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/emailcommon/mail/Flag;->$VALUES:[Lcom/android/emailcommon/mail/Flag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/emailcommon/mail/Flag;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    const-class v0, Lcom/android/emailcommon/mail/Flag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/mail/Flag;

    return-object v0
.end method

.method public static values()[Lcom/android/emailcommon/mail/Flag;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/android/emailcommon/mail/Flag;->$VALUES:[Lcom/android/emailcommon/mail/Flag;

    return-object v0
.end method