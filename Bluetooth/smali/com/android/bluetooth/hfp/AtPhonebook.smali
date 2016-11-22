.class public Lcom/android/bluetooth/hfp/AtPhonebook;
.super Ljava/lang/Object;
.source "AtPhonebook.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;
    }
.end annotation


# static fields
.field private static final ACCESS_AUTHORITY_CLASS:Ljava/lang/String; = "com.android.settings.bluetooth.BluetoothPermissionRequest"

.field private static final ACCESS_AUTHORITY_PACKAGE:Ljava/lang/String; = "com.android.settings"

.field private static final BLUETOOTH_ADMIN_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH_ADMIN"

.field private static final CALLS_PROJECTION:[Ljava/lang/String;

.field private static final DBG:Z = false

.field private static final INCOMING_CALL_WHERE:Ljava/lang/String; = "type=1"

.field private static final MAX_PHONEBOOK_SIZE:I = 0x4000

.field private static final MISSED_CALL_WHERE:Ljava/lang/String; = "type=3"

.field private static final OUTGOING_CALL_WHERE:Ljava/lang/String; = "type=2"

.field private static final PHONES_PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "BluetoothAtPhonebook"

.field private static final VISIBLE_PHONEBOOK_WHERE:Ljava/lang/String; = "in_visible_group=1"


# instance fields
.field final TYPE_READ:I

.field final TYPE_SET:I

.field final TYPE_TEST:I

.field final TYPE_UNKNOWN:I

.field private mCharacterSet:Ljava/lang/String;

.field private mCheckingAccessPermission:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mCpbrIndex1:I

.field private mCpbrIndex2:I

.field private mCurrentPhonebook:Ljava/lang/String;

.field private final mPhonebooks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;",
            ">;"
        }
    .end annotation
.end field

