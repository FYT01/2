.class public final Lcom/android/bluetooth/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field static final BD_ADDR_LEN:I = 0x6

.field static final BD_UUID_LEN:I = 0x10

.field private static final MICROS_PER_UNIT:I = 0x271

.field private static final TAG:Ljava/lang/String; = "BluetoothUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byteArrayToInt([B)I
    .locals 1
    .param p0, "valueBuf"    # [B

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/bluetooth/Utils;->byteArrayToInt([BI)I

    move-result v0

    return v0
.end method

.method public static byteArrayToInt([BI)I
    .locals 2
    .param p0, "valueBuf"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 96
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 97
    .local v0, "converter":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 98
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    return v1
.end method

.method public static byteArrayToShort([B)S
    .locals 2
    .param p0, "valueBuf"    # [B

    .prologue
    .line 90
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 91
    .local v0, "converter":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 92
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    return v1
.end method

.method public static byteArrayToUuid([B)[Landroid/os/ParcelUuid;
    .locals 12
    .param p0, "val"    # [B

    .prologue
    .line 138
    array-length v5, p0

    div-int/lit8 v2, v5, 0x10

    .line 139
    .local v2, "numUuids":I
    new-array v4, v2, [Landroid/os/ParcelUuid;

    .line 141
    .local v4, "puuids":[Landroid/os/ParcelUuid;
    const/4 v3, 0x0

    .line 143
    .local v3, "offset":I
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 144
    .local v0, "converter":Ljava/nio/ByteBuffer;
    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 146
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 147
    new-instance v5, Landroid/os/ParcelUuid;

    new-instance v6, Ljava/util/UUID;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v8

    .line 148
    add-int/lit8 v7, v3, 0x8

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v10

    .line 147
    invoke-direct {v6, v8, v9, v10, v11}, Ljava/util/UUID;-><init>(JJ)V

    invoke-direct {v5, v6}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    aput-object v5, v4, v1

    .line 149
    add-int/lit8 v3, v3, 0x10

    .line 146
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 151
    :cond_0
    return-object v4
.end method

.method public static checkCaller()Z
    .locals 11

    .prologue
    .line 204
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 205
    .local v1, "callingUser":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 206
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 210
    .local v4, "ident":J
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    .line 211
    .local v3, "foregroundUser":I
    if-ne v3, v1, :cond_2

    const/4 v6, 0x1

    .line 212
    .local v6, "ok":Z
    :goto_0
    if-nez v6, :cond_1

    .line 214
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v8

    .line 215
    const-string/jumbo v9, "com.android.systemui"

    const/4 v10, 0x0

    .line 214
    invoke-interface {v8, v9, v10}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 216
    .local v7, "systemUiUid":I
    if-eq v7, v0, :cond_0

    const/16 v8, 0x3e8

    if-ne v8, v0, :cond_3

    :cond_0
    const/4 v6, 0x1

    .line 222
    .end local v7    # "systemUiUid":I
    :cond_1
    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 224
    .end local v3    # "foregroundUser":I
    :goto_2
    return v6

    .line 211
    .end local v6    # "ok":Z
    .restart local v3    # "foregroundUser":I
    :cond_2
    const/4 v6, 0x0

    .restart local v6    # "ok":Z
    goto :goto_0

    .line 216
    .restart local v7    # "systemUiUid":I
    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 218
    .end local v3    # "foregroundUser":I
    .end local v6    # "ok":Z
    .end local v7    # "systemUiUid":I
    :catch_0
    move-exception v2

    .line 219
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v8, "BluetoothUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "checkIfCallerIsSelfOrForegroundUser: Exception ex="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 220
    const/4 v6, 0x0

    .line 222
    .restart local v6    # "ok":Z
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    .line 221
    .end local v2    # "ex":Ljava/lang/Exception;
    .end local v6    # "ok":Z
    :catchall_0
    move-exception v8

    .line 222
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 221
    throw v8
.end method

.method public static checkCallerAllowManagedProfiles(Landroid/content/Context;)Z
    .locals 14
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 228
    if-nez p0, :cond_0

    .line 229
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v11

    return v11

    .line 235
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 236
    .local v1, "callingUser":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 237
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 239
    .local v4, "ident":J
    :try_start_0
    const-string/jumbo v11, "user"

    invoke-virtual {p0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/UserManager;

    .line 240
    .local v10, "um":Landroid/os/UserManager;
    invoke-virtual {v10, v1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v9

    .line 241
    .local v9, "ui":Landroid/content/pm/UserInfo;
    if-eqz v9, :cond_3

    iget v7, v9, Landroid/content/pm/UserInfo;->id:I

    .line 243
    .local v7, "parentUser":I
    :goto_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    .line 244
    .local v3, "foregroundUser":I
    if-eq v3, v1, :cond_4

    .line 245
    if-ne v3, v7, :cond_5

    const/4 v6, 0x1

    .line 246
    .local v6, "ok":Z
    :goto_1
    if-nez v6, :cond_2

    .line 248
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v11

    .line 249
    const-string/jumbo v12, "com.android.systemui"

    const/4 v13, 0x0

    .line 248
    invoke-interface {v11, v12, v13}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 250
    .local v8, "systemUiUid":I
    if-eq v8, v0, :cond_1

    const/16 v11, 0x3e8

    if-ne v11, v0, :cond_6

    :cond_1
    const/4 v6, 0x1

    .line 256
    .end local v8    # "systemUiUid":I
    :cond_2
    :goto_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 258
    .end local v3    # "foregroundUser":I
    .end local v7    # "parentUser":I
    .end local v9    # "ui":Landroid/content/pm/UserInfo;
    .end local v10    # "um":Landroid/os/UserManager;
    :goto_3
    return v6

    .line 241
    .end local v6    # "ok":Z
    .restart local v9    # "ui":Landroid/content/pm/UserInfo;
    .restart local v10    # "um":Landroid/os/UserManager;
    :cond_3
    const/16 v7, -0x2710

    .restart local v7    # "parentUser":I
    goto :goto_0

    .line 244
    .restart local v3    # "foregroundUser":I
    :cond_4
    const/4 v6, 0x1

    .restart local v6    # "ok":Z
    goto :goto_1

    .line 245
    .end local v6    # "ok":Z
    :cond_5
    const/4 v6, 0x0

    .restart local v6    # "ok":Z
    goto :goto_1

    .line 250
    .restart local v8    # "systemUiUid":I
    :cond_6
    const/4 v6, 0x0

    goto :goto_2

    .line 252
    .end local v3    # "foregroundUser":I
    .end local v6    # "ok":Z
    .end local v7    # "parentUser":I
    .end local v8    # "systemUiUid":I
    .end local v9    # "ui":Landroid/content/pm/UserInfo;
    .end local v10    # "um":Landroid/os/UserManager;
    :catch_0
    move-exception v2

    .line 253
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v11, "BluetoothUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "checkCallerAllowManagedProfiles: Exception ex="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 254
    const/4 v6, 0x0

    .line 256
    .restart local v6    # "ok":Z
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3

    .line 255
    .end local v2    # "ex":Ljava/lang/Exception;
    .end local v6    # "ok":Z
    :catchall_0
    move-exception v11

    .line 256
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 255
    throw v11
.end method

.method public static checkCallerHasLocationPermission(Landroid/content/Context;Landroid/app/AppOpsManager;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appOps"    # Landroid/app/AppOpsManager;
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 279
    const-string/jumbo v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 281
    invoke-static {p1, v1, p2}, Lcom/android/bluetooth/Utils;->isAppOppAllowed(Landroid/app/AppOpsManager;ILjava/lang/String;)Z

    move-result v0

    .line 279
    if-eqz v0, :cond_0

    .line 282
    return v1

    .line 285
    :cond_0
    const-string/jumbo v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 287
    invoke-static {p1, v2, p2}, Lcom/android/bluetooth/Utils;->isAppOppAllowed(Landroid/app/AppOpsManager;ILjava/lang/String;)Z

    move-result v0

    .line 285
    if-eqz v0, :cond_1

    .line 288
    return v1

    .line 291
    :cond_1
    invoke-static {p0, p2}, Lcom/android/bluetooth/Utils;->isMApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 292
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Need ACCESS_COARSE_LOCATION or ACCESS_FINE_LOCATION permission to get scan results"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 296
    :cond_2
    invoke-static {p0, p2}, Lcom/android/bluetooth/Utils;->isForegroundApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 297
    return v1

    .line 299
    :cond_3
    const-string/jumbo v0, "BluetoothUtils"

    const-string/jumbo v1, "Permission denial: Need ACCESS_COARSE_LOCATION or ACCESS_FINE_LOCATION permission to get scan results"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    return v2
.end method

.method public static checkCallerHasPeersMacAddressPermission(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 310
    const-string/jumbo v1, "android.permission.PEERS_MAC_ADDRESS"

    .line 309
    invoke-virtual {p0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;I)V
    .locals 3
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 171
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 172
    new-array v0, p2, [B

    .line 173
    .local v0, "buffer":[B
    const/4 v1, 0x0

    .line 174
    .local v1, "bytesRead":I
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-ltz v1, :cond_0

    .line 175
    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 170
    .end local v0    # "buffer":[B
    .end local v1    # "bytesRead":I
    :cond_0
    return-void
.end method

.method public static debugGetAdapterStateString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 155
    packed-switch p0, :pswitch_data_0

    .line 165
    const-string/jumbo v0, "UNKNOWN"

    return-object v0

    .line 157
    :pswitch_0
    const-string/jumbo v0, "STATE_OFF"

    return-object v0

    .line 159
    :pswitch_1
    const-string/jumbo v0, "STATE_ON"

    return-object v0

    .line 161
    :pswitch_2
    const-string/jumbo v0, "STATE_TURNING_ON"

    return-object v0

    .line 163
    :pswitch_3
    const-string/jumbo v0, "STATE_TURNING_OFF"

    return-object v0

    .line 155
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public static enforceAdminPermission(Landroid/content/ContextWrapper;)V
    .locals 2
    .param p0, "context"    # Landroid/content/ContextWrapper;

    .prologue
    .line 269
    const-string/jumbo v0, "android.permission.BLUETOOTH_ADMIN"

    .line 270
    const-string/jumbo v1, "Need BLUETOOTH_ADMIN permission"

    .line 269
    invoke-virtual {p0, v0, v1}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    return-void
.end method

.method public static getAddressStringFromByte([B)Ljava/lang/String;
    .locals 8
    .param p0, "address"    # [B

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 57
    if-eqz p0, :cond_0

    array-length v0, p0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    .line 58
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 61
    :cond_1
    const-string/jumbo v0, "%02X:%02X:%02X:%02X:%02X:%02X"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    .line 62
    aget-byte v2, p0, v3

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v1, v3

    aget-byte v2, p0, v4

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v1, v4

    aget-byte v2, p0, v5

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v1, v5

    aget-byte v2, p0, v6

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v1, v6

    aget-byte v2, p0, v7

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v1, v7

    .line 63
    const/4 v2, 0x5

    aget-byte v2, p0, v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 61
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B
    .locals 1
    .param p0, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 67
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/Utils;->getBytesFromAddress(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static getBytesFromAddress(Ljava/lang/String;)[B
    .locals 5
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 71
    const/4 v1, 0x0

    .line 72
    .local v1, "j":I
    const/4 v3, 0x6

    new-array v2, v3, [B

    .line 74
    .local v2, "output":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 75
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3a

    if-eq v3, v4, :cond_0

    .line 76
    add-int/lit8 v3, v0, 0x2

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 77
    add-int/lit8 v1, v1, 0x1

    .line 78
    add-int/lit8 v0, v0, 0x1

    .line 74
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 82
    :cond_1
    return-object v2
.end method

.method public static intToByteArray(I)[B
    .locals 2
    .param p0, "value"    # I

    .prologue
    .line 102
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 103
    .local v0, "converter":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 104
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 105
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method private static isAppOppAllowed(Landroid/app/AppOpsManager;ILjava/lang/String;)Z
    .locals 2
    .param p0, "appOps"    # Landroid/app/AppOpsManager;
    .param p1, "op"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 339
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, p1, v1, p2}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static isForegroundApp(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 333
    const-string/jumbo v3, "activity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 334
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 335
    .local v1, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    :cond_0
    return v2
.end method

.method public static isLegacyForegroundApp(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 314
    invoke-static {p0, p1}, Lcom/android/bluetooth/Utils;->isMApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Lcom/android/bluetooth/Utils;->isForegroundApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isMApp(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 319
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    const/16 v4, 0x17

    .line 319
    if-lt v3, v4, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0

    .line 321
    :catch_0
    move-exception v0

    .line 324
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v1
.end method

.method public static millsToUnit(I)I
    .locals 4
    .param p0, "milliseconds"    # I

    .prologue
    .line 347
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v2, p0

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v0

    const-wide/16 v2, 0x271

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public static safeCloseStream(Ljava/io/InputStream;)V
    .locals 3
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    .line 181
    if-eqz p0, :cond_0

    .line 183
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, "t":Ljava/lang/Throwable;
    const-string/jumbo v1, "BluetoothUtils"

    const-string/jumbo v2, "Error closing stream"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static safeCloseStream(Ljava/io/OutputStream;)V
    .locals 3
    .param p0, "os"    # Ljava/io/OutputStream;

    .prologue
    .line 191
    if-eqz p0, :cond_0

    .line 193
    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, "t":Ljava/lang/Throwable;
    const-string/jumbo v1, "BluetoothUtils"

    const-string/jumbo v2, "Error closing stream"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static uuidToByteArray(Landroid/os/ParcelUuid;)[B
    .locals 8
    .param p0, "pUuid"    # Landroid/os/ParcelUuid;

    .prologue
    .line 109
    const/16 v1, 0x10

    .line 110
    .local v1, "length":I
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 111
    .local v0, "converter":Ljava/nio/ByteBuffer;
    sget-object v7, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 113
    invoke-virtual {p0}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v6

    .line 114
    .local v6, "uuid":Ljava/util/UUID;
    invoke-virtual {v6}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v4

    .line 115
    .local v4, "msb":J
    invoke-virtual {v6}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    .line 116
    .local v2, "lsb":J
    invoke-virtual {v0, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 117
    const/16 v7, 0x8

    invoke-virtual {v0, v7, v2, v3}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 118
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    return-object v7
.end method

.method public static uuidsToByteArray([Landroid/os/ParcelUuid;)[B
    .locals 9
    .param p0, "uuids"    # [Landroid/os/ParcelUuid;

    .prologue
    .line 122
    array-length v8, p0

    mul-int/lit8 v2, v8, 0x10

    .line 123
    .local v2, "length":I
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 124
    .local v0, "converter":Ljava/nio/ByteBuffer;
    sget-object v8, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 127
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v8, p0

    if-ge v1, v8, :cond_0

    .line 128
    aget-object v8, p0, v1

    invoke-virtual {v8}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v3

    .line 129
    .local v3, "uuid":Ljava/util/UUID;
    invoke-virtual {v3}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v6

    .line 130
    .local v6, "msb":J
    invoke-virtual {v3}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v4

    .line 131
    .local v4, "lsb":J
    mul-int/lit8 v8, v1, 0x10

    invoke-virtual {v0, v8, v6, v7}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 132
    mul-int/lit8 v8, v1, 0x10

    add-int/lit8 v8, v8, 0x8

    invoke-virtual {v0, v8, v4, v5}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 127
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 134
    .end local v3    # "uuid":Ljava/util/UUID;
    .end local v4    # "lsb":J
    .end local v6    # "msb":J
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    return-object v8
.end method
