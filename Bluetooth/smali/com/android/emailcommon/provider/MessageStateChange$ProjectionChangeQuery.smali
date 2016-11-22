.class interface abstract Lcom/android/emailcommon/provider/MessageStateChange$ProjectionChangeQuery;
.super Ljava/lang/Object;
.source "MessageStateChange.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/provider/MessageStateChange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "ProjectionChangeQuery"
.end annotation


# static fields
.field public static final COLUMN_ID:I = 0x0

.field public static final COLUMN_MESSAGE_KEY:I = 0x1

.field public static final COLUMN_NEW_FLAG_FAVORITE:I = 0x6

.field public static final COLUMN_NEW_FLAG_READ:I = 0x4

.field public static final COLUMN_OLD_FLAG_FAVORITE:I = 0x5

.field public static final COLUMN_OLD_FLAG_READ:I = 0x3

.field public static final COLUMN_SERVER_ID:I = 0x2

.field public static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 55
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    .line 56
    const-string/jumbo v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "messageKey"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "messageServerId"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 57
    const-string/jumbo v1, "oldFlagRead"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "newFlagRead"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 58
    const-string/jumbo v1, "oldFlagFavorite"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "newFlagFavorite"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 55
    sput-object v0, Lcom/android/emailcommon/provider/MessageStateChange$ProjectionChangeQuery;->PROJECTION:[Ljava/lang/String;

    .line 46
    return-void
.end method