.field private mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 51
    new-array v0, v5, [Ljava/lang/String;

    .line 52
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v2

    const-string/jumbo v1, "number"

    aput-object v1, v0, v3

    const-string/jumbo v1, "presentation"

    aput-object v1, v0, v4

    .line 51
    sput-object v0, Lcom/android/bluetooth/hfp/AtPhonebook;->CALLS_PROJECTION:[Ljava/lang/String;

    .line 58
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 59
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v2

    const-string/jumbo v1, "display_name"

    aput-object v1, v0, v3

    const-string/jumbo v1, "data1"

    aput-object v1, v0, v4

    const-string/jumbo v1, "data2"

    aput-object v1, v0, v5

    .line 58
    sput-object v0, Lcom/android/bluetooth/hfp/AtPhonebook;->PHONES_PROJECTION:[Ljava/lang/String;

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/bluetooth/hfp/HeadsetStateMachine;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "headsetState"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const-string/jumbo v0, "UTF-8"

    iput-object v0, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCharacterSet:Ljava/lang/String;

    .line 95
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 94
    iput-object v0, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mPhonebooks:Ljava/util/HashMap;

    .line 97
    iput v4, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->TYPE_UNKNOWN:I

    .line 98
    iput v5, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->TYPE_READ:I

    .line 99
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->TYPE_SET:I

    .line 100
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->TYPE_TEST:I

    .line 103
    iput-object p1, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mContext:Landroid/content/Context;

    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mContentResolver:Landroid/content/ContentResolver;

    .line 105
    iput-object p2, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .line 106
    iget-object v0, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mPhonebooks:Ljava/util/HashMap;

    const-string/jumbo v1, "DC"

    new-instance v2, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;

    invoke-direct {v2, p0, v3}, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;-><init>(Lcom/android/bluetooth/hfp/AtPhonebook;Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v0, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mPhonebooks:Ljava/util/HashMap;

    const-string/jumbo v1, "RC"

    new-instance v2, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;

    invoke-direct {v2, p0, v3}, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;-><init>(Lcom/android/bluetooth/hfp/AtPhonebook;Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v0, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mPhonebooks:Ljava/util/HashMap;

    const-string/jumbo v1, "MC"

    new-instance v2, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;

    invoke-direct {v2, p0, v3}, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;-><init>(Lcom/android/bluetooth/hfp/AtPhonebook;Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v0, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mPhonebooks:Ljava/util/HashMap;

    const-string/jumbo v1, "ME"

    new-instance v2, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;

    invoke-direct {v2, p0, v3}, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;-><init>(Lcom/android/bluetooth/hfp/AtPhonebook;Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string/jumbo v0, "ME"

    iput-object v0, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCurrentPhonebook:Ljava/lang/String;

    .line 113
    iput v4, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCpbrIndex2:I

    iput v4, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCpbrIndex1:I

    .line 114
    iput-boolean v5, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCheckingAccessPermission:Z

    .line 102
    return-void
.end method

.method private checkAccessPermission(Landroid/bluetooth/BluetoothDevice;)I
    .locals 4
    .param p1, "remoteDevice"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 603
    const-string/jumbo v2, "checkAccessPermission"

    invoke-static {v2}, Lcom/android/bluetooth/hfp/AtPhonebook;->log(Ljava/lang/String;)V

    .line 604
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getPhonebookAccessPermission()I

    move-result v1

    .line 606
    .local v1, "permission":I
    if-nez v1, :cond_0

    .line 607
    const-string/jumbo v2, "checkAccessPermission - ACTION_CONNECTION_ACCESS_REQUEST"

    invoke-static {v2}, Lcom/android/bluetooth/hfp/AtPhonebook;->log(Ljava/lang/String;)V

    .line 608
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.bluetooth.device.action.CONNECTION_ACCESS_REQUEST"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 609
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.android.settings.bluetooth.BluetoothPermissionRequest"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 610
    const-string/jumbo v2, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    .line 611
    const/4 v3, 0x2

    .line 610
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 612
    const-string/jumbo v2, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 615
    iget-object v2, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 618
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return v1
.end method

.method private getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 155
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/Utils;->getBytesFromAddress(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized getMaxPhoneBookSize(I)I
    .locals 2
    .param p1, "currSize"    # I

    .prologue
    monitor-enter p0

    .line 463
    const/16 v1, 0x64

    if-ge p1, v1, :cond_0

    const/16 v0, 0x64

    .line 464
    .local v0, "maxSize":I
    :goto_0
    :try_start_0
    div-int/lit8 v1, v0, 0x2

    add-int/2addr v0, v1

    .line 465
    invoke-direct {p0, v0}, Lcom/android/bluetooth/hfp/AtPhonebook;->roundUpToPowerOfTwo(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit p0

    return v1

    .line 463
    .end local v0    # "maxSize":I
    :cond_0
    move v0, p1

    .restart local v0    # "maxSize":I
    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private static getPhoneType(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 622
    packed-switch p0, :pswitch_data_0

    .line 635
    const-string/jumbo v0, "O"

    return-object v0

    .line 624
    :pswitch_0
    const-string/jumbo v0, "H"

    return-object v0

    .line 626
    :pswitch_1
    const-string/jumbo v0, "M"

    return-object v0

    .line 628
    :pswitch_2
    const-string/jumbo v0, "W"

    return-object v0

    .line 631
    :pswitch_3
    const-string/jumbo v0, "F"

    return-object v0

    .line 622
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private declared-synchronized getPhonebookResult(Ljava/lang/String;Z)Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;
    .locals 3
    .param p1, "pb"    # Ljava/lang/String;
    .param p2, "force"    # Z

    .prologue
    const/4 v2, 0x0

    monitor-enter p0

    .line 385
    if-nez p1, :cond_0

    monitor-exit p0

    .line 386
    return-object v2

    .line 388
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mPhonebooks:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;

    .line 389
    .local v0, "pbr":Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;
    if-nez v0, :cond_1

    .line 390
    new-instance v0, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;

    .end local v0    # "pbr":Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;-><init>(Lcom/android/bluetooth/hfp/AtPhonebook;Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;)V

    .line 392
    .restart local v0    # "pbr":Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;
    :cond_1
    if-nez p2, :cond_2

    iget-object v1, v0, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    if-nez v1, :cond_3

    .line 393
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/android/bluetooth/hfp/AtPhonebook;->queryPhonebook(Ljava/lang/String;Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_3

    monitor-exit p0

    .line 394
    return-object v2

    :cond_3
    monitor-exit p0

    .line 398
    return-object v0

    .end local v0    # "pbr":Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 640
    const-string/jumbo v0, "BluetoothAtPhonebook"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    return-void
.end method

.method private declared-synchronized queryPhonebook(Ljava/lang/String;Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;)Z
    .locals 8
    .param p1, "pb"    # Ljava/lang/String;
    .param p2, "pbr"    # Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;

    .prologue
    const/4 v7, 0x0

    monitor-enter p0

    .line 403
    const/4 v6, 0x1

    .line 405
    .local v6, "ancillaryPhonebook":Z
    :try_start_0
    const-string/jumbo v0, "ME"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 406
    const/4 v6, 0x0

    .line 407
    const-string/jumbo v3, "in_visible_group=1"

    .line 418
    .local v3, "where":Ljava/lang/String;
    :goto_0
    iget-object v0, p2, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p2, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 420
    const/4 v0, 0x0

    iput-object v0, p2, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    .line 423
    :cond_0
    if-eqz v6, :cond_6

    .line 424
    iget-object v0, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mContentResolver:Landroid/content/ContentResolver;

    .line 425
    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/bluetooth/hfp/AtPhonebook;->CALLS_PROJECTION:[Ljava/lang/String;

    .line 426
    const-string/jumbo v5, "date DESC LIMIT 16384"

    .line 425
    const/4 v4, 0x0

    .line 424
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p2, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    .line 427
    iget-object v0, p2, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_5

    monitor-exit p0

    return v7

    .line 408
    .end local v3    # "where":Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string/jumbo v0, "DC"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 409
    const-string/jumbo v3, "type=2"

    .restart local v3    # "where":Ljava/lang/String;
    goto :goto_0

    .line 410
    .end local v3    # "where":Ljava/lang/String;
    :cond_2
    const-string/jumbo v0, "RC"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 411
    const-string/jumbo v3, "type=1"

    .restart local v3    # "where":Ljava/lang/String;
    goto :goto_0

    .line 412
    .end local v3    # "where":Ljava/lang/String;
    :cond_3
    const-string/jumbo v0, "MC"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 413
    const-string/jumbo v3, "type=3"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v3    # "where":Ljava/lang/String;
    goto :goto_0

    .end local v3    # "where":Ljava/lang/String;
    :cond_4
    monitor-exit p0

    .line 415
    return v7

    .line 429
    .restart local v3    # "where":Ljava/lang/String;
    :cond_5
    :try_start_2
    iget-object v0, p2, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    const-string/jumbo v2, "number"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->numberColumn:I

    .line 431
    iget-object v0, p2, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    const-string/jumbo v2, "presentation"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 430
    iput v0, p2, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->numberPresentationColumn:I

    .line 432
    const/4 v0, -0x1

    iput v0, p2, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->typeColumn:I

    .line 433
    const/4 v0, -0x1

    iput v0, p2, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->nameColumn:I

    .line 445
    :goto_1
    const-string/jumbo v0, "BluetoothAtPhonebook"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Refreshed phonebook "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " with "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p2, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " results"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 446
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 435
    :cond_6
    :try_start_3
    iget-object v0, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/bluetooth/util/DevicePolicyUtils;->getEnterprisePhoneUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    .line 436
    .local v1, "phoneContentUri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/bluetooth/hfp/AtPhonebook;->PHONES_PROJECTION:[Ljava/lang/String;

    .line 437
    const-string/jumbo v5, "data1 LIMIT 16384"

    const/4 v4, 0x0

    .line 436
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p2, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    .line 438
    iget-object v0, p2, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v0, :cond_7

    monitor-exit p0

    return v7

    .line 440
    :cond_7
    :try_start_4
    iget-object v0, p2, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    const-string/jumbo v2, "data1"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->numberColumn:I

    .line 441
    const/4 v0, -0x1

    iput v0, p2, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->numberPresentationColumn:I

    .line 442
    iget-object v0, p2, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    const-string/jumbo v2, "data2"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->typeColumn:I

    .line 443
    iget-object v0, p2, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    const-string/jumbo v2, "display_name"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->nameColumn:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .end local v1    # "phoneContentUri":Landroid/net/Uri;
    .end local v3    # "where":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private roundUpToPowerOfTwo(I)I
    .locals 1
    .param p1, "x"    # I

    .prologue
    .line 469
    shr-int/lit8 v0, p1, 0x1

    or-int/2addr p1, v0

    .line 470
    shr-int/lit8 v0, p1, 0x2

    or-int/2addr p1, v0

    .line 471
    shr-int/lit8 v0, p1, 0x4

    or-int/2addr p1, v0

    .line 472
    shr-int/lit8 v0, p1, 0x8

    or-int/2addr p1, v0

    .line 473
    shr-int/lit8 v0, p1, 0x10

    or-int/2addr p1, v0

    .line 474
    add-int/lit8 v0, p1, 0x1

    return v0
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mPhonebooks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 117
    return-void
.end method

.method public getCheckingAccessPermission()Z
    .locals 1

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCheckingAccessPermission:Z

    return v0
.end method

.method public getLastDialledNumber()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v4, 0x0

    .line 123
    new-array v2, v9, [Ljava/lang/String;

    const-string/jumbo v0, "number"

    const/4 v1, 0x0

    aput-object v0, v2, v1

    .line 124
    .local v2, "projection":[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCurrentPhonebook:Ljava/lang/String;

    invoke-direct {p0, v0, v9}, Lcom/android/bluetooth/hfp/AtPhonebook;->getPhonebookResult(Ljava/lang/String;Z)Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;

    move-result-object v8

    .line 125
    .local v8, "pbr":Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;
    if-nez v8, :cond_0

    return-object v4

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    .line 127
    const-string/jumbo v3, "type=2"

    const-string/jumbo v5, "date DESC LIMIT 1"

    .line 126
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, v8, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    .line 129
    iget-object v0, v8, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    if-nez v0, :cond_1

    return-object v4

    .line 131
    :cond_1
    iget-object v0, v8, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v0, v9, :cond_2

    .line 132
    iget-object v0, v8, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 133
    return-object v4

    .line 135
    :cond_2
    iget-object v0, v8, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 136
    iget-object v0, v8, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    const-string/jumbo v1, "number"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 137
    .local v6, "column":I
    iget-object v0, v8, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 138
    .local v7, "number":Ljava/lang/String;
    iget-object v0, v8, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 139
    return-object v7
.end method

.method public handleCpbrCommand(Ljava/lang/String;ILandroid/bluetooth/BluetoothDevice;)V
    .locals 18
    .param p1, "atString"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "remoteDevice"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 267
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "handleCpbrCommand - atString = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/bluetooth/hfp/AtPhonebook;->log(Ljava/lang/String;)V

    .line 268
    const/4 v5, 0x0

    .line 269
    .local v5, "atCommandResult":I
    const/4 v3, -0x1

    .line 270
    .local v3, "atCommandErrorCode":I
    const/4 v4, 0x0

    .line 271
    .local v4, "atCommandResponse":Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 372
    const-string/jumbo v14, "handleCpbrCommand - invalid chars"

    invoke-static {v14}, Lcom/android/bluetooth/hfp/AtPhonebook;->log(Ljava/lang/String;)V

    .line 373
    const/16 v3, 0x19

    .line 374
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/hfp/AtPhonebook;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .line 375
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/bluetooth/hfp/AtPhonebook;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v15

    .line 374
    invoke-virtual {v14, v5, v3, v15}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->atResponseCodeNative(II[B)Z

    .line 266
    .end local v4    # "atCommandResponse":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 278
    .restart local v4    # "atCommandResponse":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v14, "handleCpbrCommand - test command"

    invoke-static {v14}, Lcom/android/bluetooth/hfp/AtPhonebook;->log(Ljava/lang/String;)V

    .line 280
    const-string/jumbo v14, "SM"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCurrentPhonebook:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 281
    const/4 v13, 0x0

    .line 295
    .local v13, "size":I
    :goto_1
    if-nez v13, :cond_1

    .line 297
    const/4 v13, 0x1

    .line 299
    :cond_1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "+CPBR: (1-"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "),30,30"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 300
    .local v4, "atCommandResponse":Ljava/lang/String;
    const/4 v5, 0x1

    .line 301
    if-eqz v4, :cond_2

    .line 302
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/hfp/AtPhonebook;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .line 303
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/bluetooth/hfp/AtPhonebook;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v15

    .line 302
    invoke-virtual {v14, v4, v15}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->atResponseStringNative(Ljava/lang/String;[B)Z

    .line 304
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/hfp/AtPhonebook;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .line 305
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/bluetooth/hfp/AtPhonebook;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v15

    .line 304
    invoke-virtual {v14, v5, v3, v15}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->atResponseCodeNative(II[B)Z

    goto :goto_0

    .line 283
    .end local v13    # "size":I
    .local v4, "atCommandResponse":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCurrentPhonebook:Ljava/lang/String;

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/bluetooth/hfp/AtPhonebook;->getPhonebookResult(Ljava/lang/String;Z)Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;

    move-result-object v11

    .line 284
    .local v11, "pbr":Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;
    if-nez v11, :cond_4

    .line 285
    const/4 v3, 0x3

    .line 286
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/hfp/AtPhonebook;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .line 287
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/bluetooth/hfp/AtPhonebook;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v15

    .line 286
    invoke-virtual {v14, v5, v3, v15}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->atResponseCodeNative(II[B)Z

    goto :goto_0

    .line 290
    :cond_4
    iget-object v14, v11, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v13

    .line 291
    .restart local v13    # "size":I
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "handleCpbrCommand - size = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/bluetooth/hfp/AtPhonebook;->log(Ljava/lang/String;)V

    .line 292
    iget-object v14, v11, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 293
    const/4 v14, 0x0

    iput-object v14, v11, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    goto/16 :goto_1

    .line 312
    .end local v11    # "pbr":Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;
    .end local v13    # "size":I
    :pswitch_1
    const-string/jumbo v14, "handleCpbrCommand - set/read command"

    invoke-static {v14}, Lcom/android/bluetooth/hfp/AtPhonebook;->log(Ljava/lang/String;)V

    .line 313
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCpbrIndex1:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_5

    .line 315
    const/4 v3, 0x3

    .line 316
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/hfp/AtPhonebook;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .line 317
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/bluetooth/hfp/AtPhonebook;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v15

    .line 316
    invoke-virtual {v14, v5, v3, v15}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->atResponseCodeNative(II[B)Z

    goto/16 :goto_0

    .line 323
    :cond_5
    const-string/jumbo v14, "="

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    array-length v14, v14

    const/4 v15, 0x2

    if-ge v14, v15, :cond_6

    .line 324
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/hfp/AtPhonebook;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .line 325
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/bluetooth/hfp/AtPhonebook;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v15

    .line 324
    invoke-virtual {v14, v5, v3, v15}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->atResponseCodeNative(II[B)Z

    goto/16 :goto_0

    .line 328
    :cond_6
    const-string/jumbo v14, "="

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    aget-object v2, v14, v15

    .line 329
    .local v2, "atCommand":Ljava/lang/String;
    const-string/jumbo v14, ","

    invoke-virtual {v2, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 330
    .local v10, "indices":[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    array-length v14, v10

    if-ge v7, v14, :cond_7

    .line 332
    aget-object v14, v10, v7

    const/16 v15, 0x3b

    const/16 v16, 0x20

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v10, v7

    .line 330
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 334
    :cond_7
    const/4 v14, 0x0

    :try_start_0
    aget-object v14, v10, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 335
    .local v8, "index1":I
    array-length v14, v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v15, 0x1

    if-ne v14, v15, :cond_8

    .line 336
    move v9, v8

    .line 347
    .local v9, "index2":I
    :goto_3
    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCpbrIndex1:I

    .line 348
    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCpbrIndex2:I

    .line 349
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCheckingAccessPermission:Z

    .line 351
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/bluetooth/hfp/AtPhonebook;->checkAccessPermission(Landroid/bluetooth/BluetoothDevice;)I

    move-result v12

    .line 352
    .local v12, "permission":I
    const/4 v14, 0x1

    if-ne v12, v14, :cond_9

    .line 353
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCheckingAccessPermission:Z

    .line 354
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/hfp/AtPhonebook;->processCpbrCommand(Landroid/bluetooth/BluetoothDevice;)I

    move-result v5

    .line 355
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCpbrIndex2:I

    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCpbrIndex1:I

    .line 356
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/hfp/AtPhonebook;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .line 357
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/bluetooth/hfp/AtPhonebook;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v15

    .line 356
    invoke-virtual {v14, v5, v3, v15}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->atResponseCodeNative(II[B)Z

    goto/16 :goto_0

    .line 338
    .end local v9    # "index2":I
    .end local v12    # "permission":I
    :cond_8
    const/4 v14, 0x1

    :try_start_1
    aget-object v14, v10, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v9

    .restart local v9    # "index2":I
    goto :goto_3

    .line 340
    .end local v8    # "index1":I
    .end local v9    # "index2":I
    :catch_0
    move-exception v6

    .line 341
    .local v6, "e":Ljava/lang/Exception;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "handleCpbrCommand - exception - invalid chars: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/bluetooth/hfp/AtPhonebook;->log(Ljava/lang/String;)V

    .line 342
    const/16 v3, 0x19

    .line 343
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/hfp/AtPhonebook;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .line 344
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/bluetooth/hfp/AtPhonebook;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v15

    .line 343
    invoke-virtual {v14, v5, v3, v15}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->atResponseCodeNative(II[B)Z

    goto/16 :goto_0

    .line 359
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v8    # "index1":I
    .restart local v9    # "index2":I
    .restart local v12    # "permission":I
    :cond_9
    const/4 v14, 0x2

    if-ne v12, v14, :cond_0

    .line 360
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCheckingAccessPermission:Z

    .line 361
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCpbrIndex2:I

    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCpbrIndex1:I

    .line 362
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/hfp/AtPhonebook;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .line 363
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/bluetooth/hfp/AtPhonebook;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v15

    .line 362
    const/16 v16, 0x0

    .line 363
    const/16 v17, 0x0

    .line 362
    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v14, v0, v1, v15}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->atResponseCodeNative(II[B)Z

    goto/16 :goto_0

    .line 271
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public handleCpbsCommand(Ljava/lang/String;ILandroid/bluetooth/BluetoothDevice;)V
    .locals 12
    .param p1, "atString"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 207
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "handleCpbsCommand - atString = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/bluetooth/hfp/AtPhonebook;->log(Ljava/lang/String;)V

    .line 208
    const/4 v3, 0x0

    .line 209
    .local v3, "atCommandResult":I
    const/4 v1, -0x1

    .line 210
    .local v1, "atCommandErrorCode":I
    const/4 v2, 0x0

    .line 211
    .local v2, "atCommandResponse":Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 257
    const-string/jumbo v7, "handleCpbsCommand - invalid chars"

    invoke-static {v7}, Lcom/android/bluetooth/hfp/AtPhonebook;->log(Ljava/lang/String;)V

    .line 258
    const/16 v1, 0x19

    .line 260
    .end local v2    # "atCommandResponse":Ljava/lang/String;
    :goto_0
    if-eqz v2, :cond_0

    .line 261
    iget-object v7, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-direct {p0, p3}, Lcom/android/bluetooth/hfp/AtPhonebook;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v8

    invoke-virtual {v7, v2, v8}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->atResponseStringNative(Ljava/lang/String;[B)Z

    .line 262
    :cond_0
    iget-object v7, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .line 263
    invoke-direct {p0, p3}, Lcom/android/bluetooth/hfp/AtPhonebook;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v8

    .line 262
    invoke-virtual {v7, v3, v1, v8}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->atResponseCodeNative(II[B)Z

    .line 205
    return-void

    .line 213
    .restart local v2    # "atCommandResponse":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v7, "handleCpbsCommand - read command"

    invoke-static {v7}, Lcom/android/bluetooth/hfp/AtPhonebook;->log(Ljava/lang/String;)V

    .line 215
    const-string/jumbo v7, "SM"

    iget-object v8, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCurrentPhonebook:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 216
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "+CPBS: \"SM\",0,"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0, v11}, Lcom/android/bluetooth/hfp/AtPhonebook;->getMaxPhoneBookSize(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 217
    .local v2, "atCommandResponse":Ljava/lang/String;
    const/4 v3, 0x1

    .line 218
    goto :goto_0

    .line 220
    .local v2, "atCommandResponse":Ljava/lang/String;
    :cond_1
    iget-object v7, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCurrentPhonebook:Ljava/lang/String;

    invoke-direct {p0, v7, v9}, Lcom/android/bluetooth/hfp/AtPhonebook;->getPhonebookResult(Ljava/lang/String;Z)Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;

    move-result-object v5

    .line 221
    .local v5, "pbr":Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;
    if-nez v5, :cond_2

    .line 222
    const/4 v1, 0x4

    .line 223
    goto :goto_0

    .line 225
    :cond_2
    iget-object v7, v5, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 226
    .local v6, "size":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "+CPBS: \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCurrentPhonebook:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0, v6}, Lcom/android/bluetooth/hfp/AtPhonebook;->getMaxPhoneBookSize(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 227
    .local v2, "atCommandResponse":Ljava/lang/String;
    iget-object v7, v5, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 228
    iput-object v10, v5, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    .line 229
    const/4 v3, 0x1

    .line 230
    goto/16 :goto_0

    .line 232
    .end local v5    # "pbr":Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;
    .end local v6    # "size":I
    .local v2, "atCommandResponse":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v7, "handleCpbsCommand - test command"

    invoke-static {v7}, Lcom/android/bluetooth/hfp/AtPhonebook;->log(Ljava/lang/String;)V

    .line 233
    const-string/jumbo v2, "+CPBS: (\"ME\",\"SM\",\"DC\",\"RC\",\"MC\")"

    .line 234
    .local v2, "atCommandResponse":Ljava/lang/String;
    const/4 v3, 0x1

    .line 235
    goto/16 :goto_0

    .line 237
    .local v2, "atCommandResponse":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v7, "handleCpbsCommand - set command"

    invoke-static {v7}, Lcom/android/bluetooth/hfp/AtPhonebook;->log(Ljava/lang/String;)V

    .line 238
    const-string/jumbo v7, "="

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, "args":[Ljava/lang/String;
    array-length v7, v0

    const/4 v8, 0x2

    if-lt v7, v8, :cond_3

    aget-object v7, v0, v9

    instance-of v7, v7, Ljava/lang/String;

    if-eqz v7, :cond_3

    .line 244
    aget-object v7, v0, v9

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 245
    .local v4, "pb":Ljava/lang/String;
    :goto_1
    const-string/jumbo v7, "\""

    invoke-virtual {v4, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v4, v11, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 241
    .end local v4    # "pb":Ljava/lang/String;
    :cond_3
    const/4 v1, 0x4

    .line 242
    goto/16 :goto_0

    .line 246
    .restart local v4    # "pb":Ljava/lang/String;
    :cond_4
    :goto_2
    const-string/jumbo v7, "\""

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 247
    :cond_5
    invoke-direct {p0, v4, v11}, Lcom/android/bluetooth/hfp/AtPhonebook;->getPhonebookResult(Ljava/lang/String;Z)Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;

    move-result-object v7

    if-nez v7, :cond_6

    const-string/jumbo v7, "SM"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 252
    :cond_6
    iput-object v4, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCurrentPhonebook:Ljava/lang/String;

    .line 253
    const/4 v3, 0x1

    .line 254
    goto/16 :goto_0

    .line 248
    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Dont know phonebook: \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/bluetooth/hfp/AtPhonebook;->log(Ljava/lang/String;)V

    .line 249
    const/4 v1, 0x3

    .line 250
    goto/16 :goto_0

    .line 211
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public handleCscsCommand(Ljava/lang/String;ILandroid/bluetooth/BluetoothDevice;)V
    .locals 8
    .param p1, "atString"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v7, 0x1

    .line 160
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleCscsCommand - atString = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/bluetooth/hfp/AtPhonebook;->log(Ljava/lang/String;)V

    .line 162
    const/4 v3, 0x0

    .line 163
    .local v3, "atCommandResult":I
    const/4 v1, -0x1

    .line 164
    .local v1, "atCommandErrorCode":I
    const/4 v2, 0x0

    .line 165
    .local v2, "atCommandResponse":Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 196
    const-string/jumbo v5, "handleCscsCommand - Invalid chars"

    invoke-static {v5}, Lcom/android/bluetooth/hfp/AtPhonebook;->log(Ljava/lang/String;)V

    .line 197
    const/16 v1, 0x19

    .line 199
    .end local v2    # "atCommandResponse":Ljava/lang/String;
    :goto_0
    if-eqz v2, :cond_0

    .line 200
    iget-object v5, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-direct {p0, p3}, Lcom/android/bluetooth/hfp/AtPhonebook;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->atResponseStringNative(Ljava/lang/String;[B)Z

    .line 201
    :cond_0
    iget-object v5, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .line 202
    invoke-direct {p0, p3}, Lcom/android/bluetooth/hfp/AtPhonebook;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v6

    .line 201
    invoke-virtual {v5, v3, v1, v6}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->atResponseCodeNative(II[B)Z

    .line 158
    return-void

    .line 167
    .restart local v2    # "atCommandResponse":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v5, "handleCscsCommand - Read Command"

    invoke-static {v5}, Lcom/android/bluetooth/hfp/AtPhonebook;->log(Ljava/lang/String;)V

    .line 168
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "+CSCS: \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCharacterSet:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 169
    .local v2, "atCommandResponse":Ljava/lang/String;
    const/4 v3, 0x1

    .line 170
    goto :goto_0

    .line 172
    .local v2, "atCommandResponse":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v5, "handleCscsCommand - Test Command"

    invoke-static {v5}, Lcom/android/bluetooth/hfp/AtPhonebook;->log(Ljava/lang/String;)V

    .line 173
    const-string/jumbo v2, "+CSCS: (\"UTF-8\",\"IRA\",\"GSM\")"

    .line 174
    .local v2, "atCommandResponse":Ljava/lang/String;
    const/4 v3, 0x1

    .line 175
    goto :goto_0

    .line 177
    .local v2, "atCommandResponse":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v5, "handleCscsCommand - Set Command"

    invoke-static {v5}, Lcom/android/bluetooth/hfp/AtPhonebook;->log(Ljava/lang/String;)V

    .line 178
    const-string/jumbo v5, "="

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "args":[Ljava/lang/String;
    array-length v5, v0

    const/4 v6, 0x2

    if-lt v5, v6, :cond_2

    aget-object v5, v0, v7

    instance-of v5, v5, Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 184
    const-string/jumbo v5, "="

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v4, v5, v7

    .line 185
    .local v4, "characterSet":Ljava/lang/String;
    const-string/jumbo v5, "\""

    const-string/jumbo v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 186
    const-string/jumbo v5, "GSM"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v5, "IRA"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 187
    const-string/jumbo v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 186
    if-nez v5, :cond_1

    .line 187
    const-string/jumbo v5, "UTF8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 186
    if-eqz v5, :cond_3

    .line 188
    :cond_1
    iput-object v4, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCharacterSet:Ljava/lang/String;

    .line 189
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 180
    .end local v4    # "characterSet":Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .line 181
    invoke-direct {p0, p3}, Lcom/android/bluetooth/hfp/AtPhonebook;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v6

    .line 180
    invoke-virtual {v5, v3, v1, v6}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->atResponseCodeNative(II[B)Z

    goto/16 :goto_0

    .line 191
    .restart local v4    # "characterSet":Ljava/lang/String;
    :cond_3
    const/4 v1, 0x4

    goto/16 :goto_0

    .line 165
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method processCpbrCommand(Landroid/bluetooth/BluetoothDevice;)I
    .locals 22
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 480
    const-string/jumbo v1, "processCpbrCommand"

    invoke-static {v1}, Lcom/android/bluetooth/hfp/AtPhonebook;->log(Ljava/lang/String;)V

    .line 481
    const/4 v9, 0x0

    .line 482
    .local v9, "atCommandResult":I
    const/4 v7, -0x1

    .line 483
    .local v7, "atCommandErrorCode":I
    const/4 v8, 0x0

    .line 484
    .local v8, "atCommandResponse":Ljava/lang/String;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    .line 488
    .local v20, "response":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "SM"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCurrentPhonebook:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 489
    const/4 v9, 0x1

    .line 490
    return v9

    .line 494
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCurrentPhonebook:Ljava/lang/String;

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/hfp/AtPhonebook;->getPhonebookResult(Ljava/lang/String;Z)Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;

    move-result-object v17

    .line 495
    .local v17, "pbr":Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;
    if-nez v17, :cond_1

    .line 496
    const/4 v7, 0x3

    .line 497
    return v9

    .line 504
    :cond_1
    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCpbrIndex1:I

    if-gtz v1, :cond_3

    .line 506
    :cond_2
    const/4 v9, 0x1

    .line 507
    return v9

    .line 504
    :cond_3
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCpbrIndex2:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCpbrIndex1:I

    if-lt v1, v2, :cond_2

    .line 505
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCpbrIndex2:I

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-gt v1, v2, :cond_2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCpbrIndex1:I

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-gt v1, v2, :cond_2

    .line 511
    const/4 v9, 0x1

    .line 512
    const/4 v11, -0x1

    .line 513
    .local v11, "errorDetected":I
    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCpbrIndex1:I

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 514
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mCpbrIndex1 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCpbrIndex1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " and mCpbrIndex2 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCpbrIndex2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/bluetooth/hfp/AtPhonebook;->log(Ljava/lang/String;)V

    .line 515
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCpbrIndex1:I

    .end local v8    # "atCommandResponse":Ljava/lang/String;
    .local v12, "index":I
    :goto_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCpbrIndex2:I

    if-gt v12, v1, :cond_f

    .line 516
    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    move-object/from16 v0, v17

    iget v2, v0, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->numberColumn:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 517
    .local v15, "number":Ljava/lang/String;
    const/4 v13, 0x0

    .line 518
    .local v13, "name":Ljava/lang/String;
    const/16 v21, -0x1

    .line 519
    .local v21, "type":I
    move-object/from16 v0, v17

    iget v1, v0, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->nameColumn:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_11

    if-eqz v15, :cond_11

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_11

    .line 523
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfp/AtPhonebook;->mContentResolver:Landroid/content/ContentResolver;

    .line 524
    sget-object v2, Landroid/provider/ContactsContract$PhoneLookup;->ENTERPRISE_CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v2, v15}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 525
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    .line 526
    const-string/jumbo v4, "display_name"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string/jumbo v4, "type"

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 527
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 523
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 528
    .local v10, "c":Landroid/database/Cursor;
    if-eqz v10, :cond_5

    .line 529
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 530
    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 531
    .local v13, "name":Ljava/lang/String;
    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 533
    .end local v13    # "name":Ljava/lang/String;
    :cond_4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 535
    :cond_5
    if-nez v13, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Caller ID lookup failed for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/bluetooth/hfp/AtPhonebook;->log(Ljava/lang/String;)V

    .line 542
    .end local v10    # "c":Landroid/database/Cursor;
    :cond_6
    :goto_1
    if-nez v13, :cond_7

    const-string/jumbo v13, ""

    .line 543
    :cond_7
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 544
    .restart local v13    # "name":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x1c

    if-le v1, v2, :cond_8

    const/4 v1, 0x0

    const/16 v2, 0x1c

    invoke-virtual {v13, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 546
    :cond_8
    move-object/from16 v0, v17

    iget v1, v0, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->typeColumn:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_9

    .line 547
    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    move-object/from16 v0, v17

    iget v2, v0, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->typeColumn:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 548
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static/range {v21 .. v21}, Lcom/android/bluetooth/hfp/AtPhonebook;->getPhoneType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 551
    :cond_9
    if-nez v15, :cond_a

    const-string/jumbo v15, ""

    .line 552
    :cond_a
    invoke-static {v15}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v19

    .line 554
    .local v19, "regionType":I
    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    .line 555
    invoke-static {v15}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 556
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x1e

    if-le v1, v2, :cond_b

    const/4 v1, 0x0

    const/16 v2, 0x1e

    invoke-virtual {v15, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 557
    :cond_b
    const/16 v16, 0x1

    .line 558
    .local v16, "numberPresentation":I
    move-object/from16 v0, v17

    iget v1, v0, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->numberPresentationColumn:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_c

    .line 559
    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    move-object/from16 v0, v17

    iget v2, v0, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->numberPresentationColumn:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 561
    :cond_c
    const/4 v1, 0x1

    move/from16 v0, v16

    if-eq v0, v1, :cond_d

    .line 562
    const-string/jumbo v15, ""

    .line 565
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfp/AtPhonebook;->mContext:Landroid/content/Context;

    const v2, 0x7f060009

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 570
    :cond_d
    const-string/jumbo v1, ""

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCharacterSet:Ljava/lang/String;

    const-string/jumbo v2, "GSM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 571
    invoke-static {v13}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B

    move-result-object v14

    .line 572
    .local v14, "nameByte":[B
    if-nez v14, :cond_13

    .line 573
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfp/AtPhonebook;->mContext:Landroid/content/Context;

    const v2, 0x7f060009

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 579
    .end local v14    # "nameByte":[B
    :cond_e
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "+CPBR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, v19

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 580
    .local v18, "record":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\r\n\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 581
    move-object/from16 v8, v18

    .line 582
    .local v8, "atCommandResponse":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfp/AtPhonebook;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-direct/range {p0 .. p1}, Lcom/android/bluetooth/hfp/AtPhonebook;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v2

    invoke-virtual {v1, v8, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->atResponseStringNative(Ljava/lang/String;[B)Z

    .line 583
    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_14

    .line 587
    .end local v8    # "atCommandResponse":Ljava/lang/String;
    .end local v13    # "name":Ljava/lang/String;
    .end local v15    # "number":Ljava/lang/String;
    .end local v16    # "numberPresentation":I
    .end local v18    # "record":Ljava/lang/String;
    .end local v19    # "regionType":I
    .end local v21    # "type":I
    :cond_f
    if-eqz v17, :cond_10

    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    if-eqz v1, :cond_10

    .line 588
    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 589
    const/4 v1, 0x0

    move-object/from16 v0, v17

    iput-object v1, v0, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    .line 591
    :cond_10
    return v9

    .line 537
    .local v13, "name":Ljava/lang/String;
    .restart local v15    # "number":Ljava/lang/String;
    .restart local v21    # "type":I
    :cond_11
    move-object/from16 v0, v17

    iget v1, v0, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->nameColumn:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_12

    .line 538
    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    move-object/from16 v0, v17

    iget v2, v0, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->nameColumn:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .local v13, "name":Ljava/lang/String;
    goto/16 :goto_1

    .line 540
    .local v13, "name":Ljava/lang/String;
    :cond_12
    const-string/jumbo v1, "processCpbrCommand: empty name and number"

    invoke-static {v1}, Lcom/android/bluetooth/hfp/AtPhonebook;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 575
    .local v13, "name":Ljava/lang/String;
    .restart local v14    # "nameByte":[B
    .restart local v16    # "numberPresentation":I
    .restart local v19    # "regionType":I
    :cond_13
    new-instance v13, Ljava/lang/String;

    .end local v13    # "name":Ljava/lang/String;
    invoke-direct {v13, v14}, Ljava/lang/String;-><init>([B)V

    .restart local v13    # "name":Ljava/lang/String;
    goto/16 :goto_2

    .line 515
    .end local v14    # "nameByte":[B
    .restart local v8    # "atCommandResponse":Ljava/lang/String;
    .restart local v18    # "record":Ljava/lang/String;
    :cond_14
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0
.end method

.method declared-synchronized resetAtState()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 450
    :try_start_0
    const-string/jumbo v0, "UTF-8"

    iput-object v0, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCharacterSet:Ljava/lang/String;

    .line 451
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCpbrIndex2:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCpbrIndex1:I

    .line 452
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCheckingAccessPermission:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 449
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setCheckingAccessPermission(Z)V
    .locals 0
    .param p1, "checkingAccessPermission"    # Z

    .prologue
    .line 147
    iput-boolean p1, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCheckingAccessPermission:Z

    .line 146
    return-void
.end method

.method public setCpbrIndex(I)V
    .locals 0
    .param p1, "cpbrIndex"    # I

    .prologue
    .line 151
    iput p1, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCpbrIndex2:I

    iput p1, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCpbrIndex1:I

    .line 150
    return-void
.end method
