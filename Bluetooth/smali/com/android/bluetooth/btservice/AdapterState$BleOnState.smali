.class Lcom/android/bluetooth/btservice/AdapterState$BleOnState;
.super Lcom/android/internal/util/State;
.source "AdapterState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/btservice/AdapterState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BleOnState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/btservice/AdapterState;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/btservice/AdapterState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/bluetooth/btservice/AdapterState;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/bluetooth/btservice/AdapterState$BleOnState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/btservice/AdapterState;Lcom/android/bluetooth/btservice/AdapterState$BleOnState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/bluetooth/btservice/AdapterState;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/AdapterState$BleOnState;-><init>(Lcom/android/bluetooth/btservice/AdapterState;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterState$BleOnState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const-string/jumbo v1, "Entering BleOnState"

    invoke-static {v0, v1}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap3(Lcom/android/bluetooth/btservice/AdapterState;Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v8, 0x67

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 184
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterState$BleOnState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-static {v3}, Lcom/android/bluetooth/btservice/AdapterState;->-get1(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v1

    .line 185
    .local v1, "adapterService":Lcom/android/bluetooth/btservice/AdapterService;
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterState$BleOnState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-static {v3}, Lcom/android/bluetooth/btservice/AdapterState;->-get0(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterProperties;

    move-result-object v0

    .line 186
    .local v0, "adapterProperties":Lcom/android/bluetooth/btservice/AdapterProperties;
    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 187
    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterState$BleOnState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Received message in BleOnState after cleanup: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap2(Lcom/android/bluetooth/btservice/AdapterState;Ljava/lang/String;)V

    .line 188
    return v6

    .line 191
    :cond_1
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterState$BleOnState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Current state: BLE ON, message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap0(Lcom/android/bluetooth/btservice/AdapterState;Ljava/lang/String;)V

    .line 193
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 219
    return v6

    .line 195
    :sswitch_0
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterState$BleOnState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const/16 v4, 0xb

    invoke-static {v3, v4}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap4(Lcom/android/bluetooth/btservice/AdapterState;I)V

    .line 196
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterState$BleOnState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-static {v3}, Lcom/android/bluetooth/btservice/AdapterState;->-get5(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->setTurningOn(Z)V

    .line 197
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterState$BleOnState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    iget-object v4, p0, Lcom/android/bluetooth/btservice/AdapterState$BleOnState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-static {v4}, Lcom/android/bluetooth/btservice/AdapterState;->-get5(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap6(Lcom/android/bluetooth/btservice/AdapterState;Lcom/android/internal/util/IState;)V

    .line 198
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterState$BleOnState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const-wide/16 v4, 0xfa0

    const/16 v6, 0x64

    invoke-virtual {v3, v6, v4, v5}, Lcom/android/bluetooth/btservice/AdapterState;->sendMessageDelayed(IJ)V

    .line 199
    invoke-virtual {v1}, Lcom/android/bluetooth/btservice/AdapterService;->startCoreServices()V

    .line 221
    :cond_2
    :goto_0
    return v7

    .line 203
    :sswitch_1
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterState$BleOnState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const/16 v4, 0x10

    invoke-static {v3, v4}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap4(Lcom/android/bluetooth/btservice/AdapterState;I)V

    .line 204
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterState$BleOnState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-static {v3}, Lcom/android/bluetooth/btservice/AdapterState;->-get5(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->setBleTurningOff(Z)V

    .line 205
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->onBleDisable()V

    .line 206
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterState$BleOnState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    iget-object v4, p0, Lcom/android/bluetooth/btservice/AdapterState$BleOnState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-static {v4}, Lcom/android/bluetooth/btservice/AdapterState;->-get5(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap6(Lcom/android/bluetooth/btservice/AdapterState;Lcom/android/internal/util/IState;)V

    .line 207
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterState$BleOnState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const-wide/16 v4, 0x1f40

    invoke-virtual {v3, v8, v4, v5}, Lcom/android/bluetooth/btservice/AdapterState;->sendMessageDelayed(IJ)V

    .line 208
    invoke-virtual {v1}, Lcom/android/bluetooth/btservice/AdapterService;->disableNative()Z

    move-result v2

    .line 209
    .local v2, "ret":Z
    if-nez v2, :cond_2

    .line 210
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterState$BleOnState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-static {v3, v8}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap5(Lcom/android/bluetooth/btservice/AdapterState;I)V

    .line 211
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterState$BleOnState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const-string/jumbo v4, "Error while calling disableNative"

    invoke-static {v3, v4}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap2(Lcom/android/bluetooth/btservice/AdapterState;Ljava/lang/String;)V

    .line 213
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterState$BleOnState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-static {v3}, Lcom/android/bluetooth/btservice/AdapterState;->-get5(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->setBleTurningOff(Z)V

    .line 214
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterState$BleOnState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const/16 v4, 0xf

    invoke-static {v3, v4}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap4(Lcom/android/bluetooth/btservice/AdapterState;I)V

    goto :goto_0

    .line 193
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x14 -> :sswitch_1
    .end sparse-switch
.end method
