.class public Lcom/android/emailcommon/utility/MigrationUtils;
.super Ljava/lang/Object;
.source "MigrationUtils.java"


# static fields
.field private static sMigrationInProgress:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/emailcommon/utility/MigrationUtils;->sMigrationInProgress:Z

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized migrationFinished()V
    .locals 4

    .prologue
    const-class v1, Lcom/android/emailcommon/utility/MigrationUtils;

    monitor-enter v1

    .line 30
    :try_start_0
    sget-object v0, Lcom/android/mail/utils/LogUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "migration finished"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 31
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/emailcommon/utility/MigrationUtils;->sMigrationInProgress:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 29
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized migrationInProgress()Z
    .locals 2

    .prologue
    const-class v0, Lcom/android/emailcommon/utility/MigrationUtils;

    monitor-enter v0

    .line 35
    :try_start_0
    sget-boolean v1, Lcom/android/emailcommon/utility/MigrationUtils;->sMigrationInProgress:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized migrationStarted()V
    .locals 4

    .prologue
    const-class v1, Lcom/android/emailcommon/utility/MigrationUtils;

    monitor-enter v1

    .line 25
    :try_start_0
    sget-object v0, Lcom/android/mail/utils/LogUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "migration started"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 26
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/emailcommon/utility/MigrationUtils;->sMigrationInProgress:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 24
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
