.class interface abstract Lcom/android/emailcommon/provider/MessageMove$ProjectionLastSyncedMailboxQuery;
.super Ljava/lang/Object;
.source "MessageMove.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/provider/MessageMove;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "ProjectionLastSyncedMailboxQuery"
.end annotation


# static fields
.field public static final COLUMN_ID:I = 0x0

.field public static final COLUMN_SRC_FOLDER_KEY:I = 0x1

.field public static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 71
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "srcFolderKey"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/emailcommon/provider/MessageMove$ProjectionLastSyncedMailboxQuery;->PROJECTION:[Ljava/lang/String;

    .line 67
    return-void
.end method
