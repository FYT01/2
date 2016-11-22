.class interface abstract Lcom/android/emailcommon/provider/MessageMove$ProjectionMoveQuery;
.super Ljava/lang/Object;
.source "MessageMove.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/provider/MessageMove;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "ProjectionMoveQuery"
.end annotation


# static fields
.field public static final COLUMN_DST_FOLDER_KEY:I = 0x4

.field public static final COLUMN_DST_FOLDER_SERVER_ID:I = 0x6

.field public static final COLUMN_ID:I = 0x0

.field public static final COLUMN_MESSAGE_KEY:I = 0x1

.field public static final COLUMN_SERVER_ID:I = 0x2

.field public static final COLUMN_SRC_FOLDER_KEY:I = 0x3

.field public static final COLUMN_SRC_FOLDER_SERVER_ID:I = 0x5

.field public static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 57
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    .line 58
    const-string/jumbo v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "messageKey"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "messageServerId"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 59
    const-string/jumbo v1, "srcFolderKey"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "dstFolderKey"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 60
    const-string/jumbo v1, "srcFolderServerId"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "dstFolderServerId"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 57
    sput-object v0, Lcom/android/emailcommon/provider/MessageMove$ProjectionMoveQuery;->PROJECTION:[Ljava/lang/String;

    .line 48
    return-void
.end method
