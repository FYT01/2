.class public interface abstract Lcom/android/emailcommon/provider/Mailbox$ProjectionSyncData;
.super Ljava/lang/Object;
.source "Mailbox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/provider/Mailbox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ProjectionSyncData"
.end annotation


# static fields
.field public static final COLUMN_SERVER_ID:I = 0x0

.field public static final COLUMN_SYNC_KEY:I = 0x1

.field public static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 259
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 260
    const-string/jumbo v1, "serverId"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 261
    const-string/jumbo v1, "syncKey"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 259
    sput-object v0, Lcom/android/emailcommon/provider/Mailbox$ProjectionSyncData;->PROJECTION:[Ljava/lang/String;

    .line 255
    return-void
.end method
