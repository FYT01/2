.class Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
.super Ljava/lang/Object;
.source "BluetoothMapContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMapContent;
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
.field public mContactColBtUid:I

.field public mContactColChatState:I

.field public mContactColContactUci:I

.field public mContactColLastActive:I

.field public mContactColName:I

.field public mContactColNickname:I

.field public mContactColPresenceState:I

.field public mContactColPresenceText:I

.field public mContactColPriority:I

.field public mConvoColConvoId:I

.field public mConvoColLastActivity:I

.field public mConvoColName:I

.field public mConvoColRead:I

.field public mConvoColSummary:I

.field public mConvoColVersionCounter:I

.field public mMessageColAccountId:I

.field public mMessageColAttachment:I

.field public mMessageColAttachmentMime:I

.field public mMessageColAttachmentSize:I

.field public mMessageColBccAddress:I

.field public mMessageColBody:I

.field public mMessageColCcAddress:I

.field public mMessageColDate:I

.field public mMessageColDelivery:I

.field public mMessageColFolder:I

.field public mMessageColFromAddress:I

.field public mMessageColId:I

.field public mMessageColPriority:I

.field public mMessageColProtected:I

.field public mMessageColRead:I

.field public mMessageColReception:I

.field public mMessageColReplyTo:I

.field public mMessageColSize:I

.field public mMessageColSubject:I

.field public mMessageColThreadId:I

.field public mMessageColThreadName:I

.field public mMessageColToAddress:I

.field public mMmsColAttachmentSize:I

.field public mMmsColDate:I

.field public mMmsColFolder:I

.field public mMmsColId:I

.field public mMmsColRead:I

.field public mMmsColSize:I

.field public mMmsColSubject:I

.field public mMmsColTextOnly:I

.field public mMmsColThreadId:I

.field mMsgType:I

.field mPhoneAlphaTag:Ljava/lang/String;

.field mPhoneNum:Ljava/lang/String;

.field mPhoneType:I

.field public mSmsColAddress:I

.field public mSmsColDate:I

.field public mSmsColFolder:I

.field public mSmsColId:I

.field public mSmsColRead:I

.field public mSmsColSubject:I

.field public mSmsColThreadId:I

.field public mSmsColType:I

.field final synthetic this$0:Lcom/android/bluetooth/map/BluetoothMapContent;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/map/BluetoothMapContent;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/bluetooth/map/BluetoothMapContent;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 253
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->this$0:Lcom/android/bluetooth/map/BluetoothMapContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    iput v1, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    .line 261
    iput v1, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mPhoneType:I

    .line 262
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mPhoneNum:Ljava/lang/String;

    .line 263
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mPhoneAlphaTag:Ljava/lang/String;

    .line 265
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColId:I

    .line 266
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColDate:I

    .line 267
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColBody:I

    .line 268
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColSubject:I

    .line 269
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColFolder:I

    .line 270
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColRead:I

    .line 271
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColSize:I

    .line 272
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColFromAddress:I

    .line 273
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColToAddress:I

    .line 274
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColCcAddress:I

    .line 275
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColBccAddress:I

    .line 276
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColReplyTo:I

    .line 277
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColAccountId:I

    .line 278
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColAttachment:I

    .line 279
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColAttachmentSize:I

    .line 280
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColAttachmentMime:I

    .line 281
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColPriority:I

    .line 282
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColProtected:I

    .line 283
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColReception:I

    .line 284
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColDelivery:I

    .line 285
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColThreadId:I

    .line 286
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColThreadName:I

    .line 288
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mSmsColFolder:I

    .line 289
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mSmsColRead:I

    .line 290
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mSmsColId:I

    .line 291
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mSmsColSubject:I

    .line 292
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mSmsColAddress:I

    .line 293
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mSmsColDate:I

    .line 294
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mSmsColType:I

    .line 295
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mSmsColThreadId:I

    .line 297
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColRead:I

    .line 298
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColFolder:I

    .line 299
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColAttachmentSize:I

    .line 300
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColTextOnly:I

    .line 301
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColId:I

    .line 302
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColSize:I

    .line 303
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColDate:I

    .line 304
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColSubject:I

    .line 305
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColThreadId:I

    .line 307
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mConvoColConvoId:I

    .line 308
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mConvoColLastActivity:I

    .line 309
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mConvoColName:I

    .line 310
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mConvoColRead:I

    .line 311
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mConvoColVersionCounter:I

    .line 312
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mConvoColSummary:I

    .line 313
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mContactColBtUid:I

    .line 314
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mContactColChatState:I

    .line 315
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mContactColContactUci:I

    .line 316
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mContactColNickname:I

    .line 317
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mContactColLastActive:I

    .line 318
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mContactColName:I

    .line 319
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mContactColPresenceState:I

    .line 320
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mContactColPresenceText:I

    .line 321
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mContactColPriority:I

    .line 253
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/map/BluetoothMapContent;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/bluetooth/map/BluetoothMapContent;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;-><init>(Lcom/android/bluetooth/map/BluetoothMapContent;)V

    return-void
.end method


