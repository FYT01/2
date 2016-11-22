.class public Lcom/android/bluetooth/pbap/BluetoothPbapUtils;
.super Ljava/lang/Object;
.source "BluetoothPbapUtils.java"


# static fields
.field public static FILTER_NICKNAME:I = 0x0

.field public static FILTER_PHOTO:I = 0x0

.field public static FILTER_TEL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "FilterUtils"

.field private static final V:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    const-string/jumbo v0, "BluetoothPbap"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->V:Z

    .line 51
    const/4 v0, 0x3

    sput v0, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->FILTER_PHOTO:I

    .line 52
    const/4 v0, 0x7

    sput v0, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->FILTER_TEL:I

    .line 53
    const/16 v0, 0x17

    sput v0, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->FILTER_NICKNAME:I

    .line 46
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFilteredVCardComposer(Landroid/content/Context;I[B)Lcom/android/vcard/VCardComposer;
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "vcardType"    # I
    .param p2, "filter"    # [B

    .prologue
    .line 110
    move v1, p1

    .line 119
    .local v1, "vType":I
    invoke-static {}, Lcom/android/bluetooth/pbap/BluetoothPbapConfig;->includePhotosInVcard()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 120
    invoke-static {p2}, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->hasFilter([B)Z

    move-result v2

    if-eqz v2, :cond_2

    sget v2, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->FILTER_PHOTO:I

    invoke-static {p2, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->isFilterBitSet([BI)Z

    move-result v0

    .line 121
    :goto_0
    if-nez v0, :cond_1

    .line 122
    sget-boolean v2, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->V:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "FilterUtils"

    const-string/jumbo v3, "Excluding images from VCardComposer..."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_0
    const/high16 v2, 0x800000

    or-int/2addr v1, v2

    .line 126
    :cond_1
    new-instance v2, Lcom/android/vcard/VCardComposer;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v1, v3}, Lcom/android/vcard/VCardComposer;-><init>(Landroid/content/Context;IZ)V

    return-object v2

    .line 120
    :cond_2
    const/4 v0, 0x1

    .local v0, "includePhoto":Z
    goto :goto_0

    .line 119
    .end local v0    # "includePhoto":Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "includePhoto":Z
    goto :goto_0
.end method

.method public static final createProfileVCard(Landroid/content/Context;I[B)Ljava/lang/String;
    .locals 9
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "vcardType"    # I
    .param p2, "filter"    # [B

    .prologue
    .line 156
    const/4 v0, 0x0

    .line 157
    .local v0, "composer":Lcom/android/vcard/VCardComposer;
    const/4 v8, 0x0

    .line 159
    .local v8, "vcard":Ljava/lang/String;
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->createFilteredVCardComposer(Landroid/content/Context;I[B)Lcom/android/vcard/VCardComposer;

    move-result-object v0

    .line 161
    .local v0, "composer":Lcom/android/vcard/VCardComposer;
    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    .line 162
    sget-object v2, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    .line 163
    sget-object v3, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    .line 161
    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 160
    invoke-virtual/range {v0 .. v6}, Lcom/android/vcard/VCardComposer;->init(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 165
    invoke-virtual {v0}, Lcom/android/vcard/VCardComposer;->createOneEntry()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 174
    .end local v0    # "composer":Lcom/android/vcard/VCardComposer;
    .end local v8    # "vcard":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_0

    .line 176
    :try_start_1
    invoke-virtual {v0}, Lcom/android/vcard/VCardComposer;->terminate()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 181
    :cond_0
    :goto_1
    return-object v8

    .line 167
    .restart local v0    # "composer":Lcom/android/vcard/VCardComposer;
    .restart local v8    # "vcard":Ljava/lang/String;
    :cond_1
    :try_start_2
    const-string/jumbo v1, "FilterUtils"

    .line 168
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to create profile vcard. Error initializing composer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 169
    invoke-virtual {v0}, Lcom/android/vcard/VCardComposer;->getErrorReason()Ljava/lang/String;

    move-result-object v3

    .line 168
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 167
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 171
    .end local v0    # "composer":Lcom/android/vcard/VCardComposer;
    :catch_0
    move-exception v7

    .line 172
    .local v7, "t":Ljava/lang/Throwable;
    const-string/jumbo v1, "FilterUtils"

    const-string/jumbo v2, "Unable to create profile vcard."

    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 177
    .end local v7    # "t":Ljava/lang/Throwable;
    .end local v8    # "vcard":Ljava/lang/String;
    :catch_1
    move-exception v7

    .restart local v7    # "t":Ljava/lang/Throwable;
    goto :goto_1
.end method

.method public static createProfileVCardFile(Ljava/io/File;Landroid/content/Context;)Z
    .locals 9
    .param p0, "file"    # Ljava/io/File;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 187
    const/4 v1, 0x0

    .line 188
    .local v1, "is":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 189
    .local v2, "os":Ljava/io/FileOutputStream;
    const/4 v4, 0x1

    .line 191
    .local v4, "success":Z
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 192
    sget-object v7, Landroid/provider/ContactsContract$Profile;->CONTENT_VCARD_URI:Landroid/net/Uri;

    const-string/jumbo v8, "r"

    .line 191
    invoke-virtual {v6, v7, v8}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 194
    .local v0, "fd":Landroid/content/res/AssetFileDescriptor;
    if-nez v0, :cond_0

    .line 196
    const/4 v6, 0x0

    return v6

    .line 198
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v1

    .line 199
    .local v1, "is":Ljava/io/FileInputStream;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    .local v3, "os":Ljava/io/FileOutputStream;
    const/16 v6, 0xc8

    :try_start_1
    invoke-static {v1, v3, v6}, Lcom/android/bluetooth/Utils;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .end local v2    # "os":Ljava/io/FileOutputStream;
    move-object v2, v3

    .line 205
    .end local v0    # "fd":Landroid/content/res/AssetFileDescriptor;
    .end local v1    # "is":Ljava/io/FileInputStream;
    .end local v3    # "os":Ljava/io/FileOutputStream;
    :goto_0
    invoke-static {v1}, Lcom/android/bluetooth/Utils;->safeCloseStream(Ljava/io/InputStream;)V

    .line 206
    invoke-static {v2}, Lcom/android/bluetooth/Utils;->safeCloseStream(Ljava/io/OutputStream;)V

    .line 207
    return v4

    .line 201
    .restart local v2    # "os":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v5

    .line 202
    .end local v2    # "os":Ljava/io/FileOutputStream;
    .local v5, "t":Ljava/lang/Throwable;
    :goto_1
    const-string/jumbo v6, "FilterUtils"

    const-string/jumbo v7, "Unable to create default contact vcard file"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 203
    const/4 v4, 0x0

    goto :goto_0

    .line 201
    .end local v5    # "t":Ljava/lang/Throwable;
    .restart local v0    # "fd":Landroid/content/res/AssetFileDescriptor;
    .restart local v1    # "is":Ljava/io/FileInputStream;
    .restart local v3    # "os":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v5

    .restart local v5    # "t":Ljava/lang/Throwable;
    move-object v2, v3

    .end local v3    # "os":Ljava/io/FileOutputStream;
    .local v2, "os":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public static getProfileName(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 142
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 143
    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "display_name"

    aput-object v4, v2, v8

    move-object v4, v3

    move-object v5, v3

    .line 142
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 145
    .local v6, "c":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 146
    .local v7, "ownerName":Ljava/lang/String;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 149
    .end local v7    # "ownerName":Ljava/lang/String;
    :cond_0
    if-eqz v6, :cond_1

    .line 150
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 151
    const/4 v6, 0x0

    .line 153
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_1
    return-object v7
.end method

.method public static hasFilter([B)Z
    .locals 2
    .param p0, "filter"    # [B

    .prologue
    const/4 v0, 0x0

    .line 56
    if-eqz p0, :cond_0

    array-length v1, p0

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isFilterBitSet([BI)Z
    .locals 6
    .param p0, "filter"    # [B
    .param p1, "filterBit"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 98
    invoke-static {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->hasFilter([B)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 99
    div-int/lit8 v4, p1, 0x8

    rsub-int/lit8 v1, v4, 0x7

    .line 100
    .local v1, "byteNumber":I
    rem-int/lit8 v0, p1, 0x8

    .line 101
    .local v0, "bitNumber":I
    array-length v4, p0

    if-ge v1, v4, :cond_1

    .line 102
    aget-byte v4, p0, v1

    shl-int v5, v2, v0

    and-int/2addr v4, v5

    if-lez v4, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0

    .line 105
    .end local v0    # "bitNumber":I
    .end local v1    # "byteNumber":I
    :cond_1
    return v3
.end method

.method public static isNameAndNumberOnly([B)Z
    .locals 4
    .param p0, "filter"    # [B

    .prologue
    const/4 v3, 0x0

    .line 67
    invoke-static {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->hasFilter([B)Z

    move-result v1

    if-nez v1, :cond_0

    .line 68
    const-string/jumbo v1, "FilterUtils"

    const-string/jumbo v2, "No filter set. isNameAndNumberOnly=false"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return v3

    .line 73
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-gt v0, v1, :cond_2

    .line 74
    aget-byte v1, p0, v0

    if-eqz v1, :cond_1

    .line 75
    return v3

    .line 73
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 80
    :cond_2
    const/4 v1, 0x5

    aget-byte v1, p0, v1

    and-int/lit8 v1, v1, 0x7f

    if-lez v1, :cond_3

    .line 81
    return v3

    .line 85
    :cond_3
    const/4 v1, 0x6

    aget-byte v1, p0, v1

    if-eqz v1, :cond_4

    .line 86
    return v3

    .line 90
    :cond_4
    const/4 v1, 0x7

    aget-byte v1, p0, v1

    and-int/lit8 v1, v1, 0x78

    if-lez v1, :cond_5

    .line 91
    return v3

    .line 94
    :cond_5
    const/4 v1, 0x1

    return v1
.end method

.method public static isProfileSet(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 130
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 131
    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_VCARD_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "_id"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    .line 130
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 133
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v7, 0x1

    .line 134
    .local v7, "isSet":Z
    :goto_0
    if-eqz v6, :cond_0

    .line 135
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 136
    const/4 v6, 0x0

    .line 138
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_0
    return v7

    .line 133
    .end local v7    # "isSet":Z
    .restart local v6    # "c":Landroid/database/Cursor;
    :cond_1
    const/4 v7, 0x0

    .restart local v7    # "isSet":Z
    goto :goto_0
.end method
