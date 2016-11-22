.class Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;
.super Lcom/android/internal/util/State;
.source "AdapterState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/btservice/AdapterState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PendingCommandState"
.end annotation


# instance fields
.field private mIsBleTurningOff:Z

.field private mIsBleTurningOn:Z

.field private mIsTurningOff:Z

.field private mIsTurningOn:Z

.field final synthetic this$0:Lcom/android/bluetooth/btservice/AdapterState;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/btservice/AdapterState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/bluetooth/btservice/AdapterState;

    .prologue
    .line 271
    iput-object p1, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/btservice/AdapterState;Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/bluetooth/btservice/AdapterState;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;-><init>(Lcom/android/bluetooth/btservice/AdapterState;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const-string/jumbo v1, "Entering PendingCommandState"

    invoke-static {v0, v1}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap3(Lcom/android/bluetooth/btservice/AdapterState;Ljava/lang/String;)V

    .line 277
    return-void
.end method

.method public isBleTurningOff()Z
    .locals 1

    .prologue
    .line 310
    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->mIsBleTurningOff:Z

    return v0
.end method

.method public isBleTurningOn()Z
    .locals 1

    .prologue
    .line 302
    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->mIsBleTurningOn:Z

    return v0
.end method

.method public isTurningOff()Z
    .locals 1

    .prologue
    .line 294
    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->mIsTurningOff:Z

    return v0
.end method

.method public isTurningOn()Z
    .locals 1

    .prologue
    .line 286
    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->mIsTurningOn:Z

    return v0
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 316
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->isTurningOn()Z

    move-result v6

    .line 317
    .local v6, "isTurningOn":Z
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->isTurningOff()Z

    move-result v5

    .line 318
    .local v5, "isTurningOff":Z
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->isBleTurningOn()Z

    move-result v3

    .line 319
    .local v3, "isBleTurningOn":Z
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->isBleTurningOff()Z

    move-result v2

    .line 321
    .local v2, "isBleTurningOff":Z
    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-static {v7}, Lcom/android/bluetooth/btservice/AdapterState;->-get1(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v1

    .line 322
    .local v1, "adapterService":Lcom/android/bluetooth/btservice/AdapterService;
    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-static {v7}, Lcom/android/bluetooth/btservice/AdapterState;->-get0(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterProperties;

    move-result-object v0

    .line 323
    .local v0, "adapterProperties":Lcom/android/bluetooth/btservice/AdapterProperties;
    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 324
    :cond_0
    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Received message in PendingCommandState after cleanup: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->what:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap2(Lcom/android/bluetooth/btservice/AdapterState;Ljava/lang/String;)V

    .line 325
    const/4 v7, 0x0

    return v7

    .line 328
    :cond_1
    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Current state: PENDING_COMMAND, message: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->what:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap0(Lcom/android/bluetooth/btservice/AdapterState;Ljava/lang/String;)V

    .line 330
    iget v7, p1, Landroid/os/Message;->what:I

    sparse-switch v7, :sswitch_data_0

    .line 483
    const/4 v7, 0x0

    return v7

    .line 332
    :sswitch_0
    if-nez v2, :cond_2

    if-eqz v5, :cond_3

    .line 333
    :cond_2
    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const-string/jumbo v8, "Deferring USER_TURN_ON request..."

    invoke-static {v7, v8}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap3(Lcom/android/bluetooth/btservice/AdapterState;Ljava/lang/String;)V

    .line 334
    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-static {v7, p1}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap1(Lcom/android/bluetooth/btservice/AdapterState;Landroid/os/Message;)V

    .line 485
    :cond_3
    :goto_0
    const/4 v7, 0x1

    return v7

    .line 339
    :sswitch_1
    if-nez v6, :cond_4

    if-eqz v3, :cond_3

    .line 340
    :cond_4
    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const-string/jumbo v8, "Deferring USER_TURN_OFF request..."

    invoke-static {v7, v8}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap3(Lcom/android/bluetooth/btservice/AdapterState;Ljava/lang/String;)V

    .line 341
    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-static {v7, p1}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap1(Lcom/android/bluetooth/btservice/AdapterState;Landroid/os/Message;)V

    goto :goto_0

    .line 346
    :sswitch_2
    if-nez v5, :cond_5

    if-eqz v2, :cond_3

    .line 347
    :cond_5
    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const-string/jumbo v8, "Deferring BLE_TURN_ON request..."

    invoke-static {v7, v8}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap3(Lcom/android/bluetooth/btservice/AdapterState;Ljava/lang/String;)V

    .line 348
    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-static {v7, p1}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap1(Lcom/android/bluetooth/btservice/AdapterState;Landroid/os/Message;)V

    goto :goto_0

    .line 353
    :sswitch_3
    if-nez v6, :cond_6

    if-eqz v3, :cond_3

    .line 354
    :cond_6
    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const-string/jumbo v8, "Deferring BLE_TURN_OFF request..."

    invoke-static {v7, v8}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap3(Lcom/android/bluetooth/btservice/AdapterState;Ljava/lang/String;)V

    .line 355
    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-static {v7, p1}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap1(Lcom/android/bluetooth/btservice/AdapterState;Landroid/os/Message;)V

    goto :goto_0

    .line 361
    :sswitch_4
    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const/16 v8, 0x6a

    invoke-static {v7, v8}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap5(Lcom/android/bluetooth/btservice/AdapterState;I)V

    .line 364
    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-static {v7}, Lcom/android/bluetooth/btservice/AdapterState;->-get1(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v7

    invoke-static {v7}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/UserManager;->isGuestUser()Z

    move-result v4

    .line 365
    .local v4, "isGuest":Z
    invoke-virtual {v1, v4}, Lcom/android/bluetooth/btservice/AdapterService;->enableNative(Z)Z

    move-result v7

    if-nez v7, :cond_7

    .line 366
    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const-string/jumbo v8, "Error while turning Bluetooth on"

    invoke-static {v7, v8}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap2(Lcom/android/bluetooth/btservice/AdapterState;Ljava/lang/String;)V

    .line 367
    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const/16 v8, 0xa

    invoke-static {v7, v8}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap4(Lcom/android/bluetooth/btservice/AdapterState;I)V

    .line 368
    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    iget-object v8, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-static {v8}, Lcom/android/bluetooth/btservice/AdapterState;->-get3(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$OffState;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap6(Lcom/android/bluetooth/btservice/AdapterState;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 370
    :cond_7
    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const-wide/16 v8, 0x2ee0

    const/16 v10, 0x65

    invoke-virtual {v7, v10, v8, v9}, Lcom/android/bluetooth/btservice/AdapterState;->sendMessageDelayed(IJ)V

    goto :goto_0

    .line 376
    .end local v4    # "isGuest":Z
    :sswitch_5
    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const/16 v8, 0x64

    invoke-static {v7, v8}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap5(Lcom/android/bluetooth/btservice/AdapterState;I)V

    .line 377
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->onBluetoothReady()V

    .line 378
    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-static {v7}, Lcom/android/bluetooth/btservice/AdapterState;->-get5(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->setTurningOn(Z)V

    .line 379
    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    iget-object v8, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-static {v8}, Lcom/android/bluetooth/btservice/AdapterState;->-get4(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$OnState;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap6(Lcom/android/bluetooth/btservice/AdapterState;Lcom/android/internal/util/IState;)V

    .line 380
    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const/16 v8, 0xc

    invoke-static {v7, v8}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap4(Lcom/android/bluetooth/btservice/AdapterState;I)V

    goto/16 :goto_0

    .line 384
    :sswitch_6
    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const/16 v8, 0x65

    invoke-static {v7, v8}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap5(Lcom/android/bluetooth/btservice/AdapterState;I)V

    .line 385
    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-static {v7}, Lcom/android/bluetooth/btservice/AdapterState;->-get5(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->setBleTurningOn(Z)V

    .line 386
    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    iget-object v8, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-static {v8}, Lcom/android/bluetooth/btservice/AdapterState;->-get2(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$BleOnState;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap6(Lcom/android/bluetooth/btservice/AdapterState;Lcom/android/internal/util/IState;)V

    .line 387
    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const/16 v8, 0xf

    invoke-static {v7, v8}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap4(Lcom/android/bluetooth/btservice/AdapterState;I)V

    goto/16 :goto_0

    .line 391
    :sswitch_7
    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const-string/jumbo v8, "Timeout while setting scan mode. Continuing with disable..."

    invoke-static {v7, v8}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap7(Lcom/android/bluetooth/btservice/AdapterState;Ljava/lang/String;)V

    .line 394
    :sswitch_8
    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const/16 v8, 0x69

    invoke-static {v7, v8}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap5(Lcom/android/bluetooth/btservice/AdapterState;I)V

    .line 395
    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const-wide/16 v8, 0xfa0

    const/16 v10, 0x6b

    invoke-virtual {v7, v10, v8, v9}, Lcom/android/bluetooth/btservice/AdapterState;->sendMessageDelayed(IJ)V

    .line 396
    invoke-virtual {v1}, Lcom/android/bluetooth/btservice/AdapterService;->stopProfileServices()Z

    goto/16 :goto_0

    .line 400
    :sswitch_9
    if-eqz v6, :cond_8

    .line 401
    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const/16 v8, 0x65

    invoke-static {v7, v8}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap5(Lcom/android/bluetooth/btservice/AdapterState;I)V

    .line 402
    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const-string/jumbo v8, "Error enabling Bluetooth - hardware init failed?"

    invoke-static {v7, v8}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap2(Lcom/android/bluetooth/btservice/AdapterState;Ljava/lang/String;)V

    .line 403
    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-static {v7}, Lcom/android/bluetooth/btservice/AdapterState;->-get5(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->setTurningOn(Z)V

    .line 404
    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    iget-object v8, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-static {v8}, Lcom/android/bluetooth/btservice/AdapterState;->-get3(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$OffState;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap6(Lcom/android/bluetooth/btservice/AdapterState;Lcom/android/internal/util/IState;)V

    .line 405
    invoke-virtual {v1}, Lcom/android/bluetooth/btservice/AdapterService;->stopProfileServices()Z

    .line 406
    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const/16 v8, 0xa

    invoke-static {v7, v8}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap4(Lcom/android/bluetooth/btservice/AdapterState;I)V

    goto/16 :goto_0

    .line 409
    :cond_8
    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const/16 v8, 0x67

    invoke-static {v7, v8}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap5(Lcom/android/bluetooth/btservice/AdapterState;I)V

    .line 410
    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const-wide/16 v8, 0x7d0

    const/16 v10, 0x68

    invoke-virtual {v7, v10, v8, v9}, Lcom/android/bluetooth/btservice/AdapterState;->sendMessageDelayed(IJ)V

    .line 411
    invoke-virtual {v1}, Lcom/android/bluetooth/btservice/AdapterService;->stopGattProfileService()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 412
    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const-string/jumbo v8, "Stopping Gatt profile services that were post enabled"

    invoke-static {v7, v8}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap0(Lcom/android/bluetooth/btservice/AdapterState;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 417
    :cond_9
    :sswitch_a
    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const/16 v8, 0x68

    invoke-static {v7, v8}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap5(Lcom/android/bluetooth/btservice/AdapterState;I)V

    .line 418
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->setBleTurningOff(Z)V

    .line 419
    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    iget-object v8, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-static {v8}, Lcom/android/bluetooth/btservice/AdapterState;->-get3(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$OffState;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap6(Lcom/android/bluetooth/btservice/AdapterState;Lcom/android/internal/util/IState;)V

    .line 420
    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const/16 v8, 0xa

    invoke-static {v7, v8}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap4(Lcom/android/bluetooth/btservice/AdapterState;I)V

    goto/16 :goto_0

    .line 424
    :sswitch_b
    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const/16 v8, 0x6b

    invoke-static {v7, v8}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap5(Lcom/android/bluetooth/btservice/AdapterState;I)V

    .line 425
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->setTurningOff(Z)V

    .line 426
    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    iget-object v8, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-static {v8}, Lcom/android/bluetooth/btservice/AdapterState;->-get2(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$BleOnState;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap6(Lcom/android/bluetooth/btservice/AdapterState;Lcom/android/internal/util/IState;)V

    .line 427
    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const/16 v8, 0xf

    invoke-static {v7, v8}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap4(Lcom/android/bluetooth/btservice/AdapterState;I)V

    goto/16 :goto_0

    .line 431
    :sswitch_c
    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const-string/jumbo v8, "Error enabling Bluetooth (BLE start timeout)"

    invoke-static {v7, v8}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap2(Lcom/android/bluetooth/btservice/AdapterState;Ljava/lang/String;)V

    .line 432
    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-static {v7}, Lcom/android/bluetooth/btservice/AdapterState;->-get5(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->setBleTurningOn(Z)V

    .line 433
    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    iget-object v8, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-static {v8}, Lcom/android/bluetooth/btservice/AdapterState;->-get3(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$OffState;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap6(Lcom/android/bluetooth/btservice/AdapterState;Lcom/android/internal/util/IState;)V

    .line 434
    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const/16 v8, 0xa

    invoke-static {v7, v8}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap4(Lcom/android/bluetooth/btservice/AdapterState;I)V

    goto/16 :goto_0

    .line 438
    :sswitch_d
    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const-string/jumbo v8, "Error enabling Bluetooth (start timeout)"

    invoke-static {v7, v8}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap2(Lcom/android/bluetooth/btservice/AdapterState;Ljava/lang/String;)V

    .line 439
    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-static {v7}, Lcom/android/bluetooth/btservice/AdapterState;->-get5(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->setTurningOn(Z)V

    .line 440
    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    iget-object v8, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-static {v8}, Lcom/android/bluetooth/btservice/AdapterState;->-get2(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$BleOnState;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap6(Lcom/android/bluetooth/btservice/AdapterState;Lcom/android/internal/util/IState;)V

    .line 441
    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const/16 v8, 0xf

    invoke-static {v7, v8}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap4(Lcom/android/bluetooth/btservice/AdapterState;I)V

    goto/16 :goto_0

    .line 445
    :sswitch_e
    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const-string/jumbo v8, "Error enabling Bluetooth (enable timeout)"

    invoke-static {v7, v8}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap2(Lcom/android/bluetooth/btservice/AdapterState;Ljava/lang/String;)V

    .line 446
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lcom/android/bluetooth/btservice/AdapterService;->ssrcleanupNative(Z)V

    .line 447
    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-static {v7}, Lcom/android/bluetooth/btservice/AdapterState;->-get5(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->setBleTurningOn(Z)V

    .line 448
    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    iget-object v8, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-static {v8}, Lcom/android/bluetooth/btservice/AdapterState;->-get3(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$OffState;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap6(Lcom/android/bluetooth/btservice/AdapterState;Lcom/android/internal/util/IState;)V

    .line 449
    invoke-virtual {v1}, Lcom/android/bluetooth/btservice/AdapterService;->stopProfileServices()Z

    .line 450
    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const/16 v8, 0xa

    invoke-static {v7, v8}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap4(Lcom/android/bluetooth/btservice/AdapterState;I)V

    goto/16 :goto_0

    .line 454
    :sswitch_f
    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const-string/jumbo v8, "Error stopping Bluetooth profiles (stop timeout)"

    invoke-static {v7, v8}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap2(Lcom/android/bluetooth/btservice/AdapterState;Ljava/lang/String;)V

    .line 455
    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-static {v7}, Lcom/android/bluetooth/btservice/AdapterState;->-get5(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->setTurningOff(Z)V

    .line 456
    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    iget-object v8, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-static {v8}, Lcom/android/bluetooth/btservice/AdapterState;->-get2(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$BleOnState;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap6(Lcom/android/bluetooth/btservice/AdapterState;Lcom/android/internal/util/IState;)V

    .line 457
    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const/16 v8, 0xf

    invoke-static {v7, v8}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap4(Lcom/android/bluetooth/btservice/AdapterState;I)V

    .line 458
    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const-string/jumbo v8, "BREDR_STOP_TIMEOUT:Killing the process to force a restart as part cleanup"

    invoke-static {v7, v8}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap2(Lcom/android/bluetooth/btservice/AdapterState;Ljava/lang/String;)V

    .line 459
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    invoke-static {v7}, Landroid/os/Process;->killProcess(I)V

    goto/16 :goto_0

    .line 463
    :sswitch_10
    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const-string/jumbo v8, "Error stopping Bluetooth profiles (BLE stop timeout)"

    invoke-static {v7, v8}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap2(Lcom/android/bluetooth/btservice/AdapterState;Ljava/lang/String;)V

    .line 464
    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-static {v7}, Lcom/android/bluetooth/btservice/AdapterState;->-get5(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->setTurningOff(Z)V

    .line 465
    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    iget-object v8, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-static {v8}, Lcom/android/bluetooth/btservice/AdapterState;->-get3(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$OffState;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap6(Lcom/android/bluetooth/btservice/AdapterState;Lcom/android/internal/util/IState;)V

    .line 466
    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const/16 v8, 0xa

    invoke-static {v7, v8}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap4(Lcom/android/bluetooth/btservice/AdapterState;I)V

    goto/16 :goto_0

    .line 470
    :sswitch_11
    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const-string/jumbo v8, "Error disabling Bluetooth (disable timeout)"

    invoke-static {v7, v8}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap2(Lcom/android/bluetooth/btservice/AdapterState;Ljava/lang/String;)V

    .line 471
    if-eqz v6, :cond_a

    .line 472
    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-static {v7}, Lcom/android/bluetooth/btservice/AdapterState;->-get5(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->setTurningOn(Z)V

    .line 473
    :cond_a
    invoke-virtual {v1}, Lcom/android/bluetooth/btservice/AdapterService;->stopProfileServices()Z

    .line 474
    invoke-virtual {v1}, Lcom/android/bluetooth/btservice/AdapterService;->stopGattProfileService()Z

    .line 475
    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-static {v7}, Lcom/android/bluetooth/btservice/AdapterState;->-get5(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->setTurningOff(Z)V

    .line 476
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Lcom/android/bluetooth/btservice/AdapterService;->ssrcleanupNative(Z)V

    .line 477
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->setBleTurningOff(Z)V

    .line 478
    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    iget-object v8, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-static {v8}, Lcom/android/bluetooth/btservice/AdapterState;->-get3(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$OffState;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap6(Lcom/android/bluetooth/btservice/AdapterState;Lcom/android/internal/util/IState;)V

    .line 479
    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const/16 v8, 0xa

    invoke-static {v7, v8}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap4(Lcom/android/bluetooth/btservice/AdapterState;I)V

    goto/16 :goto_0

    .line 330
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_0
        0x2 -> :sswitch_5
        0x3 -> :sswitch_6
        0x4 -> :sswitch_4
        0x14 -> :sswitch_1
        0x15 -> :sswitch_8
        0x17 -> :sswitch_3
        0x18 -> :sswitch_9
        0x19 -> :sswitch_a
        0x1a -> :sswitch_b
        0x64 -> :sswitch_d
        0x65 -> :sswitch_e
        0x67 -> :sswitch_11
        0x68 -> :sswitch_10
        0x69 -> :sswitch_7
        0x6a -> :sswitch_c
        0x6b -> :sswitch_f
    .end sparse-switch
.end method

.method public setBleTurningOff(Z)V
    .locals 0
    .param p1, "isBleTurningOff"    # Z

    .prologue
    .line 306
    iput-boolean p1, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->mIsBleTurningOff:Z

    .line 305
    return-void
.end method

.method public setBleTurningOn(Z)V
    .locals 0
    .param p1, "isBleTurningOn"    # Z

    .prologue
    .line 298
    iput-boolean p1, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->mIsBleTurningOn:Z

    .line 297
    return-void
.end method

.method public setTurningOff(Z)V
    .locals 0
    .param p1, "isTurningOff"    # Z

    .prologue
    .line 290
    iput-boolean p1, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->mIsTurningOff:Z

    .line 289
    return-void
.end method

.method public setTurningOn(Z)V
    .locals 0
    .param p1, "isTurningOn"    # Z

    .prologue
    .line 282
    iput-boolean p1, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->mIsTurningOn:Z

    .line 281
    return-void
.end method
