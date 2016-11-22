.class Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;
.super Ljava/lang/Object;
.source "BluetoothMapContentEmail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMapContentEmail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilterInfo"
.end annotation


# static fields
.field public static final TYPE_EMAIL:I = 0x2

.field public static final TYPE_IM:I = 0x3

.field public static final TYPE_MMS:I = 0x1

.field public static final TYPE_SMS:I


# instance fields
.field public mMessageColAccountId:I

.field public mMessageColAttachment:I

.field public mMessageColAttachmentMime:I

.field public mMessageColAttachmentSize:I

.field public mMessageColBccAddress:I

.field public mMessageColBody:I

.field public mMessageColCcAddress:I

.field public mMessageColDate:I

.field public mMessageColFolder:I

.field public mMessageColFromAddress:I

.field public mMessageColId:I

.field public mMessageColPriority:I

.field public mMessageColProtected:I

.field public mMessageColRead:I

.field public mMessageColReplyTo:I

.field public mMessageColSize:I

.field public mMessageColSubject:I

.field public mMessageColToAddress:I

.field mMsgType:I

.field final synthetic this$0:Lcom/android/bluetooth/map/BluetoothMapContentEmail;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/map/BluetoothMapContentEmail;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/bluetooth/map/BluetoothMapContentEmail;

    .prologue
    const/4 v1, -0x1

    .line 128
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentEmail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;->mMsgType:I

    .line 137
    iput v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;->mMessageColId:I

    .line 138
    iput v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;->mMessageColDate:I

    .line 139
    iput v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;->mMessageColBody:I

    .line 140
    iput v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;->mMessageColSubject:I

    .line 141
    iput v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;->mMessageColFolder:I

    .line 142
    iput v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;->mMessageColRead:I

    .line 143
    iput v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;->mMessageColSize:I

    .line 144
    iput v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;->mMessageColFromAddress:I

    .line 145
    iput v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;->mMessageColToAddress:I

    .line 146
    iput v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;->mMessageColCcAddress:I

    .line 147
    iput v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;->mMessageColBccAddress:I

    .line 148
    iput v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;->mMessageColReplyTo:I

    .line 149
    iput v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;->mMessageColAccountId:I

    .line 150
    iput v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;->mMessageColAttachment:I

    .line 151
    iput v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;->mMessageColAttachmentSize:I

    .line 152
    iput v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;->mMessageColAttachmentMime:I

    .line 153
    iput v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;->mMessageColPriority:I

    .line 154
    iput v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;->mMessageColProtected:I

    .line 128
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/map/BluetoothMapContentEmail;Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/bluetooth/map/BluetoothMapContentEmail;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentEmail;)V

    return-void
.end method


# virtual methods
.method public setEmailAttachmentColumns(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 158
    const-string/jumbo v0, "size"

    .line 157
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;->mMessageColAttachmentSize:I

    .line 156
    return-void
.end method

.method public setEmailMessageColumns(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 163
    const-string/jumbo v0, "_id"

    .line 162
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;->mMessageColId:I

    .line 165
    const-string/jumbo v0, "timeStamp"

    .line 164
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;->mMessageColDate:I

    .line 167
    const-string/jumbo v0, "subject"

    .line 166
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;->mMessageColSubject:I

    .line 169
    const-string/jumbo v0, "mailboxKey"

    .line 168
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;->mMessageColFolder:I

    .line 171
    const-string/jumbo v0, "flagRead"

    .line 170
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;->mMessageColRead:I

    .line 173
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;->mMessageColSize:I

    .line 175
    const-string/jumbo v0, "fromList"

    .line 174
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;->mMessageColFromAddress:I

    .line 177
    const-string/jumbo v0, "toList"

    .line 176
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;->mMessageColToAddress:I

    .line 179
    const-string/jumbo v0, "flagAttachment"

    .line 178
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;->mMessageColAttachment:I

    .line 181
    const-string/jumbo v0, "ccList"

    .line 180
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;->mMessageColCcAddress:I

    .line 183
    const-string/jumbo v0, "bccList"

    .line 182
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;->mMessageColBccAddress:I

    .line 185
    const-string/jumbo v0, "replyToList"

    .line 184
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;->mMessageColReplyTo:I

    .line 161
    return-void
.end method
