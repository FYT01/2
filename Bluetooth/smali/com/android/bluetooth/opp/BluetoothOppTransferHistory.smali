.class public Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;
.super Landroid/app/Activity;
.source "BluetoothOppTransferHistory.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothOppTransferHistory"

.field private static final V:Z


# instance fields
.field private mContextMenu:Z

.field private mContextMenuPosition:I

.field private mIdColumnId:I

.field private mListView:Landroid/widget/ListView;

.field private mNotifier:Lcom/android/bluetooth/opp/BluetoothOppNotification;

.field private mShowAllIncoming:Z

.field private mTransferAdapter:Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;

.field private mTransferCursor:Landroid/database/Cursor;


# direct methods
.method static synthetic -wrap0(Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->clearAllDownloads()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 65
    const-string/jumbo v0, "BluetoothOpp"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->V:Z

    .line 61
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mContextMenu:Z

    .line 61
    return-void
.end method

.method private clearAllDownloads()V
    .locals 4

    .prologue
    .line 254
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 255
    :goto_0
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_0

    .line 256
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    iget v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mIdColumnId:I

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 257
    .local v1, "sessionId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 258
    .local v0, "contentUri":Landroid/net/Uri;
    invoke-static {p0, v0}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->updateVisibilityToHidden(Landroid/content/Context;Landroid/net/Uri;)V

    .line 260
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 262
    .end local v0    # "contentUri":Landroid/net/Uri;
    .end local v1    # "sessionId":I
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->updateNotificationWhenBtDisabled()V

    .line 253
    :cond_1
    return-void
.end method

.method private getClearableCount()I
    .locals 5

    .prologue
    .line 236
    const/4 v0, 0x0

    .line 237
    .local v0, "count":I
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 238
    :goto_0
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_1

    .line 239
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    const-string/jumbo v4, "status"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 240
    .local v2, "statusColumnId":I
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 241
    .local v1, "status":I
    invoke-static {v1}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusCompleted(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 242
    add-int/lit8 v0, v0, 0x1

    .line 244
    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 247
    .end local v1    # "status":I
    .end local v2    # "statusColumnId":I
    :cond_1
    return v0
.end method

.method private openCompleteTransfer()V
    .locals 7

    .prologue
    .line 288
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    iget v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mIdColumnId:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 289
    .local v2, "sessionId":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 290
    .local v0, "contentUri":Landroid/net/Uri;
    invoke-static {p0, v0}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->queryRecord(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    move-result-object v3

    .line 291
    .local v3, "transInfo":Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;
    if-nez v3, :cond_0

    .line 292
    const-string/jumbo v4, "BluetoothOppTransferHistory"

    const-string/jumbo v5, "Error: Can not get data from db"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    return-void

    .line 295
    :cond_0
    iget v4, v3, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDirection:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 296
    iget v4, v3, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mStatus:I

    invoke-static {v4}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusSuccess(I)Z

    move-result v4

    .line 295
    if-eqz v4, :cond_1

    .line 298
    iget-object v4, v3, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileName:Ljava/lang/String;

    iget-object v5, v3, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileType:Ljava/lang/String;

    .line 299
    iget-object v6, v3, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mTimeStamp:Ljava/lang/Long;

    .line 298
    invoke-static {p0, v4, v5, v6, v0}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->openReceivedFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Landroid/net/Uri;)V

    .line 287
    :goto_0
    return-void

    .line 301
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 302
    .local v1, "in":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 303
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setDataAndNormalize(Landroid/net/Uri;)Landroid/content/Intent;

    .line 304
    invoke-virtual {p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private promptClearList()V
    .locals 3

    .prologue
    .line 223
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f060062

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 224
    const v1, 0x7f06005c

    .line 223
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 225
    new-instance v1, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$1;

    invoke-direct {v1, p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$1;-><init>(Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;)V

    .line 224
    const v2, 0x104000a

    .line 223
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 229
    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    .line 223
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 222
    return-void
.end method

.method private updateNotificationWhenBtDisabled()V
    .locals 3

    .prologue
    .line 313
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 314
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 315
    sget-boolean v1, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->V:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "BluetoothOppTransferHistory"

    const-string/jumbo v2, "Bluetooth is not enabled, update notification manually."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mNotifier:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    invoke-virtual {v1}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->updateNotification()V

    .line 312
    :cond_1
    return-void
.end method


# virtual methods
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 174
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 175
    const-string/jumbo v2, "BluetoothOppTransferHistory"

    const-string/jumbo v3, " History is already Clear - Not clearing again "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    return v4

    .line 178
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    iget v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mContextMenuPosition:I

    invoke-interface {v2, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 179
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 192
    :pswitch_0
    return v5

    .line 181
    :pswitch_1
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->openCompleteTransfer()V

    .line 182
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->updateNotificationWhenBtDisabled()V

    .line 183
    return v4

    .line 186
    :pswitch_2
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    iget v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mIdColumnId:I

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 187
    .local v1, "sessionId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 188
    .local v0, "contentUri":Landroid/net/Uri;
    invoke-static {p0, v0}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->updateVisibilityToHidden(Landroid/content/Context;Landroid/net/Uri;)V

    .line 189
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->updateNotificationWhenBtDisabled()V

    .line 190
    return v4

    .line 179
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c002a
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    .line 86
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 87
    const v4, 0x7f040005

    invoke-virtual {p0, v4}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->setContentView(I)V

    .line 88
    const v4, 0x7f0c000f

    invoke-virtual {p0, v4}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mListView:Landroid/widget/ListView;

    .line 89
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mListView:Landroid/widget/ListView;

    const v5, 0x7f0c0010

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 91
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 92
    const-string/jumbo v5, "android.btopp.intent.extra.SHOW_ALL"

    .line 91
    invoke-virtual {v4, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mShowAllIncoming:Z

    .line 95
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "direction"

    invoke-virtual {v4, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 96
    .local v0, "dir":I
    if-nez v0, :cond_2

    .line 97
    const v4, 0x7f06005a

    invoke-virtual {p0, v4}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->setTitle(Ljava/lang/CharSequence;)V

    .line 98
    const-string/jumbo v1, "(direction == 0)"

    .line 110
    .local v1, "direction":Ljava/lang/String;
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "status >= \'200\' AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 112
    .local v2, "selection":Ljava/lang/String;
    iget-boolean v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mShowAllIncoming:Z

    if-nez v4, :cond_0

    .line 113
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " AND ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 114
    const-string/jumbo v5, "visibility"

    .line 113
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 114
    const-string/jumbo v5, " IS NULL OR "

    .line 113
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 115
    const-string/jumbo v5, "visibility"

    .line 113
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 115
    const-string/jumbo v5, " == \'"

    .line 113
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 116
    const-string/jumbo v5, "\')"

    .line 113
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 119
    :cond_0
    const-string/jumbo v3, "timestamp DESC"

    .line 121
    .local v3, "sortOrder":Ljava/lang/String;
    sget-object v4, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    const/16 v5, 0x9

    new-array v5, v5, [Ljava/lang/String;

    .line 122
    const-string/jumbo v6, "_id"

    aput-object v6, v5, v8

    const-string/jumbo v6, "hint"

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const-string/jumbo v6, "status"

    const/4 v7, 0x2

    aput-object v6, v5, v7

    .line 123
    const-string/jumbo v6, "total_bytes"

    const/4 v7, 0x3

    aput-object v6, v5, v7

    const-string/jumbo v6, "_data"

    const/4 v7, 0x4

    aput-object v6, v5, v7

    const-string/jumbo v6, "timestamp"

    const/4 v7, 0x5

    aput-object v6, v5, v7

    .line 124
    const-string/jumbo v6, "visibility"

    const/4 v7, 0x6

    aput-object v6, v5, v7

    const-string/jumbo v6, "destination"

    const/4 v7, 0x7

    aput-object v6, v5, v7

    const-string/jumbo v6, "direction"

    const/16 v7, 0x8

    aput-object v6, v5, v7

    .line 125
    const-string/jumbo v6, "timestamp DESC"

    .line 121
    invoke-virtual {p0, v4, v5, v2, v6}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    iput-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    .line 129
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    if-eqz v4, :cond_1

    .line 130
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    const-string/jumbo v5, "_id"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mIdColumnId:I

    .line 132
    new-instance v4, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;

    .line 133
    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    const v6, 0x7f040004

    .line 132
    invoke-direct {v4, p0, v6, v5}, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    iput-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferAdapter:Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;

    .line 134
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferAdapter:Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 135
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mListView:Landroid/widget/ListView;

    const/high16 v5, 0x1000000

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    .line 136
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 137
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 140
    :cond_1
    new-instance v4, Lcom/android/bluetooth/opp/BluetoothOppNotification;

    invoke-direct {v4, p0}, Lcom/android/bluetooth/opp/BluetoothOppNotification;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mNotifier:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    .line 141
    iput-boolean v8, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mContextMenu:Z

    .line 85
    return-void

    .line 101
    .end local v1    # "direction":Ljava/lang/String;
    .end local v2    # "selection":Ljava/lang/String;
    .end local v3    # "sortOrder":Ljava/lang/String;
    :cond_2
    iget-boolean v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mShowAllIncoming:Z

    if-eqz v4, :cond_3

    .line 102
    const v4, 0x7f060056

    invoke-virtual {p0, v4}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->setTitle(Ljava/lang/CharSequence;)V

    .line 106
    :goto_1
    const-string/jumbo v1, "(direction == 1)"

    .restart local v1    # "direction":Ljava/lang/String;
    goto/16 :goto_0

    .line 104
    .end local v1    # "direction":Ljava/lang/String;
    :cond_3
    const v4, 0x7f060059

    invoke-virtual {p0, v4}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 6
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 197
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_1

    .line 198
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mContextMenu:Z

    move-object v2, p3

    .line 199
    check-cast v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 200
    .local v2, "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    iget v4, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 201
    iget v3, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iput v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mContextMenuPosition:I

    .line 203
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    .line 204
    const-string/jumbo v5, "hint"

    .line 203
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, "fileName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 206
    const v3, 0x7f06003c

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 208
    :cond_0
    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 210
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    .line 211
    .local v1, "inflater":Landroid/view/MenuInflater;
    iget-boolean v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mShowAllIncoming:Z

    if-eqz v3, :cond_2

    .line 212
    const/high16 v3, 0x7f0b0000

    invoke-virtual {v1, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 196
    .end local v0    # "fileName":Ljava/lang/String;
    .end local v1    # "inflater":Landroid/view/MenuInflater;
    .end local v2    # "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :cond_1
    :goto_0
    return-void

    .line 214
    .restart local v0    # "fileName":Ljava/lang/String;
    .restart local v1    # "inflater":Landroid/view/MenuInflater;
    .restart local v2    # "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :cond_2
    const v3, 0x7f0b0002

    invoke-virtual {v1, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 146
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mShowAllIncoming:Z

    if-eqz v1, :cond_1

    .line 150
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 147
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 148
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f0b0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 274
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->V:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BluetoothOppTransferHistory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onItemClick: ContextMenu = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mContextMenu:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_0
    iget-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mContextMenu:Z

    if-nez v0, :cond_1

    .line 276
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    invoke-interface {v0, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 277
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->openCompleteTransfer()V

    .line 278
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->updateNotificationWhenBtDisabled()V

    .line 280
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mContextMenu:Z

    .line 272
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 164
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 169
    const/4 v0, 0x0

    return v0

    .line 166
    :pswitch_0
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->promptClearList()V

    .line 167
    const/4 v0, 0x1

    return v0

    .line 164
    :pswitch_data_0
    .packed-switch 0x7f0c002b
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 155
    iget-boolean v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mShowAllIncoming:Z

    if-nez v1, :cond_0

    .line 156
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->getClearableCount()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v0, 0x1

    .line 157
    .local v0, "showClear":Z
    :goto_0
    const v1, 0x7f0c002b

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 159
    .end local v0    # "showClear":Z
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1

    .line 156
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "showClear":Z
    goto :goto_0
.end method