# virtual methods
.method public setEmailImConvoColumns(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 380
    const-string/jumbo v0, "thread_id"

    .line 379
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mConvoColConvoId:I

    .line 382
    const-string/jumbo v0, "last_thread_activity"

    .line 381
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mConvoColLastActivity:I

    .line 384
    const-string/jumbo v0, "thread_name"

    .line 383
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mConvoColName:I

    .line 386
    const-string/jumbo v0, "read_status"

    .line 385
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mConvoColRead:I

    .line 388
    const-string/jumbo v0, "version_counter"

    .line 387
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mConvoColVersionCounter:I

    .line 390
    const-string/jumbo v0, "convo_summary"

    .line 389
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mConvoColSummary:I

    .line 391
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->setEmailImConvoContactColumns(Landroid/database/Cursor;)V

    .line 378
    return-void
.end method

.method public setEmailImConvoContactColumns(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 396
    const-string/jumbo v0, "x_bt_uid"

    .line 395
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mContactColBtUid:I

    .line 398
    const-string/jumbo v0, "chat_state"

    .line 397
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mContactColChatState:I

    .line 400
    const-string/jumbo v0, "x_bt_uci"

    .line 399
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mContactColContactUci:I

    .line 402
    const-string/jumbo v0, "nickname"

    .line 401
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mContactColNickname:I

    .line 404
    const-string/jumbo v0, "last_active"

    .line 403
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mContactColLastActive:I

    .line 406
    const-string/jumbo v0, "name"

    .line 405
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mContactColName:I

    .line 408
    const-string/jumbo v0, "presence_state"

    .line 407
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mContactColPresenceState:I

    .line 410
    const-string/jumbo v0, "status_text"

    .line 409
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mContactColPresenceText:I

    .line 412
    const-string/jumbo v0, "priority"

    .line 411
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mContactColPriority:I

    .line 394
    return-void
.end method

.method public setEmailMessageColumns(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 358
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->setMessageColumns(Landroid/database/Cursor;)V

    .line 360
    const-string/jumbo v0, "cc_list"

    .line 359
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColCcAddress:I

    .line 362
    const-string/jumbo v0, "bcc_list"

    .line 361
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColBccAddress:I

    .line 364
    const-string/jumbo v0, "reply_to_List"

    .line 363
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColReplyTo:I

    .line 357
    return-void
.end method

.method public setImMessageColumns(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 368
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->setMessageColumns(Landroid/database/Cursor;)V

    .line 370
    const-string/jumbo v0, "thread_name"

    .line 369
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColThreadName:I

    .line 372
    const-string/jumbo v0, "attachment_mime_types"

    .line 371
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColAttachmentMime:I

    .line 374
    const-string/jumbo v0, "body"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColBody:I

    .line 367
    return-void
.end method

.method public setMessageColumns(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 326
    const-string/jumbo v0, "_id"

    .line 325
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColId:I

    .line 328
    const-string/jumbo v0, "date"

    .line 327
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColDate:I

    .line 330
    const-string/jumbo v0, "subject"

    .line 329
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColSubject:I

    .line 332
    const-string/jumbo v0, "folder_id"

    .line 331
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColFolder:I

    .line 334
    const-string/jumbo v0, "flag_read"

    .line 333
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColRead:I

    .line 336
    const-string/jumbo v0, "message_size"

    .line 335
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColSize:I

    .line 338
    const-string/jumbo v0, "from_list"

    .line 337
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColFromAddress:I

    .line 340
    const-string/jumbo v0, "to_list"

    .line 339
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColToAddress:I

    .line 342
    const-string/jumbo v0, "flag_attachment"

    .line 341
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColAttachment:I

    .line 344
    const-string/jumbo v0, "attachment_size"

    .line 343
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColAttachmentSize:I

    .line 346
    const-string/jumbo v0, "high_priority"

    .line 345
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColPriority:I

    .line 348
    const-string/jumbo v0, "flag_protected"

    .line 347
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColProtected:I

    .line 350
    const-string/jumbo v0, "reception_state"

    .line 349
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColReception:I

    .line 352
    const-string/jumbo v0, "delivery_state"

    .line 351
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColDelivery:I

    .line 354
    const-string/jumbo v0, "thread_id"

    .line 353
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColThreadId:I

    .line 324
    return-void
.end method

.method public setMmsColumns(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 427
    const-string/jumbo v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColId:I

    .line 428
    const-string/jumbo v0, "msg_box"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColFolder:I

    .line 429
    const-string/jumbo v0, "read"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColRead:I

    .line 430
    const-string/jumbo v0, "m_size"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColAttachmentSize:I

    .line 431
    const-string/jumbo v0, "text_only"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColTextOnly:I

    .line 432
    const-string/jumbo v0, "m_size"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColSize:I

    .line 433
    const-string/jumbo v0, "date"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColDate:I

    .line 434
    const-string/jumbo v0, "sub"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColSubject:I

    .line 435
    const-string/jumbo v0, "thread_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColThreadId:I

    .line 426
    return-void
.end method

.method public setSmsColumns(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 416
    const-string/jumbo v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mSmsColId:I

    .line 417
    const-string/jumbo v0, "type"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mSmsColFolder:I

    .line 418
    const-string/jumbo v0, "read"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mSmsColRead:I

    .line 419
    const-string/jumbo v0, "body"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mSmsColSubject:I

    .line 420
    const-string/jumbo v0, "address"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mSmsColAddress:I

    .line 421
    const-string/jumbo v0, "date"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mSmsColDate:I

    .line 422
    const-string/jumbo v0, "type"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mSmsColType:I

    .line 423
    const-string/jumbo v0, "thread_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mSmsColThreadId:I

    .line 415
    return-void
.end method
