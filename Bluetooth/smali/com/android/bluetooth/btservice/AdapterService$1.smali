.class Lcom/android/bluetooth/btservice/AdapterService$1;
.super Landroid/os/Handler;
.source "AdapterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/btservice/AdapterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/btservice/AdapterService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/btservice/AdapterService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/bluetooth/btservice/AdapterService;

    .prologue
    .line 688
    iput-object p1, p0, Lcom/android/bluetooth/btservice/AdapterService$1;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 691
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService$1;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleMessage() - Message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/bluetooth/btservice/AdapterService;->-wrap5(Lcom/android/bluetooth/btservice/AdapterService;Ljava/lang/String;)V

    .line 693
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 690
    :goto_0
    return-void

    .line 695
    :sswitch_0
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService$1;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    const-string/jumbo v3, "handleMessage() - MESSAGE_PROFILE_SERVICE_STATE_CHANGED"

    invoke-static {v2, v3}, Lcom/android/bluetooth/btservice/AdapterService;->-wrap5(Lcom/android/bluetooth/btservice/AdapterService;Ljava/lang/String;)V

    .line 696
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterService$1;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3, v2, v4}, Lcom/android/bluetooth/btservice/AdapterService;->-wrap10(Lcom/android/bluetooth/btservice/AdapterService;Ljava/lang/String;I)V

    goto :goto_0

    .line 700
    :sswitch_1
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService$1;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    const-string/jumbo v3, "handleMessage() - MESSAGE_PROFILE_CONNECTION_STATE_CHANGED"

    invoke-static {v2, v3}, Lcom/android/bluetooth/btservice/AdapterService;->-wrap5(Lcom/android/bluetooth/btservice/AdapterService;Ljava/lang/String;)V

    .line 701
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterService$1;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string/jumbo v7, "prevState"

    const/high16 v8, -0x80000000

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v3, v2, v4, v5, v6}, Lcom/android/bluetooth/btservice/AdapterService;->-wrap11(Lcom/android/bluetooth/btservice/AdapterService;Landroid/bluetooth/BluetoothDevice;III)V

    goto :goto_0

    .line 705
    :sswitch_2
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService$1;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    const-string/jumbo v3, "handleMessage() - MESSAGE_PROFILE_INIT_PRIORITIES"

    invoke-static {v2, v3}, Lcom/android/bluetooth/btservice/AdapterService;->-wrap5(Lcom/android/bluetooth/btservice/AdapterService;Ljava/lang/String;)V

    .line 706
    iget v2, p1, Landroid/os/Message;->arg1:I

    new-array v1, v2, [Landroid/os/ParcelUuid;

    .line 707
    .local v1, "mUuids":[Landroid/os/ParcelUuid;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 708
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "uuids"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelUuid;

    aput-object v2, v1, v0

    .line 707
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 710
    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterService$1;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    invoke-static {v3, v2, v1}, Lcom/android/bluetooth/btservice/AdapterService;->-wrap9(Lcom/android/bluetooth/btservice/AdapterService;Landroid/bluetooth/BluetoothDevice;[Landroid/os/ParcelUuid;)V

    goto :goto_0

    .line 715
    .end local v0    # "i":I
    .end local v1    # "mUuids":[Landroid/os/ParcelUuid;
    :sswitch_3
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService$1;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    const-string/jumbo v3, "handleMessage() - MESSAGE_CONNECT_OTHER_PROFILES"

    invoke-static {v2, v3}, Lcom/android/bluetooth/btservice/AdapterService;->-wrap5(Lcom/android/bluetooth/btservice/AdapterService;Ljava/lang/String;)V

    .line 716
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterService$1;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3, v2, v4}, Lcom/android/bluetooth/btservice/AdapterService;->-wrap8(Lcom/android/bluetooth/btservice/AdapterService;Landroid/bluetooth/BluetoothDevice;I)V

    goto/16 :goto_0

    .line 721
    :sswitch_4
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService$1;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-static {v2}, Lcom/android/bluetooth/btservice/AdapterService;->-wrap4(Lcom/android/bluetooth/btservice/AdapterService;)V

    goto/16 :goto_0

    .line 693
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x14 -> :sswitch_1
        0x1e -> :sswitch_3
        0x28 -> :sswitch_2
        0x32 -> :sswitch_4
    .end sparse-switch
.end method
