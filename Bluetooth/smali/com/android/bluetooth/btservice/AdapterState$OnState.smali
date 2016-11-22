.class Lcom/android/bluetooth/btservice/AdapterState$OnState;
.super Lcom/android/internal/util/State;
.source "AdapterState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/btservice/AdapterState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/btservice/AdapterState;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/btservice/AdapterState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/bluetooth/btservice/AdapterState;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/android/bluetooth/btservice/AdapterState$OnState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/btservice/AdapterState;Lcom/android/bluetooth/btservice/AdapterState$OnState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/bluetooth/btservice/AdapterState;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/AdapterState$OnState;-><init>(Lcom/android/bluetooth/btservice/AdapterState;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 228
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterState$OnState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const-string/jumbo v2, "Entering OnState"

    invoke-static {v1, v2}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap3(Lcom/android/bluetooth/btservice/AdapterState;Ljava/lang/String;)V

    .line 230
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterState$OnState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-static {v1}, Lcom/android/bluetooth/btservice/AdapterState;->-get1(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 231
    .local v0, "adapterService":Lcom/android/bluetooth/btservice/AdapterService;
    if-nez v0, :cond_0

    .line 232
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterState$OnState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const-string/jumbo v2, "Entered OnState after cleanup"

    invoke-static {v1, v2}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap2(Lcom/android/bluetooth/btservice/AdapterState;Ljava/lang/String;)V

    .line 233
    return-void

    .line 235
    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->autoConnect()V

    .line 227
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 240
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterState$OnState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-static {v2}, Lcom/android/bluetooth/btservice/AdapterState;->-get0(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterProperties;

    move-result-object v0

    .line 241
    .local v0, "adapterProperties":Lcom/android/bluetooth/btservice/AdapterProperties;
    if-nez v0, :cond_0

    .line 242
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterState$OnState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Received message in OnState after cleanup: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap2(Lcom/android/bluetooth/btservice/AdapterState;Ljava/lang/String;)V

    .line 243
    return v5

    .line 246
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterState$OnState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Current state: ON, message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap0(Lcom/android/bluetooth/btservice/AdapterState;Ljava/lang/String;)V

    .line 248
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 265
    return v5

    .line 250
    :sswitch_0
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterState$OnState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const/16 v3, 0xd

    invoke-static {v2, v3}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap4(Lcom/android/bluetooth/btservice/AdapterState;I)V

    .line 251
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterState$OnState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-static {v2}, Lcom/android/bluetooth/btservice/AdapterState;->-get5(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->setTurningOff(Z)V

    .line 252
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterState$OnState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterState$OnState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-static {v3}, Lcom/android/bluetooth/btservice/AdapterState;->-get5(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap6(Lcom/android/bluetooth/btservice/AdapterState;Lcom/android/internal/util/IState;)V

    .line 256
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterState$OnState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const/16 v3, 0x69

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/btservice/AdapterState;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 257
    .local v1, "m":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterState$OnState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v1, v4, v5}, Lcom/android/bluetooth/btservice/AdapterState;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 258
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->onBluetoothDisable()V

    .line 267
    .end local v1    # "m":Landroid/os/Message;
    :sswitch_1
    return v6

    .line 248
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x17 -> :sswitch_0
    .end sparse-switch
.end method
