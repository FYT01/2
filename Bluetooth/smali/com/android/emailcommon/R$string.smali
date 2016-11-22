.class public final Lcom/android/emailcommon/R$string;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "string"
.end annotation


# static fields
.field public static email_package_name:I

.field public static mailbox_name_server_all_unread:I

.field public static mailbox_name_server_drafts:I

.field public static mailbox_name_server_inbox:I

.field public static mailbox_name_server_junk:I

.field public static mailbox_name_server_outbox:I

.field public static mailbox_name_server_sent:I

.field public static mailbox_name_server_starred:I

.field public static mailbox_name_server_trash:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const v0, 0x7f020008

    sput v0, Lcom/android/emailcommon/R$string;->email_package_name:I

    .line 19
    const v0, 0x7f020007

    sput v0, Lcom/android/emailcommon/R$string;->mailbox_name_server_all_unread:I

    .line 22
    const v0, 0x7f020002

    sput v0, Lcom/android/emailcommon/R$string;->mailbox_name_server_drafts:I

    .line 30
    const/high16 v0, 0x7f020000

    sput v0, Lcom/android/emailcommon/R$string;->mailbox_name_server_inbox:I

    .line 33
    const v0, 0x7f020005

    sput v0, Lcom/android/emailcommon/R$string;->mailbox_name_server_junk:I

    .line 36
    const v0, 0x7f020001

    sput v0, Lcom/android/emailcommon/R$string;->mailbox_name_server_outbox:I

    .line 39
    const v0, 0x7f020004

    sput v0, Lcom/android/emailcommon/R$string;->mailbox_name_server_sent:I

    .line 42
    const v0, 0x7f020006

    sput v0, Lcom/android/emailcommon/R$string;->mailbox_name_server_starred:I

    .line 45
    const v0, 0x7f020003

    sput v0, Lcom/android/emailcommon/R$string;->mailbox_name_server_trash:I

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
