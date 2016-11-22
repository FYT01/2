.class public Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;
.super Ljava/lang/Object;
.source "BluetoothPbapSIMvCardComposer.java"


# static fields
.field private static final FAILURE_REASON_FAILED_TO_GET_DATABASE_INFO:Ljava/lang/String; = "Failed to get database information"

.field private static final FAILURE_REASON_NOT_INITIALIZED:Ljava/lang/String; = "The vCard composer object is not correctly initialized"

.field private static final FAILURE_REASON_NO_ENTRY:Ljava/lang/String; = "There\'s no exportable in the database"

.field private static final FAILURE_REASON_UNSUPPORTED_URI:Ljava/lang/String; = "The Uri vCard composer received is not supported by the composer."

.field private static final NAME_COLUMN_INDEX:I = 0x0

.field private static final NO_ERROR:Ljava/lang/String; = "No error"

.field private static final NUMBERLABEL_COLUMN_INDEX:I = 0x3

.field private static final NUMBERTYPE_COLUMN_INDEX:I = 0x2

.field private static final NUMBER_COLUMN_INDEX:I = 0x1

.field private static final SIM_PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "SIMvCardComposer"


# instance fields
.field private final SIM_URI:Ljava/lang/String;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private mErrorReason:Ljava/lang/String;

.field private mTerminateIsCalled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 67
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 68
    const-string/jumbo v1, "display_name"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 69
    const-string/jumbo v1, "data1"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 70
    const-string/jumbo v1, "data2"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 71
    const-string/jumbo v1, "data3"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 67
    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->SIM_PROJECTION:[Ljava/lang/String;

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const-string/jumbo v0, "content://icc/adn"

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->SIM_URI:Ljava/lang/String;

    .line 83
    const-string/jumbo v0, "No error"

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->mErrorReason:Ljava/lang/String;

    .line 85
    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->mContext:Landroid/content/Context;

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->mContentResolver:Landroid/content/ContentResolver;

    .line 84
    return-void
.end method

.method private createOnevCardEntryInternal(Z)Ljava/lang/String;
    .locals 11
    .param p1, "vcardVer21"    # Z

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 134
    if-eqz p1, :cond_3

    const/high16 v7, -0x40000000    # -2.0f

    .line 136
    :goto_0
    const/high16 v8, 0x2000000

    .line 134
    or-int v6, v7, v8

    .line 137
    .local v6, "vcardType":I
    new-instance v0, Lcom/android/vcard/VCardBuilder;

    invoke-direct {v0, v6}, Lcom/android/vcard/VCardBuilder;-><init>(I)V

    .line 138
    .local v0, "builder":Lcom/android/vcard/VCardBuilder;
    iget-object v7, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 139
    .local v2, "name":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 140
    iget-object v7, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v7, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 142
    :cond_0
    new-array v7, v10, [Ljava/lang/String;

    aput-object v2, v7, v9

    invoke-static {v7}, Lcom/android/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v3, 0x0

    .line 143
    .local v3, "needCharset":Z
    :goto_1
    const-string/jumbo v7, "FN"

    invoke-virtual {v0, v7, v2, v3, v9}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 144
    const-string/jumbo v7, "N"

    invoke-virtual {v0, v7, v2, v3, v9}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 146
    iget-object v7, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v7, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 147
    .local v4, "number":Ljava/lang/String;
    const-string/jumbo v7, "-1"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 148
    iget-object v7, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->mContext:Landroid/content/Context;

    const v8, 0x7f060009

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 152
    :cond_1
    iget-object v7, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->mCursor:Landroid/database/Cursor;

    const/4 v8, 0x2

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 153
    .local v5, "type":I
    iget-object v7, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->mCursor:Landroid/database/Cursor;

    const/4 v8, 0x3

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 154
    .local v1, "label":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 155
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 157
    :cond_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7, v1, v4, v9}, Lcom/android/vcard/VCardBuilder;->appendTelLine(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 158
    invoke-virtual {v0}, Lcom/android/vcard/VCardBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 135
    .end local v0    # "builder":Lcom/android/vcard/VCardBuilder;
    .end local v1    # "label":Ljava/lang/String;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "needCharset":Z
    .end local v4    # "number":Ljava/lang/String;
    .end local v5    # "type":I
    .end local v6    # "vcardType":I
    :cond_3
    const v7, -0x3fffffff    # -2.0000002f

    goto :goto_0

    .line 142
    .restart local v0    # "builder":Lcom/android/vcard/VCardBuilder;
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v6    # "vcardType":I
    :cond_4
    const/4 v3, 0x1

    .restart local v3    # "needCharset":Z
    goto :goto_1
.end method


# virtual methods
.method public createOneEntry(Z)Ljava/lang/String;
    .locals 2
    .param p1, "vcardVer21"    # Z

    .prologue
    const/4 v1, 0x0

    .line 122
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    :cond_0
    const-string/jumbo v0, "The vCard composer object is not correctly initialized"

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->mErrorReason:Ljava/lang/String;

    .line 124
    return-object v1

    .line 127
    :cond_1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->createOnevCardEntryInternal(Z)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 129
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 127
    return-object v0

    .line 128
    :catchall_0
    move-exception v0

    .line 129
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 128
    throw v0
.end method

.method public finalize()V
    .locals 1

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->mTerminateIsCalled:Z

    if-nez v0, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->terminate()V

    .line 175
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 183
    const/4 v0, 0x0

    return v0

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    return v0
.end method

.method public getErrorReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->mErrorReason:Ljava/lang/String;

    return-object v0
.end method

.method public init(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "sortOrder"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 91
    const-string/jumbo v0, "content://icc/adn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 92
    .local v7, "myUri":Landroid/net/Uri;
    invoke-virtual {v7, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    const-string/jumbo v0, "The Uri vCard composer received is not supported by the composer."

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->mErrorReason:Ljava/lang/String;

    .line 95
    return v8

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->mContentResolver:Landroid/content/ContentResolver;

    .line 99
    sget-object v2, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->SIM_PROJECTION:[Ljava/lang/String;

    move-object v1, p1

    move-object v4, v3

    move-object v5, p4

    .line 98
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->mCursor:Landroid/database/Cursor;

    .line 101
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_1

    .line 102
    const-string/jumbo v0, "Failed to get database information"

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->mErrorReason:Ljava/lang/String;

    .line 103
    return v8

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 117
    const/4 v0, 0x1

    return v0

    .line 107
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    const-string/jumbo v0, "There\'s no exportable in the database"

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->mErrorReason:Ljava/lang/String;

    .line 112
    :goto_0
    iput-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->mCursor:Landroid/database/Cursor;

    .line 114
    return v8

    .line 108
    :catch_0
    move-exception v6

    .line 109
    .local v6, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string/jumbo v0, "SIMvCardComposer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SQLiteException on Cursor#close(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    const-string/jumbo v0, "There\'s no exportable in the database"

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->mErrorReason:Ljava/lang/String;

    goto :goto_0

    .line 110
    .end local v6    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    .line 111
    const-string/jumbo v1, "There\'s no exportable in the database"

    iput-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->mErrorReason:Ljava/lang/String;

    .line 112
    iput-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->mCursor:Landroid/database/Cursor;

    .line 110
    throw v0
.end method

.method public isAfterLast()Z
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 190
    const/4 v0, 0x0

    return v0

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    return v0
.end method

.method public moveToPosition(IZ)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "sortalpha"    # Z

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 197
    return-void

    .line 199
    :cond_0
    if-eqz p2, :cond_1

    .line 200
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->setpositionbyalpha(I)V

    .line 201
    return-void

    .line 203
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 195
    return-void
.end method

.method public setpositionbyalpha(I)V
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v4, 0x0

    .line 211
    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->mCursor:Landroid/database/Cursor;

    if-nez v2, :cond_0

    .line 212
    return-void

    .line 214
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 215
    .local v1, "nameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_2

    .line 217
    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 219
    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->mContext:Landroid/content/Context;

    const v3, 0x104000e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 221
    :cond_1
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 224
    .end local v0    # "name":Ljava/lang/String;
    :cond_2
    new-instance v2, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer$1;

    invoke-direct {v2, p0}, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer$1;-><init>(Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 231
    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_3

    .line 233
    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 210
    :cond_3
    return-void

    .line 231
    :cond_4
    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1
.end method

.method public terminate()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 162
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 164
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :goto_0
    iput-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->mCursor:Landroid/database/Cursor;

    .line 171
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->mTerminateIsCalled:Z

    .line 161
    return-void

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    const-string/jumbo v1, "SIMvCardComposer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SQLiteException on Cursor#close(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
