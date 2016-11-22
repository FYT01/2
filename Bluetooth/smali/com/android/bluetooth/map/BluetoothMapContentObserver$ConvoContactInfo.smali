.class Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;
.super Ljava/lang/Object;
.source "BluetoothMapContentObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMapContentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConvoContactInfo"
.end annotation


# instance fields
.field public mContactColBtUid:I

.field public mContactColChatState:I

.field public mContactColContactId:I

.field public mContactColConvoId:I

.field public mContactColLastActive:I

.field public mContactColLastOnline:I

.field public mContactColName:I

.field public mContactColNickname:I

.field public mContactColPresenceState:I

.field public mContactColPresenceText:I

.field public mContactColPriority:I

.field public mContactColUci:I

.field public mConvoColConvoId:I

.field public mConvoColLastActivity:I

.field public mConvoColName:I

.field final synthetic this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    .prologue
    const/4 v0, -0x1

    .line 541
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 542
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mConvoColConvoId:I

    .line 543
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mConvoColLastActivity:I

    .line 544
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mConvoColName:I

    .line 547
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColUci:I

    .line 548
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColConvoId:I

    .line 549
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColName:I

    .line 550
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColNickname:I

    .line 551
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColBtUid:I

    .line 552
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColChatState:I

    .line 553
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColContactId:I

    .line 554
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColLastActive:I

    .line 555
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColPresenceState:I

    .line 556
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColPresenceText:I

    .line 557
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColPriority:I

    .line 558
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColLastOnline:I

    .line 541
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)V

    return-void
.end method


# virtual methods
.method public setConvoColunms(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 568
    const-string/jumbo v0, "convo_id"

    .line 567
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColConvoId:I

    .line 570
    const-string/jumbo v0, "name"

    .line 569
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColName:I

    .line 572
    const-string/jumbo v0, "nickname"

    .line 571
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColNickname:I

    .line 574
    const-string/jumbo v0, "x_bt_uid"

    .line 573
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColBtUid:I

    .line 576
    const-string/jumbo v0, "chat_state"

    .line 575
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColChatState:I

    .line 578
    const-string/jumbo v0, "x_bt_uci"

    .line 577
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColUci:I

    .line 580
    const-string/jumbo v0, "nickname"

    .line 579
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColNickname:I

    .line 582
    const-string/jumbo v0, "last_active"

    .line 581
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColLastActive:I

    .line 584
    const-string/jumbo v0, "name"

    .line 583
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColName:I

    .line 586
    const-string/jumbo v0, "presence_state"

    .line 585
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColPresenceState:I

    .line 588
    const-string/jumbo v0, "status_text"

    .line 587
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColPresenceText:I

    .line 590
    const-string/jumbo v0, "priority"

    .line 589
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColPriority:I

    .line 592
    const-string/jumbo v0, "last_online"

    .line 591
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColLastOnline:I

    .line 560
    return-void
.end method
