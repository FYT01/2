.class public Lcom/android/emailcommon/Device;
.super Ljava/lang/Object;
.source "Device.java"


# static fields
.field private static sDeviceId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/android/emailcommon/Device;->sDeviceId:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getConsistentDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 99
    :try_start_0
    const-string/jumbo v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 100
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    if-nez v2, :cond_0

    .line 101
    return-object v6

    .line 103
    :cond_0
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 104
    .local v0, "deviceId":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 105
    return-object v6

    .line 107
    .end local v0    # "deviceId":Ljava/lang/String;
    .end local v2    # "tm":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v1

    .line 108
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error in TelephonyManager.getDeviceId(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 109
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 108
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 110
    return-object v6

    .line 112
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "deviceId":Ljava/lang/String;
    .restart local v2    # "tm":Landroid/telephony/TelephonyManager;
    :cond_1
    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->getSmallHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static declared-synchronized getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-class v1, Lcom/android/emailcommon/Device;

    monitor-enter v1

    .line 44
    :try_start_0
    sget-object v0, Lcom/android/emailcommon/Device;->sDeviceId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 45
    invoke-static {p0}, Lcom/android/emailcommon/Device;->getDeviceIdInternal(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/Device;->sDeviceId:Ljava/lang/String;

    .line 47
    :cond_0
    sget-object v0, Lcom/android/emailcommon/Device;->sDeviceId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getDeviceIdInternal(Landroid/content/Context;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x80

    const/4 v8, 0x0

    .line 51
    if-nez p0, :cond_0

    .line 52
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "getDeviceId requires a Context"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 54
    :cond_0
    const-string/jumbo v5, "deviceName"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 55
    .local v1, "f":Ljava/io/File;
    const/4 v3, 0x0

    .line 57
    .local v3, "rdr":Ljava/io/BufferedReader;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 58
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 59
    new-instance v3, Ljava/io/BufferedReader;

    .end local v3    # "rdr":Ljava/io/BufferedReader;
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v5, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 60
    .local v3, "rdr":Ljava/io/BufferedReader;
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 61
    .local v2, "id":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 62
    if-nez v2, :cond_2

    .line 64
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_1

    .line 65
    sget-object v5, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    .line 66
    const-string/jumbo v6, "Can\'t delete null deviceName file; try overwrite."

    .line 65
    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 79
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "rdr":Ljava/io/BufferedReader;
    :cond_1
    :goto_0
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/FileWriter;

    invoke-direct {v5, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5, v9}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 80
    .local v4, "w":Ljava/io/BufferedWriter;
    invoke-static {p0}, Lcom/android/emailcommon/Device;->getConsistentDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "consistentDeviceId":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 83
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "androidc"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 87
    .restart local v2    # "id":Ljava/lang/String;
    :goto_1
    invoke-virtual {v4, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V

    .line 89
    return-object v2

    .line 69
    .end local v0    # "consistentDeviceId":Ljava/lang/String;
    .end local v4    # "w":Ljava/io/BufferedWriter;
    .restart local v3    # "rdr":Ljava/io/BufferedReader;
    :cond_2
    return-object v2

    .line 72
    .end local v2    # "id":Ljava/lang/String;
    .local v3, "rdr":Ljava/io/BufferedReader;
    :cond_3
    sget-object v5, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ": File exists, but can\'t read?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 73
    const-string/jumbo v7, "  Trying to remove."

    .line 72
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 74
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_1

    .line 75
    sget-object v5, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v6, "Remove failed. Tring to overwrite."

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 85
    .end local v3    # "rdr":Ljava/io/BufferedReader;
    .restart local v0    # "consistentDeviceId":Ljava/lang/String;
    .restart local v4    # "w":Ljava/io/BufferedWriter;
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "android"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "id":Ljava/lang/String;
    goto :goto_1
.end method
